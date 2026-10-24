# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogChebyshevEquivalence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `939a53e9b72f6e84ba164b696c6174c8a5128fa1` · SHA-256 `cfaf43b605f168127a391b4b5b8145ecad5c358eafbf8186ccd54785a632d5a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogChebyshevConverse
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- Every positive integer lies in a dyadic block [2^j,2^(j+1)). -/
theorem exists_dyadic_block
    {x : ℕ} (hx : 1 ≤ x) :
    ∃ j : ℕ, 2^j ≤ x ∧ x < 2^(j+1) := by
  let j := Nat.log 2 x
  refine ⟨j, ?_, ?_⟩
  · exact Nat.pow_log_le_self 2 (by omega)
  · exact Nat.lt_pow_succ_log_self (by omega) x

/-- Reindex a positive power of two as the historical dyadicScale when j>=1. -/
theorem pow_two_eq_dyadicScale_pred
    {j : ℕ} (hj : 1 ≤ j) :
    2^j = dyadicScale (j - 1) := by
  unfold dyadicScale
  congr 1
  omega

/-- Prefix control plus the dyadic-scale chaining bound gives a global
Chebyshev square-root-plus-epsilon envelope. -/
theorem globalChebyshev_of_prefixMangoldt
    (hprefix : AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound) :
    GlobalChebyshevSquareRootPlusEpsilonBound := by
  intro η hη
  let δ := η / 2
  have hδ : 0 < δ := by dsimp [δ]; linarith
  obtain ⟨Cd, hCd, jd, hd⟩ :=
    abs_dyadicChebyshevError_le_of_prefix hprefix hδ
  obtain ⟨Cp, hCp, jp, hp⟩ := hprefix δ hδ
  let x0 := max 2 (dyadicScale (max jd jp))
  refine ⟨8 * (Cd^2 + Cp), by positivity, x0, ?_⟩
  intro x hx
  have hx1 : 1 ≤ x := by
    exact le_trans (by norm_num) (le_trans (le_max_left _ _) hx)
  obtain ⟨j, hjx, hxj⟩ := exists_dyadic_block hx1
  have hj1 : 1 ≤ j := by
    by_contra h
    have : j = 0 := by omega
    subst j
    simp at hjx hxj
    have hx2 : 2 ≤ x := le_trans (le_max_left _ _) hx
    omega
  let r := j - 1
  have hXeq : 2^j = dyadicScale r := pow_two_eq_dyadicScale_pred hj1
  let X := dyadicScale r
  have hXx : X ≤ x := by simpa [X, hXeq] using hjx
  have hx2X : x ≤ 2 * X := by
    have : x < 2 * X := by
      simpa [X, hXeq, pow_succ] using hxj
    omega
  have hrlarge : max jd jp ≤ r := by
    -- Since x >= dyadicScale(max jd jp) and x < 2^(j+1),
    -- the containing dyadic block cannot precede that scale.
    unfold x0 at hx
    have hbase : dyadicScale (max jd jp) ≤ x :=
      le_trans (le_max_right _ _) hx
    unfold X r at *
    unfold dyadicScale at hbase
    by_contra hnot
    have : j ≤ max jd jp := by omega
    have hpmono : 2^(j+1) ≤ 2^((max jd jp)+1) := by gcongr
    omega
  have hrd : jd ≤ r := le_trans (le_max_left _ _) hrlarge
  have hrp : jp ≤ r := le_trans (le_max_right _ _) hrlarge
  have hdy := hd r hrd
  have hpre := hp r hrp x (Finset.mem_Icc.mpr ⟨hXx, hx2X⟩)
  have hdecomp :
      chebyshevPsiError x =
        dyadicChebyshevError r +
          centeredGreenDyadicPrefixMangoldtError X x := by
    rw [prefixMangoldtError_eq_global_sub hXx]
    unfold dyadicChebyshevError X
    linarith
  rw [hdecomp]
  have hab :
      (dyadicChebyshevError r +
        centeredGreenDyadicPrefixMangoldtError X x)^2 ≤
        2 * dyadicChebyshevError r ^ 2 +
        2 * centeredGreenDyadicPrefixMangoldtError X x ^ 2 := by
    nlinarith [sq_nonneg
      (dyadicChebyshevError r -
        centeredGreenDyadicPrefixMangoldtError X x)]
  have hXle : (X : ℝ) ≤ x := by exact_mod_cast hXx
  have hXone : (1 : ℝ) ≤ X := by
    exact_mod_cast (by have := historicalDyadicScale_ge_two r; omega)
  have hpowmono :
      Real.rpow (X : ℝ) (1 + δ) ≤
        Real.rpow (x : ℝ) (1 + η) := by
    calc
      Real.rpow (X : ℝ) (1 + δ) ≤
        Real.rpow (X : ℝ) (1 + η) :=
          Real.rpow_le_rpow_of_exponent_le hXone (by dsimp [δ]; linarith)
      _ ≤ Real.rpow (x : ℝ) (1 + η) := by
        gcongr
        linarith
  have hd2 :
      dyadicChebyshevError r ^ 2 ≤
        Cd^2 * Real.rpow (X : ℝ) (1 + δ) := by
    have := hd r hrd
    have hsquare := sq_le_sq₀ (abs_nonneg _) (by positivity : 0 ≤
      Cd * Real.rpow (X : ℝ) ((1 + δ) / 2)) |>.mpr this
    rw [sq_abs] at hsquare
    have hpowsq :
        (Real.rpow (X : ℝ) ((1 + δ) / 2))^2 =
          Real.rpow (X : ℝ) (1 + δ) := by
      rw [← Real.rpow_mul (by positivity : (0 : ℝ) ≤ X)]
      congr 1
      ring
    simpa [mul_pow, hpowsq] using hsquare
  calc
    chebyshevPsiError x ^ 2 ≤
        2 * dyadicChebyshevError r ^ 2 +
        2 * centeredGreenDyadicPrefixMangoldtError X x ^ 2 := hab
    _ ≤ 2 * Cd^2 * Real.rpow (X : ℝ) (1 + δ) +
        2 * Cp * Real.rpow (X : ℝ) (1 + δ) := by
      gcongr
    _ ≤ 8 * (Cd^2 + Cp) * Real.rpow (x : ℝ) (1 + η) := by
      have hpow0 : 0 ≤ Real.rpow (x : ℝ) (1 + η) := by positivity
      nlinarith

/-- Envelope-level equivalence of the global and dyadic-prefix formulations. -/
theorem globalChebyshev_iff_prefixMangoldt :
    GlobalChebyshevSquareRootPlusEpsilonBound ↔
      AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound :=
  ⟨prefixMangoldt_of_globalChebyshev, globalChebyshev_of_prefixMangoldt⟩

end GRWTSK.RiemannHypothesis
```

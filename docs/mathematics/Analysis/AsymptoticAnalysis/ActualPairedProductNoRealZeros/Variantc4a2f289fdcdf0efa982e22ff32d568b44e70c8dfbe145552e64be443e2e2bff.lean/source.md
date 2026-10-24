# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ActualPairedProductNoRealZeros.Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20524e95786b7a57d28806272d7dfa253f85ec3a` · SHA-256 `c4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ActualPairedProductOccurrences
import Mathlib.Analysis.Complex.LocallyUniformLimit
import Mathlib.Analysis.Complex.Convex
import Mathlib.Analysis.Analytic.IsolatedZeros
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv
import Mathlib.NumberTheory.LSeries.Dirichlet

/-!
# Nontrivial zeta zeros have nonzero ordinate

This supplies the one classical source fact that the direct product construction
needs in addition to the already formalized critical-strip theorem.

For 0 < x < 1 we use the paired Dirichlet-eta series

  eta(x) = sum_n ((2n+1)^(-x) - (2n+2)^(-x)).

Every real summand is strictly positive. On Re(s) > 1 the paired series is
algebraically (1 - 2^(1-s)) * zeta(s). Both sides are holomorphic on the
open right half-plane away from the real pole; analytic continuation through
the upper half-plane and continuity to the real axis extend the identity to
0 < x < 1. Since the eta factor is then positive and
1 - 2^(1-x) < 0, zeta(x) is strictly negative.

This argument is independent of RH and of any Toeplitz/PF assertion.
-/

namespace FormalResearch.RiemannHypothesis.XiFiniteOrder

open Complex Filter Set Topology
open scoped Topology

noncomputable section

private def etaPairTerm (n : ℕ) (s : ℂ) : ℂ :=
  (((2 * n + 1 : ℕ) : ℝ) : ℂ) ^ (-s) -
    (((2 * n + 2 : ℕ) : ℝ) : ℂ) ^ (-s)

private def realEtaPairTerm (n : ℕ) (x : ℝ) : ℝ :=
  ((2 * n + 1 : ℕ) : ℝ) ^ (-x) -
    ((2 * n + 2 : ℕ) : ℝ) ^ (-x)

private noncomputable def pairedEta (s : ℂ) : ℂ :=
  ∑' n : ℕ, etaPairTerm n s

private noncomputable def etaZetaFactor (s : ℂ) : ℂ :=
  (1 - 2 * (2 : ℂ) ^ (-s)) * riemannZeta s

private theorem etaPairTerm_norm_le {δ R : ℝ} (hδ : 0 < δ)
    {s : ℂ} (hsre : δ ≤ s.re) (hsnorm : ‖s‖ ≤ R) (n : ℕ) :
    ‖etaPairTerm n s‖ ≤
      R * ((2 * n + 1 : ℕ) : ℝ) ^ (-δ - 1) := by
  let a : ℝ := (2 * n + 1 : ℕ)
  let b : ℝ := (2 * n + 2 : ℕ)
  have ha : 1 ≤ a := by simp [a]
  have hab : a ≤ b := by simp [a, b]
  have hs0 : -s ≠ 0 :=
    neg_ne_zero.mpr (ne_zero_of_re_pos (hδ.trans_le hsre))
  have hderiv (x : ℝ) (hx : x ∈ Icc a b) :
      HasDerivWithinAt (fun y : ℝ => (y : ℂ) ^ (-s))
        ((-s) * (x : ℂ) ^ (-s - 1)) (Icc a b) x :=
    (hasDerivAt_ofReal_cpow_const
      (lt_of_lt_of_le zero_lt_one (ha.trans hx.1)).ne' hs0).hasDerivWithinAt
  have hbound (x : ℝ) (hx : x ∈ Icc a b) :
      ‖(-s) * (x : ℂ) ^ (-s - 1)‖ ≤
        R * a ^ (-δ - 1) := by
    have hxpos : 0 < x := lt_of_lt_of_le zero_lt_one (ha.trans hx.1)
    have hexp_nonpos : (-s.re - 1 : ℝ) ≤ 0 := by linarith
    have hbase : x ^ (-s.re - 1) ≤ a ^ (-s.re - 1) :=
      Real.rpow_le_rpow_of_nonpos
        (lt_of_lt_of_le zero_lt_one ha) hx.1 hexp_nonpos
    have hexp : a ^ (-s.re - 1) ≤ a ^ (-δ - 1) :=
      Real.rpow_le_rpow_of_exponent_le ha (by linarith)
    rw [norm_mul, norm_neg, Complex.norm_cpow_eq_rpow_re_of_pos hxpos]
    simp only [sub_re, neg_re, one_re]
    exact mul_le_mul hsnorm (hbase.trans hexp)
      (Real.rpow_nonneg hxpos.le _) ((norm_nonneg s).trans hsnorm)
  have hmv := Convex.norm_image_sub_le_of_norm_hasDerivWithin_le
    (s := Icc a b) (x := a) (y := b)
    (f := fun x : ℝ => (x : ℂ) ^ (-s))
    (f' := fun x : ℝ => (-s) * (x : ℂ) ^ (-s - 1))
    hderiv hbound (convex_Icc a b)
    (left_mem_Icc.mpr hab) (right_mem_Icc.mpr hab)
  have hba : b - a = 1 := by norm_num [a, b]
  rw [Real.norm_eq_abs, abs_of_nonneg (sub_nonneg.mpr hab), hba, mul_one] at hmv
  have hmv' :
      ‖(a : ℂ) ^ (-s) - (b : ℂ) ^ (-s)‖ ≤
        R * a ^ (-δ - 1) := by
    rw [← norm_neg]
    simpa [a, b] using hmv
  simpa [etaPairTerm, a, b] using hmv'

private theorem etaPairTerm_summable {s : ℂ} (hs : 0 < s.re) :
    Summable fun n : ℕ => etaPairTerm n s := by
  let δ : ℝ := s.re / 2
  let R : ℝ := ‖s‖
  have hδ : 0 < δ := by simp [δ, hs]
  have hp : 1 < δ + 1 := by linarith
  have hseries :
      Summable (fun n : ℕ =>
        R * ((n + 1 : ℕ) : ℝ) ^ (-δ - 1)) := by
    have hbase : Summable (fun n : ℕ =>
        1 / (n : ℝ) ^ (δ + 1)) :=
      Real.summable_one_div_nat_rpow.mpr hp
    have hshift := hbase.comp_injective (add_left_injective 1)
    have heq :
        (fun n : ℕ => R * ((n + 1 : ℕ) : ℝ) ^ (-δ - 1)) =
          fun n : ℕ => R * (((n + 1 : ℕ) : ℝ) ^ (δ + 1))⁻¹ := by
      funext n
      rw [show -δ - 1 = -(δ + 1) by ring,
        Real.rpow_neg (by positivity) (δ + 1)]
    rw [heq]
    simpa only [Function.comp_apply, Nat.cast_add, Nat.cast_one,
      add_comm, one_div] using hshift.mul_left R
  apply Summable.of_norm_bounded hseries
  intro n
  have hraw := etaPairTerm_norm_le hδ (s := s)
    (by simp [δ]; linarith) (show ‖s‖ ≤ R by rfl) n
  have hcast :
      ((n + 1 : ℕ) : ℝ) ≤ ((2 * n + 1 : ℕ) : ℝ) := by
    exact_mod_cast (by omega : n + 1 ≤ 2 * n + 1)
  have hpow :
      ((2 * n + 1 : ℕ) : ℝ) ^ (-δ - 1) ≤
        ((n + 1 : ℕ) : ℝ) ^ (-δ - 1) :=
    Real.rpow_le_rpow_of_nonpos (by positivity) hcast (by linarith)
  exact hraw.trans (mul_le_mul_of_nonneg_left hpow (by simp [R]))

private theorem differentiableOn_pairedEta :
    DifferentiableOn ℂ pairedEta {s : ℂ | 0 < s.re} := by
  intro z hz
  change 0 < z.re at hz
  let δ : ℝ := z.re / 2
  let R : ℝ := ‖z‖ + 1
  let U : Set ℂ := {w : ℂ | δ < w.re ∧ ‖w‖ < R}
  have hδ : 0 < δ := by simp [δ]; linarith
  have hR : 0 ≤ R := by dsimp [R]; linarith [norm_nonneg z]
  have hUopen : IsOpen U :=
    (isOpen_lt continuous_const continuous_re).inter
      (isOpen_lt continuous_norm continuous_const)
  have hzU : z ∈ U := by
    constructor
    · dsimp [δ]; linarith
    · dsimp [R]; linarith
  have hmajorant :
      Summable (fun n : ℕ =>
        R * ((n + 1 : ℕ) : ℝ) ^ (-δ - 1)) := by
    have hp : 1 < δ + 1 := by linarith
    have hbase : Summable (fun n : ℕ =>
        1 / (n : ℝ) ^ (δ + 1)) :=
      Real.summable_one_div_nat_rpow.mpr hp
    have hshift := hbase.comp_injective (add_left_injective 1)
    have heq :
        (fun n : ℕ => R * ((n + 1 : ℕ) : ℝ) ^ (-δ - 1)) =
          fun n : ℕ => R * (((n + 1 : ℕ) : ℝ) ^ (δ + 1))⁻¹ := by
      funext n
      rw [show -δ - 1 = -(δ + 1) by ring,
        Real.rpow_neg (by positivity) (δ + 1)]
    rw [heq]
    simpa only [Function.comp_apply, Nat.cast_add, Nat.cast_one,
      add_comm, one_div] using hshift.mul_left R
  have hterm (n : ℕ) : DifferentiableOn ℂ (etaPairTerm n) U := by
    intro w hw
    have hodd : ((((2 * n + 1 : ℕ) : ℝ) : ℂ)) ≠ 0 := by
      exact_mod_cast (by omega : 2 * n + 1 ≠ 0)
    have heven : ((((2 * n + 2 : ℕ) : ℝ) : ℂ)) ≠ 0 := by
      exact_mod_cast (by omega : 2 * n + 2 ≠ 0)
    apply DifferentiableAt.differentiableWithinAt
    unfold etaPairTerm
    apply DifferentiableAt.sub
    · exact ((hasDerivAt_neg' w).const_cpow (Or.inl hodd)).differentiableAt
    · exact ((hasDerivAt_neg' w).const_cpow (Or.inl heven)).differentiableAt
  have htermBound (n : ℕ) (w : ℂ) (hw : w ∈ U) :
      ‖etaPairTerm n w‖ ≤
        R * ((n + 1 : ℕ) : ℝ) ^ (-δ - 1) := by
    have hraw := etaPairTerm_norm_le hδ (s := w) hw.1.le hw.2.le n
    have hcast :
        ((n + 1 : ℕ) : ℝ) ≤ ((2 * n + 1 : ℕ) : ℝ) := by
      exact_mod_cast (by omega : n + 1 ≤ 2 * n + 1)
    have hpow :
        ((2 * n + 1 : ℕ) : ℝ) ^ (-δ - 1) ≤
          ((n + 1 : ℕ) : ℝ) ^ (-δ - 1) :=
      Real.rpow_le_rpow_of_nonpos (by positivity) hcast (by linarith)
    exact hraw.trans (mul_le_mul_of_nonneg_left hpow hR)
  have hdiff : DifferentiableOn ℂ pairedEta U := by
    change DifferentiableOn ℂ
      (fun w => ∑' n : ℕ, etaPairTerm n w) U
    exact Complex.differentiableOn_tsum_of_summable_norm
      hmajorant hterm hUopen htermBound
  exact ((hdiff z hzU).differentiableAt
    (hUopen.mem_nhds hzU)).differentiableWithinAt

private theorem pairedEta_eq_factor_of_one_lt_re
    {s : ℂ} (hs : 1 < s.re) :
    pairedEta s = etaZetaFactor s := by
  let f : ℕ → ℂ := fun n => (n : ℂ) ^ (-s)
  have hs0 : -s ≠ 0 :=
    neg_ne_zero.mpr (ne_zero_of_re_pos (zero_lt_one.trans hs))
  have hf : Summable f := by
    have h := Complex.summable_one_div_nat_cpow.mpr hs
    simpa only [f, Complex.cpow_neg, one_div] using h
  have htotal : ∑' n : ℕ, f n = riemannZeta s := by
    rw [zeta_eq_tsum_one_div_nat_cpow hs]
    apply tsum_congr
    intro n
    simp only [f, Complex.cpow_neg, one_div]
  have hzero : f 0 = 0 := by simp [f, zero_cpow hs0]
  have hevenSummable : Summable fun n : ℕ => f (2 * n) :=
    hf.comp_injective (mul_right_injective₀ (by omega : (2 : ℕ) ≠ 0))
  have hoddInjective : Function.Injective (fun n : ℕ => 2 * n + 1) := by
    intro a b h
    omega
  have hoddSummable : Summable fun n : ℕ => f (2 * n + 1) :=
    hf.comp_injective hoddInjective
  have heven :
      ∑' n : ℕ, f (2 * n) =
        (2 : ℂ) ^ (-s) * riemannZeta s := by
    calc
      ∑' n : ℕ, f (2 * n)
          = ∑' n : ℕ, (2 : ℂ) ^ (-s) * f n := by
              apply tsum_congr
              intro n
              have h2 : (0 : ℝ) ≤ 2 := by norm_num
              have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
              simp only [f, Nat.cast_mul, Nat.cast_ofNat]
              rw [← mul_cpow_ofReal_nonneg h2 hn]
      _ = (2 : ℂ) ^ (-s) * ∑' n : ℕ, f n := by
            rw [tsum_mul_left]
      _ = (2 : ℂ) ^ (-s) * riemannZeta s := by rw [htotal]
  have hevenShiftSummable : Summable fun n : ℕ => f (2 * n + 2) := by
    have h := hevenSummable.comp_injective (add_left_injective 1)
    apply h.congr
    intro n
    simp only [Function.comp_apply, Nat.mul_add, Nat.mul_one]
  have hevenShift :
      ∑' n : ℕ, f (2 * n + 2) =
        ∑' n : ℕ, f (2 * n) := by
    have h := hevenSummable.tsum_eq_zero_add
    rw [hzero, zero_add] at h
    simpa only [Nat.mul_add, Nat.mul_one] using h.symm
  have hsplit := tsum_even_add_odd hevenSummable hoddSummable
  rw [htotal, heven] at hsplit
  unfold pairedEta etaZetaFactor
  change (∑' n : ℕ, (f (2 * n + 1) - f (2 * n + 2))) = _
  rw [hoddSummable.tsum_sub hevenShiftSummable, hevenShift, heven]
  calc
    (∑' n : ℕ, f (2 * n + 1)) -
          (2 : ℂ) ^ (-s) * riemannZeta s
      = ((2 : ℂ) ^ (-s) * riemannZeta s +
          ∑' n : ℕ, f (2 * n + 1)) -
          2 * ((2 : ℂ) ^ (-s) * riemannZeta s) := by ring
    _ = riemannZeta s -
          2 * ((2 : ℂ) ^ (-s) * riemannZeta s) := by rw [hsplit]
    _ = (1 - 2 * (2 : ℂ) ^ (-s)) * riemannZeta s := by ring

private theorem pairedEta_eq_factor_upper :
    EqOn pairedEta etaZetaFactor
      ({s : ℂ | 0 < s.re} ∩ {s : ℂ | 0 < s.im}) := by
  let U : Set ℂ :=
    {s : ℂ | 0 < s.re} ∩ {s : ℂ | 0 < s.im}
  have hUopen : IsOpen U :=
    (isOpen_lt continuous_const continuous_re).inter
      (isOpen_lt continuous_const continuous_im)
  have hUconn : IsPreconnected U :=
    ((convex_halfSpace_re_gt 0).inter
      (convex_halfSpace_im_gt 0)).isPreconnected
  have hetaDiff : DifferentiableOn ℂ pairedEta U :=
    differentiableOn_pairedEta.mono inter_subset_left
  have hfactorDiff : DifferentiableOn ℂ etaZetaFactor U := by
    intro s hs
    have hs1 : s ≠ 1 := by
      intro h
      subst s
      norm_num at hs
    have hpow :
        DifferentiableAt ℂ (fun w : ℂ => (2 : ℂ) ^ (-w)) s :=
      ((hasDerivAt_neg' s).const_cpow
        (Or.inl (by norm_num))).differentiableAt
    have hfac :
        DifferentiableAt ℂ
          (fun w : ℂ => 1 - 2 * (2 : ℂ) ^ (-w)) s :=
      (differentiableAt_const (c := (1 : ℂ))).sub
        ((differentiableAt_const (c := (2 : ℂ))).mul hpow)
    exact (hfac.mul
      (differentiableAt_riemannZeta hs1)).differentiableWithinAt
  have hz0 : (2 + I : ℂ) ∈ U := by
    constructor <;> norm_num
  have hnear : pairedEta =ᶠ[𝓝 (2 + I : ℂ)] etaZetaFactor := by
    filter_upwards [
      (isOpen_lt continuous_const continuous_re).mem_nhds
        (by norm_num : (1 : ℝ) < (2 + I : ℂ).re)] with s hs
    exact pairedEta_eq_factor_of_one_lt_re hs
  change EqOn pairedEta etaZetaFactor U
  exact (hetaDiff.analyticOnNhd hUopen).eqOn_of_preconnected_of_eventuallyEq
    (hfactorDiff.analyticOnNhd hUopen) hUconn hz0 hnear

private theorem pairedEta_eq_factor_of_real {x : ℝ}
    (hx : 0 < x) (hx1 : x ≠ 1) :
    pairedEta (x : ℂ) = etaZetaFactor (x : ℂ) := by
  let seq : ℕ → ℂ :=
    fun n => (x : ℂ) + I * (1 / ((n + 1 : ℕ) : ℂ))
  have hone :
      Tendsto (fun n : ℕ => 1 / ((n + 1 : ℕ) : ℂ))
        atTop (𝓝 0) := by
    simpa only [Nat.cast_add, Nat.cast_one] using
      (tendsto_one_div_add_atTop_nhds_zero_nat (𝕜 := ℂ))
  have hseq : Tendsto seq atTop (𝓝 (x : ℂ)) := by
    simpa only [seq, mul_zero, add_zero] using
      tendsto_const_nhds.add (tendsto_const_nhds.mul hone)
  have hseqMem (n : ℕ) :
      seq n ∈ ({s : ℂ | 0 < s.re} ∩ {s : ℂ | 0 < s.im}) := by
    constructor
    · simp [seq, hx]
    · change 0 < (seq n).im
      have hi :
          (seq n).im =
            (((n + 1 : ℕ) : ℂ)⁻¹).re := by
        simp only [seq, add_im, ofReal_im, zero_add, mul_im,
          I_re, I_im, zero_mul, one_mul, one_div]
      rw [hi, inv_re, normSq_natCast]
      apply div_pos
      · exact_mod_cast (Nat.zero_lt_succ n)
      · positivity
  have hseqEq (n : ℕ) :
      pairedEta (seq n) = etaZetaFactor (seq n) :=
    pairedEta_eq_factor_upper (hseqMem n)
  have hetaCont : ContinuousAt pairedEta (x : ℂ) := by
    have hxmem : (x : ℂ) ∈ {s : ℂ | 0 < s.re} := by simpa using hx
    exact ((differentiableOn_pairedEta (x : ℂ) hxmem).differentiableAt
      ((isOpen_lt continuous_const continuous_re).mem_nhds hxmem)).continuousAt
  have hfactorCont : ContinuousAt etaZetaFactor (x : ℂ) := by
    have hx1c : (x : ℂ) ≠ 1 := by exact_mod_cast hx1
    have hpow :
        DifferentiableAt ℂ (fun w : ℂ => (2 : ℂ) ^ (-w)) (x : ℂ) :=
      ((hasDerivAt_neg' (x : ℂ)).const_cpow
        (Or.inl (by norm_num))).differentiableAt
    have hfac :
        DifferentiableAt ℂ
          (fun w : ℂ => 1 - 2 * (2 : ℂ) ^ (-w)) (x : ℂ) :=
      (differentiableAt_const (c := (1 : ℂ))).sub
        ((differentiableAt_const (c := (2 : ℂ))).mul hpow)
    exact (hfac.mul
      (differentiableAt_riemannZeta hx1c)).continuousAt
  have hleft := hetaCont.tendsto.comp hseq
  have hright := hfactorCont.tendsto.comp hseq
  have hleft' :
      Tendsto (etaZetaFactor ∘ seq) atTop
        (𝓝 (pairedEta (x : ℂ))) := by
    apply hleft.congr'
    exact Eventually.of_forall hseqEq
  exact tendsto_nhds_unique hleft' hright

private theorem etaPairTerm_of_real (n : ℕ) (x : ℝ) :
    etaPairTerm n (x : ℂ) =
      (realEtaPairTerm n x : ℂ) := by
  unfold etaPairTerm realEtaPairTerm
  rw [← Complex.ofReal_neg]
  rw [← Complex.ofReal_cpow (by positivity) (-x),
    ← Complex.ofReal_cpow (by positivity) (-x)]
  exact (Complex.ofReal_sub _ _).symm

private theorem realEtaPairTerm_pos (n : ℕ) {x : ℝ} (hx : 0 < x) :
    0 < realEtaPairTerm n x := by
  unfold realEtaPairTerm
  apply sub_pos.mpr
  exact Real.strictAntiOn_rpow_Ioi_of_exponent_neg (neg_lt_zero.mpr hx)
    (by change 0 < ((2 * n + 1 : ℕ) : ℝ); positivity)
    (by change 0 < ((2 * n + 2 : ℕ) : ℝ); positivity)
    (by exact_mod_cast (by omega : 2 * n + 1 < 2 * n + 2))

private theorem realEtaPairTerm_summable {x : ℝ} (hx : 0 < x) :
    Summable fun n : ℕ => realEtaPairTerm n x := by
  rw [← Complex.summable_ofReal]
  exact (etaPairTerm_summable (by simpa using hx)).congr
    (fun n => etaPairTerm_of_real n x)

private theorem pairedEta_of_real (x : ℝ) :
    pairedEta (x : ℂ) =
      ((∑' n : ℕ, realEtaPairTerm n x : ℝ) : ℂ) := by
  unfold pairedEta
  calc
    (∑' n : ℕ, etaPairTerm n (x : ℂ))
        = ∑' n : ℕ, (realEtaPairTerm n x : ℂ) := by
            exact tsum_congr fun n => etaPairTerm_of_real n x
    _ = ((∑' n : ℕ, realEtaPairTerm n x : ℝ) : ℂ) :=
          (Complex.ofReal_tsum _).symm

private theorem pairedEta_re_pos_of_real {x : ℝ} (hx : 0 < x) :
    0 < (pairedEta (x : ℂ)).re := by
  have hs := realEtaPairTerm_summable hx
  have hsum : 0 < ∑' n : ℕ, realEtaPairTerm n x :=
    hs.tsum_pos (fun n => (realEtaPairTerm_pos n hx).le)
      0 (realEtaPairTerm_pos 0 hx)
  rw [pairedEta_of_real]
  simpa using hsum

/-- Riemann zeta is strictly negative on the positive real interval (0,1). -/
theorem riemannZeta_ofReal_neg {x : ℝ}
    (hx : 0 < x) (hx1 : x < 1) :
    (riemannZeta (x : ℂ)).re < 0 := by
  let a : ℝ := 1 - 2 * (2 : ℝ) ^ (-x)
  have hhalf : (1 : ℝ) / 2 < (2 : ℝ) ^ (-x) := by
    have hpow := Real.rpow_lt_rpow_of_exponent_lt
      (by norm_num : (1 : ℝ) < 2)
      (by linarith : (-1 : ℝ) < -x)
    simpa [Real.rpow_neg_one] using hpow
  have ha : a < 0 := by
    dsimp [a]
    nlinarith
  have hpowC :
      (2 : ℂ) ^ (-(x : ℂ)) =
        (((2 : ℝ) ^ (-x) : ℝ) : ℂ) := by
    rw [← Complex.ofReal_neg]
    exact (Complex.ofReal_cpow
      (by norm_num : (0 : ℝ) ≤ 2) (-x)).symm
  have hfactor :
      1 - 2 * (2 : ℂ) ^ (-(x : ℂ)) = (a : ℂ) := by
    rw [hpowC]
    norm_num [a]
  have heq := pairedEta_eq_factor_of_real hx (ne_of_lt hx1)
  rw [etaZetaFactor, hfactor, pairedEta_of_real] at heq
  have hre := congrArg Complex.re heq
  simp only [Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
    zero_mul, sub_zero] at hre
  have heta : 0 < ∑' n : ℕ, realEtaPairTerm n x := by
    have hp := pairedEta_re_pos_of_real hx
    rw [pairedEta_of_real] at hp
    simpa using hp
  nlinarith [heta]

/-- Every nontrivial zeta zero has nonzero imaginary part. -/
theorem noRealNontrivialZeros_holds : NoRealNontrivialZeros := by
  intro ρ
  have hz : NontrivialZetaZero (ρ : ℂ) :=
    (nontrivialZetaZero_iff_zeta23 (ρ : ℂ)).mpr ρ.2
  have hstrip := hz.mem_critical_strip
  intro him
  have hreal : (ρ : ℂ) = (((ρ : ℂ).re : ℝ) : ℂ) := by
    apply Complex.ext
    · simp
    · simpa [him]
  have hneg :=
    riemannZeta_ofReal_neg hstrip.1 hstrip.2
  have hzeta := hz.1
  rw [hreal] at hzeta
  rw [hzeta] at hneg
  norm_num at hneg

end

end FormalResearch.RiemannHypothesis.XiFiniteOrder
```

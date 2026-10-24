# Complete source: GRWTSK.Analysis.MellinTransform.DyadicBounds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3b64a1606dbd10952c6425793c3381bb24c38da` · SHA-256 `ec5ff88c9f456e03d12876a9d795f1e8e9c6d5ac9316304213fa49030dbc2991`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formalization assistance: ChatGPT.
Mathlib and Lean retain their original attribution and licenses.

Status: authored proof source; not yet elaborated in the pinned environment.
No claim of an all-scale arithmetic estimate is made by this module.
-/
import Mathlib

/-!
# Summability of a geometrically bounded dyadic Mellin tail

The analytic normalization and zeta identification are not assumed to follow
from this scalar estimate. A compact-uniform arithmetic bound must be supplied
before applying it to the actual Dirichlet blocks.
-/
set_option autoImplicit false
noncomputable section
open Filter
namespace GRWTSK.Analysis.MellinTransform.DyadicBounds

/-- The half-plane margin exceeds half the energy loss. -/
theorem half_plane_margin {σ η : ℝ} (_hσ : 1/2<σ)
    (hη : η<2*(σ-1/2)) : σ-1/2-η/2>0 := by linarith

theorem choose_energy_loss {σ : ℝ} (hσ : 1/2<σ) :
    ∃ η : ℝ, 0<η ∧ σ-1/2-η/2>0 := by
  refine ⟨σ-1/2, by linarith, by linarith⟩

/-- An explicit geometric majorant is summable for every fixed positive margin. -/
theorem summable_exponential_tail (C a : ℝ) (ha : 0<a) :
    Summable (fun n : ℕ ↦ C*Real.exp (-a*(n:ℝ))) := by
  have hr : |Real.exp (-a)|<1 := by
    rw [abs_of_pos (Real.exp_pos _), ← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  have h := (summable_geometric_of_abs_lt_one hr).mul_left C
  have he : (fun n : ℕ => C * Real.exp (-a * (n : ℝ))) =
      (fun n : ℕ => C * Real.exp (-a) ^ n) := by
    funext n
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [he]
  exact h

/-- A finite initial prefix is harmless; the inequality is uniform on the tail. -/
theorem summable_norm_of_eventual_geometric_bound
    (B : ℕ → ℂ) (C a : ℝ) (hC : 0≤C) (ha : 0<a) (n₀ : ℕ)
    (hbound : ∀ n≥n₀, ‖B n‖≤C*Real.exp (-a*(n:ℝ))) :
    Summable (fun n ↦ ‖B n‖) := by
  apply (summable_nat_add_iff n₀).1
  apply Summable.of_nonneg_of_le (f := fun n : ℕ ↦ C*Real.exp (-a*(n:ℝ)))
    (fun n ↦ norm_nonneg _)
  · intro n
    calc
      ‖B (n+n₀)‖ ≤ C*Real.exp (-a*((n+n₀:ℕ):ℝ)) := hbound _ (by omega)
      _ ≤ C*Real.exp (-a*(n:ℝ)) := by
        apply mul_le_mul_of_nonneg_left _ hC
        apply Real.exp_le_exp.mpr
        push_cast
        nlinarith [Nat.cast_nonneg (α := ℝ) n₀]
  · exact summable_exponential_tail C a ha

/-- Concrete dyadic power written in logarithmic coordinates; no branch choice. -/
def dyadicWeight (a : ℝ) (n : ℕ) : ℝ :=
  Real.exp (-a*((n:ℝ)+1)*Real.log 2)

theorem summable_dyadicWeight (a : ℝ) (ha : 0<a) : Summable (dyadicWeight a) := by
  have hlog : 0<Real.log 2 := Real.log_pos (by norm_num)
  have h := summable_exponential_tail (Real.exp (-a*Real.log 2))
    (a*Real.log 2) (mul_pos ha hlog)
  convert h using 1
  funext n
  unfold dyadicWeight
  rw [← Real.exp_add]
  congr 1
  ring

/-- Exact scalar exponent in X^(1-s)*sqrt(X^(-1+eta)). -/
theorem source_exponent (σ η : ℝ) :
    (1-σ)+(-1+η)/2 = -(σ-1/2-η/2) := by ring

end GRWTSK.Analysis.MellinTransform.DyadicBounds
```

# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.KQHPoleRelativeFormAuditInitial.Variant174898e3c02fbeb252be9938d90e37baa8f11575a98cbb55ac387d4dfe59caa6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c73857b17ff90e9b1183eda9496b4da9ed44c784` · SHA-256 `174898e3c02fbeb252be9938d90e37baa8f11575a98cbb55ac387d4dfe59caa6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.CompensatedReadout
import Mathlib.Tactic.Linarith

/-!
# Kernel-preserving relative error through a common annihilator

grwtsk contributors selected the transfer direction. OpenAI Codex extracted and
formalized this elementary mechanism from the pinned Laughlin transfer proof.
The signed native readout is preserved through `quadraticReadout`; its missing
annihilator factorization and energy comparison remain explicit premises.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.KQHPoleRelativeForm

open scoped InnerProductSpace
open CompensatedReadout

variable {H L : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
  [NormedAddCommGroup L] [InnerProductSpace ℂ L]

/-- A perturbation factored through the same annihilator is relative to its
positive energy. The map can encode a finite collection in a Hilbert direct sum. -/
theorem annihilator_error_bound (R : L →L[ℂ] L) (v : L) :
    |(⟪v, R v⟫_ℂ).re| ≤ ‖R‖ * ‖v‖ ^ 2 := by
  calc
    |(⟪v, R v⟫_ℂ).re| ≤ ‖⟪v, R v⟫_ℂ‖ := Complex.abs_re_le_norm _
    _ ≤ ‖v‖ * ‖R v‖ := norm_inner_le_norm _ _
    _ ≤ ‖v‖ * (‖R‖ * ‖v‖) :=
      mul_le_mul_of_nonneg_left (R.le_opNorm v) (norm_nonneg v)
    _ = ‖R‖ * ‖v‖ ^ 2 := by ring

/-- A controlled change of variables preserves the energy kernel through an
exact common-annihilator comparison. No continuity of ranges is assumed. -/
theorem transferred_error_bound (B : H →L[ℂ] L) (Δ : H →L[ℂ] H)
    (R : L →L[ℂ] L) (energy : H → ℝ) (x : H)
    (henergy : ‖B (Δ x)‖ ^ 2 ≤ energy x) :
    |(⟪B (Δ x), R (B (Δ x))⟫_ℂ).re| ≤ ‖R‖ * energy x :=
  (annihilator_error_bound R (B (Δ x))).trans
    (mul_le_mul_of_nonneg_left henergy (norm_nonneg R))

/-- Zero native energy forces every transferred annihilator to vanish. -/
theorem transferred_kernel (B : H →L[ℂ] L) (Δ : H →L[ℂ] H)
    (energy : H → ℝ) (x : H)
    (henergy : ‖B (Δ x)‖ ^ 2 ≤ energy x) (hzero : energy x = 0) :
    B (Δ x) = 0 := by
  rw [hzero] at henergy
  have hn : ‖B (Δ x)‖ = 0 := by nlinarith [norm_nonneg (B (Δ x))]
  exact norm_eq_zero.mp hn

/-- Applied to the repository's exact signed scalar, the common-annihilator
identity yields a lower bound and an error budget relative to native energy. -/
theorem native_readout_transfer (K : H →L[ℂ] H)
    (B : H →L[ℂ] L) (Δ : H →L[ℂ] H) (R : L →L[ℂ] L)
    (energy baseline : H → ℝ) (x : H)
    (hidentity : quadraticReadout K x = baseline x +
      (⟪B (Δ x), R (B (Δ x))⟫_ℂ).re)
    (henergy : ‖B (Δ x)‖ ^ 2 ≤ energy x) :
    baseline x - ‖R‖ * energy x ≤ quadraticReadout K x ∧
      |quadraticReadout K x - baseline x| ≤ ‖R‖ * energy x := by
  have hb := transferred_error_bound B Δ R energy x henergy
  constructor
  · have hlo := (abs_le.mp hb).1
    rw [hidentity]
    linarith
  · rw [hidentity, add_sub_cancel_left]
    exact hb

end FormalResearch.RiemannHypothesis.KQHPoleRelativeForm

#check FormalResearch.RiemannHypothesis.KQHPoleRelativeForm.annihilator_error_bound
#print axioms FormalResearch.RiemannHypothesis.KQHPoleRelativeForm.annihilator_error_bound
#check FormalResearch.RiemannHypothesis.KQHPoleRelativeForm.transferred_error_bound
#print axioms FormalResearch.RiemannHypothesis.KQHPoleRelativeForm.transferred_error_bound
#check FormalResearch.RiemannHypothesis.KQHPoleRelativeForm.transferred_kernel
#print axioms FormalResearch.RiemannHypothesis.KQHPoleRelativeForm.transferred_kernel
#check FormalResearch.RiemannHypothesis.KQHPoleRelativeForm.native_readout_transfer
#print axioms FormalResearch.RiemannHypothesis.KQHPoleRelativeForm.native_readout_transfer
```

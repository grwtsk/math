import FormalResearch.RiemannHypothesis.WeilSource.Import
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceZeroSummability

/-!
# Exact transport from weighted zero points to the original occurrence family

Both carriers are the actual zeros in the open critical strip. Analytic
multiplicity is counted once: as a coefficient on the external point side and
as the number of Fin slots on the source side. Summability is required before
regrouping. No enumeration, simplicity, finite height cutoff, or norm-square
substitution is used.
-/

namespace FormalResearch.RiemannHypothesis.WeilSource

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject ZeroSideTargets

noncomputable section

/-- The two distinct-zero carriers have exactly the same actual predicate. -/
def sourcePointEquiv : ZeroPoint ≃ Zeta23.zetaZeroConfig.carrier := Equiv.refl _

/-- Transport preserves the complex point, not merely its ordinate. -/
theorem sourcePointEquiv_val (p : ZeroPoint) : (sourcePointEquiv p : ℂ) = p.val := rfl

/-- Both multiplicities are the finite natural analytic order of Mathlib's zeta. -/
theorem sourcePointEquiv_mult (p : ZeroPoint) :
    Zeta23.zetaZeroConfig.mult (sourcePointEquiv p) = multiplicity p := rfl

/-- Regroup an already summable occurrence family, counting each slot exactly once. -/
theorem occurrence_tsum_eq_weighted (F : ZeroPoint → ℂ)
    (hF : Summable (fun o : ZeroOccurrence ↦ F o.1)) :
    (∑' o : ZeroOccurrence, F o.1) = ∑' p : ZeroPoint, (multiplicity p : ℂ) * F p := by
  change Summable (fun o : (Σ p : ZeroPoint, Fin (multiplicity p)) ↦ F o.1) at hF
  change (∑' o : (Σ p : ZeroPoint, Fin (multiplicity p)), F o.1) = _
  rw [hF.tsum_sigma]
  apply tsum_congr
  intro p
  simp [tsum_fintype, nsmul_eq_mul]

/-- The existing unconditional source summability supplies the transport hypothesis. -/
theorem weighted_source_sum_eq_occurrences (A : ℝ) (hA : 1 ≤ A) :
    (∑' p : Zeta23.zetaZeroConfig.carrier,
      (Zeta23.zetaZeroConfig.mult p : ℂ) * bilateralTransform A ((p : ℂ) - 1 / 2) ^ 2) =
      ∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2 := by
  change (∑' p : ZeroPoint,
    (multiplicity p : ℂ) * bilateralTransform A (p.val - 1 / 2) ^ 2) = _
  exact (occurrence_tsum_eq_weighted
    (fun p ↦ bilateralTransform A (p.val - 1 / 2) ^ 2)
    (SourceZeroSummability.source_transform_squares_summable A hA)).symm

end
end FormalResearch.RiemannHypothesis.WeilSource

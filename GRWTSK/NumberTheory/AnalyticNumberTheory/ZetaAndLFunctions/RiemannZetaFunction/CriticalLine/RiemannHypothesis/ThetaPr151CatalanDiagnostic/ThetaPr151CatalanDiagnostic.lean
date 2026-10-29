import FormalResearch.RiemannHypothesis.ThetaPhiKrylovNondegeneracy
import FormalResearch.RiemannHypothesis.CatalanJacobi

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic

open ThetaPositiveLift

/-- Diagnostic only: the actual finite PR151 unsigned base-moment tape. -/
noncomputable def actualMagnitudeTape (L N : ℕ) (t : ℝ) (n : ℕ) : ℝ :=
  ∑ l : Fin L, thetaPhiBaseMomentMagnitude N t l.val *
    thetaPhiSignedMomentNode l.val ^ n

/-- Exact positive first moment of the actual PR151 magnitude tape. -/
theorem actualMagnitudeTape_first_positive {L N : ℕ} (hL : 0 < L) (hN : 0 < N)
    (t : ℝ) : 0 < actualMagnitudeTape L N t 1 := by
  unfold actualMagnitudeTape
  simp only [pow_one]
  apply Finset.sum_pos
  · intro l _
    apply mul_pos (thetaPhiBaseMomentMagnitude_pos hN t l.val)
    unfold thetaPhiSignedMomentNode
    positivity
  · exact ⟨⟨0, hL⟩, Finset.mem_univ _⟩

/-- Even rescaling the canonical free cyclic vector cannot produce the
actual positive PR151 magnitude tape: its first moment remains zero. -/
theorem actualMagnitudeTape_not_scaled_free {L N : ℕ} (hL : 0 < L) (hN : 0 < N)
    (t c : ℝ) :
    actualMagnitudeTape L N t ≠
      fun n => c * CatalanJacobi.cyclicCoefficient (R := ℝ) n := by
  intro h
  have hfirst := congrFun h 1
  rw [CatalanJacobi.cyclicCoefficient_one, mul_zero] at hfirst
  exact (actualMagnitudeTape_first_positive hL hN t).ne' hfirst

end FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic

set_option pp.proofs false
#print FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic.actualMagnitudeTape_first_positive
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic.actualMagnitudeTape_first_positive
#print FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic.actualMagnitudeTape_not_scaled_free
#print axioms FormalResearch.RiemannHypothesis.ThetaJacobiDiagnostic.actualMagnitudeTape_not_scaled_free

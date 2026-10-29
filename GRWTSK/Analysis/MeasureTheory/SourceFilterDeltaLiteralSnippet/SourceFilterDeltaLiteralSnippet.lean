
namespace SourceFilterDeltaLiteral
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourceComparison.MobiusSourceFilterQuotient
open SourceFilterDeltaScratch
noncomputable section
example : {z : ℂ | W z = 0}.Countable := W_zero_set_countable
example : ∀ᵐ t : ℝ, W ((t : ℂ) * Complex.I) ≠ 0 := boundaryW_ae_ne_zero
example (ε h t : ℝ) : boundaryFilter ε h t =
    W ((t : ℂ) * Complex.I) / W ((ε : ℂ) + (t : ℂ) * Complex.I) *
      (1 + (h : ℂ) * ((ε : ℂ) + (t : ℂ) * Complex.I))⁻¹ ^ 6 /
        (1 + (ε : ℂ) + (t : ℂ) * Complex.I) := rfl
end
end SourceFilterDeltaLiteral

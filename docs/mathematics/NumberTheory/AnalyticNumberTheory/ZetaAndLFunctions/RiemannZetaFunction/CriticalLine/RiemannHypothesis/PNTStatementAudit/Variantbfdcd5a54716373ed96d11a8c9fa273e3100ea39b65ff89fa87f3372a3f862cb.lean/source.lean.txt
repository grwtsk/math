import FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput

open Filter Asymptotics

example : ∃ c > 0,
    (Chebyshev.psi - id) =O[Filter.atTop]
      fun (x : ℝ) ↦ x * Real.exp (-c * (Real.log x) ^ ((1 : ℝ) / 10)) :=
  _root_.MediumPNT

#check @MediumPNT
#print axioms MediumPNT
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.source_quantitative_pnt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_quantitative_tail

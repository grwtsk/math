import FormalResearch.RiemannHypothesis.Laplace.Assembly

#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.positive_candidate_eq
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_meromorphic
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_analytic_positive_real
#print axioms FormalResearch.RiemannHypothesis.Laplace.Assembly.meromorphic_laplace_pole

example :
    MeromorphicOn
      FormalResearch.RiemannHypothesis.Laplace.Continuation.continuedTransform
      {s : ℂ | 0 < s.re} :=
  FormalResearch.RiemannHypothesis.Laplace.Assembly.continuedTransform_meromorphic

example :
    FormalResearch.RiemannHypothesis.Laplace.Assembly.MeromorphicLaplacePoleObligation :=
  FormalResearch.RiemannHypothesis.Laplace.Assembly.meromorphic_laplace_pole

import FormalResearch.RiemannHypothesis.Laplace.Kernel

#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.j_integral_obligation
#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.j_regular_part_obligation
#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.J_cleared_tendsto
#print axioms FormalResearch.RiemannHypothesis.Laplace.Kernel.kernel_checkpoint

example :
    FormalResearch.RiemannHypothesis.Laplace.Algebra.JIntegralObligation :=
  FormalResearch.RiemannHypothesis.Laplace.Kernel.j_integral_obligation

example :
    FormalResearch.RiemannHypothesis.Laplace.Algebra.JRegularPartObligation :=
  FormalResearch.RiemannHypothesis.Laplace.Kernel.j_regular_part_obligation

example :
    FormalResearch.RiemannHypothesis.Laplace.Algebra.KernelCheckpoint :=
  FormalResearch.RiemannHypothesis.Laplace.Kernel.kernel_checkpoint

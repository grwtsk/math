# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RhB33LaplaceKernel.Variant2d94ff9c405b6d365a81dfc1c3e765585bc905c4d8271d184414d69492ab94ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fba7f024dbe3aabc8cf50b3eec8984e4a186183f` · SHA-256 `2d94ff9c405b6d365a81dfc1c3e765585bc905c4d8271d184414d69492ab94ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

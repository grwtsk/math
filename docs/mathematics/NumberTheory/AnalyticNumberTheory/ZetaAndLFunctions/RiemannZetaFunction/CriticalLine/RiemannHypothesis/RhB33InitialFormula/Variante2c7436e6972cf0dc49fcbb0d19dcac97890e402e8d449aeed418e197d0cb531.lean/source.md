# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RhB33InitialFormula.Variante2c7436e6972cf0dc49fcbb0d19dcac97890e402e8d449aeed418e197d0cb531

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2baf286daed65508c0bb26445630663f99f4c24a` · SHA-256 `e2c7436e6972cf0dc49fcbb0d19dcac97890e402e8d449aeed418e197d0cb531`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Laplace.InitialFormula

#print axioms FormalResearch.RiemannHypothesis.Laplace.InitialFormula.integral_norms_summable
#print axioms FormalResearch.RiemannHypothesis.Laplace.InitialFormula.integral_tsum_occurrences
#print axioms FormalResearch.RiemannHypothesis.Laplace.InitialFormula.weightedSource_laplace_integrable
#print axioms FormalResearch.RiemannHypothesis.Laplace.InitialFormula.equation20
#print axioms FormalResearch.RiemannHypothesis.Laplace.InitialFormula.initial_formula_checkpoint

example :
    FormalResearch.RiemannHypothesis.Laplace.InitialFormula.rCoeff 0 = 11025 := rfl
example :
    FormalResearch.RiemannHypothesis.Laplace.InitialFormula.rCoeff 8 = 1 := rfl
example :
    FormalResearch.RiemannHypothesis.Laplace.InitialFormula.sCoeff 0 = 11025 := rfl
example :
    FormalResearch.RiemannHypothesis.Laplace.InitialFormula.sCoeff 8 = 1 := rfl

example :
    FormalResearch.RiemannHypothesis.Laplace.InitialFormula.InitialFormulaCheckpoint :=
  FormalResearch.RiemannHypothesis.Laplace.InitialFormula.initial_formula_checkpoint
```

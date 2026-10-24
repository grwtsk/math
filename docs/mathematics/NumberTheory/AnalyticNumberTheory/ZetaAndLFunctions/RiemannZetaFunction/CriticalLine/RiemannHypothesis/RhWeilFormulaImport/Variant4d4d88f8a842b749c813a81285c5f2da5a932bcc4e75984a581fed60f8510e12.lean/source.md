# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RhWeilFormulaImport.Variant4d4d88f8a842b749c813a81285c5f2da5a932bcc4e75984a581fed60f8510e12

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34c414b53ad217242d9cb786ab03c244a6701e14` · SHA-256 `4d4d88f8a842b749c813a81285c5f2da5a932bcc4e75984a581fed60f8510e12`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport

#print axioms Zeta23.WeilEF.EF_lit_zetaZeroConfig
#print axioms FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport.weil_formula
#print axioms FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport.smooth_kernel_literature_formula

example (k : ℝ → ℂ) (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) :
    Summable (fun p : FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject.ZeroPoint ↦
      (FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject.multiplicity p : ℂ) *
        Zeta23.paperFT k ((p.val - 1 / 2) / Complex.I)) ∧
    (∑' p : FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject.ZeroPoint,
      (FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroObject.multiplicity p : ℂ) *
        Zeta23.paperFT k ((p.val - 1 / 2) / Complex.I)) =
      Zeta23.EF.literatureRHS k :=
  FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport.weil_formula k hk hkc
```

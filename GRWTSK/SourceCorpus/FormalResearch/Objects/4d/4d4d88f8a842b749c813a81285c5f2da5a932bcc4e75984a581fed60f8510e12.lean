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

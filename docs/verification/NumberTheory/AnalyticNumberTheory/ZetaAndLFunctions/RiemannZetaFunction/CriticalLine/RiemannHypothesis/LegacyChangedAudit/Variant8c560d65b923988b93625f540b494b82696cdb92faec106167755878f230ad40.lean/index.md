# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LegacyChangedAudit.Variant8c560d65b923988b93625f540b494b82696cdb92faec106167755878f230ad40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccf99eb2d2421a625caedd843d160d4a21acca2f",
  "lexical_observation_count": 0,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LegacyChangedAudit/Variant8c560d65b923988b93625f540b494b82696cdb92faec106167755878f230ad40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LegacyChangedAudit/Variant8c560d65b923988b93625f540b494b82696cdb92faec106167755878f230ad40.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LegacyChangedAudit/Variant8c560d65b923988b93625f540b494b82696cdb92faec106167755878f230ad40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccf99eb2d2421a625caedd843d160d4a21acca2f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LegacyChangedAudit/Variant8c560d65b923988b93625f540b494b82696cdb92faec106167755878f230ad40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LegacyChangedAudit/Variant8c560d65b923988b93625f540b494b82696cdb92faec106167755878f230ad40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.AffineReconstruction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.AnalyticDispersion` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.BlockDirectionReindexing` — import line 4; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.BlockSchur` — import line 5; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.Certification` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.CertificationUniverseFixtures` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.CommutingInvolutions` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.ComparatorMargin` — import line 9; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.ComparatorSeparation` — import line 10; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.ExplicitSchurMatrix` — import line 11; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FiniteCumulantPrefix` — import line 12; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FiniteFourthCumulant` — import line 13; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FiniteLogAffineCovariance` — import line 14; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FiniteLogAffineFirstDerivative` — import line 15; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative` — import line 16; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FiniteRawMomentHierarchy` — import line 17; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FiniteThirdCumulant` — import line 18; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.FourPhaseConvolution` — import line 19; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.GeneralizedInverseSchur` — import line 20; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.InterventionDefect` — import line 21; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.InvertibleBlockSchur` — import line 22; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.MatrixBlockSchur` — import line 23; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.MomentCumulantPartitions` — import line 24; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.NullCrossAnnihilation` — import line 25; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant` — import line 26; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.OrderThreeRecursiveCumulant` — import line 27; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant` — import line 28; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.OrderedPartitionBridge` — import line 29; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.PhaseIIResidualQuotient` — import line 30; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.PositiveFourSector` — import line 31; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.PositiveGeometry` — import line 32; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.ProvenanceProjection` — import line 33; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.ProvenanceRange` — import line 34; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.QuadraticSwapInvolution` — import line 35; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.RecursiveCumulantHierarchy` — import line 36; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.ScalarSchur` — import line 37; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.SingularLinearSolver` — import line 38; external provider; requires a separately pinned dependency.
- `FormalResearch.PositiveAtlas.SolverIndependence` — import line 39; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Landau.Bridge` — import line 40; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Landau.Correction` — import line 41; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Laplace.Algebra` — import line 42; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Laplace.Assembly` — import line 43; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Laplace.Continuation` — import line 44; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Laplace.Expansion` — import line 45; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Laplace.InitialFormula` — import line 46; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Laplace.Kernel` — import line 47; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Laplace.PoleCertificate` — import line 48; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent` — import line 49; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula` — import line 50; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport` — import line 51; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSide.WeilArithmeticTransport` — import line 52; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport` — import line 53; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 54; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling` — import line 55; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals` — import line 56; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel` — import line 57; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 58; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport` — import line 59; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit` — import line 60; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection` — import line 61; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect` — import line 62; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel` — import line 63; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction` — import line 64; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 65; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound` — import line 66; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic` — import line 67; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectAxioms` — import line 68; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

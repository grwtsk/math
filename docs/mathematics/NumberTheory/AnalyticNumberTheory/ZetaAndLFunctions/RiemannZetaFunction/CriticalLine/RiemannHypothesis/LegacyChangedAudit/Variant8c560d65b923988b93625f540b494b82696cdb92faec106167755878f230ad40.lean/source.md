# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LegacyChangedAudit.Variant8c560d65b923988b93625f540b494b82696cdb92faec106167755878f230ad40

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccf99eb2d2421a625caedd843d160d4a21acca2f` · SHA-256 `8c560d65b923988b93625f540b494b82696cdb92faec106167755878f230ad40`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.AffineReconstruction
import FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative
import FormalResearch.PositiveAtlas.AnalyticDispersion
import FormalResearch.PositiveAtlas.BlockDirectionReindexing
import FormalResearch.PositiveAtlas.BlockSchur
import FormalResearch.PositiveAtlas.Certification
import FormalResearch.PositiveAtlas.CertificationUniverseFixtures
import FormalResearch.PositiveAtlas.CommutingInvolutions
import FormalResearch.PositiveAtlas.ComparatorMargin
import FormalResearch.PositiveAtlas.ComparatorSeparation
import FormalResearch.PositiveAtlas.ExplicitSchurMatrix
import FormalResearch.PositiveAtlas.FiniteCumulantPrefix
import FormalResearch.PositiveAtlas.FiniteFourthCumulant
import FormalResearch.PositiveAtlas.FiniteLogAffineCovariance
import FormalResearch.PositiveAtlas.FiniteLogAffineFirstDerivative
import FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative
import FormalResearch.PositiveAtlas.FiniteRawMomentHierarchy
import FormalResearch.PositiveAtlas.FiniteThirdCumulant
import FormalResearch.PositiveAtlas.FourPhaseConvolution
import FormalResearch.PositiveAtlas.GeneralizedInverseSchur
import FormalResearch.PositiveAtlas.InterventionDefect
import FormalResearch.PositiveAtlas.InvertibleBlockSchur
import FormalResearch.PositiveAtlas.MatrixBlockSchur
import FormalResearch.PositiveAtlas.MomentCumulantPartitions
import FormalResearch.PositiveAtlas.NullCrossAnnihilation
import FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant
import FormalResearch.PositiveAtlas.OrderThreeRecursiveCumulant
import FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant
import FormalResearch.PositiveAtlas.OrderedPartitionBridge
import FormalResearch.PositiveAtlas.PhaseIIResidualQuotient
import FormalResearch.PositiveAtlas.PositiveFourSector
import FormalResearch.PositiveAtlas.PositiveGeometry
import FormalResearch.PositiveAtlas.ProvenanceProjection
import FormalResearch.PositiveAtlas.ProvenanceRange
import FormalResearch.PositiveAtlas.QuadraticSwapInvolution
import FormalResearch.PositiveAtlas.RecursiveCumulantHierarchy
import FormalResearch.PositiveAtlas.ScalarSchur
import FormalResearch.PositiveAtlas.SingularLinearSolver
import FormalResearch.PositiveAtlas.SolverIndependence
import FormalResearch.RiemannHypothesis.Landau.Bridge
import FormalResearch.RiemannHypothesis.Landau.Correction
import FormalResearch.RiemannHypothesis.Laplace.Algebra
import FormalResearch.RiemannHypothesis.Laplace.Assembly
import FormalResearch.RiemannHypothesis.Laplace.Continuation
import FormalResearch.RiemannHypothesis.Laplace.Expansion
import FormalResearch.RiemannHypothesis.Laplace.InitialFormula
import FormalResearch.RiemannHypothesis.Laplace.Kernel
import FormalResearch.RiemannHypothesis.Laplace.PoleCertificate
import FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent
import FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula
import FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport
import FormalResearch.RiemannHypothesis.ZeroSide.WeilArithmeticTransport
import FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.AffineReconstruction, `FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative, `FormalResearch.PositiveAtlas.AnalyticDispersion, `FormalResearch.PositiveAtlas.BlockDirectionReindexing, `FormalResearch.PositiveAtlas.BlockSchur, `FormalResearch.PositiveAtlas.Certification, `FormalResearch.PositiveAtlas.CertificationUniverseFixtures, `FormalResearch.PositiveAtlas.CommutingInvolutions, `FormalResearch.PositiveAtlas.ComparatorMargin, `FormalResearch.PositiveAtlas.ComparatorSeparation, `FormalResearch.PositiveAtlas.ExplicitSchurMatrix, `FormalResearch.PositiveAtlas.FiniteCumulantPrefix, `FormalResearch.PositiveAtlas.FiniteFourthCumulant, `FormalResearch.PositiveAtlas.FiniteLogAffineCovariance, `FormalResearch.PositiveAtlas.FiniteLogAffineFirstDerivative, `FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative, `FormalResearch.PositiveAtlas.FiniteRawMomentHierarchy, `FormalResearch.PositiveAtlas.FiniteThirdCumulant, `FormalResearch.PositiveAtlas.FourPhaseConvolution, `FormalResearch.PositiveAtlas.GeneralizedInverseSchur, `FormalResearch.PositiveAtlas.InterventionDefect, `FormalResearch.PositiveAtlas.InvertibleBlockSchur, `FormalResearch.PositiveAtlas.MatrixBlockSchur, `FormalResearch.PositiveAtlas.MomentCumulantPartitions, `FormalResearch.PositiveAtlas.NullCrossAnnihilation, `FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant, `FormalResearch.PositiveAtlas.OrderThreeRecursiveCumulant, `FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant, `FormalResearch.PositiveAtlas.OrderedPartitionBridge, `FormalResearch.PositiveAtlas.PhaseIIResidualQuotient, `FormalResearch.PositiveAtlas.PositiveFourSector, `FormalResearch.PositiveAtlas.PositiveGeometry, `FormalResearch.PositiveAtlas.ProvenanceProjection, `FormalResearch.PositiveAtlas.ProvenanceRange, `FormalResearch.PositiveAtlas.QuadraticSwapInvolution, `FormalResearch.PositiveAtlas.RecursiveCumulantHierarchy, `FormalResearch.PositiveAtlas.ScalarSchur, `FormalResearch.PositiveAtlas.SingularLinearSolver, `FormalResearch.PositiveAtlas.SolverIndependence, `FormalResearch.RiemannHypothesis.Landau.Bridge, `FormalResearch.RiemannHypothesis.Landau.Correction, `FormalResearch.RiemannHypothesis.Laplace.Algebra, `FormalResearch.RiemannHypothesis.Laplace.Assembly, `FormalResearch.RiemannHypothesis.Laplace.Continuation, `FormalResearch.RiemannHypothesis.Laplace.Expansion, `FormalResearch.RiemannHypothesis.Laplace.InitialFormula, `FormalResearch.RiemannHypothesis.Laplace.Kernel, `FormalResearch.RiemannHypothesis.Laplace.PoleCertificate, `FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent, `FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula, `FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport, `FormalResearch.RiemannHypothesis.ZeroSide.WeilArithmeticTransport, `FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic]
  let moduleNames := env.allImportedModuleNames
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains moduleNames[idx]! then n :: acc else acc) []
  let present := names.filter fun n => (env.find? n).isSome
  let metadataOnly := names.filter fun n => (env.find? n).isNone
  for n in metadataOnly do
    unless (n.toString.splitOn ".").any (fun p => p.startsWith "_") do
      throwError "Missing public declaration {n}"
    logInfo m!"COMPILER_METADATA_ONLY {n}"
  for n in present.toArray.qsort Name.quickLt do
    let ci ← getConstInfo n
    logInfo m!"TYPE {n} levels {ci.levelParams}: {ci.type}"
    let axs ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axs}"
    for ax in axs do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected axiom {ax} for {n}"
  logInfo m!"AUDITED {present.length} declarations, including generated/private declarations"
```

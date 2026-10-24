# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.68618a0b0c8d789ef4eaae69d3c5b1ddacf385ad69965006d8f3f4e2fadd7634RHContinuationSt.Variant68618a0b0c8d789ef4eaae69d3c5b1ddacf385ad69965006d8f3f4e2fadd7634

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1587125a721d25ab9e86eae935cde3e7daa8d80` · SHA-256 `68618a0b0c8d789ef4eaae69d3c5b1ddacf385ad69965006d8f3f4e2fadd7634`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection
import FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula
import FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport
import FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport
import FormalResearch.RiemannHypothesis.ZeroSide.WeilArithmeticTransport
import FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent
import FormalResearch.RiemannHypothesis.Laplace.Algebra
import FormalResearch.RiemannHypothesis.Laplace.Kernel
import Lean.Util.CollectAxioms
open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensAbel,
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel,
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport,
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual,
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments,
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling,
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMomentReflection,
    `FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormula,
    `FormalResearch.RiemannHypothesis.ZeroSide.SmoothExplicitFormulaTransport,
    `FormalResearch.RiemannHypothesis.ZeroSide.WeilFormulaImport,
    `FormalResearch.RiemannHypothesis.ZeroSide.WeilArithmeticTransport,
    `FormalResearch.RiemannHypothesis.ZeroSide.DominatedDescent,
    `FormalResearch.RiemannHypothesis.Laplace.Algebra,
    `FormalResearch.RiemannHypothesis.Laplace.Kernel]
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains env.allImportedModuleNames[idx]! then n :: acc else acc) []
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

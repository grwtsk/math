# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F9d5febd5dbabf18be0737180d48cda4bd41e0fb9b96f56f5ee004a8d9d244d0RHAudit.Variant98acdfaeaf76c55db0abc6383e1643a995fb4881b3cc4f45ebbfde5eb3d0d1a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc15842ea853bb4a9a3fb138c10885215098b03f` · SHA-256 `ca8a902bcdfc6564eb22d3668929152ee5ba4b65540ebc1060011daff0e4afea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EstimateMobiusSplit.Variantf9d5febd5dbabf18be0737180d48cda4bd41e0fb9b96f56f5ee004a8d9d244d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f9d5febd5dbabf18be0737180d48cda4bd41e0fb9b96f56f5ee004a8d9d244d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EstimateMobiusSplit.Variantf9d5febd5dbabf18be0737180d48cda4bd41e0fb9b96f56f5ee004a8d9d244d0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f9d5febd5dbabf18be0737180d48cda4bd41e0fb9b96f56f5ee004a8d9d244d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/f9/f9d5febd5dbabf18be0737180d48cda4bd41e0fb9b96f56f5ee004a8d9d244d0--RHAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic
import Lean.Util.CollectAxioms

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EstimateMobiusSplit.Variantf9d5febd5dbabf18be0737180d48cda4bd41e0fb9b96f56f5ee004a8d9d244d0

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTailReduction, `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic]
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains env.allImportedModuleNames[idx]! then n :: acc else acc) []
  for n in names.toArray.qsort Name.quickLt do
    let ci ← getConstInfo n
    logInfo m!"TYPE {n} levels {ci.levelParams}: {ci.type}"
    let axs ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axs}"
    for ax in axs do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected axiom {ax} for {n}"
  logInfo m!"AUDITED {names.length} declarations, including generated/private declarations"
```

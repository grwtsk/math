# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.857f38c388d1a89d26f916ccb082f547884f707be05afefe72eac4ac39b73222Audit.Variante6dfc71b27861b48076b95acc698fe229a30d57841209345aec002b1dc79fe96

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `703d50ff81bab0fb12c86d8cb6793a51b0893e6b` · SHA-256 `eb5f1714d57903e0111cb375eefcd82fb818de26edacaadb912ea8c37de4a08d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormalResearch.Variant857f38c388d1a89d26f916ccb082f547884f707be05afefe72eac4ac39b73222","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"857f38c388d1a89d26f916ccb082f547884f707be05afefe72eac4ac39b73222","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FormalResearch.Variant857f38c388d1a89d26f916ccb082f547884f707be05afefe72eac4ac39b73222","mathematical_subject":"Computation.DataStructures","original_sha256":"857f38c388d1a89d26f916ccb082f547884f707be05afefe72eac4ac39b73222","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/85/857f38c388d1a89d26f916ccb082f547884f707be05afefe72eac4ac39b73222--Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormalResearch.Variant857f38c388d1a89d26f916ccb082f547884f707be05afefe72eac4ac39b73222

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.FiniteFeatureGeometry, `FormalResearch.PositiveAtlas.FiniteConditionalExpectation, `FormalResearch.PositiveAtlas.FiniteAtlasTransport, `FormalResearch.PositiveAtlas.FiniteCovarianceProjection]
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

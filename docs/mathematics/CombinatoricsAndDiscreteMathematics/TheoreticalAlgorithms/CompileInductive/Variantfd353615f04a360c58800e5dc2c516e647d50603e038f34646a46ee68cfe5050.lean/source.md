# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompileInductive.Variantfd353615f04a360c58800e5dc2c516e647d50603e038f34646a46ee68cfe5050

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edb0be030d31d8145b38113cfed958a1e398c5be` · SHA-256 `4b9e42357288fa4d34ec52ab916f865dd103326c9cb19c07ff44e90ddfd04b8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TryToCompileAllInductives.Variant943e5516a02980301eaa9b59459dc48708a6fcd95330798f3c0c66ac5a61928c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"943e5516a02980301eaa9b59459dc48708a6fcd95330798f3c0c66ac5a61928c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TryToCompileAllInductives.Variant943e5516a02980301eaa9b59459dc48708a6fcd95330798f3c0c66ac5a61928c","mathematical_subject":"Computation.DataStructures","original_sha256":"943e5516a02980301eaa9b59459dc48708a6fcd95330798f3c0c66ac5a61928c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/CompileInductive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Util.CompileInductive
import Mathlib.Data.Fin.Fin2


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TryToCompileAllInductives.Variant943e5516a02980301eaa9b59459dc48708a6fcd95330798f3c0c66ac5a61928c

compile_inductive% Fin2

example := @Nat.rec
example := @List.rec
example := @Fin2.rec
example := @PUnit.rec
example := @PEmpty.rec

example := @Nat.recOn
example := @List.recOn
example := @Fin2.recOn
example := @PUnit.recOn
example := @PEmpty.recOn
example := @And.recOn
example := @False.recOn
example := @Empty.recOn

example := @Nat.brecOn
example := @List.brecOn
example := @Fin2.brecOn

example := @List._sizeOf_1

open Lean Elab Term

def tryToCompileAllInductives : TermElabM Unit := do
  let ivs := (← getEnv).constants.toList.filterMap fun | (_, .inductInfo iv) => some iv | _ => none
  let mut success : Nat := 0
  for iv in ivs do
    try
      withCurrHeartbeats <| Mathlib.Util.compileInductive iv
      success := success + 1
    catch | e => logError m!"[{iv.name}] {e.toMessageData}"
  modifyThe Core.State fun s =>
    { s with messages.unreported := s.messages.unreported.filter (·.severity != .warning) }
  modifyThe Core.State fun s => { s with messages := s.messages.errorsToWarnings }
  logInfo m!"{success} / {ivs.length}"

-- #eval Command.liftTermElabM tryToCompileAllInductives
```

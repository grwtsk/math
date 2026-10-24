# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.3f82cd3d65d82df7ed5aeea112f7cdea16bfba7de51f39faeed6141c009632d7FullQuadraticOpe.Variantd92a2b08e92256e77fe4edd895eefee1a714ecd655eea7d1e081fbfaf8d0f5cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b0c732856a0e64ca965c7fab9566143fdbaa798` · SHA-256 `bd2c75780e1c94d2535de22eae2fe36d133784d239d955e5b9dc23308b0be987`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FullQuadraticOperator.Variant3f82cd3d65d82df7ed5aeea112f7cdea16bfba7de51f39faeed6141c009632d7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f82cd3d65d82df7ed5aeea112f7cdea16bfba7de51f39faeed6141c009632d7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.FullQuadraticOperator.Variant3f82cd3d65d82df7ed5aeea112f7cdea16bfba7de51f39faeed6141c009632d7","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3f82cd3d65d82df7ed5aeea112f7cdea16bfba7de51f39faeed6141c009632d7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/3f/3f82cd3d65d82df7ed5aeea112f7cdea16bfba7de51f39faeed6141c009632d7--FullQuadraticOperatorAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.FullQuadraticOperator
import Lean.Elab.Print
import Lean.Util.CollectAxioms


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FullQuadraticOperator.Variant3f82cd3d65d82df7ed5aeea112f7cdea16bfba7de51f39faeed6141c009632d7

open Lean Elab Command

elab "audit_full_quadratic_operator" : command => do
  let env := (← getEnv).setExporting false
  let modules := env.allImportedModuleNames
  let target := `FormalResearch.RiemannHypothesis.FullQuadraticOperator
  let candidates := (env.constants.toList.filter fun entry =>
    match env.getModuleIdxFor? entry.1 with
    | some index => modules[index]! == target
    | none => false).toArray.qsort (fun a b => Name.quickLt a.1 b.1)
  let mut entries : Array Json := #[]
  let mut badCount : Nat := 0
  let mut directCount : Nat := 0
  for (name, info) in candidates do
    let axioms ← collectAxioms name
    let bad := axioms.filter fun ax =>
      ax != ``propext && ax != ``Classical.choice && ax != ``Quot.sound
    if !bad.isEmpty then badCount := badCount + 1
    if let .axiomInfo _ := info then directCount := directCount + 1
    let ident := mkIdent name
    elabCommand (← `(command| #print sig $ident:ident))
    elabCommand (← `(command| #print axioms $ident:ident))
    entries := entries.push (Json.mkObj [
      ("name", toJson name.toString),
      ("unsafe", toJson info.isUnsafe),
      ("axioms", toJson (axioms.map Name.toString)),
      ("forbidden_axioms", toJson (bad.map Name.toString))])
  let report := Json.mkObj [
    ("selection", toJson "all declarations owned by the imported new module"),
    ("module", toJson target.toString),
    ("declarations", toJson entries),
    ("count", toJson entries.size),
    ("forbidden_count", toJson badCount),
    ("direct_axiom_count", toJson directCount)]
  liftIO <| IO.FS.writeFile "scratch/full-quadratic-operator-environment.json"
    (report.pretty ++ "\n")
  logInfo m!"All own declarations: {entries.size}; forbidden: {badCount}; direct: {directCount}."
  if badCount != 0 || directCount != 0 then
    throwError "The full quadratic operator axiom audit rejected the candidate."

audit_full_quadratic_operator
```

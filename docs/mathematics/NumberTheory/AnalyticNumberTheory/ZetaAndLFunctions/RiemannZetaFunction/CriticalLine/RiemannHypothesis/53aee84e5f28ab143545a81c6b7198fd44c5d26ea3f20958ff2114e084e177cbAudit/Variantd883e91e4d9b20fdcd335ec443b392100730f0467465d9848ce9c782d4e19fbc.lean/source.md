# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.53aee84e5f28ab143545a81c6b7198fd44c5d26ea3f20958ff2114e084e177cbAudit.Variantd883e91e4d9b20fdcd335ec443b392100730f0467465d9848ce9c782d4e19fbc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e7629df220513536151ca4499202898212f0efd` · SHA-256 `f17dfd9f0f21ac2ad2e67544d6b8b73e029ed651ec1355621f6a4557c751ffcd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtRieszQuotientMean.Variant53aee84e5f28ab143545a81c6b7198fd44c5d26ea3f20958ff2114e084e177cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53aee84e5f28ab143545a81c6b7198fd44c5d26ea3f20958ff2114e084e177cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceMangoldtRieszQuotientMean.Variant53aee84e5f28ab143545a81c6b7198fd44c5d26ea3f20958ff2114e084e177cb","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"53aee84e5f28ab143545a81c6b7198fd44c5d26ea3f20958ff2114e084e177cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/owner-refocus-six93-native-source-recovery-20261007T081625Z/bytes/53aee84e5f28ab143545a81c6b7198fd44c5d26ea3f20958ff2114e084e177cb--Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtRieszQuotientMean
import Lean.Util.CollectAxioms


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtRieszQuotientMean.Variant53aee84e5f28ab143545a81c6b7198fd44c5d26ea3f20958ff2114e084e177cb

open Lean Elab Command

run_elab do
  let env ← getEnv
  let targets := #[
    `FormalResearch.RiemannHypothesis.SourceMangoldtRieszReconstruction,
    `FormalResearch.RiemannHypothesis.SourceMangoldtRieszQuotientMean]
  let mut count : Nat := 0
  for (name, info) in env.constants.toList do
    if let some idx := env.getModuleIdxFor? name then
      if targets.contains env.header.modules[idx]!.module then
        let axioms ← collectAxioms name
        if axioms.contains `sorryAx then
          throwError "Admitted dependency in {name}"
        let allowed := #[`propext, `Classical.choice, `Quot.sound]
        if axioms.any (fun ax => !allowed.contains ax) then
          throwError "Unexpected axiom dependency in {name}: {axioms}"
        if info.isAxiom then
          throwError "New axiom declaration: {name}"
        logInfo m!"DECLARATION {name}\nTYPE {info.type}\nAXIOMS {axioms}"
        count := count + 1
  if count < 33 then
    throwError "Incomplete module declaration audit: only {count} declarations found"
  logInfo m!"AUDITED {count} declarations from both new modules"
```

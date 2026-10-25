# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OriginalNativeAuditInput.Variantbf71074d2bc35d94f837bce572f47f1c1282b3f7baa1c78a6fc0a227afa575c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72c9b27870f68efc0a114b371dd926aab2d80522` · SHA-256 `e3c42dde25f17975f5b0a3d73521eaf9b7a1c7acb936e97dc8df3f088cff16c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalization.Variantdb4007631cc3a7fff49d95bbc384cc74e16103617080224d0fc6d6a4d4ae781a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db4007631cc3a7fff49d95bbc384cc74e16103617080224d0fc6d6a4d4ae781a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Normalization.Variantdb4007631cc3a7fff49d95bbc384cc74e16103617080224d0fc6d6a4d4ae781a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"db4007631cc3a7fff49d95bbc384cc74e16103617080224d0fc6d6a4d4ae781a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/artifacts/type-theory/normalization/original-native-audit-20261007T225727Z/OriginalNativeAudit.input.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import OAI.Computability.TypeSystem.Normalization
import Lean.Util.CollectAxioms


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Normalization.Variantdb4007631cc3a7fff49d95bbc384cc74e16103617080224d0fc6d6a4d4ae781a

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true

run_cmd do
  let env ← getEnv
  let selected : Array String := #["OAI.Computability.TypeSystem.Basic", "OAI.Computability.TypeSystem.Reduction", "OAI.Computability.TypeSystem.Typing", "OAI.Computability.TypeSystem.Restriction", "OAI.Computability.TypeSystem.Contexts", "OAI.Computability.TypeSystem.Candidates", "OAI.Computability.TypeSystem.Profiles", "OAI.Computability.TypeSystem.Potential", "OAI.Computability.TypeSystem.Interface", "OAI.Computability.TypeSystem.Components", "OAI.Computability.TypeSystem.Signed", "OAI.Computability.TypeSystem.OneChild", "OAI.Computability.TypeSystem.Spaces", "OAI.Computability.TypeSystem.Plain", "OAI.Computability.TypeSystem.Values", "OAI.Computability.TypeSystem.Evaluation", "OAI.Computability.TypeSystem.Bounds", "OAI.Computability.TypeSystem.Congruence", "OAI.Computability.TypeSystem.Substitution", "OAI.Computability.TypeSystem.ObservationReduction", "OAI.Computability.TypeSystem.ObservationCandidates", "OAI.Computability.TypeSystem.Labelled", "OAI.Computability.TypeSystem.Wrappers", "OAI.Computability.TypeSystem.Logic", "OAI.Computability.TypeSystem.Channels", "OAI.Computability.TypeSystem.Relations", "OAI.Computability.TypeSystem.Pairs", "OAI.Computability.TypeSystem.Relational", "OAI.Computability.TypeSystem.Specialization", "OAI.Computability.TypeSystem.Equivalence", "OAI.Computability.TypeSystem.Response", "OAI.Computability.TypeSystem.Diagonal", "OAI.Computability.TypeSystem.Normalization"]
  for expected in selected do
    if !(env.header.moduleNames.any fun mod => mod.toString == expected) then
      throwError "Original module absent from native import closure: {expected}"
  let mut inspected : Nat := 0
  for (name, info) in env.constants do
    if let some idx := env.getModuleIdxFor? name then
      let mod := env.header.moduleNames[idx.toNat]!
      if selected.contains mod.toString then
        let axioms ← Lean.collectAxioms name
        if axioms.contains ``sorryAx then
          throwError "Rejected sorryAx dependency: {name}"
        for axiomName in axioms do
          if !#[``propext, ``Classical.choice, ``Quot.sound].contains axiomName then
            throwError "Unadmitted axiom {axiomName} in {name}"
        let declarationType ← liftTermElabM <| PrettyPrinter.ppExpr info.type
        let kind := match info with
          | .thmInfo _ => "theorem"
          | .axiomInfo _ => "axiom"
          | .defnInfo _ => "definition"
          | .opaqueInfo _ => "opaque"
          | .inductInfo _ => "inductive"
          | .ctorInfo _ => "constructor"
          | .recInfo _ => "recursor"
          | .quotInfo _ => "quotient"
        let record := Json.mkObj [
          ("name", toJson name.toString),
          ("module", toJson mod.toString),
          ("kind", toJson kind),
          ("type", toJson declarationType.pretty),
          ("axioms", toJson (axioms.map Name.toString))]
        logInfo m!"ORIGINAL_AUDIT {record.compress}"
        inspected := inspected + 1
  logInfo m!"ORIGINAL_AUDIT_COUNT {inspected}"
```

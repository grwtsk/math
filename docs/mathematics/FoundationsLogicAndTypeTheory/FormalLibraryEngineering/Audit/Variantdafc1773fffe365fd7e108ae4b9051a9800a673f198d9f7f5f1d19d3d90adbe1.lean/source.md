# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Audit.Variantdafc1773fffe365fd7e108ae4b9051a9800a673f198d9f7f5f1d19d3d90adbe1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d910d2d128a32f9a1b161c14fbe5184d0d6f716d` · SHA-256 `83900080e8efdb6bf18705d9f35a1205e60326800d862755b9bb81e39f890b62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variante069e88c26f569c304078f6d9b376f858c6f6ff4a51f5e1363dd023df0f1f834","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e069e88c26f569c304078f6d9b376f858c6f6ff4a51f5e1363dd023df0f1f834","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Lean.Variante069e88c26f569c304078f6d9b376f858c6f6ff4a51f5e1363dd023df0f1f834","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e069e88c26f569c304078f6d9b376f858c6f6ff4a51f5e1363dd023df0f1f834","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/artifacts/atlas-ghh/heisenberg-cocycle/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lean.Variante069e88c26f569c304078f6d9b376f858c6f6ff4a51f5e1363dd023df0f1f834

open Lean Elab Command
set_option pp.all true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 100000000
run_cmd do
  let env ← getEnv
  let names := (env.constants.toList.map Prod.fst).filter fun n =>
    "FormalResearch.PositiveAtlas.ModularBoundary.HeisenbergCocycle.".isPrefixOf n.toString
  for name in names do
    let axioms ← collectAxioms name
    let record := Json.mkObj [("name", toJson name.toString),
      ("axioms", toJson (axioms.map Name.toString))]
    liftIO <| IO.println ("ATLAS_HEISENBERG_EXPORT=" ++ record.compress)
    elabCommand (← `(command| #print $(mkIdent name)))
```

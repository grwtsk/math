# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UpdateGoal.Variantfa1ddbc5830defb7f276dbe47d81f653ea02b94e4fa9576363539810666d29c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96b24ccde1a1151a932ad277f3890a7a5e60ae3b` · SHA-256 `534e89606b26d49f98cef187f09cfcef48d71ea5867d28f07d69ee87fdaa0849`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UpdateForwardState.Variant89f0c6ace2500e78c56c316937a6a8e0a5556e362ffb467ab716cebae79b090c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"89f0c6ace2500e78c56c316937a6a8e0a5556e362ffb467ab716cebae79b090c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UpdateForwardState.Variant89f0c6ace2500e78c56c316937a6a8e0a5556e362ffb467ab716cebae79b090c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"89f0c6ace2500e78c56c316937a6a8e0a5556e362ffb467ab716cebae79b090c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Forward/State/UpdateGoal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.TreeM
import Aesop.Tree.RunMetaM


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UpdateForwardState.Variant89f0c6ace2500e78c56c316937a6a8e0a5556e362ffb467ab716cebae79b090c

public section

open Lean

namespace Aesop.GoalRef

def updateForwardState (phase : PhaseName) (gref : GoalRef) : TreeM Unit := do
  let g ← gref.get
  if phase == .norm then
    throwError "aesop: internal error: {decl_name%}: at goal {g.id}: norm phase not supported"
  if ! g.isNormal then
    throwError "aesop: internal error: {decl_name%}: attempt to update forward state of non-normal goal {g.id} to phase {phase}"
  let (fs, ms) ← g.runMetaMInPostNormState' fun goal =>
    g.forwardState.update goal phase
  let ms := g.forwardRuleMatches.update ms ∅ ∅
  gref.set <| g.setForwardState fs |>.setForwardRuleMatches ms

end Aesop.GoalRef
```

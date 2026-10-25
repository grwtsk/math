# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RenameBVar.Variantdffd7ae54242c2ebdb901397c47f2fc6cec27fc4996f7133588aedb8069bb25f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4e883e14eb482804d157f174d4f9fdb63b26dab` · SHA-256 `295cd6c588ddda0d99091ae7f4846b7874dc4bf4b3b5abd61fa9cbba9ad7209f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RenameBVarHyp.Variantdd185abe17676fa3004193a6a6a86945601d5da20bd68518386a9b5312d3fae3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dd185abe17676fa3004193a6a6a86945601d5da20bd68518386a9b5312d3fae3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RenameBVarHyp.Variantdd185abe17676fa3004193a6a6a86945601d5da20bd68518386a9b5312d3fae3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dd185abe17676fa3004193a6a6a86945601d5da20bd68518386a9b5312d3fae3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/RenameBVar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Arthur Paulino, Patrick Massot
-/

import Lean.Elab.Tactic.Location
import Mathlib.Util.Tactic
import Mathlib.Lean.Expr.Basic

/-!
# The `rename_bvar` tactic

This file defines the `rename_bvar` tactic, for renaming bound variables.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RenameBVarHyp.Variantdd185abe17676fa3004193a6a6a86945601d5da20bd68518386a9b5312d3fae3

namespace Mathlib.Tactic

open Lean Parser Elab Tactic

/-- Renames a bound variable in a hypothesis. -/
def renameBVarHyp (mvarId : MVarId) (fvarId : FVarId) (old new : Name) :
    MetaM Unit :=
  modifyLocalDecl mvarId fvarId fun ldecl ↦
    ldecl.setType <| ldecl.type.renameBVar old new

/-- Renames a bound variable in the target. -/
def renameBVarTarget (mvarId : MVarId) (old new : Name) : MetaM Unit :=
  modifyTarget mvarId fun e ↦ e.renameBVar old new

/--
* `rename_bvar old → new` renames all bound variables named `old` to `new` in the target.
* `rename_bvar old → new at h` does the same in hypothesis `h`.

```lean
example (P : ℕ → ℕ → Prop) (h : ∀ n, ∃ m, P n m) : ∀ l, ∃ m, P l m := by
  rename_bvar n → q at h -- h is now ∀ (q : ℕ), ∃ (m : ℕ), P q m,
  rename_bvar m → n -- target is now ∀ (l : ℕ), ∃ (n : ℕ), P k n,
  exact h -- Lean does not care about those bound variable names
```
Note: name clashes are resolved automatically.
-/
elab "rename_bvar " old:ident " → " new:ident loc?:(location)? : tactic => do
  let mvarId ← getMainGoal
  instantiateMVarDeclMVars mvarId
  match loc? with
  | none => renameBVarTarget mvarId old.getId new.getId
  | some loc =>
    withLocation (expandLocation loc)
      (fun fvarId ↦ renameBVarHyp mvarId fvarId old.getId new.getId)
      (renameBVarTarget mvarId old.getId new.getId)
      fun _ ↦ throwError "unexpected location syntax"

end Mathlib.Tactic
````

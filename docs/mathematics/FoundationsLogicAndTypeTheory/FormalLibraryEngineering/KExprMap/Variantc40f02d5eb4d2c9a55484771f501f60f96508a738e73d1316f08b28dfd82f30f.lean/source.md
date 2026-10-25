# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KExprMap.Variantc40f02d5eb4d2c9a55484771f501f60f96508a738e73d1316f08b28dfd82f30f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0aa2365fd5013e6065da04552fd3e7698fb7eca` · SHA-256 `a78874bfcc70bce3959438143be5ece5764e6990729a6869e3a70f88478908bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KExprMap.Variant83f750d642dfb1de20d67c99443ff225605431445e3dc7af11b032c737c6ac5f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"83f750d642dfb1de20d67c99443ff225605431445e3dc7af11b032c737c6ac5f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.KExprMap.Variant83f750d642dfb1de20d67c99443ff225605431445e3dc7af11b032c737c6ac5f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"83f750d642dfb1de20d67c99443ff225605431445e3dc7af11b032c737c6ac5f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/KExprMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Leonardo de Moura
-/
module

prelude
public import Lean.Data.AssocList
public import Lean.HeadIndex
public import Lean.Meta.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KExprMap.Variant83f750d642dfb1de20d67c99443ff225605431445e3dc7af11b032c737c6ac5f

public section

namespace Lean.Meta

/--
  A mapping that identifies definitionally equal expressions.
  We implement it as a mapping from `HeadIndex` to `AssocList Expr α`.

  Remark: this map may be quite inefficient if there are many `HeadIndex` collisions.
-/
structure KExprMap (α : Type) where
  map : PHashMap HeadIndex (AssocList Expr α) := {}
  deriving Inhabited

/-- Return `some v` if there is an entry `e ↦ v` in `m`. -/
def KExprMap.find? (m : KExprMap α) (e : Expr) : MetaM (Option α) := do
  match m.map.find? e.toHeadIndex with
  | none => return none
  | some ps =>
    for ⟨e', a⟩ in ps do
      if (← isDefEq e e') then
        return some a
    return none

private def updateList (ps : AssocList Expr α) (e : Expr) (v : α) : MetaM (AssocList Expr α) := do
  match ps with
  | AssocList.nil => return AssocList.cons e v ps
  | AssocList.cons e' v' ps =>
    if (← isDefEq e e') then
      return AssocList.cons e v ps
    else
      return AssocList.cons e' v' (← updateList ps e v)

/-- Insert `e ↦ v` into `m` -/
def KExprMap.insert (m : KExprMap α) (e : Expr) (v : α) : MetaM (KExprMap α) :=
  let k := e.toHeadIndex
  match m.map.find? k with
  | none    => return { map := m.map.insert k (AssocList.cons e v AssocList.nil) }
  | some ps => return { map := m.map.insert k (← updateList ps e v) }

end Lean.Meta
```

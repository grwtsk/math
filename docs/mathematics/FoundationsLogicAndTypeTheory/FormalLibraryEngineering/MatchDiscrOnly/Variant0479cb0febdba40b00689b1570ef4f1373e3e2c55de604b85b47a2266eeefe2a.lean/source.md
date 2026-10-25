# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MatchDiscrOnly.Variant0479cb0febdba40b00689b1570ef4f1373e3e2c55de604b85b47a2266eeefe2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a934787fe1436518f1fe7f075f352b6e153ec85` · SHA-256 `223957c5f5debc2cbde02e4634ccffedcc98a3569bca02d4b9d5f53298cdb217`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MarkAsSimpMatchDiscrsOnly.Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MarkAsSimpMatchDiscrsOnly.Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/MatchDiscrOnly.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Simp.Simproc
import Init.Grind.Util
import Init.Simproc
import Lean.Meta.Tactic.Simp.Rewrite

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MarkAsSimpMatchDiscrsOnly.Variant82cb94eb46d3cd92e602c1c91407fab313714dc29147f36c44c749760226db0f

public section
namespace Lean.Meta.Grind
/--
Returns `Grind.simpMatchDiscrsOnly e`. Recall that `Grind.simpMatchDiscrsOnly` is
a gadget for instructing the `grind` simplifier to only normalize/simplify
the discriminants of a `match`-expression. See `reduceSimpMatchDiscrsOnly`.
-/
def markAsSimpMatchDiscrsOnly (e : Expr) : MetaM Expr :=
  mkAppM ``Grind.simpMatchDiscrsOnly #[e]

def isSimpMatchDiscrsOnly (e : Expr) :=
  e.isAppOfArity ``Grind.simpMatchDiscrsOnly 2

builtin_simproc_decl reduceSimpMatchDiscrsOnly (Grind.simpMatchDiscrsOnly _) := fun e => do
  let_expr Grind.simpMatchDiscrsOnly _ m ← e | return .continue
  let .const declName _ := m.getAppFn
    | return .done { expr := e }
  let some info ← getMatcherInfo? declName
    | return .done { expr := e }
  if let some r ← Simp.simpMatchDiscrs? info m then
    return .done { r with expr := (← markAsSimpMatchDiscrsOnly r.expr) }
  return .done { expr := e }

/-- Adds `reduceSimpMatchDiscrsOnly` to `s` -/
def addSimpMatchDiscrsOnly (s : Simprocs) : CoreM Simprocs := do
  s.add ``reduceSimpMatchDiscrsOnly (post := false)

/-- Erases `Grind.simpMatchDiscrsOnly` annotations. -/
def eraseSimpMatchDiscrsOnly (e : Expr) : MetaM Simp.Result := do
  if e.find? isSimpMatchDiscrsOnly |>.isNone then
    return { expr := e }
  else
    let pre (e : Expr) := do
      let_expr Grind.simpMatchDiscrsOnly _ a := e | return .continue e
      return .continue a
    let e' ← Core.transform e (pre := pre)
    /-
    `grind` uses the `.reducible` transparency setting, and `Grind.simpMatchDiscrsOnly` is not
    reducible. Thus, `e` and `e'` are not definitionally equal in this setting, and we must
    add a hint.
    -/
    return { expr := e', proof? := mkExpectedPropHint (← mkEqRefl e') (← mkEq e e') }

end Lean.Meta.Grind
```

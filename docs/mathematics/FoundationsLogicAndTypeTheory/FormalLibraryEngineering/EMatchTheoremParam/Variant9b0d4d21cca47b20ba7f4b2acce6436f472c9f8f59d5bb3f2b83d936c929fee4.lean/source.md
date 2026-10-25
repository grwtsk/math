# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EMatchTheoremParam.Variant9b0d4d21cca47b20ba7f4b2acce6436f472c9f8f59d5bb3f2b83d936c929fee4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8451a10a9f2881fdf1eaec98b40e03e877cd9568` · SHA-256 `bcc7c8d49880c4a47829a0486d757841b8e9227f55153868ab859a3154cc2963`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLocalTheoremAnchors.Variantd5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetLocalTheoremAnchors.Variantd5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/EMatchTheoremParam.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Anchor

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetLocalTheoremAnchors.Variantd5c7f952f32a3c036b0f99211fc82a89c73d50c42f1931e74f2e1bafdf855a85

namespace Lean.Meta.Grind
/--
Returns pairs `(type, anchor)` where `type` is the type of a local theorem,
and `anchor` the anchor associated with it.
-/
public def getLocalTheoremAnchors (goal : Goal) : GrindM (Array ExprWithAnchor) := do
  let (found, entries) ← go {} {} goal.ematch.thms
  let (_, entries) ← go found entries goal.ematch.newThms
  return entries
where
  go (found : Std.HashSet Grind.Origin) (result : Array ExprWithAnchor) (thms : PArray EMatchTheorem)
      : GrindM (Std.HashSet Grind.Origin × Array ExprWithAnchor) := do
    let mut found := found
    let mut result := result
    for thm in thms do
      if !thm.origin matches .decl _ then
      unless found.contains thm.origin do
        found := found.insert thm.origin
        let type ← inferType thm.proof
        let anchor ← getAnchor type
        result := result.push { anchor, e := type }
        pure ()
    return (found, result)

/--
Returns the number of digits needed to distinguish between different anchors.
-/
public def getNumDigitsForLocalTheoremAnchors (goal : Goal) : GrindM Nat := do
  return getNumDigitsForAnchors (← getLocalTheoremAnchors goal)

def globalDeclToGrindLemmaSyntax (declName : Name) (kind : EMatchTheoremKind) (minIndexable : Bool)
    : MetaM (TSyntax [``Parser.Tactic.grindLemma, ``Parser.Tactic.grindLemmaMin]) := do
  if let some declName ← isEqnThm? declName then
    let decl : Ident := mkIdent (← unresolveNameGlobalAvoidingLocals declName)
    `(Parser.Tactic.grindLemma| $decl:ident)
  else
    let decl : Ident := mkIdent (← unresolveNameGlobalAvoidingLocals declName)
    match kind, minIndexable with
    | .eqLhs false,   _     => `(Parser.Tactic.grindLemma| = $decl:ident)
    | .eqLhs true,    _     => `(Parser.Tactic.grindLemma| = gen $decl:ident)
    | .eqRhs false,   _     => `(Parser.Tactic.grindLemma| =_ $decl:ident)
    | .eqRhs true,    _     => `(Parser.Tactic.grindLemma| =_ gen $decl:ident)
    | .eqBoth false,  _     => `(Parser.Tactic.grindLemma| _=_ $decl:ident)
    | .eqBoth true,   _     => `(Parser.Tactic.grindLemma| _=_ gen $decl:ident)
    | .eqBwd,         _     => `(Parser.Tactic.grindLemma| ←= $decl:ident)
    | .user,          _     => `(Parser.Tactic.grindLemma| usr $decl:ident)
    | .bwd false,     false => `(Parser.Tactic.grindLemma| ← $decl:ident)
    | .bwd true,      false => `(Parser.Tactic.grindLemma| ← gen $decl:ident)
    | .fwd,           false => `(Parser.Tactic.grindLemma| → $decl:ident)
    | .leftRight,     false => `(Parser.Tactic.grindLemma| => $decl:ident)
    | .rightLeft,     false => `(Parser.Tactic.grindLemma| <= $decl:ident)
    | .default false, false => `(Parser.Tactic.grindLemma| $decl:ident)
    | .default true,  false => `(Parser.Tactic.grindLemma| gen $decl:ident)
    | .bwd false,     true  => `(Parser.Tactic.grindLemmaMin| ! ← $decl:ident)
    | .bwd true,      true  => `(Parser.Tactic.grindLemmaMin| ! ← gen $decl:ident)
    | .fwd,           true  => `(Parser.Tactic.grindLemmaMin| ! → $decl:ident)
    | .leftRight,     true  => `(Parser.Tactic.grindLemmaMin| ! => $decl:ident)
    | .rightLeft,     true  => `(Parser.Tactic.grindLemmaMin| ! <= $decl:ident)
    | .default false, true  => `(Parser.Tactic.grindLemmaMin| ! $decl:ident)
    | .default true,  true  => `(Parser.Tactic.grindLemmaMin| ! gen $decl:ident)

def toGrindParam (stx : TSyntax [``Parser.Tactic.grindLemma, ``Parser.Tactic.grindLemmaMin])
    : TSyntax ``Parser.Tactic.grindParam :=
  mkNode ``Parser.Tactic.grindParam #[stx]

public def globalDeclToGrindParamSyntax (declName : Name) (kind : EMatchTheoremKind) (minIndexable : Bool)
    : MetaM (TSyntax ``Parser.Tactic.grindParam) := do
  return toGrindParam (← globalDeclToGrindLemmaSyntax declName kind minIndexable)

def toInstantiateParam (stx : TSyntax [``Parser.Tactic.grindLemma, ``Parser.Tactic.grindLemmaMin])
    : TSyntax ``Parser.Tactic.Grind.thm :=
  mkNode ``Parser.Tactic.Grind.thm #[stx]

public def globalDeclToInstantiateParamSyntax (declName : Name) (kind : EMatchTheoremKind) (minIndexable : Bool)
    : MetaM (TSyntax ``Parser.Tactic.Grind.thm) := do
  return toInstantiateParam (← globalDeclToGrindLemmaSyntax declName kind minIndexable)

end Lean.Meta.Grind
```

# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variante979427b6fedbc3658ec75ad4300c783e0a2d64f4299a3aef0d42a2b8903f144

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f1b2db2dedbfa73194af5f0dba2a75c293f9b98` · SHA-256 `341e4d57fc92f9599b12b28683a6bb8179dd53cf0392af019eb0a1ba6bb45a8a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnexpandPostCondNoThrow.Variantd2d5d80c907c98f7a8d0e0ee71bccf0343042ffc6d39aad57c9c5213233abd81","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d2d5d80c907c98f7a8d0e0ee71bccf0343042ffc6d39aad57c9c5213233abd81","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.UnexpandPostCondNoThrow.Variantd2d5d80c907c98f7a8d0e0ee71bccf0343042ffc6d39aad57c9c5213233abd81","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d2d5d80c907c98f7a8d0e0ee71bccf0343042ffc6d39aad57c9c5213233abd81","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Do/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Lean.Elab.BuiltinNotation
public import Std.Do.Triple.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnexpandPostCondNoThrow.Variantd2d5d80c907c98f7a8d0e0ee71bccf0343042ffc6d39aad57c9c5213233abd81

public section

namespace Std.Do

open Lean Parser Meta Elab Term PrettyPrinter Delaborator

open Std.Do in
@[builtin_delab PostCond.noThrow]
private def unexpandPostCondNoThrow : Delab := do
  match ← SubExpr.withAppArg <| delab with
  | `(fun $xs:term* => $e) =>
    let t ← `(⇓ $xs* => $(← SPred.Notation.unpack e))
    return ⟨t.raw⟩
  | t => `($(mkIdent ``PostCond.noThrow):term $t)

open Std.Do in
@[builtin_delab PostCond.mayThrow]
private def unexpandPostCondMayThrow : Delab := do
  match ← SubExpr.withAppArg <| delab with
  | `(fun $xs:term* => $e) =>
    let t ← `(⇓? $xs* => $(← SPred.Notation.unpack e))
    return ⟨t.raw⟩
  | t => `($(mkIdent ``PostCond.mayThrow):term $t)

@[inherit_doc Triple, builtin_doc, builtin_term_elab triple]
private def elabTriple : TermElab
  | `(⦃$P⦄ $x ⦃$Q⦄), _ => do
    -- In a simple world, this would just be a macro expanding to
    -- `Triple $x spred($P) spred($Q)`.
    -- However, currently we need to help type inference for P and Q.
    -- Specifically, if `x : StateT σ m α`, `[wp : WP m ps]` and `P : σ → Assertion ps`,
    -- then `Triple x P _` will not elaborate because `σ → Assertion ps =?= Assertion ?ps` fails.
    -- We must first instantiate `?ps` to `.arg σ ps` through the `outParam` of `WP`, hence this elaborator.
    -- This is tracked in #8766, and #8074 might be a fix.
    let (u, v, m, α, ps, inst, x) ← withRef x do
      let x ← elabTerm x none
      let ty ← inferType x
      tryPostponeIfMVar ty
      let ty ← instantiateMVars ty
      let .app m α := ty.consumeMData | throwError "Type of {x} is not a type application: {ty}"
      let some u ← Level.dec <$> getLevel α | throwError "Wrong level 0 {ty}"
      let some v ← Level.dec <$> getLevel ty | throwError "Wrong level 0 {ty}"
      let ps ← mkFreshExprMVar (mkConst ``PostShape [u])
      let inst ← synthInstance (mkApp2 (mkConst ``WP [u, v]) m ps)
      return (u, v, m, α, ps, inst, x)
    let P ← elabTerm (← `(spred($P))) (mkApp (mkConst ``Assertion [u]) ps)
    let Q ← elabTerm Q (mkApp2 (mkConst ``PostCond [u]) α ps)
    return mkApp7 (mkConst ``Triple [u, v]) m ps inst α x P Q
  | _, _ => throwUnsupportedSyntax
```

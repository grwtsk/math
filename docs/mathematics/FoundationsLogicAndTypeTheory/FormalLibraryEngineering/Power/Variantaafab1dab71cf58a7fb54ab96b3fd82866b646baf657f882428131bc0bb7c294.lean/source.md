# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Power.Variantaafab1dab71cf58a7fb54ab96b3fd82866b646baf657f882428131bc0bb7c294

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1d9fcb958c839308aec7f0dfd531dccf4b8a88a` · SHA-256 `cb6244578a5095679426648ff5470d909975bca7630419d134501ae7ccb68073`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grind.Varianta4102f6c7e9877f3d9ae1c25abe9af3d2e144d5f07e42e9acc7dc92188fe7422","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4102f6c7e9877f3d9ae1c25abe9af3d2e144d5f07e42e9acc7dc92188fe7422","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Grind.Varianta4102f6c7e9877f3d9ae1c25abe9af3d2e144d5f07e42e9acc7dc92188fe7422","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a4102f6c7e9877f3d9ae1c25abe9af3d2e144d5f07e42e9acc7dc92188fe7422","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Arith/CommRing/Power.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Init.Grind
import Lean.Meta.Tactic.Grind.Arith.Simproc
import Lean.Meta.NatInstTesters
public import Lean.Meta.Tactic.Grind.PropagatorAttr

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grind.Varianta4102f6c7e9877f3d9ae1c25abe9af3d2e144d5f07e42e9acc7dc92188fe7422

public section
namespace Lean.Meta.Grind.Arith.CommRing

/-
**Note**: It is safe to use (the more efficient) structural instances tests here because `grind` uses the canonicalizer.
-/
open Structural in
builtin_grind_propagator propagatePower ↑HPow.hPow := fun e => do
  -- **Note**: We are not checking whether the `^` instance is the expected ones.
  let_expr HPow.hPow α n α' _ a b := e | return ()
  let_expr Nat := n | return ()
  unless isSameExpr α α' do return ()
  traverseEqc b fun bENode => do
    let b' := bENode.self
    match_expr b' with
    | HAdd.hAdd n₁ n₂ n₃ inst b₁ b₂ =>
      unless isSameExpr n n₁ && isSameExpr n n₂ && isSameExpr n n₃ do return ()
      unless (← isInstHAddNat inst) do return ()
      let pwFn := e.appFn!.appFn!
      let r ← mkMul (mkApp2 pwFn a b₁) (mkApp2 pwFn a b₂)
      let r ← preprocess r
      internalize r.expr (← getGeneration e)
      let some h ← mkSemiringThm ``Grind.Semiring.pow_add_congr α | return ()
      let h := mkApp7 h a r.expr b b₁ b₂ (← mkEqProof b b') (← r.getProof)
      pushEq e r.expr h
    | _ => return ()

end Lean.Meta.Grind.Arith.CommRing
```

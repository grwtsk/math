# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variantc68a2e350fa867446f3ba7d1d8bc9781910aafd27231ebcf4f1d0d6b6a91052a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0e625f670cf7facc758906ba8accd8051717a2fa` · SHA-256 `2c05c1d1e7a48af80fbd4f8581f32ff2a5414e02c57a6f2bf5dccdc156238f31`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NestedProof.Variant1ecb7094fab7c7e65c6b6cc5b41e6e91c0499e99dfbfb2a10fda7d2f909e57d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ecb7094fab7c7e65c6b6cc5b41e6e91c0499e99dfbfb2a10fda7d2f909e57d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NestedProof.Variant1ecb7094fab7c7e65c6b6cc5b41e6e91c0499e99dfbfb2a10fda7d2f909e57d9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1ecb7094fab7c7e65c6b6cc5b41e6e91c0499e99dfbfb2a10fda7d2f909e57d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Grind/Util.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Init.Data.Cast
public import Init.Grind.Tactics
public meta import Init.Grind.Tactics
import Init.Classical

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NestedProof.Variant1ecb7094fab7c7e65c6b6cc5b41e6e91c0499e99dfbfb2a10fda7d2f909e57d9

public section
namespace Lean.Grind

/-- A helper gadget for annotating nested proofs in goals. -/
theorem nestedProof (p : Prop) {h : p} : p := h

/-- A helper gadget for annotating nested decidable instances in goals. -/
-- Remark: we currently have special gadgets for the two most common subsingletons in Lean, and are the only
-- currently supported in `grind`. We may add a generic `nestedSubsingleton` inn the future.
@[expose] def nestedDecidable {p : Prop} (h : Decidable p) : Decidable p := h

/--
Gadget for marking `match`-expressions that should not be reduced by the `grind` simplifier, but the discriminants should be normalized.
We use it when adding instances of `match`-equations to prevent them from being simplified to true.

Remark: it must not be marked as `[reducible]`. Otherwise, `simp` will reduce
```
simpMatchDiscrsOnly (match 0 with | 0 => true | _ => false) = true
```
using `eq_self`.
-/
@[expose] def simpMatchDiscrsOnly {α : Sort u} (a : α) : α := a

/--
Gadget for protecting lambda abstractions created by `abstractGroundMismatches?`
from beta reduction during preprocessing. See `ProveEq.lean` for details.
-/
@[expose] def abstractFn {α : Sort u} (a : α) : α := a

/-- Gadget for representing offsets `t+k` in patterns. -/
def offset (a b : Nat) : Nat := a + b

/-- Gadget for representing `a = b` in patterns for backward propagation. -/
def eqBwdPattern (a b : α) : Prop := a = b

/--
Gadget for annotating the equalities in `match`-equations conclusions.
`_origin` is the term used to instantiate the `match`-equation using E-matching.
When `EqMatch a b origin` is `True`, we mark `origin` as a resolved case-split.
-/
abbrev EqMatch (a b : α) {_origin : α} : Prop := a = b

/--
Gadget for annotating conditions of `match` equational lemmas.
We use this annotation for two different reasons:
- We don't want to normalize them.
- We have a propagator for them.
-/
abbrev MatchCond (p : Prop) : Prop := p

/--
Similar to `MatchCond`, but not reducible. We use it to ensure `simp`
will not eliminate it. After we apply `simp`, we replace it with `MatchCond`.
-/
@[expose] def PreMatchCond (p : Prop) : Prop := p

theorem nestedProof_congr (p q : Prop) (h : p = q) (hp : p) (hq : q) : @nestedProof p hp ≍ @nestedProof q hq := by
  subst h; apply HEq.refl

theorem nestedDecidable_congr (p q : Prop) (h : p = q) (hp : Decidable p) (hq : Decidable q) : @nestedDecidable p hp ≍ @nestedDecidable q hq := by
  subst h; cases hp <;> cases hq <;> simp <;> contradiction

@[app_unexpander nestedProof]
meta def nestedProofUnexpander : PrettyPrinter.Unexpander := fun stx => do
  match stx with
  | `($_ $p:term) => `(‹$p›)
  | _ => throw ()

@[app_unexpander MatchCond]
meta def matchCondUnexpander : PrettyPrinter.Unexpander := fun stx => do
  match stx with
  | `($_ $p:term) => `($p)
  | _ => throw ()

@[app_unexpander EqMatch]
meta def eqMatchUnexpander : PrettyPrinter.Unexpander := fun stx => do
  match stx with
  | `($_ $lhs:term $rhs:term) => `($lhs = $rhs)
  | _ => throw ()

@[app_unexpander offset]
meta def offsetUnexpander : PrettyPrinter.Unexpander := fun stx => do
  match stx with
  | `($_ $lhs:term $rhs:term) => `($lhs + $rhs)
  | _ => throw ()

/-
Remark: `↑a` is notation for `Nat.cast a`. `Nat.cast` is an abbreviation
for `NatCast.natCast`. We added it because users wanted to use dot-notation (e.g., `a.cast`).
`grind` expands all reducible definitions. Thus, a `grind` failure state contains
many `NatCast.natCast` applications which is too verbose. We add the following
unexpander to cope with this issue.
-/
@[app_unexpander NatCast.natCast]
meta def natCastUnexpander : PrettyPrinter.Unexpander := fun stx => do
  match stx with
  | `($_ $a:term) => `(↑$a)
  | _ => throw ()

/--
A marker to indicate that a proposition has already been normalized and should not
be processed again.

This prevents issues when case-splitting on the condition `c` of an if-then-else
expression. Without this marker, the negated condition `¬c` might be rewritten into
an alternative form `c'`, which `grind` may not recognize as equivalent to `¬c`.
As a result, `grind` could fail to propagate that `if c then a else b` simplifies to `b`
in the `¬c` branch.
-/
@[expose]
def alreadyNorm (p : Prop) : Prop := p

/--
`Classical.em` variant where disjuncts are marked with `alreadyNorm` gadget.
See comment at `alreadyNorm`
-/
theorem em (p : Prop) : alreadyNorm p ∨ alreadyNorm (¬ p) :=
  Classical.em p

/--
Marker for grind-solved subproofs in `exact? +grind` suggestions.
When `exact?` uses grind as a discharger, it wraps the proof in this marker
so that the unexpander can replace it with `(by grind)` in the suggestion.
-/
@[inline] def Marker {α : Sort u} (a : α) : α := a

@[app_unexpander Marker]
meta def markerUnexpander : PrettyPrinter.Unexpander := fun _ => do
  `(by grind)

end Lean.Grind
````

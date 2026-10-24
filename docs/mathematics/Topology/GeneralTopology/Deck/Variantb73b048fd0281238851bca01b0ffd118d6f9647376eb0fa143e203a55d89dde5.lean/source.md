# Complete source: GRWTSK.Topology.GeneralTopology.Deck.Variantb73b048fd0281238851bca01b0ffd118d6f9647376eb0fa143e203a55d89dde5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cb55e65bf5edc4081559329b7916f470fc3bbe1` · SHA-256 `6f9947aa9662108674f606c27f28aa287f70a47bddbd2382a38bd8729cca6ff9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Deck.Variantf92f1e1ff04f2d1e762fb856fb8a9e390968cd17a29c3d7c9bab7c78d0ab9119","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f92f1e1ff04f2d1e762fb856fb8a9e390968cd17a29c3d7c9bab7c78d0ab9119","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Deck.Variantf92f1e1ff04f2d1e762fb856fb8a9e390968cd17a29c3d7c9bab7c78d0ab9119","mathematical_subject":"Topology.GeneralTopology","original_sha256":"f92f1e1ff04f2d1e762fb856fb8a9e390968cd17a29c3d7c9bab7c78d0ab9119","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Topology/Covering/Deck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Algebra.Group.Subgroup.Actions
public import Mathlib.Topology.Algebra.ConstMulAction

/-!
# Deck transformations

For a map `p : E → X`, the **deck transformation group** `deck p` is the subgroup of
`E ≃ₜ E` consisting of self-homeomorphisms `h` with `p ∘ h = p`. No topology on `X` or
continuity of `p` is assumed.

The definition is stated for an arbitrary `p`; no `IsCoveringMap` hypothesis is needed
for the basic group structure or the canonical action. Theorems characterising deck
transformations via path lifting (when `p` is a covering map of a path-connected,
locally path-connected base) belong to follow-up files.

## Main definitions

* `deck p`: the subgroup of `E ≃ₜ E` consisting of homeomorphisms commuting with `p`.

## Main results

* `deck p` is a `Group`, acts on `E` via `MulAction`, the action is faithful and
  continuous in the second variable; these all follow automatically from the
  `Subgroup`-action transfers together with `Homeomorph.applyMulAction`.
* `deck.proj_smul`: deck transformations commute with `p`.
-/


namespace GRWTSK.Topology.GeneralTopology.Deck.Variantf92f1e1ff04f2d1e762fb856fb8a9e390968cd17a29c3d7c9bab7c78d0ab9119

@[expose] public section

variable {E X : Type*} [TopologicalSpace E]

/-- The deck transformation group of a map `p : E → X`: the subgroup of self-homeomorphisms
of `E` commuting with `p`. -/
def deck (p : E → X) : Subgroup (E ≃ₜ E) where
  carrier := { h | p ∘ h = p }
  one_mem' := rfl
  mul_mem' {f g} hf hg := by ext e; exact (congrFun hf (g e)).trans (congrFun hg e)
  inv_mem' {f} hf := by ext e; simpa using (congrFun hf (f.symm e)).symm

namespace deck

variable {p : E → X}

theorem mem_iff {h : E ≃ₜ E} : h ∈ deck p ↔ p ∘ h = p := Iff.rfl

@[simp]
theorem comp_eq (h : deck p) : p ∘ (h : E ≃ₜ E) = p := h.2

theorem proj_smul (h : deck p) (e : E) : p (h • e) = p e :=
  congrFun h.2 e

instance : ContinuousConstSMul (deck p) E :=
  ⟨fun h ↦ (h : E ≃ₜ E).continuous⟩

end deck
```

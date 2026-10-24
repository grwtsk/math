# Complete source: GRWTSK.Topology.GeneralTopology.Sigma.Variant6fd35b4d8fc634d86326cbcdded58287ebc9df7a01908624f678bf2306d8bf56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a21ebe5f161612f1fb4820367cd5e17a9ae7c50f` · SHA-256 `69b12c34cbae6a4d3d124661b32bbec04e6a5f624f59bb59024c38964fcb423c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.EmbeddingSigmaMkComp.Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.EmbeddingSigmaMkComp.Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0","mathematical_subject":"Topology.GeneralTopology","original_sha256":"9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Topology/ContinuousFunction/Sigma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Topology.Connected
import Mathlib.Topology.CompactOpen

/-!
# Equivalence between `C(X, Σ i, Y i)` and `Σ i, C(X, Y i)`

If `X` is a connected topological space, then for every continuous map `f` from `X` to the disjoint
union of a collection of topological spaces `Y i` there exists a unique index `i` and a continuous
map from `g` to `Y i` such that `f` is the composition of the natural embedding
`Sigma.mk i : Y i → Σ i, Y i` with `g`.

This defines an equivalence between `C(X, Σ i, Y i)` and `Σ i, C(X, Y i)`. In fact, this equivalence
is a homeomorphism if the spaces of continuous maps are equipped with the compact-open topology.

## Implementation notes

There are two natural ways to talk about this result: one is to say that for each `f` there exist
unique `i` and `g`; another one is to define a noncomputable equivalence. We choose the second way
because it is easier to use an equivalence in applications.

## TODO

Some results in this file can be generalized to the case when `X` is a preconnected space. However,
if `X` is empty, then any index `i` will work, so there is no 1-to-1 corespondence.

## Keywords

continuous map, sigma type, disjoint union
-/


namespace GRWTSK.Topology.GeneralTopology.EmbeddingSigmaMkComp.Variant9e4ae449727e23a275bafa61ea55066309bb5e70fbd4aee23561507caeeee2e0

noncomputable section

open scoped Topology
open Filter

variable {X ι : Type*} {Y : ι → Type*} [TopologicalSpace X] [∀ i, TopologicalSpace (Y i)]

namespace ContinuousMap

theorem embedding_sigmaMk_comp [Nonempty X] :
    Embedding (fun g : Σ i, C(X, Y i) ↦ (sigmaMk g.1).comp g.2) where
  toInducing := inducing_sigma.2
    ⟨fun i ↦ (sigmaMk i).inducing_comp embedding_sigmaMk.toInducing, fun i ↦
      let ⟨x⟩ := ‹Nonempty X›
      ⟨_, (isOpen_sigma_fst_preimage {i}).preimage (continuous_eval_const x), fun _ ↦ Iff.rfl⟩⟩
  inj := by
    · rintro ⟨i, g⟩ ⟨i', g'⟩ h
      obtain ⟨rfl, hg⟩ : i = i' ∧ HEq (⇑g) (⇑g') :=
        Function.eq_of_sigmaMk_comp <| congr_arg FunLike.coe h
      simpa using hg

section ConnectedSpace

variable [ConnectedSpace X]

/-- Every continuous map from a connected topological space to the disjoint union of a family of
topological spaces is a composition of the embedding `ContinuousMap.sigmMk i : C(Y i, Σ i, Y i)` for
some `i` and a continuous map `g : C(X, Y i)`. See also `Continuous.exists_lift_sigma` for a version
with unbundled functions and `ContinuousMap.sigmaCodHomeomorph` for a homeomorphism defined using
this fact. -/
theorem exists_lift_sigma (f : C(X, Σ i, Y i)) : ∃ i g, f = (sigmaMk i).comp g :=
  let ⟨i, g, hg, hfg⟩ := f.continuous.exists_lift_sigma
  ⟨i, ⟨g, hg⟩, FunLike.ext' hfg⟩

variable (X Y)

/-- Homeomorphism between the type `C(X, Σ i, Y i)` of continuous maps from a connected topological
space to the disjoint union of a family of topological spaces and the disjoint union of the types of
continuous maps `C(X, Y i)`.

The inverse map sends `⟨i, g⟩` to `ContinuousMap.comp (ContinuousMap.sigmaMk i) g`. -/
@[simps! symm_apply]
def sigmaCodHomeomorph : C(X, Σ i, Y i) ≃ₜ Σ i, C(X, Y i) :=
  .symm <| Equiv.toHomeomorphOfInducing
    (.ofBijective _ ⟨embedding_sigmaMk_comp.inj, fun f ↦
      let ⟨i, g, hg⟩ := f.exists_lift_sigma; ⟨⟨i, g⟩, hg.symm⟩⟩)
    embedding_sigmaMk_comp.toInducing
```

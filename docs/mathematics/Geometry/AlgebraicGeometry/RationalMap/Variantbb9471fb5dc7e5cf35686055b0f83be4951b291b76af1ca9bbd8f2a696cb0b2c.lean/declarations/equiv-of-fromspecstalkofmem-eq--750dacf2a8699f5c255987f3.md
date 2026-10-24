# equiv_of_fromSpecStalkOfMem_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d59b9102d2dfc449e2da16f0d28631b21cda0758",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb561014-989a-94e1-5720-db14cfc5c4d6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a39f87a3-bf75-03a8-3611-f97ea0e22bdb",
  "kind": "lemma",
  "lexical_name": "equiv_of_fromSpecStalkOfMem_eq",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "equiv-of-fromspecstalkofmem-eq--750dacf2a8699f5c255987f3",
  "source": {
    "blob": "d59b9102d2dfc449e2da16f0d28631b21cda0758",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 235,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:750dacf2a8699f5c255987f316182e47ec18a3c161d6b25aa90504787f61a056",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a39f87a3-bf75-03a8-3611-f97ea0e22bdb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equiv_of_fromSpecStalkOfMem_eq [IrreducibleSpace X]
    {x : X} [X.IsGermInjectiveAt x] (f g : X.PartialMap Y)
    (hxf : x ∈ f.domain) (hxg : x ∈ g.domain)
    (H : f.fromSpecStalkOfMem hxf = g.fromSpecStalkOfMem hxg) : f.equiv g := by
  have hdense : Dense ((f.domain ⊓ g.domain) : Set X) :=
    f.dense_domain.inter_of_isOpen_left g.dense_domain f.domain.2
  have := (isGermInjectiveAt_iff_of_isOpenImmersion (f := (f.domain ⊓ g.domain).ι)
    (x := ⟨x, hxf, hxg⟩)).mp ‹_›
  have := spread_out_unique_of_isGermInjective' (X := (f.domain ⊓ g.domain).toScheme)
    (X.homOfLE inf_le_left ≫ f.hom) (X.homOfLE inf_le_right ≫ g.hom) (x := ⟨x, hxf, hxg⟩) ?_
  · obtain ⟨U, hxU, e⟩ := this
    refine ⟨(f.domain ⊓ g.domain).ι ''ᵁ U, ((f.domain ⊓ g.domain).ι ''ᵁ U).2.dense
      ⟨_, ⟨_, hxU, rfl⟩⟩,
      ((Set.image_subset_range _ _).trans_eq (Subtype.range_val)).trans inf_le_left,
      ((Set.image_subset_range _ _).trans_eq (Subtype.range_val)).trans inf_le_right, ?_⟩
    rw [← cancel_epi (Scheme.Hom.isoImage _ _).hom]
    simp only [TopologicalSpace.Opens.carrier_eq_coe, IsOpenMap.coe_functor_obj,
      TopologicalSpace.Opens.coe_inf, restrict_hom, ← Category.assoc] at e ⊢
    convert e using 2 <;> rw [← cancel_mono (Scheme.Opens.ι _)] <;> simp
  · rw [← f.fromSpecStalkOfMem_restrict hdense inf_le_left ⟨hxf, hxg⟩,
      ← g.fromSpecStalkOfMem_restrict hdense inf_le_right ⟨hxf, hxg⟩] at H
    simpa only [fromSpecStalkOfMem, restrict_domain, Opens.fromSpecStalkOfMem, Spec.map_inv,
      restrict_hom, Category.assoc, IsIso.eq_inv_comp, IsIso.hom_inv_id_assoc] using H

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RationalMap/Variantbb9471fb5dc7e5cf35686055b0f83be4951b291b76af1ca9bbd8f2a696cb0b2c.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d59b9102d2dfc449e2da16f0d28631b21cda0758` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

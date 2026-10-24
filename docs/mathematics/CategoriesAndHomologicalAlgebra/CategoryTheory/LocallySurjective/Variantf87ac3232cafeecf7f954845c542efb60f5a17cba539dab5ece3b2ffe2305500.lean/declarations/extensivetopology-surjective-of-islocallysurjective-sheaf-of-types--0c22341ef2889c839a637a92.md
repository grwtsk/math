# extensiveTopology.surjective_of_isLocallySurjective_sheaf_of_types

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4732484b321b8542a097ed9f334c19b72ff4d9e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eab84094-0448-2bc5-bd17-30142966a58d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28caca20-6bbe-41b2-607f-1246a8710a8e",
  "kind": "lemma",
  "lexical_name": "extensiveTopology.surjective_of_isLocallySurjective_sheaf_of_types",
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
  "slug": "extensivetopology-surjective-of-islocallysurjective-sheaf-of-types--0c22341ef2889c839a637a92",
  "source": {
    "blob": "e4732484b321b8542a097ed9f334c19b72ff4d9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 57,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c22341ef2889c839a637a928d601b5160a4f07a8d79ee2317c865a58db77c13",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28caca20-6bbe-41b2-607f-1246a8710a8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extensiveTopology.surjective_of_isLocallySurjective_sheaf_of_types [FinitaryPreExtensive C]
    {F G : Cᵒᵖ ⥤ Type w} (f : F ⟶ G) [PreservesFiniteProducts F] [PreservesFiniteProducts G]
      (h : Presheaf.IsLocallySurjective (extensiveTopology C) f) {X : C} :
        Function.Surjective (f.app (op X)) := by
  intro x
  replace h := h.1 x
  rw [mem_sieves_iff_contains_colimit_cofan] at h
  obtain ⟨α, _, Y, π, h, h'⟩ := h
  let y : (a : α) → (F.obj ⟨Y a⟩) := fun a ↦ (h' a).choose
  let _ : Fintype α := Fintype.ofFinite _
  let ht := (Types.productLimitCone (fun a ↦ F.obj ⟨Y a⟩)).isLimit
  let ht' := (Functor.Initial.isLimitWhiskerEquiv (Discrete.opposite α).inverse
    (Cocone.op (Cofan.mk X π))).symm h.some.op
  let i : ((a : α) → (F.obj ⟨Y a⟩)) ≅ (F.obj ⟨X⟩) :=
    ht.conePointsIsoOfNatIso (isLimitOfPreserves F ht')
      (Discrete.natIso (fun _ ↦ (Iso.refl (F.obj ⟨_⟩))))
  refine ⟨i.hom y, ?_⟩
  apply Concrete.isLimit_ext _ (isLimitOfPreserves G ht')
  intro ⟨a⟩
  simp only [Functor.comp_obj, Discrete.opposite_inverse_obj, Functor.op_obj, Discrete.functor_obj,
    Functor.mapCone_pt, Cone.whisker_pt, Cocone.op_pt, Cofan.mk_pt, Functor.const_obj_obj,
    Functor.mapCone_π_app, Cone.whisker_π, Cocone.op_π, whiskerLeft_app, NatTrans.op_app,
    Cofan.mk_ι_app]
  rw [← (h' a).choose_spec]
  erw [← NatTrans.naturality_apply (φ := f)]
  change f.app _ ((i.hom ≫ F.map (π a).op) y) = _
  erw [IsLimit.map_π]
  rfl

@[deprecated (since := "2024-11-26")]
alias extensiveTopology.surjective_of_isLocallySurjective_sheafOfTypes :=
  extensiveTopology.surjective_of_isLocallySurjective_sheaf_of_types

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallySurjective/Variantf87ac3232cafeecf7f954845c542efb60f5a17cba539dab5ece3b2ffe2305500.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4732484b321b8542a097ed9f334c19b72ff4d9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

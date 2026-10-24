# Limits.exists_eq_isLimitMap_of_preservesColimit_yoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8cffe95363664193aaf2cfb3819a9e74960c7d1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/baacaf16250a343a47b8cac2de8a4491366599cd36bb9bec21b4655621a4e56f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:256df1a7-2154-9e3c-8ae1-b70d38ba4da7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae842950-8bfb-7b33-64c1-f62f36d5591a",
  "kind": "lemma",
  "lexical_name": "Limits.exists_eq_isLimitMap_of_preservesColimit_yoneda",
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
  "slug": "limits-exists-eq-islimitmap-of-preservescolimit-yoneda--a1cd2708237bdc895b16bcff",
  "source": {
    "blob": "8cffe95363664193aaf2cfb3819a9e74960c7d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variantbaacaf16250a343a47b8cac2de8a4491366599cd36bb9bec21b4655621a4e56f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1cd2708237bdc895b16bcff7268e9e85ffac6390958a18b4748259e8cda8fbf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variantbaacaf16250a343a47b8cac2de8a4491366599cd36bb9bec21b4655621a4e56f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae842950-8bfb-7b33-64c1-f62f36d5591a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Limits.exists_eq_isLimitMap_of_preservesColimit_yoneda
    {c : Cone D} {c' : Cone D'} (hc : IsLimit c) (hc' : IsLimit c') (f : c.pt ⟶ c'.pt)
    [IsCofiltered I] [IsCofiltered I']
    [∀ i : I', PreservesColimit D.op (yoneda.obj (D'.obj i))] :
    ∃ (J : Type (max u₂ u₃ v₁))
      (_ : Category.{max v₂ v₃} J) (_ : IsCofiltered J) (G : J ⥤ I) (G' : J ⥤ I')
      (_ : G.Initial) (_ : G'.Initial) (g : G ⋙ D ⟶ G' ⋙ D'),
      f = IsLimit.map (c.whisker _) ((Functor.Initial.isLimitWhiskerEquiv _ _).symm hc') g := by
  have := isCofiltered_costructuredArrow hc f
  have := Comma.isCofiltered_of_isCofiltered_costructuredArrow (left c) (right c' f)
  have := Comma.initial_fst_of_isCofiltered_costructuredArrow (left c) (right c' f)
  have := ConstructLimitMap.initial_snd hc f
  refine ⟨_, inferInstance, inferInstance, _, _, inferInstance, inferInstance,
    ConstructLimitMap.map f, ?_⟩
  apply ((Functor.Initial.isLimitWhiskerEquiv _ _).symm hc').hom_ext
  intro A
  rw [IsLimit.map_π]
  exact (Under.w A.hom).symm

set_option backward.defeqAttrib.useBackward true in
/-- A morphism `f` between filtered colimits, where every object of the source diagram is
presentable relative to the target diagram, is finally induced by a natural transformation of
diagrams.is induced by a natural transformation of diagrams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variantbaacaf16250a343a47b8cac2de8a4491366599cd36bb9bec21b4655621a4e56f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstructLimitMap/Variantbaacaf16250a343a47b8cac2de8a4491366599cd36bb9bec21b4655621a4e56f.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cffe95363664193aaf2cfb3819a9e74960c7d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

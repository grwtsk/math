# isHomological_of_localization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0534fe6c0520105e14525a31d6668255452686b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:107a6804-b952-dc92-49c4-1868a9b27f89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6f3287cf-159b-df15-4fc9-1676e2464217",
  "kind": "lemma",
  "lexical_name": "isHomological_of_localization",
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
  "slug": "ishomological-of-localization--1e75f5a8a8dcefac04c61a68",
  "source": {
    "blob": "0534fe6c0520105e14525a31d6668255452686b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 155,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e75f5a8a8dcefac04c61a6890ec817a5928fb013b436f27c9f12080e6601d08",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f3287cf-159b-df15-4fc9-1676e2464217`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isHomological_of_localization (L : C ⥤ D)
    [L.CommShift ℤ] [L.IsTriangulated] [L.mapArrow.EssSurj] (F : D ⥤ A)
    (G : C ⥤ A) (e : L ⋙ F ≅ G) [G.IsHomological] :
    F.IsHomological := by
  have : F.PreservesZeroMorphisms := preservesZeroMorphisms_of_map_zero_object
    (F.mapIso L.mapZeroObject.symm ≪≫ e.app _ ≪≫ G.mapZeroObject)
  have : (L ⋙ F).IsHomological := IsHomological.of_iso e.symm
  refine IsHomological.mk' _ (fun T hT => ?_)
  rw [L.distTriang_iff] at hT
  obtain ⟨T₀, e, hT₀⟩ := hT
  exact ⟨L.mapTriangle.obj T₀, e, (L ⋙ F).map_distinguished_exact _ hT₀⟩

end Pretriangulated

section

/-- The connecting homomorphism in the long exact sequence attached to a homological
functor and a distinguished triangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant25cd2623428b67f65a22c9ec2c09df485c2daadaece5d9f83cf22c8f5af6fd23.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0534fe6c0520105e14525a31d6668255452686b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

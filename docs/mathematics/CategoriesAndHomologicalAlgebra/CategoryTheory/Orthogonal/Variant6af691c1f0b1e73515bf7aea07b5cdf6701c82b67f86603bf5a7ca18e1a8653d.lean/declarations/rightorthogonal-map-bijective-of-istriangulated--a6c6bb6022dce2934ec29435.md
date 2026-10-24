# rightOrthogonal.map_bijective_of_isTriangulated

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e927b3e0-ae63-0715-d58d-ac079c39f147",
  "kind": "lemma",
  "lexical_name": "rightOrthogonal.map_bijective_of_isTriangulated",
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
  "slug": "rightorthogonal-map-bijective-of-istriangulated--a6c6bb6022dce2934ec29435",
  "source": {
    "blob": "965f67c1a268966014d50274f173121a561bc8c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 114,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variant6af691c1f0b1e73515bf7aea07b5cdf6701c82b67f86603bf5a7ca18e1a8653d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6c6bb6022dce2934ec294358225370a9ea8d73b48c71199badb2baa6671f360",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variant6af691c1f0b1e73515bf7aea07b5cdf6701c82b67f86603bf5a7ca18e1a8653d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e927b3e0-ae63-0715-d58d-ac079c39f147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightOrthogonal.map_bijective_of_isTriangulated
    [P.IsTriangulated] [IsTriangulated C] {Y : C} (hY : P.rightOrthogonal Y)
    (L : C ⥤ D) [L.IsLocalization P.trW] (X : C) :
    Function.Bijective (L.map : (X ⟶ Y) → _) := by
  rw [← isLocal_trW] at hY
  refine ⟨fun f₁ f₂ hf ↦ ?_, fun g ↦ ?_⟩
  · rw [MorphismProperty.map_eq_iff_precomp L P.trW] at hf
    obtain ⟨Z, s, hs, eq⟩ := hf
    exact (hY _ hs).1 eq
  · obtain ⟨φ, hφ⟩ := Localization.exists_rightFraction L P.trW g
    obtain ⟨α, hα⟩ := (hY _ φ.hs).2 φ.f
    refine ⟨α, ?_⟩
    rw [hφ, ← cancel_epi (L.map φ.s), MorphismProperty.RightFraction.map_s_comp_map,
      ← hα, Functor.map_comp]

variable {P} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variant6af691c1f0b1e73515bf7aea07b5cdf6701c82b67f86603bf5a7ca18e1a8653d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Orthogonal/Variant6af691c1f0b1e73515bf7aea07b5cdf6701c82b67f86603bf5a7ca18e1a8653d.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `965f67c1a268966014d50274f173121a561bc8c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

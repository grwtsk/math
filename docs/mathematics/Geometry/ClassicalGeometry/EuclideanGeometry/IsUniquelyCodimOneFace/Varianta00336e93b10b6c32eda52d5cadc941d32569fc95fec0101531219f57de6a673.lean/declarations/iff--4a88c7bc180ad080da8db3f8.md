# iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00db86006680b2526286fcef96aad3ad172fbac6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a00336e93b10b6c32eda52d5cadc941d32569fc95fec0101531219f57de6a673.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4701759c-e273-5c20-5691-0e2c487191c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf61aaa1-4205-566c-24b5-48d925483867",
  "kind": "lemma",
  "lexical_name": "iff",
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
  "slug": "iff--4a88c7bc180ad080da8db3f8",
  "source": {
    "blob": "00db86006680b2526286fcef96aad3ad172fbac6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 44,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta00336e93b10b6c32eda52d5cadc941d32569fc95fec0101531219f57de6a673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a88c7bc180ad080da8db3f8be26d91dff799be67136865a4eb6ee5fa9a4a345",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta00336e93b10b6c32eda52d5cadc941d32569fc95fec0101531219f57de6a673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf61aaa1-4205-566c-24b5-48d925483867`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iff {d : ℕ} (x : X _⦋d⦌) (y : X _⦋d + 1⦌) :
    IsUniquelyCodimOneFace (S.mk x) (S.mk y) ↔
      ∃! (i : Fin (d + 2)), X.δ i y = x := by
  constructor
  · rintro ⟨_, ⟨f, ⟨_, h₁⟩, h₂⟩⟩
    obtain ⟨i, rfl⟩ := SimplexCategory.eq_δ_of_mono f
    exact ⟨i, h₁, fun j hj ↦ SimplexCategory.δ_injective (h₂ _ ⟨inferInstance, hj⟩)⟩
  · rintro ⟨i, h₁, h₂⟩
    refine ⟨rfl, SimplexCategory.δ i, ⟨inferInstance, h₁⟩, fun f ⟨h₃, h₄⟩ ↦ ?_⟩
    obtain ⟨j, rfl⟩ := SimplexCategory.eq_δ_of_mono f
    obtain rfl : j = i := h₂ _ h₄
    rfl

variable {x y} (hxy : IsUniquelyCodimOneFace x y)

include hxy in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta00336e93b10b6c32eda52d5cadc941d32569fc95fec0101531219f57de6a673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/IsUniquelyCodimOneFace/Varianta00336e93b10b6c32eda52d5cadc941d32569fc95fec0101531219f57de6a673.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00db86006680b2526286fcef96aad3ad172fbac6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

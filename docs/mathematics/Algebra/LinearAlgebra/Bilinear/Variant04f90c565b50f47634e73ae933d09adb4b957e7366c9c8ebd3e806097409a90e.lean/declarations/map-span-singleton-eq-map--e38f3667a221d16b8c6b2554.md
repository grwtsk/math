# map₂_span_singleton_eq_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8d197bcff22254b90de03b206a2203ebbe5e9f8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04f90c565b50f47634e73ae933d09adb4b957e7366c9c8ebd3e806097409a90e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1770f78b-618d-c638-ecd5-cf7727efdcbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df598654-8e7e-f7bc-6320-ad774f53aa8a",
  "kind": "theorem",
  "lexical_name": "map₂_span_singleton_eq_map",
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
  "slug": "map-span-singleton-eq-map--e38f3667a221d16b8c6b2554",
  "source": {
    "blob": "8d197bcff22254b90de03b206a2203ebbe5e9f8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 164,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant04f90c565b50f47634e73ae933d09adb4b957e7366c9c8ebd3e806097409a90e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e38f3667a221d16b8c6b2554614fd5a63bd0be644ff20b91d97725a69d38f880",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bilinear/Variant04f90c565b50f47634e73ae933d09adb4b957e7366c9c8ebd3e806097409a90e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df598654-8e7e-f7bc-6320-ad774f53aa8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map₂_span_singleton_eq_map (f : M →ₗ[R] N →ₗ[R] P) (m : M) :
    map₂ f (span R {m}) = map (f m) := by
  funext; rw [map₂_eq_span_image2]; apply le_antisymm
  · rw [span_le, Set.image2_subset_iff]
    intro x hx y hy
    obtain ⟨a, rfl⟩ := mem_span_singleton.1 hx
    rw [f.map_smul]
    exact smul_mem _ a (mem_map_of_mem hy)
  · rintro _ ⟨n, hn, rfl⟩
    exact subset_span ⟨m, n, mem_span_singleton_self m, hn, rfl⟩
#align submodule.map₂_span_singleton_eq_map Submodule.map₂_span_singleton_eq_map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bilinear/Variant04f90c565b50f47634e73ae933d09adb4b957e7366c9c8ebd3e806097409a90e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant04f90c565b50f47634e73ae933d09adb4b957e7366c9c8ebd3e806097409a90e.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d197bcff22254b90de03b206a2203ebbe5e9f8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

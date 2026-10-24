# coord_apply_centroid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8dde70abd1967882e83eab3cbc4314c21efbace",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b39a0f57-ab04-01e0-e6e4-b94b03772fc0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30e964d8-75a4-bca7-3f8b-acbbb38a6868",
  "kind": "theorem",
  "lexical_name": "coord_apply_centroid",
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
  "slug": "coord-apply-centroid--8a3718c57b140ffc7be8b9bd",
  "source": {
    "blob": "d8dde70abd1967882e83eab3cbc4314c21efbace",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 329,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a3718c57b140ffc7be8b9bd43aebf20baa82e148581397aa95ed33137dbf793",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30e964d8-75a4-bca7-3f8b-acbbb38a6868`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coord_apply_centroid [CharZero k] (b : AffineBasis ι k P) {s : Finset ι} {i : ι}
    (hi : i ∈ s) : b.coord i (s.centroid k b) = (s.card : k)⁻¹ := by
  rw [Finset.centroid,
    b.coord_apply_combination_of_mem hi (s.sum_centroidWeights_eq_one_of_nonempty _ ⟨i, hi⟩),
    Finset.centroidWeights, Function.const_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variantb683b8c22239abbea7a587ff08d59f7b80129207da82308114c6d14bb9d5c1b8.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8dde70abd1967882e83eab3cbc4314c21efbace` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

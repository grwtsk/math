# traceMatrix_map_eq_mul_trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f58a214a-7bb5-49f5-5a63-0e0d534655ee",
  "kind": "theorem",
  "lexical_name": "traceMatrix_map_eq_mul_trans",
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
  "slug": "tracematrix-map-eq-mul-trans--55cb8c9a6f5fe7e34dedebc5",
  "source": {
    "blob": "3cbe8246fc38c076cdbdbb59903d0dad2555adcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:55cb8c9a6f5fe7e34dedebc5f0c5af64a4180b7b55da6e4d24f43333426369ad",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f58a214a-7bb5-49f5-5a63-0e0d534655ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem traceMatrix_map_eq_mul_trans :
    (Algebra.traceMatrix k (Module.finBasis k E)).map (algebraMap k E) =
      embeddingMatrix k E * (embeddingMatrix k E)ᵀ := by
  classical
  ext i j
  simp only [RingHom.mapMatrix_apply, Algebra.traceMatrix_apply,
    Matrix.mul_apply, Matrix.transpose_apply, embeddingMatrix_apply]
  rw [Algebra.trace_eq_sum_automorphisms]
  rw [← Equiv.sum_comp (galIndexEquiv k E)]
  simp

/-- The Galois embeddings matrix is nonsingular. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEmbeddingMatrix.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cbe8246fc38c076cdbdbb59903d0dad2555adcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

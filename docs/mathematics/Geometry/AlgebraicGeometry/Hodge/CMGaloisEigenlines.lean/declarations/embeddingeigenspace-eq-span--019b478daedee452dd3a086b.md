# embeddingEigenspace_eq_span

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17e8b11b-8c7e-3f0c-cacc-7d8fab735418",
  "kind": "theorem",
  "lexical_name": "embeddingEigenspace_eq_span",
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
  "slug": "embeddingeigenspace-eq-span--019b478daedee452dd3a086b",
  "source": {
    "blob": "b59ccd41eab0807d8f739789c4d50d56e583b0d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 134,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:019b478daedee452dd3a086b36e5309b1e76c72154a97105e8c50edb62c703d4",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17e8b11b-8c7e-3f0c-cacc-7d8fab735418`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embeddingEigenspace_eq_span (j : Fin n) :
    embeddingEigenspace (k := k) (embeddingCharacter k E j) =
      Submodule.span E {canonicalEigenvector k E j} := by
  apply le_antisymm
  · intro t ht
    have hcoord := evaluation_mem_coordinateLine k E j ht
    obtain ⟨c, hc⟩ := Submodule.mem_span_singleton.mp hcoord
    apply Submodule.mem_span_singleton.mpr
    refine ⟨c, ?_⟩
    apply (evaluationEquiv k E).injective
    rw [map_smul, evaluationEquiv_canonicalEigenvector]
    simpa [evaluationEquiv_apply] using hc
  · intro t ht
    obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.mp ht
    exact (embeddingEigenspace (k := k) (embeddingCharacter k E j)).smul_mem
      c (canonicalEigenvector_mem k E j)

/-- Every canonical embedding eigenspace is one-dimensional. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMGaloisEigenlines.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b59ccd41eab0807d8f739789c4d50d56e583b0d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# det_involutionCompressionGram_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dfe52bd6-a84d-9a20-ed0d-9cc5575d2c08",
  "kind": "theorem",
  "lexical_name": "det_involutionCompressionGram_mul_left",
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
  "slug": "det-involutioncompressiongram-mul-left--e98c197a64bfbcf7c036a0fc",
  "source": {
    "blob": "f5265ed3c5047303360d7c3ad8fb9389fc865ab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 68,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant19a0dee46be277a0721259ae5a1ca3b888521d50adecbed99ddabf996d38d165.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e98c197a64bfbcf7c036a0fc0e30066d914f23813727e6ef7d57b1f1deaa03f3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grassmannian/Variant19a0dee46be277a0721259ae5a1ca3b888521d50adecbed99ddabf996d38d165.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dfe52bd6-a84d-9a20-ed0d-9cc5575d2c08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_involutionCompressionGram_mul_left
    {k N : ℕ}
    (U : Matrix (Fin k) (Fin k) ℝ)
    (A : Matrix (Fin k) (Fin N) ℝ)
    (J : Matrix (Fin N) (Fin N) ℝ) :
    Matrix.det (involutionCompressionGram (U * A) J) =
      (Matrix.det U) ^ 2 *
        Matrix.det (involutionCompressionGram A J) := by
  rw [involutionCompressionGram_mul_left]
  rw [Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose]
  ring

/-- For an invertible row-basis change, nonnegativity of the compression
determinant is unchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grassmannian/Variant19a0dee46be277a0721259ae5a1ca3b888521d50adecbed99ddabf996d38d165.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant19a0dee46be277a0721259ae5a1ca3b888521d50adecbed99ddabf996d38d165.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5265ed3c5047303360d7c3ad8fb9389fc865ab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

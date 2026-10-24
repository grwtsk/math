# inverseProvenanceMatrix_isSymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:776f1afc-d04b-21b7-f01a-60cc203e7d61",
  "kind": "theorem",
  "lexical_name": "inverseProvenanceMatrix_isSymm",
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
  "slug": "inverseprovenancematrix-issymm--b745d1d045634a1a0ed8404d",
  "source": {
    "blob": "8aeab03b1fddb41dc33ccd7e8207dc53d0008ed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 53,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b745d1d045634a1a0ed8404dab79baabc39785f442bd58429e649f3c01bd4967",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:776f1afc-d04b-21b7-f01a-60cc203e7d61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverseProvenanceMatrix_isSymm (D : MatrixBlockRealization G) :
    D.inverseProvenanceMatrix.IsSymm := by
  show D.inverseProvenanceMatrix.transpose = D.inverseProvenanceMatrix
  have hleft :
      D.inverseProvenanceMatrix.transpose * D.provenanceMatrix = 1 := by
    calc
      D.inverseProvenanceMatrix.transpose * D.provenanceMatrix =
          D.inverseProvenanceMatrix.transpose * D.provenanceMatrix.transpose := by
            rw [D.provenanceMatrix_isSymm.eq]
      _ = (D.provenanceMatrix * D.inverseProvenanceMatrix).transpose := by
            rw [Matrix.transpose_mul]
      _ = 1 := by
            rw [D.mul_inverse]
            simp
  calc
    D.inverseProvenanceMatrix.transpose =
        D.inverseProvenanceMatrix.transpose * 1 := by simp
    _ =
        D.inverseProvenanceMatrix.transpose *
          (D.provenanceMatrix * D.inverseProvenanceMatrix) := by
            rw [D.mul_inverse]
    _ =
        (D.inverseProvenanceMatrix.transpose * D.provenanceMatrix) *
          D.inverseProvenanceMatrix := by
            rw [Matrix.mul_assoc]
    _ = D.inverseProvenanceMatrix := by
          rw [hleft]
          simp

/-- The conventional explicit Schur matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant256f534f8b394e0b7b3264e6824a3f7b92bd9c47a6fb28711f7e375d7d04de78.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aeab03b1fddb41dc33ccd7e8207dc53d0008ed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

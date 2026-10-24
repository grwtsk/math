# inverseProvenanceMatrix_isSymm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71dd3f17-55bc-260b-25ef-55c20cc905fd",
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
  "slug": "inverseprovenancematrix-issymm--18534dea442c47deade07c76",
  "source": {
    "blob": "b8d2914c01d7a43f132b444858fa2115bace3520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 54,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18534dea442c47deade07c765b36096de7acd5651068f999664157714b29d3dd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71dd3f17-55bc-260b-25ef-55c20cc905fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverseProvenanceMatrix_isSymm (D : MatrixBlockRealization G) :
    D.inverseProvenanceMatrix.IsSymm := by
  change D.inverseProvenanceMatrix.transpose = D.inverseProvenanceMatrix
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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8d2914c01d7a43f132b444858fa2115bace3520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

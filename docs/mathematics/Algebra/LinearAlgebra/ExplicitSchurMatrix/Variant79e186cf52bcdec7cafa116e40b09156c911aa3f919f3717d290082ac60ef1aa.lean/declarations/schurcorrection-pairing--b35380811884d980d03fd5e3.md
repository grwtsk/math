# schurCorrection_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf20d770-e469-6869-8430-442bafff2653",
  "kind": "theorem",
  "lexical_name": "schurCorrection_pairing",
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
  "slug": "schurcorrection-pairing--b35380811884d980d03fd5e3",
  "source": {
    "blob": "b8d2914c01d7a43f132b444858fa2115bace3520",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b35380811884d980d03fd5e309eb7088f391980999f18288264cab633e4c4061",
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

Occurrence: `result:bf20d770-e469-6869-8430-442bafff2653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schurCorrection_pairing
    (D : MatrixBlockRealization G) (u v : κ → ℝ) :
    u ⬝ᵥ
        (D.crossMatrix.transpose * D.inverseProvenanceMatrix *
          D.crossMatrix).mulVec v =
      (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
        D.crossMatrix.mulVec v := by
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec]
  rw [Matrix.dotProduct_transpose_mulVec]
  calc
    _ = D.crossMatrix.mulVec u ⬝ᵥ
        D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec v) :=
      dotProduct_comm _ _
    _ = D.crossMatrix.mulVec v ⬝ᵥ
        D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u) := by
      simpa only [D.inverseProvenanceMatrix_isSymm.eq] using
        Matrix.dotProduct_transpose_mulVec D.inverseProvenanceMatrix
          (D.crossMatrix.mulVec u) (D.crossMatrix.mulVec v)
    _ = _ := dotProduct_comm _ _

/-- The abstract positive residual form is exactly the bilinear form represented
by the conventional Schur matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant79e186cf52bcdec7cafa116e40b09156c911aa3f919f3717d290082ac60ef1aa.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8d2914c01d7a43f132b444858fa2115bace3520` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

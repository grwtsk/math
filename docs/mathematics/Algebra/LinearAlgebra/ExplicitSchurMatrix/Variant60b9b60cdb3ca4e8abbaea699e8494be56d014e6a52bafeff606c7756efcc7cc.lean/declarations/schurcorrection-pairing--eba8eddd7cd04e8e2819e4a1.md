# schurCorrection_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb912699b30bf6d9d0f7435247a4870ed689f9eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c5c0d04-08f1-05c2-ae36-aa08ef550c2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3dfb4817-50dc-f4d2-4e34-6f7d4a95ed93",
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
  "slug": "schurcorrection-pairing--eba8eddd7cd04e8e2819e4a1",
  "source": {
    "blob": "fb912699b30bf6d9d0f7435247a4870ed689f9eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 81,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eba8eddd7cd04e8e2819e4a13d142c7ea24d839d2db5e6a769c3fffb90be18ea",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dfb4817-50dc-f4d2-4e34-6f7d4a95ed93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem schurCorrection_pairing
    (D : MatrixBlockRealization G) (u v : κ → ℝ) :
    u ⬝ᵥ
        (D.crossMatrix.transpose * D.inverseProvenanceMatrix *
          D.crossMatrix).mulVec v =
      (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
        D.crossMatrix.mulVec v := by
  rw [Matrix.mulVec_mulVec, Matrix.mulVec_mulVec]
  rw [Matrix.dotProduct_transpose_mulVec]
  rw [dotProduct_comm]
  rw [D.inverseProvenanceMatrix_isSymm.dotProduct_mulVec_comm]
  rw [dotProduct_comm]

/-- The abstract positive residual form is exactly the bilinear form represented
by the conventional Schur matrix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb912699b30bf6d9d0f7435247a4870ed689f9eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

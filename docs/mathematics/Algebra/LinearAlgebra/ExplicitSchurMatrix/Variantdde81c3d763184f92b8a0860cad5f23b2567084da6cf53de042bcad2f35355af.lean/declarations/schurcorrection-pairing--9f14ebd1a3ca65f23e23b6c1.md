# schurCorrection_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8126cb2791037940a81508a3f7bf6ea9cfa38a6f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5292cec0-e5c1-7e9e-0a32-a6ab803cc5a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b1e4d04b-74f5-fadf-5bf9-5deb3592cefd",
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
  "slug": "schurcorrection-pairing--9f14ebd1a3ca65f23e23b6c1",
  "source": {
    "blob": "8126cb2791037940a81508a3f7bf6ea9cfa38a6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f14ebd1a3ca65f23e23b6c19443bd126cf7cef17acb53ac8ce00becd669f412",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1e4d04b-74f5-fadf-5bf9-5deb3592cefd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–103.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExplicitSchurMatrix/Variantdde81c3d763184f92b8a0860cad5f23b2567084da6cf53de042bcad2f35355af.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8126cb2791037940a81508a3f7bf6ea9cfa38a6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

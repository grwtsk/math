# LDL.lower_conj_diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d0dadeec88c8d6bf4ce400f2e5393da158e8227",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ec2033a-18be-d42c-78ad-f5f35790b2dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1457c87-4f12-1393-a362-bf5bc0f87215",
  "kind": "theorem",
  "lexical_name": "LDL.lower_conj_diag",
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
  "slug": "ldl-lower-conj-diag--48e72b8fe1853a1e835174ba",
  "source": {
    "blob": "5d0dadeec88c8d6bf4ce400f2e5393da158e8227",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 117,
    "path": "GRWTSK/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48e72b8fe1853a1e835174bad2f7f111154b11394043d5573a22742c8587f82b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1457c87-4f12-1393-a362-bf5bc0f87215`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LDL.lower_conj_diag : LDL.lower hS * LDL.diag hS * (LDL.lower hS)ᴴ = S := by
  rw [LDL.lower, conjTranspose_nonsing_inv, Matrix.mul_assoc,
    Matrix.inv_mul_eq_iff_eq_mul_of_invertible (LDL.lowerInv hS),
    Matrix.mul_inv_eq_iff_eq_mul_of_invertible]
  exact LDL.diag_eq_lowerInv_conj hS

end set_options
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LDL/Variantf86b3c99ab6f74820d80ad8ef0c72deadee4237bd8dea5067b9d4ac3b28ea5fe.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d0dadeec88c8d6bf4ce400f2e5393da158e8227` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

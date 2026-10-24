# det_add_replicateCol_mul_replicateRow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63a5a216c3ed66af6a10637702bc0d666b89bf31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 425,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f45dddd-4051-d584-19ce-c742bbbdf984",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fec3807-1a63-f626-08f2-bba7ba3c6595",
  "kind": "theorem",
  "lexical_name": "det_add_replicateCol_mul_replicateRow",
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
  "slug": "det-add-replicatecol-mul-replicaterow--d56ddaba8c9ad06f8c3d07fe",
  "source": {
    "blob": "63a5a216c3ed66af6a10637702bc0d666b89bf31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 425,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d56ddaba8c9ad06f8c3d07feda4c69200fd5bd67a74a37ccddda82638c3edd7a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fec3807-1a63-f626-08f2-bba7ba3c6595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_add_replicateCol_mul_replicateRow {ι : Type*} [Unique ι]
    {A : Matrix m m α} (hA : IsUnit A.det) (u v : m → α) :
    (A + replicateCol ι u * replicateRow ι v).det =
    A.det * (1 + replicateRow ι v * A⁻¹ * replicateCol ι u).det := by
  nth_rewrite 1 [← Matrix.mul_one A]
  rwa [← Matrix.mul_nonsing_inv_cancel_left A (replicateCol ι u * replicateRow ι v),
    ← Matrix.mul_add, det_mul, ← Matrix.mul_assoc, det_one_add_mul_comm, ← Matrix.mul_assoc]

@[deprecated (since := "2025-03-20")] alias
  det_add_col_mul_row := det_add_replicateCol_mul_replicateRow

/-- A generalization of the **Matrix determinant lemma** -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variantd0812dfde807c1d126f6142268dadc11fa0d738f22b58f69eb1921cc95396143.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63a5a216c3ed66af6a10637702bc0d666b89bf31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

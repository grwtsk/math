# inv_fromBlocks_zero₁₂_of_isUnit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27418df2c626cc39a3a437b5a9d02a4b3c62b3b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e27b71f8-ea46-ea1e-ad43-ec0ed036c048",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:005cf548-96b1-2d1a-143d-584d703fc110",
  "kind": "theorem",
  "lexical_name": "inv_fromBlocks_zero₁₂_of_isUnit_iff",
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
  "slug": "inv-fromblocks-zero-of-isunit-iff--8a228fe555bb17f0dd40f725",
  "source": {
    "blob": "27418df2c626cc39a3a437b5a9d02a4b3c62b3b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 222,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a228fe555bb17f0dd40f725fae3c22ea414995d8f15715f9b1ac265790276eb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:005cf548-96b1-2d1a-143d-584d703fc110`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_fromBlocks_zero₁₂_of_isUnit_iff (A : Matrix m m α) (C : Matrix n m α) (D : Matrix n n α)
    (hAD : IsUnit A ↔ IsUnit D) :
    (fromBlocks A 0 C D)⁻¹ = fromBlocks A⁻¹ 0 (-(D⁻¹ * C * A⁻¹)) D⁻¹ := by
  by_cases hA : IsUnit A
  · have hD := hAD.mp hA
    cases hA.nonempty_invertible
    cases hD.nonempty_invertible
    letI := fromBlocksZero₁₂Invertible A C D
    simp_rw [← invOf_eq_nonsing_inv, invOf_fromBlocks_zero₁₂_eq]
  · have hD := hAD.not.mp hA
    have : ¬IsUnit (fromBlocks A 0 C D) :=
      isUnit_fromBlocks_zero₁₂.not.mpr (not_and'.mpr fun _ => hA)
    simp_rw [nonsing_inv_eq_ring_inverse, Ring.inverse_non_unit _ hA, Ring.inverse_non_unit _ hD,
      Ring.inverse_non_unit _ this, Matrix.zero_mul, neg_zero, fromBlocks_zero]
#align matrix.inv_from_blocks_zero₁₂_of_is_unit_iff Matrix.inv_fromBlocks_zero₁₂_of_isUnit_iff

end Triangular

/-! ### 2×2 block matrices -/


section Block

/-! #### General 2×2 block matrices-/


/-- A block matrix is invertible if the bottom right corner and the corresponding schur complement
is. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant829520a6c412efd9fae94ae9f43c7d3b509947fbbb6c61e5de37c14076e70972.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27418df2c626cc39a3a437b5a9d02a4b3c62b3b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

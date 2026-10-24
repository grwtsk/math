# inv_fromBlocks_zero₂₁_of_isUnit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b6759ae-c4e3-a128-55a8-17c587ca6617",
  "kind": "theorem",
  "lexical_name": "inv_fromBlocks_zero₂₁_of_isUnit_iff",
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
  "slug": "inv-fromblocks-zero-of-isunit-iff--b45b7535384f371614bdc685",
  "source": {
    "blob": "e677c02d658b0a799aee2f190b95b3ad631cd1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 196,
    "path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b45b7535384f371614bdc6854a3073bb235dca56220f4794fa82eae737755ef9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b6759ae-c4e3-a128-55a8-17c587ca6617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inv_fromBlocks_zero₂₁_of_isUnit_iff (A : Matrix m m α) (B : Matrix m n α) (D : Matrix n n α)
    (hAD : IsUnit A ↔ IsUnit D) :
    (fromBlocks A B 0 D)⁻¹ = fromBlocks A⁻¹ (-(A⁻¹ * B * D⁻¹)) 0 D⁻¹ := by
  by_cases hA : IsUnit A
  · have hD := hAD.mp hA
    cases hA.nonempty_invertible
    cases hD.nonempty_invertible
    letI := fromBlocksZero₂₁Invertible A B D
    simp_rw [← invOf_eq_nonsing_inv, invOf_fromBlocks_zero₂₁_eq]
  · have hD := hAD.not.mp hA
    have : ¬IsUnit (fromBlocks A B 0 D) :=
      isUnit_fromBlocks_zero₂₁.not.mpr (not_and'.mpr fun _ => hA)
    simp_rw [nonsing_inv_eq_ringInverse, Ring.inverse_non_unit _ hA, Ring.inverse_non_unit _ hD,
      Ring.inverse_non_unit _ this, Matrix.zero_mul, neg_zero, fromBlocks_zero]

/-- An expression for the inverse of a lower block-triangular matrix, when either both elements of
diagonal are invertible, or both are not. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant4ab4f7a1db2f5099831930993a6353f11c2bfad415a7ef25804797d64d7a57e6.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e677c02d658b0a799aee2f190b95b3ad631cd1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

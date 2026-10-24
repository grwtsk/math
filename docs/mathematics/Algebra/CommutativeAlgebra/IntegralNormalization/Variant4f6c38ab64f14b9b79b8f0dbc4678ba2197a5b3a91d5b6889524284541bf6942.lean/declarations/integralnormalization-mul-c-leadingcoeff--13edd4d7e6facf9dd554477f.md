# integralNormalization_mul_C_leadingCoeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:baad32cd-2f4b-7a12-e586-5543cac87fd5",
  "kind": "theorem",
  "lexical_name": "integralNormalization_mul_C_leadingCoeff",
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
  "slug": "integralnormalization-mul-c-leadingcoeff--13edd4d7e6facf9dd554477f",
  "source": {
    "blob": "621a6f3a2cf1093b92408396bb13acbd36457e72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 107,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13edd4d7e6facf9dd554477ff6e06a540a4649c0c0eacd9cf9ffe3804c737d0e",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:baad32cd-2f4b-7a12-e586-5543cac87fd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralNormalization_mul_C_leadingCoeff (p : R[X]) :
    integralNormalization p * C p.leadingCoeff = scaleRoots p p.leadingCoeff := by
  ext i
  rw [coeff_mul_C, integralNormalization_coeff]
  split_ifs with h
  · simp [natDegree_eq_of_degree_eq_some h, leadingCoeff]
  · simp only [ge_iff_le, tsub_le_iff_right, smul_eq_mul, coeff_scaleRoots]
    by_cases h' : i < p.degree
    · rw [mul_assoc, ← pow_succ, tsub_right_comm, tsub_add_cancel_of_le]
      rw [le_tsub_iff_left (coe_lt_degree.mp h').le, Nat.succ_le_iff]
      exact coe_lt_degree.mp h'
    · simp [coeff_eq_zero_of_degree_lt (lt_of_le_of_ne (le_of_not_gt h') h)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IntegralNormalization/Variant4f6c38ab64f14b9b79b8f0dbc4678ba2197a5b3a91d5b6889524284541bf6942.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `621a6f3a2cf1093b92408396bb13acbd36457e72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

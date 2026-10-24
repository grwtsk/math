# wittPolyProdRemainder_vars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f7d5534-d7a4-a949-9144-47a4123fabac",
  "kind": "theorem",
  "lexical_name": "wittPolyProdRemainder_vars",
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
  "slug": "wittpolyprodremainder-vars--1791e4b723db4e853f14a8ca",
  "source": {
    "blob": "3ef85b6119898c9be55488ff87f3322723b9b228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 82,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1791e4b723db4e853f14a8caee60f88fe2f27bbe6a602a458729851d9318a601",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f7d5534-d7a4-a949-9144-47a4123fabac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wittPolyProdRemainder_vars (n : ℕ) :
    (wittPolyProdRemainder p n).vars ⊆ univ ×ˢ range n := by
  rw [wittPolyProdRemainder]
  refine' Subset.trans (vars_sum_subset _ _) _
  rw [biUnion_subset]
  intro x hx
  apply Subset.trans (vars_mul _ _)
  refine' union_subset _ _
  · apply Subset.trans (vars_pow _ _)
    have : (p : 𝕄) = C (p : ℤ) := by simp only [Int.cast_ofNat, eq_intCast]
    rw [this, vars_C]
    apply empty_subset
  · apply Subset.trans (vars_pow _ _)
    apply Subset.trans (wittMul_vars _ _)
    apply product_subset_product (Subset.refl _)
    simp only [mem_range, range_subset] at hx ⊢
    exact hx
#align witt_vector.witt_poly_prod_remainder_vars WittVector.wittPolyProdRemainder_vars

/-- `remainder p n` represents the remainder term from `mul_polyOfInterest_aux3`.
`wittPolyProd p (n+1)` will have variables up to `n+1`,
but `remainder` will only have variables up to `n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MulCoeff/Variant09ee2a12c841fa9f13ac3682d2caa5fba2b35c885fb0606563930d9bfd2f0757.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ef85b6119898c9be55488ff87f3322723b9b228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# prod_y_large_le_X_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:029bce5b-3270-0917-8940-b02e7d354ce3",
  "kind": "theorem",
  "lexical_name": "prod_y_large_le_X_pow",
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
  "slug": "prod-y-large-le-x-pow--ffe8bef77dcf1ec5d3172cef",
  "source": {
    "blob": "38f66b3447d2c349bebeb8c76a0cd28699e32260",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 309,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffe8bef77dcf1ec5d3172cef31ec9e6545c98dabf664bfa885765a5c1ec0b061",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:029bce5b-3270-0917-8940-b02e7d354ce3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 309–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prod_y_large_le_X_pow :
    ∏ m ∈ Finset.Ioc d n, y m ≤ (X : ℝ) ^ (d⁻¹ : ℝ) := by
  calc
    (∏ m ∈ Finset.Ioc d n, y m : ℕ) ≤
        (∏ m ∈ Finset.Ioc d n, y m ^ m : ℝ) ^ (d⁻¹ : ℝ) := by
      rw [← Real.finsetProd_rpow]
      · push_cast
        apply Finset.prod_le_prod
        · intro i hi
          positivity
        · simp only [Finset.mem_Ioc, and_imp]
          intro i hdi hin
          conv_lhs => rw [← Real.rpow_one (y i : ℝ)]
          rw [← Real.rpow_natCast_mul (by simp)]
          gcongr
          · norm_cast
            exact hy_pos i
          · rw [le_mul_inv_iff₀]
            · simpa only [one_mul] using
                (show (d : ℝ) ≤ i by exact_mod_cast hdi.le)
            · exact_mod_cast hd_pos
      · intro i hi
        positivity
    _ ≤ (n : ℝ) ^ (d⁻¹ : ℝ) := by
      gcongr
      norm_cast
      conv_rhs => rw [← prod_y_pow_eq_n]
      apply Finset.prod_le_prod_of_subset_of_one_le'
      · simp
      simp only [Finset.mem_union, Finset.mem_Icc]
      intro i hi _
      apply Nat.one_le_pow
      exact (hy_pos _)
    _ ≤ (X : ℝ) ^ (d⁻¹ : ℝ) := by
      gcongr
      exact hnX

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/QuantitativeAnatomicFactorization.lean#L309).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38f66b3447d2c349bebeb8c76a0cd28699e32260` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

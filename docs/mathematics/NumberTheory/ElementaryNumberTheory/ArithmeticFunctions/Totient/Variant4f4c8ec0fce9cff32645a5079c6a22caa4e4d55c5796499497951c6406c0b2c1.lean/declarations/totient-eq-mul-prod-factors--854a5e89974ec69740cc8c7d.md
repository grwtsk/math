# totient_eq_mul_prod_factors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d6b48a5-8323-c3b7-da04-be4834e112e4",
  "kind": "theorem",
  "lexical_name": "totient_eq_mul_prod_factors",
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
  "slug": "totient-eq-mul-prod-factors--854a5e89974ec69740cc8c7d",
  "source": {
    "blob": "1d3a49cd400ea7fee010353623f9735426f97622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 322,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:854a5e89974ec69740cc8c7de3f17e68ee99fa4f31f889d5878cca068329d54a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d6b48a5-8323-c3b7-da04-be4834e112e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totient_eq_mul_prod_factors (n : ℕ) :
    (φ n : ℚ) = n * ∏ p in n.factors.toFinset, (1 - (p : ℚ)⁻¹) := by
  by_cases hn : n = 0
  · simp [hn]
  have hn' : (n : ℚ) ≠ 0 := by simp [hn]
  have hpQ : (∏ p in n.factors.toFinset, (p : ℚ)) ≠ 0 := by
    rw [← cast_prod, cast_ne_zero, ← zero_lt_iff, ← prod_factorization_eq_prod_factors]
    exact prod_pos fun p hp => pos_of_mem_factorization hp
  simp only [totient_eq_div_factors_mul n, prod_prime_factors_dvd n, cast_mul, cast_prod,
    cast_div_charZero, mul_comm_div, mul_right_inj' hn', div_eq_iff hpQ, ← prod_mul_distrib]
  refine' prod_congr rfl fun p hp => _
  have hp := pos_of_mem_factors (List.mem_toFinset.mp hp)
  have hp' : (p : ℚ) ≠ 0 := cast_ne_zero.mpr hp.ne.symm
  rw [sub_mul, one_mul, mul_comm, mul_inv_cancel hp', cast_pred hp]
#align nat.totient_eq_mul_prod_factors Nat.totient_eq_mul_prod_factors

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d3a49cd400ea7fee010353623f9735426f97622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# binomialSeries_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e21cac9c-aeaa-647e-047a-872479652999",
  "kind": "lemma",
  "lexical_name": "binomialSeries_nat",
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
  "slug": "binomialseries-nat--84ca79f8913f47d464dbd9ac",
  "source": {
    "blob": "23fc112d4ac1340aa76afee26a948dd4733216a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 67,
    "path": "GRWTSK/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84ca79f8913f47d464dbd9acfee902334a272395a169cea081109de733b92fa8",
  "verification": {
    "reference": "docs/verification/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e21cac9c-aeaa-647e-047a-872479652999`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma binomialSeries_nat [CommRing A] (d : ℕ) :
    binomialSeries A (d : ℤ) = (1 + X) ^ d := by
  ext n
  by_cases h : d < n
  · rw [binomialSeries_coeff, add_comm, add_pow, map_sum, Ring.choose_natCast, natCast_zsmul,
      Nat.choose_eq_zero_of_lt h, zero_nsmul, sum_eq_zero]
    intro k hk
    rw [one_pow, mul_one, coeff_X_pow_mul']
    have hkd : k ≤ d := mem_range_succ_iff.mp hk
    simp only [hkd.trans (le_of_lt h), ↓reduceIte]
    rw [← map_natCast (C A), coeff_ne_zero_C (by omega)]
  · rw [binomialSeries_coeff, add_comm, add_pow]
    simp only [zsmul_eq_mul, mul_one, one_pow, map_sum]
    rw [sum_eq_single_of_mem n (by simp only [mem_range]; omega) ?_, coeff_X_pow_mul',
      Ring.choose_eq_nat_choose]
    · simp
    · intro k hk hkn
      rw [mul_comm, ← map_natCast (C A), coeff_C_mul_X_pow]
      exact if_neg (Ne.symm hkn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Binomial/Variantb773fb73f69d18065056467686b3e36cf6e01c38b6d15444de79912213de1c8e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23fc112d4ac1340aa76afee26a948dd4733216a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

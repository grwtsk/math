# pIntegral_pow_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4f94fff-7706-47e2-7d60-093be022adbc",
  "kind": "lemma",
  "lexical_name": "pIntegral_pow_div",
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
  "slug": "pintegral-pow-div--3c698386269e841c2a894a50",
  "source": {
    "blob": "5b1c5085b78d3dadb460017b25f76c1beaf98310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 478,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c698386269e841c2a894a50536cf4404726d57c6b0bb42512f81134ca7b6916",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4f94fff-7706-47e2-7d60-093be022adbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma pIntegral_pow_div {p M N : ℕ} [Fact p.Prime] (hM : M ≠ 0)
    (hv : M.factorization p ≤ N) : pIntegral p ((p : ℚ) ^ N / M) := by
  set e := M.factorization p
  set M' := M / p ^ e
  have hM'_cop : M'.Coprime p := (Nat.coprime_ordCompl Fact.out hM).symm
  have hp_ne : (p : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.Prime.ne_zero Fact.out)
  -- Rewrite p^N / M as p^(N-e) / M' where M' = M / p^e is coprime to p
  have hdecomp : p ^ e * M' = M := Nat.ordProj_mul_ordCompl_eq_self M p
  have hM_eq : (M : ℚ) = ↑(p ^ e) * ↑M' := by rw [← hdecomp]; simp
  have hrw : (p : ℚ) ^ N / M = (p : ℚ) ^ (N - e) / M' := by
    rw [hM_eq, Nat.cast_pow, div_mul_eq_div_div]
    congr 1
    rw [div_eq_iff (pow_ne_zero e hp_ne), ← pow_add, Nat.sub_add_cancel hv]
  have hM'_eq : ((p : ℚ) ^ (N - e) / (M' : ℚ)) = Rat.divInt (p ^ (N - e) : ℤ) (M' : ℤ) := by
    norm_cast
    simp
  rw [hrw]
  exact Rat.padicValuation_le_one_iff.2 ((Nat.Prime.coprime_iff_not_dvd Fact.out).1
    (hM'_cop.coprime_dvd_left (by
      rw [hM'_eq]; exact Int.natCast_dvd_natCast.mp (Rat.den_dvd _ _))).symm)

/- Main valuation estimate behind the contradiction step for even-index summands. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b1c5085b78d3dadb460017b25f76c1beaf98310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

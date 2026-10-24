# prod_one_div_prime_den_coprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cf2a401-241a-0553-ddf8-7886a1aadb82",
  "kind": "lemma",
  "lexical_name": "prod_one_div_prime_den_coprime",
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
  "slug": "prod-one-div-prime-den-coprime--49d1ee9f5a4b1877c4aaffaf",
  "source": {
    "blob": "5b1c5085b78d3dadb460017b25f76c1beaf98310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 455,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49d1ee9f5a4b1877c4aaffaffa743244e64b904098f27f3a468c1b7f1cbedae9",
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

Occurrence: `result:8cf2a401-241a-0553-ddf8-7886a1aadb82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma prod_one_div_prime_den_coprime (k : ℕ) {p : ℕ} [Fact p.Prime] :
    (∏ q ∈ vonStaudtPrimes k with q ≠ p, ((1 : ℚ) / q).den).Coprime p := by
  refine Nat.Coprime.prod_left fun q hq ↦ ?_
  simp only [Finset.mem_filter, Finset.mem_range] at hq
  obtain ⟨⟨_, hq_prime, _⟩, hne⟩ := hq
  rw [show ((1 : ℚ) / q).den = q by simp [hq_prime.ne_zero]]
  exact (Nat.coprime_primes hq_prime Fact.out).mpr hne

/- Splits the prime-indexed correction sum into the `p`-term (`vonStaudtIndicator / p`)
plus the rest. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b1c5085b78d3dadb460017b25f76c1beaf98310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

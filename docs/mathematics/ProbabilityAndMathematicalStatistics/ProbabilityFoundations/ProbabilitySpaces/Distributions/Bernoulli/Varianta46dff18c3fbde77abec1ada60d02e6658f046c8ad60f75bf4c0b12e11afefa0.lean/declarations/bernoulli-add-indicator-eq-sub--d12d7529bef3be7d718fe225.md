# bernoulli_add_indicator_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39bf92de-2014-a67b-9f8a-0baa0fd44158",
  "kind": "lemma",
  "lexical_name": "bernoulli_add_indicator_eq_sub",
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
  "slug": "bernoulli-add-indicator-eq-sub--d12d7529bef3be7d718fe225",
  "source": {
    "blob": "5b1c5085b78d3dadb460017b25f76c1beaf98310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 627,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d12d7529bef3be7d718fe225bcb436423108af09cebfa3c9bc33809b2ffb34b9",
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

Occurrence: `result:39bf92de-2014-a67b-9f8a-0baa0fd44158`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 627–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma bernoulli_add_indicator_eq_sub {k p : ℕ} (hk : k > 0) [Fact p.Prime] :
    ∃ T : ℤ, bernoulli (2 * k) + vonStaudtIndicator (2 * k) p / p =
      T - (∑ i ∈ range (2 * k),
        bernoulli i * ((2 * k + 1).choose i) * (p : ℚ) ^ (2 * k - i) / (2 * k + 1)) := by
  have hcast : (↑((∑ v ∈ Ico 1 p, (v : ℤ) ^ (2 * k)) +
      (if (p - 1) ∣ 2 * k then 1 else 0)) : ZMod p) = 0 :=
    mod_cast sum_pow_add_indicator_eq_zero (p := p) _
  obtain ⟨T, hT_int⟩ := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp hcast
  use T
  have hT : (∑ v ∈ Ico 1 p, (v : ℚ) ^ (2 * k)) + vonStaudtIndicator (2 * k) p =
      p * T := by unfold vonStaudtIndicator; exact_mod_cast hT_int
  have hp_ne : (p : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr (Fact.out : p.Prime).ne_zero
  have hAlg : bernoulli (2 * k) + vonStaudtIndicator (2 * k) p / p =
      T - (∑ i ∈ range (2 * k), bernoulli i * ((2 * k + 1).choose i) *
        (p : ℚ) ^ (2 * k + 1 - i) / (2 * k + 1)) / p := by
    field_simp [hp_ne]; linarith [hT, sum_pow_filter_eq_faulhaber p hk]
  rw [hAlg]; congr 1; simpa using faulhaber_sum_div_prime_eq

/- For fixed prime `p`, the denominator of `B_{2k} + e_{2k}(p)/p` is not divisible by `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean#L627).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b1c5085b78d3dadb460017b25f76c1beaf98310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

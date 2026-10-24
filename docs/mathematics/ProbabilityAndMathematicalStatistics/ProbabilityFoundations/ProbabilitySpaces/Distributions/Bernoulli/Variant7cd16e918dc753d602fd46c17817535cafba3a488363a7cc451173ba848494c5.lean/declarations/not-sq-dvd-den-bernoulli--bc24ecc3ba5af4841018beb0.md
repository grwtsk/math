# not_sq_dvd_den_bernoulli

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a665dbc38aeb4dcc149b60e7abdb75f97195a4b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 711,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9641055b-ee24-e4b4-17e5-61817c01154b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5679f753-8a77-52b1-c5b3-caf738db5dc9",
  "kind": "theorem",
  "lexical_name": "not_sq_dvd_den_bernoulli",
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
  "slug": "not-sq-dvd-den-bernoulli--bc24ecc3ba5af4841018beb0",
  "source": {
    "blob": "a665dbc38aeb4dcc149b60e7abdb75f97195a4b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 727,
    "line": 711,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc24ecc3ba5af4841018beb0d9777360db9138be7c18351414aaa2252943e88a",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5679f753-8a77-52b1-c5b3-caf738db5dc9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 711–727.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_sq_dvd_den_bernoulli (hk : 0 < k) (hpk : p - 1 ∣ 2 * k) :
    ¬ p ^ 2 ∣ (bernoulli (2 * k)).den := by
  have hp : p.Prime := Fact.out
  have hpne : (p : ℚ) ≠ 0 := mod_cast hp.ne_zero
  have h1 : ¬ p ∣ (p * bernoulli (2 * k)).den := by
    simp [← Rat.padicValuation_le_one_iff, padicValuation_bernoulli hk hpk, ← WithZero.exp_add]
  have h2 : (bernoulli (2 * k)).den ∣ p * ((p : ℚ) * bernoulli (2 * k)).den := by
    have hd := Rat.mul_den_dvd (1 / (p : ℚ)) ((p : ℚ) * bernoulli (2 * k))
    rwa [one_div, inv_mul_cancel_left₀ hpne, show ((p : ℚ)⁻¹).den = p by simp [hp.ne_zero]] at hd
  contrapose! h1
  simpa [Nat.mul_dvd_mul_iff_left hp.pos, pow_two] using h1.trans h2

end Valuation

end Bernoulli

end vonStaudtClausen
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Variant7cd16e918dc753d602fd46c17817535cafba3a488363a7cc451173ba848494c5.lean#L711).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a665dbc38aeb4dcc149b60e7abdb75f97195a4b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

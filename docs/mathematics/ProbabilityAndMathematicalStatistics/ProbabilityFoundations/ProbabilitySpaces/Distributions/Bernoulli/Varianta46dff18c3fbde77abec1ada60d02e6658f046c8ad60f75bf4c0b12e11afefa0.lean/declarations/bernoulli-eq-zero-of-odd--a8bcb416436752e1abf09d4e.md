# bernoulli'_eq_zero_of_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:135f2c7e-d6fb-3f87-e3bd-01871926c63a",
  "kind": "theorem",
  "lexical_name": "bernoulli'_eq_zero_of_odd",
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
  "slug": "bernoulli-eq-zero-of-odd--a8bcb416436752e1abf09d4e",
  "source": {
    "blob": "5b1c5085b78d3dadb460017b25f76c1beaf98310",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 186,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8bcb416436752e1abf09d4eb14b4f5ade0bc61522e1239f0b995481cbf5bdf7",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:135f2c7e-d6fb-3f87-e3bd-01871926c63a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernoulli'_eq_zero_of_odd {n : ℕ} (h_odd : Odd n) (hlt : 1 < n) : bernoulli' n = 0 := by
  let B := mk fun n => bernoulli' n / (n ! : ℚ)
  suffices (B - evalNegHom B) * (exp ℚ - 1) = X * (exp ℚ - 1) by
    rcases mul_eq_mul_right_iff.mp this with h | h <;>
      simp only [PowerSeries.ext_iff, evalNegHom, coeff_X] at h
    · apply eq_zero_of_neg_eq
      specialize h n
      split_ifs at h <;> simp_all [B, h_odd.neg_one_pow, factorial_ne_zero]
    · simpa +decide [Nat.factorial] using h 1
  have h : B * (exp ℚ - 1) = X * exp ℚ := by
    simpa [bernoulli'PowerSeries] using bernoulli'PowerSeries_mul_exp_sub_one ℚ
  rw [sub_mul, h, mul_sub X, sub_right_inj, ← neg_sub, mul_neg, neg_eq_iff_eq_neg]
  suffices evalNegHom (B * (exp ℚ - 1)) * exp ℚ = evalNegHom (X * exp ℚ) * exp ℚ by
    simpa [mul_assoc, sub_mul, mul_comm (evalNegHom (exp ℚ)), exp_mul_exp_neg_eq_one]
  congr

/-- The Bernoulli numbers are defined to be `bernoulli'` with a parity sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Distributions/Bernoulli/Varianta46dff18c3fbde77abec1ada60d02e6658f046c8ad60f75bf4c0b12e11afefa0.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b1c5085b78d3dadb460017b25f76c1beaf98310` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

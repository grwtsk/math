# every_fixed_exponential_loss

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:840fd349-167e-860f-c454-604a4aa8a88d",
  "kind": "theorem",
  "lexical_name": "every_fixed_exponential_loss",
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
  "slug": "every-fixed-exponential-loss--56d202bf1392cf0d8f087354",
  "source": {
    "blob": "9e361b4749eaa25c64fbed20e88737d649dd43a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56d202bf1392cf0d8f087354381b6bdd24cba6c90eda87d26a53e23469310444",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:840fd349-167e-860f-c454-604a4aa8a88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem every_fixed_exponential_loss {ε : ℝ} (hε : 0 < ε) :
    ∃ T : ℝ, 1 ≤ T ∧ ∀ t : ℝ, T ≤ t → comparisonProfile t ≤ Real.exp (ε * t) := by
  refine ⟨max 1 ((1 / ε) ^ 2), le_max_left _ _, ?_⟩
  intro t ht
  have ht1 : 1 ≤ t := (le_max_left _ _).trans ht
  have ht0 : 0 ≤ t := by linarith
  have hsq : (1 / ε) ^ 2 ≤ t := (le_max_right _ _).trans ht
  have hs := Real.sqrt_le_sqrt hsq
  rw [Real.sqrt_sq_eq_abs, abs_of_pos (by positivity : 0 < (1 : ℝ) / ε)] at hs
  have hεs : 1 ≤ ε * Real.sqrt t := by
    have h := mul_le_mul_of_nonneg_left hs hε.le
    simpa only [mul_one_div_cancel hε.ne'] using h
  have h := mul_le_mul_of_nonneg_right hεs (Real.sqrt_nonneg t)
  rw [one_mul] at h
  have hsquare := Real.sq_sqrt ht0
  unfold comparisonProfile
  apply Real.exp_le_exp.mpr
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SubexponentialCountermodel/Variantbe72c3b28274444ff9f4c48a04490ab2ffac8857b3561e6229d8842c7c741566.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e361b4749eaa25c64fbed20e88737d649dd43a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

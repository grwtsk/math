# response_window_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73f6ec0c-295b-1ee2-6480-c417062ca937",
  "kind": "theorem",
  "lexical_name": "response_window_bound",
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
  "slug": "response-window-bound--452210986e4a9ee4b7929edb",
  "source": {
    "blob": "d8bd8170dea9989588a3d99911fc7af58652d4c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 123,
    "path": "GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:452210986e4a9ee4b7929edb16630ff69fb96251389918ac72a4cfbea4fb532c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73f6ec0c-295b-1ee2-6480-c417062ca937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem response_window_bound (n : ℕ) {u : ℝ} (hu : 0 ≤ u) :
    |response n u| ≤ 2 * (|(n : ℝ) ^ (-(1 / 2 : ℝ))| + 1) := by
  have hexpBound : Real.exp (-u / 2) ≤ 1 := by
    have hnegative : -u / 2 ≤ 0 := by linarith
    simpa using Real.exp_le_exp.mpr hnegative
  have habsExp : |Real.exp (-u / 2)| ≤ 1 := by
    simpa only [abs_of_pos (Real.exp_pos (-u / 2))] using hexpBound
  have htriangle : |(n : ℝ) ^ (-(1 / 2 : ℝ)) - Real.exp (-u / 2)| ≤
      |(n : ℝ) ^ (-(1 / 2 : ℝ))| + |Real.exp (-u / 2)| := by
    simpa only [sub_zero, zero_sub, abs_neg] using
      abs_sub_le ((n : ℝ) ^ (-(1 / 2 : ℝ))) 0 (Real.exp (-u / 2))
  by_cases harrived : Real.log (n : ℝ) ≤ u
  · rw [response_of_arrived harrived]
    unfold responseKernel
    rw [abs_mul, abs_of_nonneg (zero_le_two : (0 : ℝ) ≤ 2)]
    exact le_trans (mul_le_mul_of_nonneg_left htriangle zero_le_two)
      (mul_le_mul_of_nonneg_left (add_le_add le_rfl habsExp) zero_le_two)
  · rw [response_of_not_arrived harrived, abs_zero]
    exact mul_nonneg zero_le_two (add_nonneg (abs_nonneg _) zero_le_one)

/-- Finite compact-window allowance, with its original coefficients and full
fixed inventory. No scale-uniform polynomial estimate is claimed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8bd8170dea9989588a3d99911fc7af58652d4c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

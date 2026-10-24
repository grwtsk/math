# balanced_density_abs_le_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c59eb97d-d0e5-3e0e-03b6-b79b8e1e9d5c",
  "kind": "theorem",
  "lexical_name": "balanced_density_abs_le_nonnegative",
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
  "slug": "balanced-density-abs-le-nonnegative--10415fb27dfb47a96e57c6a9",
  "source": {
    "blob": "219f8b1fc8fa21ea38e91a67a6c5aeca50fc48ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant2afa0c4e877f6b060835e8d3fdca571efcaeacc23bcdc7ce3c048cf758bd46f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10415fb27dfb47a96e57c6a9307027a5dd3434a665bf6ccda6997a1506e35fac",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant2afa0c4e877f6b060835e8d3fdca571efcaeacc23bcdc7ce3c048cf758bd46f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c59eb97d-d0e5-3e0e-03b6-b79b8e1e9d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balanced_density_abs_le_nonnegative {t : ℝ} (ht : 0 ≤ t) :
    |balancedFirstPrimeDensity t| ≤ Real.log 4 * Real.exp (t / 2) := by
  have hs : Real.exp (t / 2) ≤ Real.exp t := Real.exp_le_exp.mpr (by linarith)
  have hlog : 1 ≤ Real.log (4 : ℝ) := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    linarith [Real.log_two_gt_d9]
  have htheta := Chebyshev.theta_le_log4_mul_x (Real.exp_pos t).le
  have htheta0 := Chebyshev.theta_nonneg (Real.exp t)
  have hnum : |Chebyshev.theta (Real.exp t) - Real.exp t + Real.exp (t / 2)| ≤
      Real.log 4 * Real.exp t := by
    apply abs_le.mpr
    have hm := mul_le_mul_of_nonneg_right hlog (Real.exp_pos t).le
    constructor <;> nlinarith [Real.exp_pos (t / 2)]
  unfold balancedFirstPrimeDensity
  rw [abs_mul, abs_of_pos (Real.exp_pos _)]
  calc
    _ ≤ (Real.log 4 * Real.exp t) * Real.exp (-t / 2) :=
      mul_le_mul_of_nonneg_right hnum (Real.exp_pos _).le
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring

/-- The actual fixed physical head retains every first prime below seven. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant2afa0c4e877f6b060835e8d3fdca571efcaeacc23bcdc7ce3c048cf758bd46f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/07SourceBalancedFirstPrimeConsumer/Variant2afa0c4e877f6b060835e8d3fdca571efcaeacc23bcdc7ce3c048cf758bd46f8.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `219f8b1fc8fa21ea38e91a67a6c5aeca50fc48ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

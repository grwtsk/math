# localizedCenteredErrorExpMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7de969ac5c1f33335cb8522b5c828042205beed4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5ee7f548b3d470f3692d7fb7d42aff088d7302a69230e2deb4ff65438014f979.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ed052af-e90c-c7ef-ddad-0d7b7d3dbf7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a43a44db-367f-c531-d772-2f0defe2ad6a",
  "kind": "theorem",
  "lexical_name": "localizedCenteredErrorExpMass_le",
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
  "slug": "localizedcenterederrorexpmass-le--16b79fb43a620f683ba131a6",
  "source": {
    "blob": "7de969ac5c1f33335cb8522b5c828042205beed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedMixedWorkEstimate/Variant5ee7f548b3d470f3692d7fb7d42aff088d7302a69230e2deb4ff65438014f979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16b79fb43a620f683ba131a6aa5913a929ea403884969e55939dbdaad56581f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedMixedWorkEstimate/Variant5ee7f548b3d470f3692d7fb7d42aff088d7302a69230e2deb4ff65438014f979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a43a44db-367f-c531-d772-2f0defe2ad6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localizedCenteredErrorExpMass_le (A offset : ℝ) (hA : 1 ≤ A) :
    localizedCenteredErrorExpMass A offset ≤
      2 * (Real.log 4 + 4 + Real.log 2 + |offset|) * Real.exp A /
        Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
  let l := Real.log (vaughanCutoff A : ℝ)
  let L := actualJointSupportUpper A
  let C := Real.log 4 + 4 + Real.log 2 + |offset|
  have hC : 0 ≤ C := by dsimp only [C]; positivity
  by_cases hL : l ≤ L
  · have hl0 : 0 ≤ l := (actual_log_cutoff_bounds A hA).1
    have he : IntervalIntegrable (fun t => mangoldtLogError t - offset) volume l L := by
      have hie : IntervalIntegrable mangoldtLogError volume l L := by
        simpa using mangoldtLogError_mul_deriv_intervalIntegrable l L hL
          (fun t : ℝ => t) contDiff_id
      exact hie.sub (intervalIntegrable_const)
    have hexp : IntervalIntegrable (fun t : ℝ => Real.exp (t / 2)) volume l L := by
      have hc : Continuous (fun t : ℝ => Real.exp (t / 2)) := by fun_prop
      exact hc.intervalIntegrable _ _
    have hea : IntervalIntegrable (fun t => |mangoldtLogError t - offset| *
        Real.exp (t / 2)) volume l L := by
      have hc : Continuous (fun t : ℝ => Real.exp (t / 2)) := by fun_prop
      exact he.abs.mul_continuousOn hc.continuousOn
    have hle : (∫ t in l..L, |mangoldtLogError t - offset| * Real.exp (t / 2)) ≤
        ∫ t in l..L, C * Real.exp (t / 2) := by
      apply intervalIntegral.integral_mono_on hL hea (hexp.const_mul C)
      intro t ht
      apply mul_le_mul_of_nonneg_right _ (Real.exp_pos _).le
      exact (abs_sub _ _).trans
        (add_le_add_right (mangoldtLogError_abs_le t (hl0.trans ht.1)) _)
    have hi : (∫ t in l..L, Real.exp (t / 2)) =
        2 * Real.exp (L / 2) - 2 * Real.exp (l / 2) :=
      intervalIntegral.integral_eq_sub_of_hasDerivAt
        (fun t _ => exp_half_antiderivative t) hexp
    rw [intervalIntegral.integral_const_mul, hi] at hle
    have hdrop : (∫ t in l..L, |mangoldtLogError t - offset| * Real.exp (t / 2)) ≤
        2 * C * Real.exp (L / 2) := by
      nlinarith [Real.exp_pos (l / 2)]
    simpa only [localizedCenteredErrorExpMass, max_eq_right hL,
      exp_half_actualJointSupportUpper, mul_div_assoc] using hdrop
  · simp only [localizedCenteredErrorExpMass, max_eq_left (le_of_not_ge hL),
      intervalIntegral.integral_same]
    positivity

/-- The exact source support removes the extra A from the prior exponential envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedMixedWorkEstimate/Variant5ee7f548b3d470f3692d7fb7d42aff088d7302a69230e2deb4ff65438014f979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedMixedWorkEstimate/Variant5ee7f548b3d470f3692d7fb7d42aff088d7302a69230e2deb4ff65438014f979.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7de969ac5c1f33335cb8522b5c828042205beed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

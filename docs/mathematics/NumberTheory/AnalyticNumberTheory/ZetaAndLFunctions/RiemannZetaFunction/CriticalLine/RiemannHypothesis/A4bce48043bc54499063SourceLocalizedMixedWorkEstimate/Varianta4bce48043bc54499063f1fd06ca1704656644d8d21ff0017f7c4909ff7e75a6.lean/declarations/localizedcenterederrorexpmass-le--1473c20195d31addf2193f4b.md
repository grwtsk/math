# localizedCenteredErrorExpMass_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f7e811e950e3fe0031b7146b68070c0e2d57b69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 69,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a4/a4bce48043bc54499063f1fd06ca1704656644d8d21ff0017f7c4909ff7e75a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f205ff9-d123-2ee5-d869-da8fb1596608",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f27d88f0-076c-fbed-57f8-5ce51cbb376c",
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
  "slug": "localizedcenterederrorexpmass-le--1473c20195d31addf2193f4b",
  "source": {
    "blob": "6f7e811e950e3fe0031b7146b68070c0e2d57b69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 69,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A4bce48043bc54499063SourceLocalizedMixedWorkEstimate/Varianta4bce48043bc54499063f1fd06ca1704656644d8d21ff0017f7c4909ff7e75a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1473c20195d31addf2193f4b872d53bf6734aac885f995d47de02fee08ce8358",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A4bce48043bc54499063SourceLocalizedMixedWorkEstimate/Varianta4bce48043bc54499063f1fd06ca1704656644d8d21ff0017f7c4909ff7e75a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f27d88f0-076c-fbed-57f8-5ce51cbb376c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–114.

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
  · have hL' : Real.log (vaughanCutoff A : ℝ) ≤ actualJointSupportUpper A := hL
    have hl0 : 0 ≤ l := (actual_log_cutoff_bounds A hA).1
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
        (add_le_add (mangoldtLogError_abs_le t (hl0.trans ht.1)) (le_refl |offset|))
    have hi : (∫ t in l..L, Real.exp (t / 2)) =
        2 * Real.exp (L / 2) - 2 * Real.exp (l / 2) :=
      intervalIntegral.integral_eq_sub_of_hasDerivAt
        (fun t _ => exp_half_antiderivative t) hexp
    rw [intervalIntegral.integral_const_mul, hi] at hle
    have hdrop : (∫ t in l..L, |mangoldtLogError t - offset| * Real.exp (t / 2)) ≤
        2 * C * Real.exp (L / 2) := by
      nlinarith [Real.exp_pos (l / 2)]
    simpa only [l, L, C, localizedCenteredErrorExpMass, max_eq_right hL',
      exp_half_actualJointSupportUpper, mul_div_assoc] using hdrop
  · dsimp only [l, L] at hL
    simp only [localizedCenteredErrorExpMass, max_eq_left (le_of_not_ge hL),
      intervalIntegral.integral_same]
    positivity

/-- The exact source support removes the extra A from the prior exponential envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A4bce48043bc54499063SourceLocalizedMixedWorkEstimate/Varianta4bce48043bc54499063f1fd06ca1704656644d8d21ff0017f7c4909ff7e75a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/A4bce48043bc54499063SourceLocalizedMixedWorkEstimate/Varianta4bce48043bc54499063f1fd06ca1704656644d8d21ff0017f7c4909ff7e75a6.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f7e811e950e3fe0031b7146b68070c0e2d57b69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# derivativeProfile_deriv_supBounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fad84f85-73d9-3529-39af-3b159ebe005b",
  "kind": "theorem",
  "lexical_name": "derivativeProfile_deriv_supBounds",
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
  "slug": "derivativeprofile-deriv-supbounds--6f8a41807e838ed254f5be43",
  "source": {
    "blob": "849a8a25f7474780165270bb88439ed309133a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 129,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f8a41807e838ed254f5be432f4024a0c35f7c013d212831111cb5d90510b990",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fad84f85-73d9-3529-39af-3b159ebe005b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivativeProfile_deriv_supBounds {A : ℝ} (hA : 1 ≤ A) :
    ProfileSupBounds (deriv (derivativeProfile A))
      (22 / A ^ 2 + 5 / (2 * A)) (132 / A ^ 3 + 11 / A ^ 2) := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hsecond (t : ℝ) :
      |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 22 / A ^ 2 := by
    apply (sourceCorrelation_second_deriv_abs_le_energy hp t).trans
    apply (le_div_iff₀ (sq_pos_of_pos hp)).2
    have h := actual_first_energy_lt_twenty_two hA
    nlinarith
  refine ⟨by positivity, by positivity, ?_, ?_⟩
  · intro t
    rw [derivativeProfile_deriv hp]
    apply (abs_sub _ _).trans
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    have h := add_le_add (hsecond t)
      (div_le_div_of_nonneg_right (sourceCorrelation_deriv_abs_le_five_div hA t)
        (by norm_num : (0 : ℝ) ≤ 2))
    convert h using 1
    ring
  · intro t
    rw [derivativeProfile_second_deriv hp]
    apply (abs_sub _ _).trans
    rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
    have h := add_le_add (sourceCorrelation_third_deriv_abs_le hA t)
      (div_le_div_of_nonneg_right (hsecond t) (by norm_num : (0 : ℝ) ≤ 2))
    convert h using 1
    ring

/-- The native finite sampler with the original closed floor cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchKernelSampler/Variantb3862cc2d08b86d97d089e331278eeb262b0786a79b2d08a1bbd01af6657f090.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `849a8a25f7474780165270bb88439ed309133a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

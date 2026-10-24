# discrepancy_absolutelyContinuous_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:298af153-eafe-cc1c-343e-ee28d9002b54",
  "kind": "theorem",
  "lexical_name": "discrepancy_absolutelyContinuous_window",
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
  "slug": "discrepancy-absolutelycontinuous-window--c6076c0c67d777a52935987f",
  "source": {
    "blob": "a20891b6fd74ae495aa25635f625364890d6e760",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 471,
    "path": "GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6076c0c67d777a52935987f031af2fb3cc6d43b66a3580f65e6d1dfa5e492a0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:298af153-eafe-cc1c-343e-ee28d9002b54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discrepancy_absolutelyContinuous_window (A : ℝ) (hA : 0 ≤ A) :
    AbsolutelyContinuousOnInterval discrepancy (-(2 * A)) (2 * A) := by
  have hprim : AbsolutelyContinuousOnInterval cumulative (-(2 * A)) (2 * A) :=
    (density_intervalIntegrable (-(2 * A)) (2 * A)).absolutelyContinuousOnInterval_intervalIntegral
      (by rw [uIcc_of_le (by linarith)]; constructor <;> linarith)
  have hid : AbsolutelyContinuousOnInterval (fun t : ℝ => t) (-(2 * A)) (2 * A) :=
    contDiff_id.contDiffOn.absolutelyContinuousOnInterval
  have he : discrepancy = fun t => cumulative t - t := by
    funext t
    rw [cumulative_eq_all_real]
    ring
  rw [he]
  exact hprim.fun_sub hid

#check onset
#print axioms onset
#check gap
#print axioms gap
#check amplitude
#print axioms amplitude
#check discrepancy
#print axioms discrepancy
#check tailDensity
#print axioms tailDensity
#check density
#print axioms density
#check modelMeasure
#print axioms modelMeasure
#check cumulative
#print axioms cumulative
#check weightedPrefix
#print axioms weightedPrefix
#check onset_pos
#print axioms onset_pos
#check gap_pos
#print axioms gap_pos
#check amplitude_pos
#print axioms amplitude_pos
#check onset_match
#print axioms onset_match
#check discrepancy_below
#print axioms discrepancy_below
#check discrepancy_above
#print axioms discrepancy_above
#check discrepancy_continuous
#print axioms discrepancy_continuous
#check density_below
#print axioms density_below
#check density_above
#print axioms density_above
#check tailDensity_continuous
#print axioms tailDensity_continuous
#check density_measurable
#print axioms density_measurable
#check density_nonneg
#print axioms density_nonneg
#check density_positive_above
#print axioms density_positive_above
#check modelMeasure_no_atom
#print axioms modelMeasure_no_atom
#check density_intervalIntegrable
#print axioms density_intervalIntegrable
#check expDensity_intervalIntegrable
#print axioms expDensity_intervalIntegrable
#check integral_decay
#print axioms integral_decay
#check prefix_below
#print axioms prefix_below
#check prefix_above
#print axioms prefix_above
#check prefix_eq
#print axioms prefix_eq
#check modelMeasure_prefix
#print axioms modelMeasure_prefix
#check cumulative_absolutelyContinuous
#print axioms cumulative_absolutelyContinuous
#check integral_exp_rate
#print axioms integral_exp_rate
#check weightedPrefix_below
#print axioms weightedPrefix_below
#check weightedPrefix_above
#print axioms weightedPrefix_above
#check counting_exact
#print axioms counting_exact
#check gamma_gt_fifty_three_hundredths
#print axioms gamma_gt_fifty_three_hundredths
#check exp_onset_quarter_lt
#print axioms exp_onset_quarter_lt
#check amplitude_lt_one_fifth
#print axioms amplitude_lt_one_fifth
#check density_upper
#print axioms density_upper
#check density_upper_chebyshev
#print axioms density_upper_chebyshev
#check square_decay_bound
#print axioms square_decay_bound
#check exp_neg_two_lt_one_seventh
#print axioms exp_neg_two_lt_one_seventh
#check discrepancy_rate
#print axioms discrepancy_rate
#check discrepancy_range
#print axioms discrepancy_range
#check discrepancy_abs_le_onset
#print axioms discrepancy_abs_le_onset
#check discrepancy_tendsto
#print axioms discrepancy_tendsto
#check weightedPrefix_upper
#print axioms weightedPrefix_upper
#check counting_chebyshev
#print axioms counting_chebyshev
#check modelMeasure_interval_transport
#print axioms modelMeasure_interval_transport
#check modelMeasure_continuous_intervalIntegrable
#print axioms modelMeasure_continuous_intervalIntegrable
#check modelMeasure_weightedPrefix
#print axioms modelMeasure_weightedPrefix
#check gamma_gt_five_seventy_three_thousandths
#print axioms gamma_gt_five_seventy_three_thousandths
#check cumulative_nonpos
#print axioms cumulative_nonpos
#check cumulative_eq_all_real
#print axioms cumulative_eq_all_real
#check discrepancy_hasDerivAt_below
#print axioms discrepancy_hasDerivAt_below
#check discrepancy_hasDerivAt_above
#print axioms discrepancy_hasDerivAt_above
#check density_eq_one_add_deriv_ae
#print axioms density_eq_one_add_deriv_ae
#check discrepancy_absolutelyContinuous_window
#print axioms discrepancy_absolutelyContinuous_window

end
end ContinuousResearch.MonotoneMatchingMeasure
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/MonotoneMatchingMeasure/Varianta29b193389ffa878ae42ebd3ca68277e7618100b10f363f798e89cf657b529d2.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a20891b6fd74ae495aa25635f625364890d6e760` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

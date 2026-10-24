# actual_centered_second_primitive_eq_weighted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99b83cff-6505-89fe-0a5c-e0ea62ff5617",
  "kind": "theorem",
  "lexical_name": "actual_centered_second_primitive_eq_weighted",
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
  "slug": "actual-centered-second-primitive-eq-weighted--b5a228c9fa12f21034bf8454",
  "source": {
    "blob": "2c5fc8be7e78942cf7c1d2b35ec8257b0e6cf959",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 25,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant2a139ecf68f08f917176ae3d3f1dec61e47d0c5af115dd0329f13e7f1bedc7d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5a228c9fa12f21034bf8454d7a12a0370e093f5ee6861ab9f77da87d9be7f71",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant2a139ecf68f08f917176ae3d3f1dec61e47d0c5af115dd0329f13e7f1bedc7d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99b83cff-6505-89fe-0a5c-e0ea62ff5617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centered_second_primitive_eq_weighted (l t : ℝ)
    (hl : 0 ≤ l) (hlt : l ≤ t) :
    (∫ s in l..t, criticalPrimitive s - criticalPrimitive l) =
      weightedActualSecondPrimitive l t := by
  have ht0 : 0 ≤ t := hl.trans hlt
  have hsub : Set.uIcc l t ⊆ Set.uIcc (0 : ℝ) t := by
    rw [Set.uIcc_of_le hlt, Set.uIcc_of_le ht0]
    exact Set.Icc_subset_Icc hl le_rfl
  have hconstant : AbsolutelyContinuousOnInterval (fun _ : ℝ => criticalPrimitive l) l t := by
    have hc : ContDiff ℝ 1 (fun _ : ℝ => criticalPrimitive l) := by fun_prop
    exact hc.contDiffOn.absolutelyContinuousOnInterval
  have hP : AbsolutelyContinuousOnInterval
      (fun s : ℝ => criticalPrimitive s - criticalPrimitive l) l t :=
    AbsolutelyContinuousOnInterval.sub
      ((criticalPrimitive_absolutelyContinuous t ht0).mono hsub) hconstant
  have hv : AbsolutelyContinuousOnInterval (fun s : ℝ => t - s) l t := by
    have hc : ContDiff ℝ 1 (fun s : ℝ => t - s) := by fun_prop
    exact hc.contDiffOn.absolutelyContinuousOnInterval
  have hi := hP.integral_mul_deriv_eq_deriv_mul hv
  have hdv (s : ℝ) : deriv (fun u : ℝ => t - u) s = -1 := by
    simp
  have hdf : (∫ s in l..t, deriv (fun u => criticalPrimitive u - criticalPrimitive l) s *
      (t - s)) = weightedActualSecondPrimitive l t := by
    unfold weightedActualSecondPrimitive
    apply intervalIntegral.integral_congr_ae
    filter_upwards [criticalPrimitive_ae_hasDerivAt t ht0] with s hs hmem
    have hm : s ∈ Set.uIcc (0 : ℝ) t := hsub (uIoc_subset_uIcc hmem)
    rw [((hs hm).sub_const (criticalPrimitive l)).deriv]
    ring
  have hleft : (∫ s in l..t, (criticalPrimitive s - criticalPrimitive l) *
      deriv (fun u : ℝ => t - u) s) =
      -(∫ s in l..t, criticalPrimitive s - criticalPrimitive l) := by
    simp_rw [hdv, mul_neg_one]
    exact intervalIntegral.integral_neg
  rw [hleft, hdf] at hi
  simp only [sub_self, mul_zero, zero_mul, zero_sub] at hi
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant2a139ecf68f08f917176ae3d3f1dec61e47d0c5af115dd0329f13e7f1bedc7d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant2a139ecf68f08f917176ae3d3f1dec61e47d0c5af115dd0329f13e7f1bedc7d8.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c5fc8be7e78942cf7c1d2b35ec8257b0e6cf959` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

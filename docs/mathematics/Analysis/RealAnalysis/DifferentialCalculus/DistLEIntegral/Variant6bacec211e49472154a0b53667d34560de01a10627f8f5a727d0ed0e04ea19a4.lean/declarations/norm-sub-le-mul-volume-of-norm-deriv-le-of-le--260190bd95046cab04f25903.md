# norm_sub_le_mul_volume_of_norm_deriv_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6c00a2bf7286cdf0fd7c681fa741f00670eb766",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 85,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53470860-e3b1-9169-3df2-18f5ab7d994c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbd703dc-7588-77d2-1ece-0ba611a980cb",
  "kind": "lemma",
  "lexical_name": "norm_sub_le_mul_volume_of_norm_deriv_le_of_le",
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
  "slug": "norm-sub-le-mul-volume-of-norm-deriv-le-of-le--260190bd95046cab04f25903",
  "source": {
    "blob": "f6c00a2bf7286cdf0fd7c681fa741f00670eb766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 85,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:260190bd95046cab04f2590336b6fb9eda5b3ba83e137d97f225b8aeff26fc49",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbd703dc-7588-77d2-1ece-0ba611a980cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_sub_le_mul_volume_of_norm_deriv_le_of_le {C : ℝ} (hab : a ≤ b)
    (hfc : ContinuousOn f (Icc a b)) (hfd : DifferentiableOn ℝ f (Ioo a b))
    (hnorm : ∀ᵐ t, t ∈ Ioo a b → ‖deriv f t‖ ≤ C) :
    ‖f b - f a‖ ≤ C * volume.real {x ∈ Ioo a b | deriv f x ≠ 0} := by
  set s := toMeasurable volume {x | deriv f x ≠ 0}
  have hsm : MeasurableSet s := by measurability
  calc
    ‖f b - f a‖ ≤ ∫ t in a..b, indicator s (fun _ ↦ C) t := by
      apply norm_sub_le_integral_of_norm_deriv_le_of_le hab hfc hfd
      · refine hnorm.mono fun t ht ht_mem ↦ ?_
        apply le_indicator_apply
        · exact fun ht' ↦ ht ht_mem
        · simp only [s, norm_le_zero_iff]
          exact not_imp_comm.2 fun h ↦ subset_toMeasurable _ _ h
      · rw [intervalIntegrable_iff_integrableOn_Ioo_of_le hab]
        refine (integrableOn_const ?_ ?_).indicator hsm <;> simp
    _ = C * volume.real {x ∈ Ioo a b | deriv f x ≠ 0} := by
      rw [intervalIntegral.integral_of_le hab, Measure.restrict_congr_set Ioo_ae_eq_Ioc.symm,
        integral_indicator hsm, Measure.restrict_restrict hsm,
        setIntegral_const, smul_eq_mul, mul_comm]
      simp only [s, Measure.real,
        Measure.measure_toMeasurable_inter_of_sFinite measurableSet_Ioo]
      simp only [inter_def, mem_ofPred_eq, and_comm]

end Line

section NormedSpace

open AffineMap
variable {f : E → F} {a b : E} {C r : ℝ} {s : Set E}

/-- Consider a function `f : E → F` continuous on a segment `[a, b]`
and line differentiable in the direction `b - a` at all points of the open segment `(a, b)`.

If `‖∂_{b - a} f‖ ≤ C` at a.e. all points of the open segment,
then `‖f b - f a‖ ≤ C * volume s`, where `s` is the set of points `t ∈ Ioo 0 1`
such that `f` has nonzero line derivative in the direction `b - a` at `lineMap a b t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6c00a2bf7286cdf0fd7c681fa741f00670eb766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

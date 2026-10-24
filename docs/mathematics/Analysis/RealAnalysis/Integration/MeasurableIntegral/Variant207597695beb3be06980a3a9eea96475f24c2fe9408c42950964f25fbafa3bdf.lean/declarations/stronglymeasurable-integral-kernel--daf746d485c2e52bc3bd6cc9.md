# StronglyMeasurable.integral_kernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:030ea4be-19e0-a70a-15ae-c1e211b000ef",
  "kind": "theorem",
  "lexical_name": "StronglyMeasurable.integral_kernel",
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
  "slug": "stronglymeasurable-integral-kernel--daf746d485c2e52bc3bd6cc9",
  "source": {
    "blob": "def363287a2c72b19ba4eab351fc1fa6eb93550f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant207597695beb3be06980a3a9eea96475f24c2fe9408c42950964f25fbafa3bdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daf746d485c2e52bc3bd6cc974908e3bd91510b8d194dfa57b6b7bb8072aaaaa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant207597695beb3be06980a3a9eea96475f24c2fe9408c42950964f25fbafa3bdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:030ea4be-19e0-a70a-15ae-c1e211b000ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem StronglyMeasurable.integral_kernel ⦃f : β → E⦄
    (hf : StronglyMeasurable f) : StronglyMeasurable fun x ↦ ∫ y, f y ∂κ x := by
  by_cases hE : CompleteSpace E; swap
  · simp [integral, hE, stronglyMeasurable_const]
  borelize E
  have : TopologicalSpace.SeparableSpace (range f ∪ {0} : Set E) :=
    hf.separableSpace_range_union_singleton
  let s : ℕ → SimpleFunc β E := SimpleFunc.approxOn _ hf.measurable (range f ∪ {0}) 0 (by simp)
  let f' n : α → E := {x | Integrable f (κ x)}.indicator fun x ↦ (s n).integral (κ x)
  refine stronglyMeasurable_of_tendsto (f := f') atTop (fun n ↦ ?_) ?_
  · refine StronglyMeasurable.indicator ?_ (measurableSet_integrable hf)
    simp_rw [SimpleFunc.integral_eq]
    refine Finset.stronglyMeasurable_fun_sum _ fun _ _ ↦ ?_
    refine (Measurable.ennreal_toReal ?_).stronglyMeasurable.smul_const _
    exact κ.measurable_coe ((s n).measurableSet_fiber _)
  · rw [tendsto_pi_nhds]; intro x
    by_cases hfx : Integrable f (κ x)
    · simp only [mem_ofPred_eq, hfx, indicator_of_mem, f']
      apply tendsto_integral_approxOn_of_measurable_of_range_subset _ hfx
      exact subset_rfl
    · simp [f', hfx, integral_undef]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant207597695beb3be06980a3a9eea96475f24c2fe9408c42950964f25fbafa3bdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MeasurableIntegral/Variant207597695beb3be06980a3a9eea96475f24c2fe9408c42950964f25fbafa3bdf.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `def363287a2c72b19ba4eab351fc1fa6eb93550f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

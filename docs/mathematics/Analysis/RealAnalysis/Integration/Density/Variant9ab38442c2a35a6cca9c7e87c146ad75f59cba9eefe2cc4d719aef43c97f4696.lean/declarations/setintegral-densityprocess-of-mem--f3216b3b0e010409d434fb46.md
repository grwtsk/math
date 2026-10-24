# setIntegral_densityProcess_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b97c493f-bb6e-4520-0d8d-73ccd3d634e0",
  "kind": "lemma",
  "lexical_name": "setIntegral_densityProcess_of_mem",
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
  "slug": "setintegral-densityprocess-of-mem--f3216b3b0e010409d434fb46",
  "source": {
    "blob": "8dced0157fdc3759f9e402ccc9bb10dec0a6e0a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 206,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3216b3b0e010409d434fb46146fc1c681cf5ade04c1faef0e1085c3ff3a2d95",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b97c493f-bb6e-4520-0d8d-73ccd3d634e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_densityProcess_of_mem (hκν : fst κ ≤ ν) [hν : IsFiniteKernel ν]
    (n : ℕ) (a : α) {s : Set β} (hs : MeasurableSet s) {u : Set γ}
    (hu : u ∈ countablePartition γ n) :
    ∫ x in u, densityProcess κ ν n a x s ∂(ν a) = (κ a).real (u ×ˢ s) := by
  have : IsFiniteKernel κ := isFiniteKernel_of_isFiniteKernel_fst (h := isFiniteKernel_of_le hκν)
  have hu_meas : MeasurableSet u := measurableSet_countablePartition n hu
  simp_rw [densityProcess]
  rw [integral_toReal]
  rotate_left
  · refine Measurable.aemeasurable ?_
    change Measurable ((fun (p : α × _) ↦ κ p.1 (countablePartitionSet n p.2 ×ˢ s)
      / ν p.1 (countablePartitionSet n p.2)) ∘ (fun x ↦ (a, x)))
    exact (measurable_densityProcess_aux κ ν n hs).comp measurable_prodMk_left
  · refine ae_of_all _ (fun x ↦ ?_)
    by_cases h0 : ν a (countablePartitionSet n x) = 0
    · suffices κ a (countablePartitionSet n x ×ˢ s) = 0 by simp [h0, this]
      have h0' : fst κ a (countablePartitionSet n x) = 0 :=
        le_antisymm ((hκν a _).trans h0.le) zero_le'
      rw [fst_apply' _ _ (measurableSet_countablePartitionSet _ _)] at h0'
      refine measure_mono_null (fun x ↦ ?_) h0'
      simp only [mem_prod, mem_setOf_eq, and_imp]
      exact fun h _ ↦ h
    · exact ENNReal.div_lt_top (measure_ne_top _ _) h0
  congr
  have : ∫⁻ x in u, κ a (countablePartitionSet n x ×ˢ s) / ν a (countablePartitionSet n x) ∂(ν a)
      = ∫⁻ _ in u, κ a (u ×ˢ s) / ν a u ∂(ν a) := by
    refine setLIntegral_congr_fun hu_meas (ae_of_all _ (fun t ht ↦ ?_))
    rw [countablePartitionSet_of_mem hu ht]
  rw [this]
  simp only [MeasureTheory.lintegral_const, MeasurableSet.univ, Measure.restrict_apply, univ_inter]
  by_cases h0 : ν a u = 0
  · simp only [h0, mul_zero]
    have h0' : fst κ a u = 0 := le_antisymm ((hκν a _).trans h0.le) zero_le'
    rw [fst_apply' _ _ hu_meas] at h0'
    refine (measure_mono_null ?_ h0').symm
    intro p
    simp only [mem_prod, mem_setOf_eq, and_imp]
    exact fun h _ ↦ h
  rw [div_eq_mul_inv, mul_assoc, ENNReal.inv_mul_cancel h0, mul_one]
  exact measure_ne_top _ _

open scoped Function in -- required for scoped `on` notation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dced0157fdc3759f9e402ccc9bb10dec0a6e0a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

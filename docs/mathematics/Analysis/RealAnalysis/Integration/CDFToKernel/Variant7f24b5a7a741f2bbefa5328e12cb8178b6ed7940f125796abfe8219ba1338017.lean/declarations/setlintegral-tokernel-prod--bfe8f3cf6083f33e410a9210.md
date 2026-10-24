# setLIntegral_toKernel_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91c160c2-d3e4-89c2-933f-45a931531ccd",
  "kind": "lemma",
  "lexical_name": "setLIntegral_toKernel_prod",
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
  "slug": "setlintegral-tokernel-prod--bfe8f3cf6083f33e410a9210",
  "source": {
    "blob": "8cd17fdc6e66cd0bdf731dea45598795f980162b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 554,
    "line": 514,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfe8f3cf6083f33e410a9210d18241fac80bd0a2e3e00d6d07de8077de5ce66c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91c160c2-d3e4-89c2-933f-45a931531ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setLIntegral_toKernel_prod [IsFiniteKernel κ] (hf : IsCondKernelCDF f κ ν)
    (a : α) {s : Set β} (hs : MeasurableSet s) {t : Set ℝ} (ht : MeasurableSet t) :
    ∫⁻ b in s, hf.toKernel f (a, b) t ∂(ν a) = κ a (s ×ˢ t) := by
  -- `setLIntegral_toKernel_Iic` gives the result for `t = Iic x`. These sets form a
  -- π-system that generates the Borel σ-algebra, hence we can get the same equality for any
  -- measurable set `t`.
  induction t, ht
    using MeasurableSpace.induction_on_inter (borel_eq_generateFrom_Iic ℝ) isPiSystem_Iic with
  | empty => simp only [measure_empty, lintegral_const, zero_mul, prod_empty]
  | basic t ht =>
    obtain ⟨q, rfl⟩ := ht
    exact setLIntegral_toKernel_Iic hf a _ hs
  | compl t ht iht =>
    calc ∫⁻ b in s, hf.toKernel f (a, b) tᶜ ∂(ν a)
      = ∫⁻ b in s, hf.toKernel f (a, b) univ - hf.toKernel f (a, b) t ∂(ν a) := by
          congr with x; rw [measure_compl ht (measure_ne_top (hf.toKernel f (a, x)) _)]
    _ = ∫⁻ b in s, hf.toKernel f (a, b) univ ∂(ν a)
          - ∫⁻ b in s, hf.toKernel f (a, b) t ∂(ν a) := by
        rw [lintegral_sub]
        · exact (Kernel.measurable_coe (hf.toKernel f) ht).comp measurable_prodMk_left
        · rw [iht]
          exact measure_ne_top _ _
        · exact Eventually.of_forall fun a ↦ measure_mono (subset_univ _)
    _ = κ a (s ×ˢ univ) - κ a (s ×ˢ t) := by
        rw [setLIntegral_toKernel_univ hf a hs, iht]
    _ = κ a (s ×ˢ tᶜ) := by
        rw [← measure_sdiff _ (hs.prod ht).nullMeasurableSet (measure_ne_top _ _)]
        · rw [prod_sdiff_prod, compl_eq_univ_sdiff]
          simp only [sdiff_self, empty_prod, union_empty]
        · rw [prod_subset_prod_iff]
          exact Or.inl ⟨subset_rfl, subset_univ t⟩
  | iUnion f hf_disj hf_meas ihf =>
    simp_rw [measure_iUnion hf_disj hf_meas]
    rw [lintegral_tsum, prod_iUnion, measure_iUnion]
    · simp_rw [ihf]
    · exact hf_disj.mono fun i j h ↦ h.set_prod_right _ _
    · exact fun i ↦ MeasurableSet.prod hs (hf_meas i)
    · exact fun i ↦
        ((Kernel.measurable_coe _ (hf_meas i)).comp measurable_prodMk_left).aemeasurable.restrict

open scoped Function in -- required for scoped `on` notation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cd17fdc6e66cd0bdf731dea45598795f980162b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

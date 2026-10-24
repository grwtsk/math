# withDensity_apply_eq_zero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84ca1901-056a-cae9-4beb-b356202b8ddf",
  "kind": "theorem",
  "lexical_name": "withDensity_apply_eq_zero'",
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
  "slug": "withdensity-apply-eq-zero--9c624caf69e650beff17bfb0",
  "source": {
    "blob": "13b8bced081feb62dc5a16e2ce9acac3981bf1d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 234,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c624caf69e650beff17bfb075ec5146339dfcd66062898f581343b21d3fc04b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84ca1901-056a-cae9-4beb-b356202b8ddf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withDensity_apply_eq_zero' {f : α → ℝ≥0∞} {s : Set α} (hf : AEMeasurable f μ) :
    μ.withDensity f s = 0 ↔ μ ({ x | f x ≠ 0 } ∩ s) = 0 := by
  constructor
  · intro hs
    let t := toMeasurable (μ.withDensity f) s
    apply measure_mono_null (inter_subset_inter_right _ (subset_toMeasurable (μ.withDensity f) s))
    have A : μ.withDensity f t = 0 := by rw [measure_toMeasurable, hs]
    rw [withDensity_apply f (measurableSet_toMeasurable _ s),
      lintegral_eq_zero_iff' (AEMeasurable.restrict hf),
      EventuallyEq, ae_restrict_iff'₀, ae_iff] at A
    swap
    · simp only [measurableSet_toMeasurable, MeasurableSet.nullMeasurableSet]
    simp only [Pi.zero_apply, mem_setOf_eq, Filter.mem_mk] at A
    convert A using 2
    ext x
    simp only [and_comm, exists_prop, mem_inter_iff, mem_setOf_eq,
      mem_compl_iff, not_forall]
  · intro hs
    let t := toMeasurable μ ({ x | f x ≠ 0 } ∩ s)
    have A : s ⊆ t ∪ { x | f x = 0 } := by
      intro x hx
      rcases eq_or_ne (f x) 0 with (fx | fx)
      · simp only [fx, mem_union, mem_setOf_eq, eq_self_iff_true, or_true]
      · left
        apply subset_toMeasurable _ _
        exact ⟨fx, hx⟩
    apply measure_mono_null A (measure_union_null _ _)
    · apply withDensity_absolutelyContinuous
      rwa [measure_toMeasurable]
    rcases hf with ⟨g, hg, hfg⟩
    have t : {x | f x = 0} =ᵐ[μ.withDensity f] {x | g x = 0} := by
      apply withDensity_absolutelyContinuous
      filter_upwards [hfg] with a ha
      rw [eq_iff_iff]
      exact ⟨fun h ↦ by rw [h] at ha; exact ha.symm,
             fun h ↦ by rw [h] at ha; exact ha⟩
    rw [measure_congr t, withDensity_congr_ae hfg]
    have M : MeasurableSet { x : α | g x = 0 } := hg (measurableSet_singleton _)
    rw [withDensity_apply _ M, lintegral_eq_zero_iff hg]
    filter_upwards [ae_restrict_mem M]
    simp only [imp_self, Pi.zero_apply, imp_true_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensity/Variant62cc2f6eb975f380a270e7a9f17bd26380778abf82023876a91f672442ea5313.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13b8bced081feb62dc5a16e2ce9acac3981bf1d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

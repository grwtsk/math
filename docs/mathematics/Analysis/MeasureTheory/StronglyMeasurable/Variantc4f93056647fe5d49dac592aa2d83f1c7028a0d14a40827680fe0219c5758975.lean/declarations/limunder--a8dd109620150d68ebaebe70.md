# limUnder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c3ba44b-73ae-dc8b-6e94-c530de2437c3",
  "kind": "theorem",
  "lexical_name": "limUnder",
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
  "slug": "limunder--a8dd109620150d68ebaebe70",
  "source": {
    "blob": "2fc0e4ca9898fd404e1fe71b65e172cd567b404e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 57,
    "path": "GRWTSK/Analysis/MeasureTheory/StronglyMeasurable/Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8dd109620150d68ebaebe705e4022856add352d8ec881c4f0a5154415db664f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/StronglyMeasurable/Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c3ba44b-73ae-dc8b-6e94-c530de2437c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limUnder [hE : Nonempty E] (hf : ∀ i, StronglyMeasurable (f i)) :
    StronglyMeasurable (fun x ↦ limUnder l (f · x)) := by
  obtain rfl | hl := eq_or_neBot l
  · simpa [limUnder, Filter.map_bot] using stronglyMeasurable_const
  borelize E
  let e := Classical.choice hE
  rw [stronglyMeasurable_iff_measurable_separable]; constructor
  · let conv := {x | ∃ c, Tendsto (f · x) l (𝓝 c)}
    have mconv : MeasurableSet conv := StronglyMeasurable.measurableSet_exists_tendsto hf
    have : (fun x ↦ _root_.limUnder l (f · x)) = ((↑) : conv → X).extend
        (fun x ↦ _root_.limUnder l (f · x)) (fun _ ↦ e) := by
      ext x
      by_cases hx : x ∈ conv
      · rw [Function.extend_val_apply hx]
      · rw [Function.extend_val_apply' hx, limUnder_of_not_tendsto hx]
    rw [this]
    refine (MeasurableEmbedding.subtype_coe mconv).measurable_extend
      (measurable_of_tendsto_metrizable' l
        (fun i ↦ (hf i).measurable.comp measurable_subtype_coe)
        (tendsto_pi_nhds.2 fun ⟨x, ⟨c, hc⟩⟩ ↦ ?_)) measurable_const
    rwa [hc.limUnder_eq]
  · let s := closure (⋃ i, range (f i)) ∪ {e}
    have hs : IsSeparable s := (IsSeparable.iUnion (fun i ↦ (hf i).isSeparable_range)).closure.union
      (finite_singleton e).isSeparable
    refine hs.mono ?_
    rintro - ⟨x, rfl⟩
    by_cases hx : ∃ c, Tendsto (f · x) l (𝓝 c)
    · obtain ⟨c, hc⟩ := hx
      simp_rw [hc.limUnder_eq]
      exact subset_union_left <| mem_closure_of_tendsto hc
        (Eventually.of_forall fun i ↦ mem_iUnion.2 ⟨i, ⟨x, rfl⟩⟩)
    · simp_rw [limUnder_of_not_tendsto hx]
      exact subset_union_right (mem_singleton e)

end MeasureTheory.StronglyMeasurable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/StronglyMeasurable/Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/StronglyMeasurable/Variantc4f93056647fe5d49dac592aa2d83f1c7028a0d14a40827680fe0219c5758975.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fc0e4ca9898fd404e1fe71b65e172cd567b404e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

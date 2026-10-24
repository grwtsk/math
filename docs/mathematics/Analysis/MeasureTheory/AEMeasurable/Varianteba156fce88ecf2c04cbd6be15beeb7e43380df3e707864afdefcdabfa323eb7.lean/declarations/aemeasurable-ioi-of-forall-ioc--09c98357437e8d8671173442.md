# aemeasurable_Ioi_of_forall_Ioc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf9348b1-f603-cdfe-f3ae-263587f6fe02",
  "kind": "theorem",
  "lexical_name": "aemeasurable_Ioi_of_forall_Ioc",
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
  "slug": "aemeasurable-ioi-of-forall-ioc--09c98357437e8d8671173442",
  "source": {
    "blob": "1bd9078966ea26ed7d4b73384be91920ac758312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 325,
    "path": "GRWTSK/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c98357437e8d8671173442041e1b29e4b0228cfad8dcf799d85ccdd51d4950",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf9348b1-f603-cdfe-f3ae-263587f6fe02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aemeasurable_Ioi_of_forall_Ioc {β} {mβ : MeasurableSpace β} [LinearOrder α]
    [(atTop : Filter α).IsCountablyGenerated] {x : α} {g : α → β}
    (g_meas : ∀ t > x, AEMeasurable g (μ.restrict (Ioc x t))) :
    AEMeasurable g (μ.restrict (Ioi x)) := by
  haveI : Nonempty α := ⟨x⟩
  obtain ⟨u, hu_tendsto⟩ := exists_seq_tendsto (atTop : Filter α)
  have Ioi_eq_iUnion : Ioi x = ⋃ n : ℕ, Ioc x (u n) := by
    rw [iUnion_Ioc_eq_Ioi_self_iff.mpr _]
    exact fun y _ => (hu_tendsto.eventually (eventually_ge_atTop y)).exists
  rw [Ioi_eq_iUnion, aemeasurable_iUnion_iff]
  intro n
  cases' lt_or_le x (u n) with h h
  · exact g_meas (u n) h
  · rw [Ioc_eq_empty (not_lt.mpr h), Measure.restrict_empty]
    exact aemeasurable_zero_measure
#align ae_measurable_Ioi_of_forall_Ioc aemeasurable_Ioi_of_forall_Ioc

variable [Zero β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEMeasurable/Varianteba156fce88ecf2c04cbd6be15beeb7e43380df3e707864afdefcdabfa323eb7.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bd9078966ea26ed7d4b73384be91920ac758312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

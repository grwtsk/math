# _root_.GRWTSK.Analysis.MeasureTheory.AnalyticSetEmpty.Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.Measurable.exists_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:541123d6-dcd9-4e43-b281-c1b4a14ed413",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.AnalyticSetEmpty.Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.Measurable.exists_continuous",
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
  "slug": "root-grwtsk-analysis-measuretheory-analyticsetempty-variante771625e03ecb--9f5bdcb4c68d25d7036367cd",
  "source": {
    "blob": "13d22689357e296d272a36ec51174a0849e49fa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 250,
    "path": "GRWTSK/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f5bdcb4c68d25d7036367cdc7efd399a2b39ffb828c41113a3d9ed62e12d658",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:541123d6-dcd9-4e43-b281-c1b4a14ed413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.AnalyticSetEmpty.Variante771625e03ecb181b2402ad32eaa24ab24b71f2b2fc0af1e9b213089e6784f21.Measurable.exists_continuous {α β : Type*} [t : TopologicalSpace α] [PolishSpace α]
    [MeasurableSpace α] [BorelSpace α] [tβ : TopologicalSpace β] [MeasurableSpace β]
    [OpensMeasurableSpace β] {f : α → β} [SecondCountableTopology (range f)] (hf : Measurable f) :
    ∃ t' : TopologicalSpace α, t' ≤ t ∧ @Continuous α β t' tβ f ∧ @PolishSpace α t' := by
  obtain ⟨b, b_count, -, hb⟩ :
    ∃ b : Set (Set (range f)), b.Countable ∧ ∅ ∉ b ∧ IsTopologicalBasis b :=
    exists_countable_basis (range f)
  haveI : Countable b := b_count.to_subtype
  have : ∀ s : b, IsClopenable (rangeFactorization f ⁻¹' s) := fun s ↦ by
    apply MeasurableSet.isClopenable
    exact hf.subtype_mk (hb.isOpen s.2).measurableSet
  choose T Tt Tpolish _ Topen using this
  obtain ⟨t', t'T, t't, t'_polish⟩ :
    ∃ t' : TopologicalSpace α, (∀ i, t' ≤ T i) ∧ t' ≤ t ∧ @PolishSpace α t' :=
    exists_polishSpace_forall_le T Tt Tpolish
  refine' ⟨t', t't, _, t'_polish⟩
  have : Continuous[t', _] (rangeFactorization f) :=
    hb.continuous _ fun s hs => t'T ⟨s, hs⟩ _ (Topen ⟨s, hs⟩)
  exact continuous_subtype_val.comp this
#align measurable.exists_continuous Measurable.exists_continuous

/-- The image of a measurable set in a Polish space under a measurable map is an analytic set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Polish/Variant236ac133d1f412f8ac45c49482790b37dec0707551c509bc4087521c36163c2c.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13d22689357e296d272a36ec51174a0849e49fa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

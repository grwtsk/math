# _root_.GRWTSK.Analysis.MeasureTheory.StandardBorelSpace.Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.Measurable.exists_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72cb9b9e-7aa0-9bc6-a845-43b078c06d55",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.StandardBorelSpace.Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.Measurable.exists_continuous",
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
  "slug": "root-grwtsk-analysis-measuretheory-standardborelspace-variantc06953c6174--6f64eab6a06069b60c328c8f",
  "source": {
    "blob": "65a2dd60c6688280f43a9ce508bf249a3a052adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 327,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f64eab6a06069b60c328c8f7d4918cae89a0f3c01b93762d2473e1e174e84ad",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72cb9b9e-7aa0-9bc6-a845-43b078c06d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.StandardBorelSpace.Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.Measurable.exists_continuous {α β : Type*} [t : TopologicalSpace α] [PolishSpace α]
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
    exists_polishSpace_forall_le (t := t) T Tt Tpolish
  refine ⟨t', t't, ?_, t'_polish⟩
  have : Continuous[t', _] (rangeFactorization f) :=
    hb.continuous_iff.2 fun s hs => t'T ⟨s, hs⟩ _ (Topen ⟨s, hs⟩)
  exact continuous_subtype_val.comp this

/-- The image of a measurable set in a standard Borel space under a measurable map
is an analytic set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65a2dd60c6688280f43a9ce508bf249a3a052adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

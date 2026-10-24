# nullMeasurableSet_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60dd86c0e32b77a79143d34862502b3514caa149",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 750,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5ac9e88c8ff8528710ccab6a5995bd4ec9fb300b2f4294e1444edcdf5b26abc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4a18671-72f9-b521-0961-96b0e1328fbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7cc52468-2fbf-741b-3858-7ac5c154c38c",
  "kind": "lemma",
  "lexical_name": "nullMeasurableSet_restrict",
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
  "slug": "nullmeasurableset-restrict--c33e7896df9e95a79f878709",
  "source": {
    "blob": "60dd86c0e32b77a79143d34862502b3514caa149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 772,
    "line": 750,
    "path": "GRWTSK/Analysis/MeasureTheory/Restrict/Variantf5ac9e88c8ff8528710ccab6a5995bd4ec9fb300b2f4294e1444edcdf5b26abc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c33e7896df9e95a79f878709502b9ca1b1d2686c55f1ad9777c1696033f9d3e8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Restrict/Variantf5ac9e88c8ff8528710ccab6a5995bd4ec9fb300b2f4294e1444edcdf5b26abc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cc52468-2fbf-741b-3858-7ac5c154c38c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 750–772.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nullMeasurableSet_restrict (hs : NullMeasurableSet s μ) {t : Set α} :
    NullMeasurableSet t (μ.restrict s) ↔ NullMeasurableSet (t ∩ s) μ := by
  refine ⟨fun h ↦ ?_, fun h ↦ ?_⟩
  · obtain ⟨t', -, ht', t't⟩ : ∃ t' ⊇ t, MeasurableSet t' ∧ t' =ᵐ[μ.restrict s] t :=
      h.exists_measurable_superset_ae_eq
    have A : t' ∩ s =ᵐ[μ] t ∩ s := by
      have : ∀ᵐ x ∂μ, x ∈ s → (x ∈ t') = (x ∈ t) :=
        (ae_restrict_iff'₀ hs).1 t't
      filter_upwards [this] with y hy
      simpa only [eq_iff_iff, mem_inter_iff, and_congr_left_iff] using hy
    obtain ⟨s', -, hs', s's⟩ : ∃ s' ⊇ s, MeasurableSet s' ∧ s' =ᵐ[μ] s :=
      hs.exists_measurable_superset_ae_eq
    have B : t' ∩ s' =ᵐ[μ] t' ∩ s :=
      ae_eq_set_inter (EventuallyEq.refl _ _) s's
    exact (ht'.inter hs').nullMeasurableSet.congr (B.trans A)
  · have A : NullMeasurableSet (t \ s) (μ.restrict s) := by
      apply NullMeasurableSet.of_null
      rw [Measure.restrict_apply₀' hs]
      simp
    have B : NullMeasurableSet (t ∩ s) (μ.restrict s) :=
      h.mono restrict_le_self
    simpa using A.union B

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Restrict/Variantf5ac9e88c8ff8528710ccab6a5995bd4ec9fb300b2f4294e1444edcdf5b26abc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Restrict/Variantf5ac9e88c8ff8528710ccab6a5995bd4ec9fb300b2f4294e1444edcdf5b26abc.lean#L750).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60dd86c0e32b77a79143d34862502b3514caa149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

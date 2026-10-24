# aemeasurable_withDensity_ennreal_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5614894732293f9dbc288ad091284a54d909a3f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 322,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c8c35899-e05b-311d-ee5e-8d7820d0ff87",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75d0f26e-34b5-730f-1bfa-00c3beb636cb",
  "kind": "theorem",
  "lexical_name": "aemeasurable_withDensity_ennreal_iff'",
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
  "slug": "aemeasurable-withdensity-ennreal-iff--f29be0758a8ad96aa0ba1465",
  "source": {
    "blob": "5614894732293f9dbc288ad091284a54d909a3f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 322,
    "path": "GRWTSK/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f29be0758a8ad96aa0ba146512b37dfc46bb035801f339557c505c87959d3906",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75d0f26e-34b5-730f-1bfa-00c3beb636cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aemeasurable_withDensity_ennreal_iff' {f : α → ℝ≥0}
    (hf : AEMeasurable f μ) {g : α → ℝ≥0∞} :
    AEMeasurable g (μ.withDensity fun x => (f x : ℝ≥0∞)) ↔
      AEMeasurable (fun x => (f x : ℝ≥0∞) * g x) μ := by
  have t : ∃ f', Measurable f' ∧ f =ᵐ[μ] f' := hf
  rcases t with ⟨f', hf'_m, hf'_ae⟩
  constructor
  · rintro ⟨g', g'meas, hg'⟩
    have A : MeasurableSet {x | f' x ≠ 0} := hf'_m (measurableSet_singleton _).compl
    refine ⟨fun x => f' x * g' x, hf'_m.coe_nnreal_ennreal.smul g'meas, ?_⟩
    apply ae_of_ae_restrict_of_ae_restrict_compl { x | f' x ≠ 0 }
    · rw [EventuallyEq, ae_withDensity_iff' hf.coe_nnreal_ennreal] at hg'
      rw [ae_restrict_iff' A]
      filter_upwards [hg', hf'_ae] with a ha h'a h_a_nonneg
      have : (f' a : ℝ≥0∞) ≠ 0 := by simpa only [Ne, ENNReal.coe_eq_zero] using h_a_nonneg
      rw [← h'a] at this ⊢
      rw [ha this]
    · rw [ae_restrict_iff' A.compl]
      filter_upwards [hf'_ae] with a ha ha_null
      have ha_null : f' a = 0 := Function.notMem_support.mp ha_null
      rw [ha_null] at ha ⊢
      rw [ha]
      simp only [ENNReal.coe_zero, zero_mul]
  · rintro ⟨g', g'meas, hg'⟩
    refine ⟨fun x => ((f' x)⁻¹ : ℝ≥0∞) * g' x, hf'_m.coe_nnreal_ennreal.inv.smul g'meas, ?_⟩
    rw [EventuallyEq, ae_withDensity_iff' hf.coe_nnreal_ennreal]
    filter_upwards [hg', hf'_ae] with a hfga hff'a h'a
    rw [hff'a] at hfga h'a
    rw [← hfga, ← mul_assoc, ENNReal.inv_mul_cancel h'a ENNReal.coe_ne_top, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/WithDensity/Variant2b877d2d0e6b6c65ccb5c14719c1464d20ce80df1d09d03fd8f8ad66f040ade5.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5614894732293f9dbc288ad091284a54d909a3f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

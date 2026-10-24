# measure_le_setLAverage_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f26de877-1dc4-4041-204e-6f6e8972c16a",
  "kind": "theorem",
  "lexical_name": "measure_le_setLAverage_pos",
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
  "slug": "measure-le-setlaverage-pos--67fad21b62993c359d553227",
  "source": {
    "blob": "0087a783d7a30e26af5c121caa5aba6a0024dbb2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 629,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variantee0d4e7445b7fd0589db4368f515e6af33b5913fc4183df5fff38bfe11cf161b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67fad21b62993c359d553227770407d078431bb47d5f1b73195596015ac3a272",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variantee0d4e7445b7fd0589db4368f515e6af33b5913fc4183df5fff38bfe11cf161b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f26de877-1dc4-4041-204e-6f6e8972c16a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 629–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_le_setLAverage_pos (hμ : μ s ≠ 0) (hμ₁ : μ s ≠ ∞)
    (hf : AEMeasurable f (μ.restrict s)) : 0 < μ {x ∈ s | f x ≤ ⨍⁻ a in s, f a ∂μ} := by
  obtain h | h := eq_or_ne (∫⁻ a in s, f a ∂μ) ∞
  · simpa [mul_top, hμ₁, laverage, h, top_div_of_ne_top hμ₁, pos_iff_ne_zero] using hμ
  have := measure_le_setAverage_pos hμ hμ₁ (integrable_toReal_of_lintegral_ne_top hf h)
  rw [← setOf_inter_eq_sep, ← Measure.restrict_apply₀
    (hf.aestronglyMeasurable.nullMeasurableSet_le aestronglyMeasurable_const)]
  rw [← setOf_inter_eq_sep, ← Measure.restrict_apply₀
    (hf.ennreal_toReal.aestronglyMeasurable.nullMeasurableSet_le aestronglyMeasurable_const),
    ← measure_diff_null (measure_eq_top_of_lintegral_ne_top hf h)] at this
  refine this.trans_le (measure_mono ?_)
  rintro x ⟨hfx, hx⟩
  dsimp at hfx
  rwa [← toReal_laverage hf, toReal_le_toReal hx (setLAverage_lt_top h).ne] at hfx
  simp_rw [ae_iff, not_ne_iff]
  exact measure_eq_top_of_lintegral_ne_top hf h

@[deprecated (since := "2025-04-22")] alias measure_le_setLaverage_pos := measure_le_setLAverage_pos

/-- **First moment method**. A measurable function is greater than its mean on a set of positive
measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variantee0d4e7445b7fd0589db4368f515e6af33b5913fc4183df5fff38bfe11cf161b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variantee0d4e7445b7fd0589db4368f515e6af33b5913fc4183df5fff38bfe11cf161b.lean#L629).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0087a783d7a30e26af5c121caa5aba6a0024dbb2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

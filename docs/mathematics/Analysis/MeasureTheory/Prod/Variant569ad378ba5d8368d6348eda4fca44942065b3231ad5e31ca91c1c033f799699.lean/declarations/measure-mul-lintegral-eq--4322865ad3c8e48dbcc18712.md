# measure_mul_lintegral_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d25aa45c-6bef-9a25-9383-4f675fb28b3e",
  "kind": "theorem",
  "lexical_name": "measure_mul_lintegral_eq",
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
  "slug": "measure-mul-lintegral-eq--4322865ad3c8e48dbcc18712",
  "source": {
    "blob": "410b654404585236b88a6422692d03d7259f3ef1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 232,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4322865ad3c8e48dbcc187123b4ef9a1cd4c0a7c8fc57468c3cc3e189b4a15e4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d25aa45c-6bef-9a25-9383-4f675fb28b3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_mul_lintegral_eq [IsMulLeftInvariant ν] (sm : MeasurableSet s) (f : G → ℝ≥0∞)
    (hf : Measurable f) : (μ s * ∫⁻ y, f y ∂ν) = ∫⁻ x, ν ((fun z => z * x) ⁻¹' s) * f x⁻¹ ∂μ := by
  rw [← setLIntegral_one, ← lintegral_indicator sm,
    ← lintegral_lintegral_mul (measurable_const.indicator sm).aemeasurable hf.aemeasurable,
    ← lintegral_lintegral_mul_inv μ ν]
  swap
  · exact (((measurable_const.indicator sm).comp measurable_fst).mul
      (hf.comp measurable_snd)).aemeasurable
  have ms :
    ∀ x : G, Measurable fun y => ((fun z => z * x) ⁻¹' s).indicator (fun _ => (1 : ℝ≥0∞)) y :=
    fun x => measurable_const.indicator (measurable_mul_const _ sm)
  have : ∀ x y, s.indicator (fun _ : G => (1 : ℝ≥0∞)) (y * x) =
      ((fun z => z * x) ⁻¹' s).indicator (fun b : G => 1) y := by
    intro x y; symm; convert! indicator_comp_right (M := ℝ≥0∞) fun y => y * x using 2; ext1; rfl
  simp_rw [this, lintegral_mul_const _ (ms _), lintegral_indicator (measurable_mul_const _ sm),
    setLIntegral_one]

/-- Any two nonzero left-invariant measures are absolutely continuous w.r.t. each other. -/
@[to_additive
/-- Any two nonzero left-invariant measures are absolutely continuous w.r.t. each other. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant569ad378ba5d8368d6348eda4fca44942065b3231ad5e31ca91c1c033f799699.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `410b654404585236b88a6422692d03d7259f3ef1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

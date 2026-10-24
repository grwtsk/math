# eLpNorm_indicator_const_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3e4e2cbb343dedabc38699178931cb44950b4109",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 132,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/aca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4daf419-83c6-3900-bc5c-27002528833f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e72fe56e-5e59-11db-736c-384819b9f0cb",
  "kind": "lemma",
  "lexical_name": "eLpNorm_indicator_const_le",
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
  "slug": "elpnorm-indicator-const-le--1c42cb01ee1ffd268c3442f6",
  "source": {
    "blob": "3e4e2cbb343dedabc38699178931cb44950b4109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 132,
    "path": "GRWTSK/Analysis/MeasureTheory/Indicator/Variantaca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c42cb01ee1ffd268c3442f6bd6cf91e205f42c7f8c836af54785cd5fd79832f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Indicator/Variantaca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e72fe56e-5e59-11db-736c-384819b9f0cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eLpNorm_indicator_const_le (p : ℝ≥0∞) (hs : NullMeasurableSet s μ) :
    eLpNorm (s.indicator fun _ => c) p μ ≤ ‖c‖ₑ * μ s ^ (1 / p.toReal) := by
  have hsc : AEStronglyMeasurable (s.indicator fun _ : α ↦ c) μ :=
    AEStronglyMeasurable.indicator₀ (by fun_prop) hs
  have hc : AEStronglyMeasurable (fun _ : α ↦ c) μ := by fun_prop
  obtain rfl | hp := eq_or_ne p 0
  · simp [hsc]
  obtain rfl | h'p := eq_or_ne p ∞
  · simp only [eLpNorm_exponent_top hsc, ENNReal.toReal_top, _root_.div_zero, ENNReal.rpow_zero,
      mul_one]
    exact eLpNormEssSup_indicator_const_le _ _
  let t := toMeasurable μ s
  calc
    eLpNorm (s.indicator fun _ => c) p μ ≤ eLpNorm (t.indicator fun _ ↦ c) p μ :=
      eLpNorm_mono_enorm hsc (enorm_indicator_le_of_subset (subset_toMeasurable _ _) _)
    _ = ‖c‖ₑ * μ t ^ (1 / p.toReal) :=
      eLpNorm_indicator_const (measurableSet_toMeasurable ..).nullMeasurableSet hp h'p
    _ = ‖c‖ₑ * μ s ^ (1 / p.toReal) := by rw [measure_toMeasurable]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Indicator/Variantaca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Indicator/Variantaca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e4e2cbb343dedabc38699178931cb44950b4109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

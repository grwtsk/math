# eLpNorm_indicator_eq_eLpNorm_restrict

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
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/aca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be7a8d23-4ae4-e473-f693-71b1e03a93e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4afcc614-1e3b-1ea1-5a49-d6503d76d1ea",
  "kind": "lemma",
  "lexical_name": "eLpNorm_indicator_eq_eLpNorm_restrict",
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
  "slug": "elpnorm-indicator-eq-elpnorm-restrict--135e2b30c1ca7e76f975bf43",
  "source": {
    "blob": "3e4e2cbb343dedabc38699178931cb44950b4109",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 38,
    "path": "GRWTSK/Analysis/MeasureTheory/Indicator/Variantaca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:135e2b30c1ca7e76f975bf4384420d124da9de146b99e44710cc9a64e135b7ec",
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

Occurrence: `result:4afcc614-1e3b-1ea1-5a49-d6503d76d1ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eLpNorm_indicator_eq_eLpNorm_restrict {f : α → ε} {s : Set α} (hs : MeasurableSet s) :
    eLpNorm (s.indicator f) p μ = eLpNorm f p (μ.restrict s) := by
  have A : AEStronglyMeasurable (s.indicator f) μ ↔ AEStronglyMeasurable f (μ.restrict s) :=
    aestronglyMeasurable_indicator_iff hs
  by_cases hfi : AEStronglyMeasurable (s.indicator f) μ; swap
  · have hfr : ¬ AEStronglyMeasurable f (μ.restrict s) := by
      simp [← A, hfi]
    simp [eLpNorm_of_not_aestronglyMeasurable, hfi, hfr]
  have hfr : AEStronglyMeasurable f (μ.restrict s) := A.1 hfi
  by_cases hp_zero : p = 0
  · simp only [hp_zero, eLpNorm_exponent_zero hfi, eLpNorm_exponent_zero hfr]
  by_cases hp_top : p = ∞
  · simp_rw [hp_top, eLpNorm_exponent_top hfi, eLpNorm_exponent_top hfr,
      eLpNormEssSup_eq_essSup_enorm,
       enorm_indicator_eq_indicator_enorm, ENNReal.essSup_indicator_eq_essSup_restrict hs]
  rw [eLpNorm_eq_lintegral_rpow_enorm_toReal hp_zero hp_top hfi,
    eLpNorm_eq_lintegral_rpow_enorm_toReal hp_zero hp_top hfr]
  rw [← lintegral_indicator hs]
  congr
  simp_rw [enorm_indicator_eq_indicator_enorm]
  rw [eq_comm, ← Function.comp_def (fun x : ℝ≥0∞ => x ^ p.toReal), Set.indicator_comp_of_zero,
    Function.comp_def]
  simp [ENNReal.toReal_pos hp_zero hp_top]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Indicator/Variantaca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Indicator/Variantaca1b18ee4ea702bc825010626a48471e78d9808da2d37108667c22861bb49e5.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e4e2cbb343dedabc38699178931cb44950b4109` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

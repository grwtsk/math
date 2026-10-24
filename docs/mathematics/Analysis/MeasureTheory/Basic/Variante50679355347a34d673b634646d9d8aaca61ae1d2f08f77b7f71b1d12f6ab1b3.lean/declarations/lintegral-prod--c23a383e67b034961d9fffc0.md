# lintegral_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ec42012f3ef56d56a62b0b643e9b0dede2e15700",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 753,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd0e0a20-ea7f-0494-6991-c810d11d76a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bce2143e-6fec-c697-499c-13b37d09283c",
  "kind": "theorem",
  "lexical_name": "lintegral_prod",
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
  "slug": "lintegral-prod--c23a383e67b034961d9fffc0",
  "source": {
    "blob": "ec42012f3ef56d56a62b0b643e9b0dede2e15700",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 753,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c23a383e67b034961d9fffc0c83d62ed8a4be4b8193dee895f306e392b596626",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bce2143e-6fec-c697-499c-13b37d09283c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 753–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_prod (f : α × β → ℝ≥0∞) (hf : AEMeasurable f (μ.prod ν)) :
    ∫⁻ z, f z ∂μ.prod ν = ∫⁻ x, ∫⁻ y, f (x, y) ∂ν ∂μ := by
  have A : ∫⁻ z, f z ∂μ.prod ν = ∫⁻ z, hf.mk f z ∂μ.prod ν := lintegral_congr_ae hf.ae_eq_mk
  have B : (∫⁻ x, ∫⁻ y, f (x, y) ∂ν ∂μ) = ∫⁻ x, ∫⁻ y, hf.mk f (x, y) ∂ν ∂μ := by
    apply lintegral_congr_ae
    filter_upwards [ae_ae_of_ae_prod hf.ae_eq_mk]with _ ha using lintegral_congr_ae ha
  rw [A, B, lintegral_prod_of_measurable _ hf.measurable_mk]
#align measure_theory.lintegral_prod MeasureTheory.lintegral_prod

/-- The symmetric version of Tonelli's Theorem: For `ℝ≥0∞`-valued almost everywhere measurable
functions on `α × β`, the integral of `f` is equal to the iterated integral, in reverse order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean#L753).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec42012f3ef56d56a62b0b643e9b0dede2e15700` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# setIntegral_stieltjesOfMeasurableRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83628b9c-b759-e96c-c2bd-fbe84b496c99",
  "kind": "lemma",
  "lexical_name": "setIntegral_stieltjesOfMeasurableRat",
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
  "slug": "setintegral-stieltjesofmeasurablerat--34c756e09317adff628f9a6b",
  "source": {
    "blob": "68df4de21d3c5a60e207acbee33b7fdff8eb3e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 201,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34c756e09317adff628f9a6b03b7896f989976a5e5b62047a6f41f2d6a851339",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83628b9c-b759-e96c-c2bd-fbe84b496c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setIntegral_stieltjesOfMeasurableRat [IsFiniteKernel κ] (hf : IsRatCondKernelCDF f κ ν)
    (a : α) (x : ℝ) {s : Set β} (hs : MeasurableSet s) :
    ∫ b in s, stieltjesOfMeasurableRat f hf.measurable (a, b) x ∂(ν a)
      = (κ a).real (s ×ˢ Iic x) := by
  rw [← ENNReal.ofReal_eq_ofReal_iff, ofReal_measureReal]
  rotate_left
  · exact setIntegral_nonneg hs (fun _ _ ↦ stieltjesOfMeasurableRat_nonneg _ _ _)
  · exact ENNReal.toReal_nonneg
  rw [ofReal_integral_eq_lintegral_ofReal, setLIntegral_stieltjesOfMeasurableRat hf _ _ hs]
  · exact (integrable_stieltjesOfMeasurableRat hf _ _).restrict
  · exact ae_of_all _ (fun _ ↦ stieltjesOfMeasurableRat_nonneg _ _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant24d2011f5c882e7a5b37b8766652866aeee10a0ea6905fce256d45676124bb97.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68df4de21d3c5a60e207acbee33b7fdff8eb3e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

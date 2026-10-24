# _root_.GRWTSK.Analysis.MeasureTheory.MeasurableMeasureProdMkLeftFinite.Variant62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.Measurable.measurable_bind_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:65382877-549d-9ab6-d2fa-044579299846",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.MeasurableMeasureProdMkLeftFinite.Variant62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.Measurable.measurable_bind_left",
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
  "slug": "root-grwtsk-analysis-measuretheory-measurablemeasureprodmkleftfinite-var--d37d7ed0a8859d20acadcfcc",
  "source": {
    "blob": "d5794995f907b535da3a0558db8844f3a8c0b8de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1096,
    "line": 1089,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant38877124e9460559bc06b09734386b3f28e0cec244bea47c71a6305592e45e00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d37d7ed0a8859d20acadcfcc1796c8af5ab60d71f70c7e5b389421e81871479b",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant38877124e9460559bc06b09734386b3f28e0cec244bea47c71a6305592e45e00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65382877-549d-9ab6-d2fa-044579299846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1089–1096.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Analysis.MeasureTheory.MeasurableMeasureProdMkLeftFinite.Variant62b4007fc8e0a0ddca557fcdacbe649752764d09c7a97763a5450146cb9d03c9.Measurable.measurable_bind_left {f : α → β → Measure γ} (hf : Measurable f.uncurry) :
    Measurable (fun a ↦ ν.bind (f a)) := by
  refine measurable_measure.2 fun s hs ↦ ?_
  simp_rw [ν.bind_apply hs hf.of_uncurry_left.aemeasurable]
  apply Measurable.lintegral_prod_left
  convert measurable_measure.1 (hf.comp measurable_swap) s hs
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant38877124e9460559bc06b09734386b3f28e0cec244bea47c71a6305592e45e00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant38877124e9460559bc06b09734386b3f28e0cec244bea47c71a6305592e45e00.lean#L1089).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5794995f907b535da3a0558db8844f3a8c0b8de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

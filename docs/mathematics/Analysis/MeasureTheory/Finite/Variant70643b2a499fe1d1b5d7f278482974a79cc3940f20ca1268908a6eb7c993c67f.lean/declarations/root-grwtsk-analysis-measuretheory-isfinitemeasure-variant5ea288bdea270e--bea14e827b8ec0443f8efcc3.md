# _root_.GRWTSK.Analysis.MeasureTheory.IsFiniteMeasure.Variant5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.Bornology.IsBounded.measure_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5615ae65-ad7b-c386-f9a4-98712744eb21",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.IsFiniteMeasure.Variant5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.Bornology.IsBounded.measure_lt_top",
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
  "slug": "root-grwtsk-analysis-measuretheory-isfinitemeasure-variant5ea288bdea270e--bea14e827b8ec0443f8efcc3",
  "source": {
    "blob": "082df792375117dadcb67e2f16120a41a068ced0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 333,
    "path": "GRWTSK/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bea14e827b8ec0443f8efcc365d766355b6d8767bdce62a48ce4e322a3af15f4",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5615ae65-ad7b-c386-f9a4-98712744eb21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.IsFiniteMeasure.Variant5ea288bdea270e16d015c1c7f95222525eff634eb3f94341654ffbf16920780e.Bornology.IsBounded.measure_lt_top [PseudoMetricSpace α] [ProperSpace α]
    {μ : Measure α} [IsFiniteMeasureOnCompacts μ] ⦃s : Set α⦄ (hs : Bornology.IsBounded s) :
    μ s < ∞ :=
  calc
    μ s ≤ μ (closure s) := measure_mono subset_closure
    _ < ∞ := (Metric.isCompact_of_isClosed_isBounded isClosed_closure hs.closure).measure_lt_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `082df792375117dadcb67e2f16120a41a068ced0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

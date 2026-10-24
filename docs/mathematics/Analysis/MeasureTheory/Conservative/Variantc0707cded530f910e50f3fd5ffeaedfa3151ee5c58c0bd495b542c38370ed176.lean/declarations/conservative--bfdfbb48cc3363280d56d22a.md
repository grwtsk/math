# Conservative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1af4f8483cc86a0c6b11bad23f1642f46bde57f49b8af65fd0517b9e1f21bc35",
  "kind": "structure",
  "lexical_name": "Conservative",
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
  "slug": "conservative--bfdfbb48cc3363280d56d22a",
  "source": {
    "blob": "0d75ffacf7e71c079dff788ec254bd331626c0fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 58,
    "path": "GRWTSK/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfdfbb48cc3363280d56d22a08ea7adc47361d1fc636d827c33f14e56eac00ef",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1af4f8483cc86a0c6b11bad23f1642f46bde57f49b8af65fd0517b9e1f21bc35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Conservative (f : α → α) (μ : Measure α) : Prop extends QuasiMeasurePreserving f μ μ where
  /-- If `f` is a conservative self-map and `s` is a measurable set of nonzero measure,
  then there exists a point `x ∈ s` that returns to `s` under a non-zero iteration of `f`. -/
  exists_mem_iterate_mem' : ∀ ⦃s⦄, MeasurableSet s → μ s ≠ 0 → ∃ x ∈ s, ∃ m ≠ 0, f^[m] x ∈ s

/-- A self-map preserving a finite measure is conservative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Conservative/Variantc0707cded530f910e50f3fd5ffeaedfa3151ee5c58c0bd495b542c38370ed176.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d75ffacf7e71c079dff788ec254bd331626c0fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# enorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:935883e1-9890-483f-6929-8ed1b2177cd0",
  "kind": "theorem",
  "lexical_name": "enorm",
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
  "slug": "enorm--ce020bbc7b5cf1ca8b7bfe05",
  "source": {
    "blob": "0830ecae6f2aa6dae41dca994b13ea600690ff24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 541,
    "line": 532,
    "path": "GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant292f525131c040eb9404507e527176a39dbf6210d4dbfce9b01a65ae44795235.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce020bbc7b5cf1ca8b7bfe05911c5311e69ef6bfa788d01c7f257e93eb9f9019",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variant292f525131c040eb9404507e527176a39dbf6210d4dbfce9b01a65ae44795235.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:935883e1-9890-483f-6929-8ed1b2177cd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem enorm {β : Type*} [TopologicalSpace β] [ContinuousENorm β] {f : α → β}
    (hf : AEStronglyMeasurable f μ) : AEMeasurable (‖f ·‖ₑ) μ :=
  (continuous_enorm.comp_aestronglyMeasurable hf).aemeasurable

/-- Given a.e. strongly measurable functions `f` and `g`, `edist f g` is measurable.

Note that this lemma proves a.e. measurability, **not** a.e. strong measurability.
This is an intentional decision: for functions taking values in ℝ≥0∞,
a.e. measurability is much more useful than a.e. strong measurability. -/
@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AEStronglyMeasurable/Variant292f525131c040eb9404507e527176a39dbf6210d4dbfce9b01a65ae44795235.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AEStronglyMeasurable/Variant292f525131c040eb9404507e527176a39dbf6210d4dbfce9b01a65ae44795235.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0830ecae6f2aa6dae41dca994b13ea600690ff24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

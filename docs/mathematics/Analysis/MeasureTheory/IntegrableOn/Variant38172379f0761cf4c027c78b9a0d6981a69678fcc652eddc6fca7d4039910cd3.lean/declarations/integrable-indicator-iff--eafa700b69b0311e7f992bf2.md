# integrable_indicator_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d32641e-2b03-0851-eade-57dd3af58a74",
  "kind": "theorem",
  "lexical_name": "integrable_indicator_iff",
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
  "slug": "integrable-indicator-iff--eafa700b69b0311e7f992bf2",
  "source": {
    "blob": "798451013ebbcf882d5920f9b95d2fbbcd760f7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 342,
    "path": "GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eafa700b69b0311e7f992bf27ef18209e9eeb19ffabb49eea5d0984138d71184",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d32641e-2b03-0851-eade-57dd3af58a74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_indicator_iff (hs : MeasurableSet s) :
    Integrable (indicator s f) μ ↔ IntegrableOn f s μ := by
  simp_rw [IntegrableOn, Integrable, hasFiniteIntegral_iff_enorm,
    enorm_indicator_eq_indicator_enorm, lintegral_indicator hs,
    aestronglyMeasurable_indicator_iff hs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/IntegrableOn/Variant38172379f0761cf4c027c78b9a0d6981a69678fcc652eddc6fca7d4039910cd3.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `798451013ebbcf882d5920f9b95d2fbbcd760f7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

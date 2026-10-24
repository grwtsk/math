# NullMeasurableSpace.instMeasurableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3a03df0eec17f8435db67a6e57ae6afa7da7543c6b3b72157316a79649b2e241",
  "kind": "instance",
  "lexical_name": "NullMeasurableSpace.instMeasurableSpace",
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
  "slug": "nullmeasurablespace-instmeasurablespace--bc931e042998c1c5e551832e",
  "source": {
    "blob": "c25f7837a44f50a5882f8052e8217678930a93cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 86,
    "path": "GRWTSK/Analysis/MeasureTheory/NullMeasurable/Varianta2fdb05995ebf7211dd4a616c077dcc58d19e7fad45f123d00bc16e4ecfcce2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bc931e042998c1c5e551832e35a4e35a6a74a28dab678dd0e8c248a3c031395c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/NullMeasurable/Varianta2fdb05995ebf7211dd4a616c077dcc58d19e7fad45f123d00bc16e4ecfcce2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3a03df0eec17f8435db67a6e57ae6afa7da7543c6b3b72157316a79649b2e241`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NullMeasurableSpace.instMeasurableSpace : MeasurableSpace (NullMeasurableSpace α μ) :=
  fast_instance% @eventuallyMeasurableSpace α inferInstance (ae μ) _

/-- A set is called `NullMeasurableSet` if it can be approximated by a measurable set up to
a set of null measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/NullMeasurable/Varianta2fdb05995ebf7211dd4a616c077dcc58d19e7fad45f123d00bc16e4ecfcce2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/NullMeasurable/Varianta2fdb05995ebf7211dd4a616c077dcc58d19e7fad45f123d00bc16e4ecfcce2a.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c25f7837a44f50a5882f8052e8217678930a93cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

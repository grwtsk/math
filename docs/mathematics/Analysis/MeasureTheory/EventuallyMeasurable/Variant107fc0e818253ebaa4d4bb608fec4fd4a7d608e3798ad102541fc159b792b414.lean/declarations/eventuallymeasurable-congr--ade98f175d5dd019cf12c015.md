# EventuallyMeasurable.congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a50ca0c-072c-3066-cf47-192628b657ec",
  "kind": "theorem",
  "lexical_name": "EventuallyMeasurable.congr",
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
  "slug": "eventuallymeasurable-congr--ade98f175d5dd019cf12c015",
  "source": {
    "blob": "f5255df91e7fae10b26a25d5c3eed50589f82902",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 119,
    "path": "GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ade98f175d5dd019cf12c0158d5ea3b02b919e56b338d0c857c0e5f955539dc2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a50ca0c-072c-3066-cf47-192628b657ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EventuallyMeasurable.congr
    (hf : EventuallyMeasurable m l f) (hgf : g =ᶠ[l] f) : EventuallyMeasurable m l g :=
  fun _ hs => EventuallyMeasurableSet.congr (hf hs)
    (hgf.preimage _)

/-- A function which is `EventuallyEq` to some `Measurable` function is `EventuallyMeasurable`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Variant107fc0e818253ebaa4d4bb608fec4fd4a7d608e3798ad102541fc159b792b414.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5255df91e7fae10b26a25d5c3eed50589f82902` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

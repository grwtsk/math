# eventuallyMeasurableSet_of_mem_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cddac67c-6c2f-7c57-e5c5-d62fcd82221a",
  "kind": "theorem",
  "lexical_name": "eventuallyMeasurableSet_of_mem_filter",
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
  "slug": "eventuallymeasurableset-of-mem-filter--3fdb623345a6bedf04260deb",
  "source": {
    "blob": "49c60644c6e680d695022c0fa15cd8c96bb8cf8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 72,
    "path": "GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3fdb623345a6bedf04260debc54e7f428d0d47ca35dce03017760a371d32f96d",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cddac67c-6c2f-7c57-e5c5-d62fcd82221a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventuallyMeasurableSet_of_mem_filter (hs : s ∈ l) : EventuallyMeasurableSet m l s :=
  ⟨univ, MeasurableSet.univ, eventuallyEq_univ.mpr hs⟩

/-- A set which is `EventuallyEq` to an `EventuallyMeasurableSet`
is an `EventuallyMeasurableSet`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EventuallyMeasurable/Varianta4868fe60ebaee7c5aefac91b148265c94838034df602d0b9471f3fc472fd845.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49c60644c6e680d695022c0fa15cd8c96bb8cf8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# pathToList_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2320d61e-ba12-30b7-6127-24af61e9e208",
  "kind": "theorem",
  "lexical_name": "pathToList_comp",
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
  "slug": "pathtolist-comp--1c1ca8b1a78ed6c0ae82555d",
  "source": {
    "blob": "6010dd72560d389836fe6a7b98869ee9ecfc094d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 114,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1c1ca8b1a78ed6c0ae82555dcc8bdc47d182336532c0f4b96dd5dd9b75a5fc6c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2320d61e-ba12-30b7-6127-24af61e9e208`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pathToList_comp
    (left : Quiver.Path (SingleObj.star Edge) (SingleObj.star Edge))
    {finish : SingleObj Edge} (right : Quiver.Path (SingleObj.star Edge) finish) :
    SingleObj.pathToList (left.comp right) =
      SingleObj.pathToList right ++ SingleObj.pathToList left := by
  induction right with
  | nil => rfl
  | cons right edge ih =>
    change edge :: SingleObj.pathToList (left.comp right) =
      (edge :: SingleObj.pathToList right) ++ SingleObj.pathToList left
    rw [ih]
    rfl

/-- Chronological edge occurrences compose by exact list append, retaining every edge identity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences__SourceOccurrencedc741232d561a8c9c34090c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathOccurrences.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6010dd72560d389836fe6a7b98869ee9ecfc094d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Kind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6fec494c6ae263c8aa2af3ff89726678287d7cfa51dd3ce6467dfe3fc8a347a",
  "kind": "inductive",
  "lexical_name": "Kind",
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
  "slug": "kind--c800dbff8de9ce0a07e5bdd7",
  "source": {
    "blob": "801adab164fa93994b910851d54dbdaf0475274b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 24,
    "line": 9,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ConceptKind/Variant2ddd7e73cdcecd58c9ad55e7f1a6dbd42f2589637a9df07106ea767335875d62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c800dbff8de9ce0a07e5bdd771c47048f113b405c79cafe0a81fdb8f845e34fb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ConceptKind/Variant2ddd7e73cdcecd58c9ad55e7f1a6dbd42f2589637a9df07106ea767335875d62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6fec494c6ae263c8aa2af3ff89726678287d7cfa51dd3ce6467dfe3fc8a347a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–24.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Kind
  | object
  | structure
  | property
  | relation
  | operation
  | proposition
  | theorem
  | invariant
  | dynamics
  | representation
  | policy
  | family
  deriving DecidableEq, Inhabited

/-- The theorem kind is definitionally distinct from proposition and proof data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ConceptKind/Variant2ddd7e73cdcecd58c9ad55e7f1a6dbd42f2589637a9df07106ea767335875d62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ConceptKind/Variant2ddd7e73cdcecd58c9ad55e7f1a6dbd42f2589637a9df07106ea767335875d62.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `801adab164fa93994b910851d54dbdaf0475274b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

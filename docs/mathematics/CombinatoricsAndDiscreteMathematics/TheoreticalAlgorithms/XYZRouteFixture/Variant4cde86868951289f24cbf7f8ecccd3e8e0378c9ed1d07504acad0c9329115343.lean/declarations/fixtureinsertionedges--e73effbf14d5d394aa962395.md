# fixtureInsertionEdges

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14ea3233b04d9e0b5ad31d82c7541d0de30d24ba9fea6024e657e9f508695e04",
  "kind": "def",
  "lexical_name": "fixtureInsertionEdges",
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
  "slug": "fixtureinsertionedges--e73effbf14d5d394aa962395",
  "source": {
    "blob": "283fd74d0ce481cc6998dc0329134b69f37d02b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e73effbf14d5d394aa962395883ad3483d37a817061d988c2142530145787ce3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14ea3233b04d9e0b5ad31d82c7541d0de30d24ba9fea6024e657e9f508695e04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[surface_candidate] def fixtureInsertionEdges :
    List (DeclaredEdge FixtureHost FixtureEdgeId) :=
  [
    fixtureEdge 0 0 2 5 30,
    fixtureEdge 1 0 1 (-1) 20,
    fixtureEdge 2 0 3 5 10,
    fixtureEdge 3 1 5 2 2,
    fixtureEdge 4 1 0 3 3,
    fixtureEdge 5 1 4 0 1,
    fixtureEdge 6 3 6 1 4,
    fixtureEdge 7 3 3 0 6,
    fixtureEdge 8 3 6 (-2) 9,
    fixtureEdge 9 2 7 0 8,
    fixtureEdge 10 2 5 (-3) 5,
    fixtureEdge 11 4 2 0 1,
    fixtureEdge 12 5 6 0 1,
    fixtureEdge 13 6 1 0 1
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283fd74d0ce481cc6998dc0329134b69f37d02b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

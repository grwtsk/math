# fixtureContract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca23985bbd447e1abf95066422963200606d9b632dbdb958ea990f9acf881272",
  "kind": "def",
  "lexical_name": "fixtureContract",
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
  "slug": "fixturecontract--9c0839f1d06a8747d4b106d0",
  "source": {
    "blob": "283fd74d0ce481cc6998dc0329134b69f37d02b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 126,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c0839f1d06a8747d4b106d01b648e4302bb3671d5578e920faa489f8e1d667a",
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

Occurrence: `declaration:ca23985bbd447e1abf95066422963200606d9b632dbdb958ea990f9acf881272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose, surface_candidate] def fixtureContract :
    RoutingContract FixtureHost FixtureEdgeId where
  schemaVersion := xyzRoutingSchemaVersionV1
  algorithmVersion := xyzRoutingAlgorithmVersionV1
  serializationVersion := xyzRoutingSerializationVersionV1
  traversalMode := .breadthFirst
  hostCode := fixtureHostCode
  edgeCode := fixtureEdgeCode
  tensionMin := -3
  tensionMax := 5
  tieBreakBound := 31
  edges := fixtureEdges
  fixedFormat := xyzFormatV1
  invariantId := normalizedTristimulusInvariantId
  expectedUpdateId := xyzIdentityExpectedUpdateId
  contractHash := fixtureContractHash

@[simp, surface_candidate]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZRouteFixture/Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283fd74d0ce481cc6998dc0329134b69f37d02b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

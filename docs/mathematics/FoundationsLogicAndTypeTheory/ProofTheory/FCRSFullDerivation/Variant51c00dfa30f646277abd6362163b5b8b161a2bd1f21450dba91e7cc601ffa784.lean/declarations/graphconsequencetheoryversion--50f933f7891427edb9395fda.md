# graphConsequenceTheoryVersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d0978cc5931e0ee8b76e5b6984e743e0d8d2ef9eb7352baa56b6a8329cde828e",
  "kind": "def",
  "lexical_name": "graphConsequenceTheoryVersion",
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
  "slug": "graphconsequencetheoryversion--50f933f7891427edb9395fda",
  "source": {
    "blob": "f52cb44ef4293b47f08c80fb785a9d8f6e197db7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50f933f7891427edb9395fda5a509b45b4ba316868485c091680bad411bc2462",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d0978cc5931e0ee8b76e5b6984e743e0d8d2ef9eb7352baa56b6a8329cde828e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def graphConsequenceTheoryVersion
    {Input : Type uInput} {Witness : Type uWitness}
    {Coordinate : Type uCoordinate} {Edge : Type uMaterializedEdge}
    (profile : IntervalProfile Input Witness)
    (specification : SieveSpecification Coordinate)
    (graph : CoordinateGraph .Materialized Coordinate Edge) :
    MathematicalTheoryVersion (graphConsequenceTheory graph)
      leanFoundation where
  artifact := graphConsequenceTheoryArtifact
    profile specification graph
  theoryIdentity := ⟨graph.version.authority, graph.version.localName⟩
  signatureVersion := eraseArtifactVersion graph.version
  axiomSetVersion := eraseArtifactVersion specification.version
  definitionSetVersion := projectionVersion
    "supported-graph-consequence-proposition-definition"
  importedTheoryVersions := [eraseArtifactVersion profile.version]
  semanticRegime := "FCRS.Transport.MaterializedGraphConsequence"
  quantifierProfile := neutralQuantifierProfile
  formalizationArtifactVersion := projectionVersion
    "reusable-materialized-graph-consequence-theory"
  releaseStatus := .Released
  provenance := [
    eraseArtifactVersion profile.sourceTheorem,
    eraseArtifactVersion specification.version,
    eraseArtifactVersion graph.version
  ]

/-- Empty target assumptions are explicit and versioned by the reusable graph. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant51c00dfa30f646277abd6362163b5b8b161a2bd1f21450dba91e7cc601ffa784.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f52cb44ef4293b47f08c80fb785a9d8f6e197db7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

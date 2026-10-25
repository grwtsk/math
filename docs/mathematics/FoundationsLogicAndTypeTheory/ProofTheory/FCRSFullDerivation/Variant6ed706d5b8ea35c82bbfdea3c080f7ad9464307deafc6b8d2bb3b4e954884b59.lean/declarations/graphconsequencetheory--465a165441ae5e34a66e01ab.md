# graphConsequenceTheory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49b96dab7b3c52d6745a0a68c4808301756e2c8695eff8cf19d3e9159617180e",
  "kind": "def",
  "lexical_name": "graphConsequenceTheory",
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
  "slug": "graphconsequencetheory--465a165441ae5e34a66e01ab",
  "source": {
    "blob": "57bcae1bd79f4d23b65d15215540e9dee9c84c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:465a165441ae5e34a66e01ab44c13b3d1bd8aa238211f4d60286485c68b41a37",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49b96dab7b3c52d6745a0a68c4808301756e2c8695eff8cf19d3e9159617180e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def graphConsequenceTheory
    {Coordinate : Type uCoordinate} {Edge : Type uMaterializedEdge}
    (graph : CoordinateGraph .Materialized Coordinate Edge) : Theory where
  Object := Coordinate
  Proposition := GraphConsequenceProposition graph
  Holds := fun proposition => proposition.consequence.statement
  ProofObject := fun proposition => PLift proposition.consequence.statement
  proofObjectSound := fun proof => proof.down
  reifyProofObject := fun proof => ⟨proof⟩
  propositionSupport := fun _proposition => .universal
  propositionProperty := fun proposition _ => proposition.consequence.statement

/-- `Holds` evaluates the proposition's statement, not artifact-name equality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bcae1bd79f4d23b65d15215540e9dee9c84c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

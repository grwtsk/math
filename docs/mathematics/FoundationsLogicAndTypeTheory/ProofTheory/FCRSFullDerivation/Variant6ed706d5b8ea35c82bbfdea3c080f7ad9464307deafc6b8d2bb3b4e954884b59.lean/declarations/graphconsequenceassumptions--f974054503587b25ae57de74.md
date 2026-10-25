# graphConsequenceAssumptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61d5563bf2b4582718eb87a7550e004bdbcb679490fe4593a044d46ec9998635",
  "kind": "def",
  "lexical_name": "graphConsequenceAssumptions",
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
  "slug": "graphconsequenceassumptions--f974054503587b25ae57de74",
  "source": {
    "blob": "57bcae1bd79f4d23b65d15215540e9dee9c84c53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f974054503587b25ae57de74c4c3df88e1671a260afa5256f8c397fda96edf70",
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

Occurrence: `declaration:61d5563bf2b4582718eb87a7550e004bdbcb679490fe4593a044d46ec9998635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def graphConsequenceAssumptions
    {Coordinate : Type uCoordinate} {Edge : Type uMaterializedEdge}
    (graph : CoordinateGraph .Materialized Coordinate Edge) :
    AssumptionSet (graphConsequenceTheory graph) :=
  AssumptionSet.empty.{uCoordinate, uCoordinate, 0} _
    (eraseArtifactVersion graph.version)

section CompleteProjection

variable {Input : Type uInput} {Witness : Type uWitness}
variable {Coordinate : Type uCoordinate}
variable {IntensionalEdge : Type uIntensionalEdge}
variable {MaterializedEdge : Type uMaterializedEdge}
variable {derivationRef : ArtifactRef .transportDerivation}
variable {profile : IntervalProfile Input Witness}
variable {certified : CertifiedIntervalTheorem profile}
variable {input : Input}
variable {methodKind : SelectionMethodKind}
variable {method : SelectionMethod methodKind Input Witness}
variable {interpretation : BinaryInterpretation Input Witness Coordinate}
variable {constraint : BinaryConstraint Coordinate}
variable {interpretationBridge : InterpretationBridge
  profile interpretation constraint}
variable {specification : SieveSpecification Coordinate}
variable {procedure : SieveProcedure specification}
variable {soundness : SieveSoundness procedure}
variable {completeness : Option (SieveCompleteness procedure)}
variable {evidenceTheory : SieveEvidenceTheoryVersion (some soundness) completeness}
variable {constraintSieveBridge : ConstraintSieveBridge constraint specification}
variable {intensionalGraph : CoordinateGraph .Intensional Coordinate IntensionalEdge}
variable {intensionalSemantics : IntensionalGraphSemantics specification intensionalGraph}
variable {materializedGraph : CoordinateGraph .Materialized Coordinate MaterializedEdge}
variable {realizationContract : RealizationContract soundness materializedGraph}
variable {consequence : GraphConsequence materializedGraph}

local notation "CompletedNativeDerivation" => TransportDerivation
  derivationRef profile certified input method interpretation constraint
  interpretationBridge specification procedure soundness completeness
  evidenceTheory constraintSieveBridge intensionalGraph intensionalSemantics
  materializedGraph realizationContract consequence

/--
Native preservation law for this closed predecessor adapter.  The constructor
is module-private: Lean cannot inspect a function closure to prove that it did
not capture an older completed derivation, so accepting an arbitrary public
`ProfileClaimAt → consequence.statement` would overstate causal provenance.
Public values are instead produced only by kernel-defined structural bridge
constructors such as `sourceClaimBridge` below.  More general domain adapters
use the generic `PreservationTheorem` interface and must define their proof
before entering this closed full-native projection boundary.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/FCRSFullDerivation/Variant6ed706d5b8ea35c82bbfdea3c080f7ad9464307deafc6b8d2bb3b4e954884b59.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57bcae1bd79f4d23b65d15215540e9dee9c84c53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

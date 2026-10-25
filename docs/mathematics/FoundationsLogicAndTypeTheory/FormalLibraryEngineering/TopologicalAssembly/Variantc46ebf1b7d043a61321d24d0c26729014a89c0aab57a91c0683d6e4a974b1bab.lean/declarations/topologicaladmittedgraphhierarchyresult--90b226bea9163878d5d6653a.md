# TopologicalAdmittedGraphHierarchyResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fb73d9c24df8156bb2d271d5dd4f9bc9b55d633adc44cfd80a2ca24bb2f9bf3",
  "kind": "structure",
  "lexical_name": "TopologicalAdmittedGraphHierarchyResult",
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
  "slug": "topologicaladmittedgraphhierarchyresult--90b226bea9163878d5d6653a",
  "source": {
    "blob": "c6385691002a8599154687b94839b99b6795d86e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:90b226bea9163878d5d6653a7d534652d6eaf6bc3c7f69d8a2c335cd1ae7ae59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fb73d9c24df8156bb2d271d5dd4f9bc9b55d633adc44cfd80a2ca24bb2f9bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TopologicalAdmittedGraphHierarchyResult
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    (G : DirectedGraph Vertex Edge)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop)
    (I : ClosedInterval.{uInterval})
    (S1 : Sphere1.{u1}) (S2 : Sphere2.{u2}) (S3 : Sphere3.{u3})
    (Stage : Type uStage)
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      (AdmittedGraph G sieve occurs) I S1 S2 S3 Stage) : Prop where
  admittedEdgeGraph : TG01Claim G sieve occurs
  quotientRealization : TG02Claim (AdmittedGraph G sieve occurs) I
  endpointEquations : TG03Claim (AdmittedGraph G sieve occurs) I
  sameEdgeInteriorInjective : TG04Claim (AdmittedGraph G sieve occurs) I
  distinctInteriorsAndVertices : TG05Claim (AdmittedGraph G sieve occurs) I
  quotientTopology : TG06Claim (AdmittedGraph G sieve occurs) I

  planarWhenSphere2Selected : TG07Claim W
  spatialWhenSphere3Selected : TG08Claim W
  boundaryWhenSphere2Selected : TG09Claim W
  refinementContinuity : TG10Claim W
  refinementCoherence : TG11Claim W
  compatibleFamilyTopology : TG12Claim W.refinement

  sphere1Compact : Compact S1.topology
  selectedSphereCompact :
    SelectedTopologicalSphereCompact W.selectedEmbedding

/-- Assemble the hierarchy from one explicit, coherent research package. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TopologicalAssembly/Variantc46ebf1b7d043a61321d24d0c26729014a89c0aab57a91c0683d6e4a974b1bab.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6385691002a8599154687b94839b99b6795d86e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

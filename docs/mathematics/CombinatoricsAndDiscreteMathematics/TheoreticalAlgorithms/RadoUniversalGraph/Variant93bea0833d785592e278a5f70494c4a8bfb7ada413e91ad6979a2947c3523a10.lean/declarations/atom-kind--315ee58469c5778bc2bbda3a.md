# Atom.kind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec4cacc11c41c39d3b41fd343d8df226b37762cb2787e9d4285160bf84e72de2",
  "kind": "def",
  "lexical_name": "Atom.kind",
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
  "slug": "atom-kind--315ee58469c5778bc2bbda3a",
  "source": {
    "blob": "1704a8bae67955df4e6ff0226538672079997b27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 119,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoUniversalGraph/Variant93bea0833d785592e278a5f70494c4a8bfb7ada413e91ad6979a2947c3523a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:315ee58469c5778bc2bbda3a2f2592355d99497011a3b1d99e924a82e7726b4e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoUniversalGraph/Variant93bea0833d785592e278a5f70494c4a8bfb7ada413e91ad6979a2947c3523a10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec4cacc11c41c39d3b41fd343d8df226b37762cb2787e9d4285160bf84e72de2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Atom.kind : Atom -> FWR.ResidueKind
  | .ambientRadoGraph => FWR.ResidueKind.missingDefinition
  | .countableVertexCarrier => FWR.ResidueKind.missingDefinition
  | .adjacencyRelation => FWR.ResidueKind.missingDefinition
  | .graphSimplicityLaws => FWR.ResidueKind.missingDefinition
  | .finiteConstraintSets => FWR.ResidueKind.missingFiniteWitness
  | .disjointConstraintSets => FWR.ResidueKind.missingFiniteWitness
  | .connectAvoidSpecification => FWR.ResidueKind.missingFiniteWitness
  | .freshWitnessOutsideSubset => FWR.ResidueKind.missingFiniteWitness
  | .radoExtensionProperty => FWR.ResidueKind.externalTheoremNotImported
  | .subsetAndInducedGraph => FWR.ResidueKind.missingDecode
  | .finiteInducedUniversality => FWR.ResidueKind.externalTheoremNotImported
  | .countableInducedUniversality => FWR.ResidueKind.externalTheoremNotImported
  | .witnessInsertion => FWR.ResidueKind.missingLowering
  | .countableExhaustionLimit => FWR.ResidueKind.missingContinuumLimit
  | .totalObjectiveAndConvergence => FWR.ResidueKind.missingAsymptoticTransfer
  | .sourceAuthorityBoundary => FWR.ResidueKind.authorityOverclaim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoUniversalGraph/Variant93bea0833d785592e278a5f70494c4a8bfb7ada413e91ad6979a2947c3523a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RadoUniversalGraph/Variant93bea0833d785592e278a5f70494c4a8bfb7ada413e91ad6979a2947c3523a10.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1704a8bae67955df4e6ff0226538672079997b27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# DijkstraPathCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d8777d2b9560b6ef3947fc97d703ca7c79268da46381c815dac49da3a942a6e8",
  "kind": "structure",
  "lexical_name": "DijkstraPathCertificate",
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
  "slug": "dijkstrapathcertificate--ffda589f12c27ee0aee4ad42",
  "source": {
    "blob": "21ea4ce5f53cf53fb59e01a9df2358c19b1209a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dijkstra/Variantf485d28668f4148cb9a0022485b3044e2a5950a1041c6d0e6c1ddb1315cd8152.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ffda589f12c27ee0aee4ad427ebc22fcc2086735f218f7b6aa99f42283c6e8b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dijkstra/Variantf485d28668f4148cb9a0022485b3044e2a5950a1041c6d0e6c1ddb1315cd8152.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d8777d2b9560b6ef3947fc97d703ca7c79268da46381c815dac49da3a942a6e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DijkstraPathCertificate (Node : Type u) where
  source : Node
  target : Node
  settledCost : Nat
  candidateCosts : List Nat
  eligibleEdgesComplete : Prop
  relaxationArithmeticExact : Prop
  eligibleEdgesCompleteEvidence : eligibleEdgesComplete
  relaxationArithmeticExactEvidence : relaxationArithmeticExact
  settledLabelOptimal :
    ∀ candidateCost,
      candidateCost ∈ candidateCosts →
      settledCost ≤ candidateCost

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dijkstra/Variantf485d28668f4148cb9a0022485b3044e2a5950a1041c6d0e6c1ddb1315cd8152.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dijkstra/Variantf485d28668f4148cb9a0022485b3044e2a5950a1041c6d0e6c1ddb1315cd8152.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21ea4ce5f53cf53fb59e01a9df2358c19b1209a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

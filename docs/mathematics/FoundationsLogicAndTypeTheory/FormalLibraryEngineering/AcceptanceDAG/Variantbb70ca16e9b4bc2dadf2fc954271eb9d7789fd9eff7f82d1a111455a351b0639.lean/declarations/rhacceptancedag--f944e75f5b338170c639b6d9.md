# RHAcceptanceDAG

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bb733d3fec7b2aa566800a3833e8761fac1c4ec111dc26cc844b2306e537c16",
  "kind": "structure",
  "lexical_name": "RHAcceptanceDAG",
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
  "slug": "rhacceptancedag--f944e75f5b338170c639b6d9",
  "source": {
    "blob": "4dce6c8926b1aea1ed3282622b4ed59248c9183f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f944e75f5b338170c639b6d9ffdc6de83b8e7d301496da6d922938eddbbf2141",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bb733d3fec7b2aa566800a3833e8761fac1c4ec111dc26cc844b2306e537c16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RHAcceptanceDAG where
  nodeProved : AcceptanceNode → Prop
  allNodesProved : Prop
  allNodesProved_certified : allNodesProved
  noConditionalContracts : Prop
  noConditionalContracts_certified : noConditionalContracts
  specializesExactlyToZeta : Prop
  specializesExactlyToZeta_certified : specializesExactlyToZeta
  finalTheoremUsesOnlyProvedInputs : Prop
  finalTheoremUsesOnlyProvedInputs_certified : finalTheoremUsesOnlyProvedInputs
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AcceptanceDAG/Variantbb70ca16e9b4bc2dadf2fc954271eb9d7789fd9eff7f82d1a111455a351b0639.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4dce6c8926b1aea1ed3282622b4ed59248c9183f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# FiniteArithmeticDescriptor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c8798b770c7b89a967a273f653f1b51c06032cef3fea7182c9c211059939182",
  "kind": "structure",
  "lexical_name": "FiniteArithmeticDescriptor",
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
  "slug": "finitearithmeticdescriptor--8dc137a796ed13f4d2697ffb",
  "source": {
    "blob": "7586401cd6ab7bbd6e1000270e5dbdaa0e73d35d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TensorIntegrity/Variantfa258620aaf7e1354b64a580b7389285cdc24fdd272a449c7a2dd03bb5ed1823.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dc137a796ed13f4d2697ffbee3ba5bb010fd7d7335c4dc70ee357b885b431e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TensorIntegrity/Variantfa258620aaf7e1354b64a580b7389285cdc24fdd272a449c7a2dd03bb5ed1823.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c8798b770c7b89a967a273f653f1b51c06032cef3fea7182c9c211059939182`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FiniteArithmeticDescriptor where
  arithmeticName : String
  qWeight? : Option Int
  localFactorTags : List String
  conductorTag? : Option Nat
  torsionTags : List String
  ramanujanInspired : Bool
  hasseWeilInspired : Bool
  noBSDClaim : True
  noCriticalLineClaim : True
  noAnalyticContinuationClaim : True
  claimBoundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TensorIntegrity/Variantfa258620aaf7e1354b64a580b7389285cdc24fdd272a449c7a2dd03bb5ed1823.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TensorIntegrity/Variantfa258620aaf7e1354b64a580b7389285cdc24fdd272a449c7a2dd03bb5ed1823.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7586401cd6ab7bbd6e1000270e5dbdaa0e73d35d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

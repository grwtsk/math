# RelaxedChainComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe9059c600dacbcb4ffa62b46091227ae708cd9b17995e4c07d815639d22af39",
  "kind": "structure",
  "lexical_name": "RelaxedChainComplex",
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
  "slug": "relaxedchaincomplex--a7dcda5fe9009a3177bd88f0",
  "source": {
    "blob": "057a174491138b19051dfb96d791df6c06f3a007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 31,
    "path": "GRWTSK/Topology/AlgebraicTopology/ChainMap/Variant6afdd2c4a9ce81806df76e88828db1a36c45ee1f55f9d33d5a864975fc564ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7dcda5fe9009a3177bd88f0074bd1ef33610d40f2de84e642026192a26ecb00",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ChainMap/Variant6afdd2c4a9ce81806df76e88828db1a36c45ee1f55f9d33d5a864975fc564ecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe9059c600dacbcb4ffa62b46091227ae708cd9b17995e4c07d815639d22af39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RelaxedChainComplex where
  label : String
  dimension : Nat
  boundaryHash : Nat
  boundarySquaredZero : Prop
  boundarySquaredZeroProof : boundarySquaredZero

/-- Forward relaxation map Φ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ChainMap/Variant6afdd2c4a9ce81806df76e88828db1a36c45ee1f55f9d33d5a864975fc564ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ChainMap/Variant6afdd2c4a9ce81806df76e88828db1a36c45ee1f55f9d33d5a864975fc564ecd.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `057a174491138b19051dfb96d791df6c06f3a007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

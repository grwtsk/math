# RelaxedChainComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f10b3e827833154673833bd6f4de2edb04cd55f4c4dddc3eb0845418ed5d87a",
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
  "slug": "relaxedchaincomplex--9dd444a4b96909a0ce7ee4d8",
  "source": {
    "blob": "ef82de6a0e9a7dc16f374bf4fc014fa8bd9cd8a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 23,
    "path": "GRWTSK/Topology/AlgebraicTopology/ChainMap/Variantc00528b5b31b7217da9f725882c5b09d53b49d9c78c439a99403edcdfabbdc7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9dd444a4b96909a0ce7ee4d8e92834017ce9f539b56bdc3e1511c3725b10ff2f",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ChainMap/Variantc00528b5b31b7217da9f725882c5b09d53b49d9c78c439a99403edcdfabbdc7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f10b3e827833154673833bd6f4de2edb04cd55f4c4dddc3eb0845418ed5d87a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–30.

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

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ChainMap/Variantc00528b5b31b7217da9f725882c5b09d53b49d9c78c439a99403edcdfabbdc7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ChainMap/Variantc00528b5b31b7217da9f725882c5b09d53b49d9c78c439a99403edcdfabbdc7c.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef82de6a0e9a7dc16f374bf4fc014fa8bd9cd8a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

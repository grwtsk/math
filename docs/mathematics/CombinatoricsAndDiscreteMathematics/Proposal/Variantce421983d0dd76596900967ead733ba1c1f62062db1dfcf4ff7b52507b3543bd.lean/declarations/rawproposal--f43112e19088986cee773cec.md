# RawProposal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e2b3e8bd7e31b0b4160fb7b350cb4e78fdeb2093eebfe46900d14b2fe1de721",
  "kind": "structure",
  "lexical_name": "RawProposal",
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
  "slug": "rawproposal--f43112e19088986cee773cec",
  "source": {
    "blob": "4cb959cfc888ad609914000b24b9641360e8e63a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Proposal/Variantce421983d0dd76596900967ead733ba1c1f62062db1dfcf4ff7b52507b3543bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f43112e19088986cee773cec453b12b19d10c9ebdaabaf778ccf321ec2257401",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Proposal/Variantce421983d0dd76596900967ead733ba1c1f62062db1dfcf4ff7b52507b3543bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e2b3e8bd7e31b0b4160fb7b350cb4e78fdeb2093eebfe46900d14b2fe1de721`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RawProposal (Host : Type u) (EdgeId : Type v) (Raw : Type w) where
  schemaVersion : Nat
  contractHash : Hash256
  sourceSnapshotHash : Hash256
  algorithmVersion : Nat
  revision : Nat
  edgeId : EdgeId
  claimedSource : Host
  claimedTarget : Host
  source : Raw
  proposed : Raw
deriving DecidableEq, Repr

@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Proposal/Variantce421983d0dd76596900967ead733ba1c1f62062db1dfcf4ff7b52507b3543bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Proposal/Variantce421983d0dd76596900967ead733ba1c1f62062db1dfcf4ff7b52507b3543bd.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cb959cfc888ad609914000b24b9641360e8e63a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

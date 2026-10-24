# instT2Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3004f0fe935ec05ebbd0446b415d2f7aee8dfcc976ea9a94892a9ab39cd66d78",
  "kind": "instance",
  "lexical_name": "instT2Space",
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
  "slug": "instt2space--0da57fae408d90ce2ffa5928",
  "source": {
    "blob": "b6cd3e230bc67949dea86f6a5b69b1a3d34c6b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 200,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variante4a39ad167af9dd583be5a23b4c6d678d2b91342996f8c24eed6080254667915.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0da57fae408d90ce2ffa59285e010c7c9f9fe14e07ca92b59d2abe9a2f0e1ef8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variante4a39ad167af9dd583be5a23b4c6d678d2b91342996f8c24eed6080254667915.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3004f0fe935ec05ebbd0446b415d2f7aee8dfcc976ea9a94892a9ab39cd66d78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instT2Space [T2Space F] : T2Space (E [⋀^ι]→L[𝕜] F) :=
  .of_injective_continuous DFunLike.coe_injective continuous_coeFun

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variante4a39ad167af9dd583be5a23b4c6d678d2b91342996f8c24eed6080254667915.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variante4a39ad167af9dd583be5a23b4c6d678d2b91342996f8c24eed6080254667915.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6cd3e230bc67949dea86f6a5b69b1a3d34c6b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

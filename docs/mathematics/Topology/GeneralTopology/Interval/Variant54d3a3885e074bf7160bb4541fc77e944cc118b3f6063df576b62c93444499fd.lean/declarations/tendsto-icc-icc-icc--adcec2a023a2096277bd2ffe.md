# tendsto_Icc_Icc_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65cf68e633c5a4f288d625a32cf5f55212c5831e4e4cbfee2649e0dc5f6268b9",
  "kind": "instance",
  "lexical_name": "tendsto_Icc_Icc_Icc",
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
  "slug": "tendsto-icc-icc-icc--adcec2a023a2096277bd2ffe",
  "source": {
    "blob": "0bf134fabd165e48d23d9e76971153c64f6a01fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 222,
    "path": "GRWTSK/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adcec2a023a2096277bd2ffed049911b0817ba56b693690fbfc2e977840233ef",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65cf68e633c5a4f288d625a32cf5f55212c5831e4e4cbfee2649e0dc5f6268b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance tendsto_Icc_Icc_Icc {a b : α} : TendstoIxxClass Icc (𝓟 (Icc a b)) (𝓟 (Icc a b)) :=
  tendstoIxxClass_principal.mpr fun _x hx _y hy => Icc_subset_Icc hx.1 hy.2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Interval/Variant54d3a3885e074bf7160bb4541fc77e944cc118b3f6063df576b62c93444499fd.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bf134fabd165e48d23d9e76971153c64f6a01fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

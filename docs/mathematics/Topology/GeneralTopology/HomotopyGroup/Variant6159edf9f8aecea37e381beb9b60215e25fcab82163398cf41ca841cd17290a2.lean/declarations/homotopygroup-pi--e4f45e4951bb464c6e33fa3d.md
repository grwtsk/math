# HomotopyGroup.Pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39c0d233b948a4bf9183fcda020b17d10217ac69516e27ff95dea6a4c356a5dd",
  "kind": "abbrev",
  "lexical_name": "HomotopyGroup.Pi",
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
  "slug": "homotopygroup-pi--e4f45e4951bb464c6e33fa3d",
  "source": {
    "blob": "0141b414ec7e2ef9bbc9e13f417c26e4cb1f752f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 463,
    "line": 458,
    "path": "GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4f45e4951bb464c6e33fa3d081da4f690601188a3e96ef1bd751e1a3eb59b03",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39c0d233b948a4bf9183fcda020b17d10217ac69516e27ff95dea6a4c356a5dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 458–463.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev HomotopyGroup.Pi (n) (X : Type*) [TopologicalSpace X] (x : X) :=
  HomotopyGroup (Fin n) _ x

@[inherit_doc] scoped[Topology] notation "π_" => HomotopyGroup.Pi

/-- The 0-dimensional generalized loops based at `x` are in bijection with `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/HomotopyGroup/Variant6159edf9f8aecea37e381beb9b60215e25fcab82163398cf41ca841cd17290a2.lean#L458).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0141b414ec7e2ef9bbc9e13f417c26e4cb1f752f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

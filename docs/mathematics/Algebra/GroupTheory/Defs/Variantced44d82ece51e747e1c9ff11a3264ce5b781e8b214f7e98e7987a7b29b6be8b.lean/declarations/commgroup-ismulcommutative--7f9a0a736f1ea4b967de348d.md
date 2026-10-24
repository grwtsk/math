# commGroup_isMulCommutative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e812ede49a819c4175191b5877b74f3eb189d5e1a81c42728f01cd35208cfd70",
  "kind": "instance",
  "lexical_name": "commGroup_isMulCommutative",
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
  "slug": "commgroup-ismulcommutative--7f9a0a736f1ea4b967de348d",
  "source": {
    "blob": "d3b7ba8c2bf2ce5d8ce9f29372e9f32273bc215b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 710,
    "line": 702,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7f9a0a736f1ea4b967de348d925a03319a52a83bbe2a5e4e0ef37636683be5a6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e812ede49a819c4175191b5877b74f3eb189d5e1a81c42728f01cd35208cfd70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–710.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance commGroup_isMulCommutative {G : Type*} [CommGroup G] (H : Subgroup G) :
    IsMulCommutative H :=
  ⟨CommMagma.to_isCommutative⟩

@[deprecated (since := "2025-04-09")] alias commGroup_isCommutative := commGroup_isMulCommutative
@[deprecated (since := "2025-04-09")] alias _root_.AddSubgroup.addCommGroup_isCommutative :=
  commGroup_isMulCommutative

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantced44d82ece51e747e1c9ff11a3264ce5b781e8b214f7e98e7987a7b29b6be8b.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3b7ba8c2bf2ce5d8ce9f29372e9f32273bc215b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

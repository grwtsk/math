# subgroupOf_isMulCommutative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9a3fc17ef6f0c76cc6ea04b1bd428ade1906c3827f2fca3aa40cc2a9f9a05d5",
  "kind": "instance",
  "lexical_name": "subgroupOf_isMulCommutative",
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
  "slug": "subgroupof-ismulcommutative--05e3a763e15309edfa5f01cb",
  "source": {
    "blob": "6ee0278c5ca1f5d03c70dcec7e6f5beab2f83702",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 392,
    "path": "GRWTSK/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:05e3a763e15309edfa5f01cbe13be3885b95fefcda003e2fa4ecdfda612ef241",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9a3fc17ef6f0c76cc6ea04b1bd428ade1906c3827f2fca3aa40cc2a9f9a05d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subgroupOf_isMulCommutative [IsMulCommutative H] : IsMulCommutative (H.subgroupOf K) :=
  H.comap_injective_isMulCommutative Subtype.coe_injective

@[deprecated (since := "2025-04-09")] alias subgroupOf_isCommutative := subgroupOf_isMulCommutative
@[deprecated (since := "2025-04-09")] alias _root_.AddSubgroup.addSubgroupOf_isCommutative :=
  AddSubgroup.addSubgroupOf_isAddCommutative

end Subgroup

namespace MulEquiv
variable {H : Type*} [Group H]

/--
An isomorphism of groups gives an order isomorphism between the lattices of subgroups,
defined by sending subgroups to their inverse images.

See also `MulEquiv.mapSubgroup` which maps subgroups to their forward images.
-/
@[to_additive (attr := simps)
"An isomorphism of groups gives an order isomorphism between the lattices of subgroups,
defined by sending subgroups to their inverse images.

See also `AddEquiv.mapAddSubgroup` which maps subgroups to their forward images."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Map/Variantb72184a7125c56c0d15b743948a9343b2d70f71637287cfb66cd81755942c067.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee0278c5ca1f5d03c70dcec7e6f5beab2f83702` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

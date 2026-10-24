# divInvOneMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:deef25113e31b3a8d83e14cc83e1f5a35c1f9620c08150c76761c5274cf55bf1",
  "kind": "abbrev",
  "lexical_name": "divInvOneMonoid",
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
  "slug": "divinvonemonoid--b7ca6e5468fb5c8ed54bf3d0",
  "source": {
    "blob": "0078f1dc9b74fe6764084ac1733cdf90d8433e8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 245,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7ca6e5468fb5c8ed54bf3d0a0e11fd0e47890fcef7ba6a38f8290f45713b70a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:deef25113e31b3a8d83e14cc83e1f5a35c1f9620c08150c76761c5274cf55bf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev divInvOneMonoid [DivInvOneMonoid β] [IsOneApply F α β] [IsMulApply F α β]
    [IsInvApply F α β] [IsDivApply F α β] [IsPowApply ℕ F α β] [IsPowApply ℤ F α β] :
    DivInvOneMonoid F :=
  DFunLike.coe_injective.divInvOneMonoid (fun (f : F) ↦ (f : α → β)) coe_one coe_mul
    coe_inv coe_div coe_pow coe_pow

/-- A `FunLike` type is a division monoid if `β` is a division monoid. -/
@[to_additive /-- A `FunLike` type is a subtraction monoid if `β` is a subtraction monoid. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0078f1dc9b74fe6764084ac1733cdf90d8433e8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

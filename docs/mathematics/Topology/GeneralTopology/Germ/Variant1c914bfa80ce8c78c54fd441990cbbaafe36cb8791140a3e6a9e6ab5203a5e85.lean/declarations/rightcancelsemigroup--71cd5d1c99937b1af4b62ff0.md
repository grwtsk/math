# rightCancelSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e5a33b0c2bf6664287cff4f356fb15bbb4fb7dec052ee3a65d02b1eddbfe0f6",
  "kind": "instance",
  "lexical_name": "rightCancelSemigroup",
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
  "slug": "rightcancelsemigroup--71cd5d1c99937b1af4b62ff0",
  "source": {
    "blob": "4e1afc97cb9eff7d8be6dc1dd124d418361485c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 375,
    "path": "GRWTSK/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71cd5d1c99937b1af4b62ff0fcd543910a5e5e3f5004826dd195a1da75cb5202",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e5a33b0c2bf6664287cff4f356fb15bbb4fb7dec052ee3a65d02b1eddbfe0f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance rightCancelSemigroup [RightCancelSemigroup M] : RightCancelSemigroup (Germ l M) :=
  { Germ.semigroup with
    mul := (· * ·)
    mul_right_cancel := fun f₁ f₂ f₃ =>
      inductionOn₃ f₁ f₂ f₃ fun _f₁ _f₂ _f₃ H =>
        coe_eq.2 <| (coe_eq.1 H).mono fun _x => mul_right_cancel }

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Germ/Variant1c914bfa80ce8c78c54fd441990cbbaafe36cb8791140a3e6a9e6ab5203a5e85.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1afc97cb9eff7d8be6dc1dd124d418361485c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

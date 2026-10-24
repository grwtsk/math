# sheafedSpace_pullback_snd_of_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e187b830aa7db6fce3767f06f31512b2c942664eda6378e1e6d303d8fd4e6ae",
  "kind": "instance",
  "lexical_name": "sheafedSpace_pullback_snd_of_left",
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
  "slug": "sheafedspace-pullback-snd-of-left--abe0f4fd5189fc78aebc534b",
  "source": {
    "blob": "4840c3b01c4996cb4862762efb493c8d4fe546f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 726,
    "line": 714,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abe0f4fd5189fc78aebc534b591c3dca60a1257861e9e8f6013551faa1cb7969",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e187b830aa7db6fce3767f06f31512b2c942664eda6378e1e6d303d8fd4e6ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–726.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sheafedSpace_pullback_snd_of_left :
    SheafedSpace.IsOpenImmersion (pullback.snd f g) := by
  rw [SheafedSpace.isOpenImmersion_iff_hom]
  have : _ = (pullback.snd f g).hom := preservesLimitIso_hom_π forget (cospan f g) right
  rw [← this]
  have := HasLimit.isoOfNatIso_hom_π (diagramIsoCospan (cospan f g ⋙ forget)) right
  dsimp at this
  rw [Category.comp_id] at this
  rw [← this]
  infer_instance

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant93dc88a310009ab11105e66d43cb129d53ad2e4c08dc58b6127ced12263ecd2f.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4840c3b01c4996cb4862762efb493c8d4fe546f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

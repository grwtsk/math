# LightProfinite.equivDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef48976abbb942ccb0269b588bd7e0f9a4a9b8fd764aa03fefb5323713789293",
  "kind": "def",
  "lexical_name": "LightProfinite.equivDiagram",
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
  "slug": "lightprofinite-equivdiagram--bfedec740cbee41286bc8914",
  "source": {
    "blob": "4bd2bef8a41a8fed99ac85b9acc566a36c713814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 318,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfedec740cbee41286bc89141ef2c6741c7d4a35d858233d7030bdd3e1a333db",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef48976abbb942ccb0269b588bd7e0f9a4a9b8fd764aa03fefb5323713789293`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def LightProfinite.equivDiagram : LightProfinite.{u} ≌ LightDiagram.{u} where
  functor := lightProfiniteToLightDiagram
  inverse := lightDiagramToLightProfinite
  unitIso := Iso.refl _
  counitIso := NatIso.ofComponents
    (fun _ ↦ lightDiagramToProfinite.preimageIso (Iso.refl _)) (by
      intro _ _ f
      simp only [Functor.comp_obj, lightDiagramToLightProfinite_obj,
        lightProfiniteToLightDiagram_obj, Functor.id_obj, Functor.comp_map,
        lightDiagramToLightProfinite_map, lightProfiniteToLightDiagram_map,
        lightDiagramToProfinite_obj, Functor.preimageIso_hom, Iso.refl_hom, Functor.id_map]
      erw [lightDiagramToProfinite.preimage_id, lightDiagramToProfinite.preimage_id,
        Category.comp_id f])
  functor_unitIso_comp _ := by simpa using lightDiagramToProfinite.preimage_id

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantee849d7cd1a80e88da3883269db31ff9018eb61a6b15c684e02faec919975f50.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bd2bef8a41a8fed99ac85b9acc566a36c713814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

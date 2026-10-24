# LightProfinite.equivDiagram

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6a9f3c7054adfe830b1e28d9195a4215f64da8297ba5992b9d4d56c57897f55",
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
  "slug": "lightprofinite-equivdiagram--22cd422ac554b47484cbd85a",
  "source": {
    "blob": "4a875d788f8cf2b17607d2c6a902d519c4377f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 310,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22cd422ac554b47484cbd85a5091fb62b593d505382ffae38cdacfcf6d3a6b4f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6a9f3c7054adfe830b1e28d9195a4215f64da8297ba5992b9d4d56c57897f55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–324.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant920f01cf394ebe77af7df12a133db285d281096a86f439412e54149d9fcdc767.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a875d788f8cf2b17607d2c6a902d519c4377f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

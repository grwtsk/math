# affineLocally_of_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 553,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/ba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:525bbd02-1944-fe8c-b52d-1e97411d910f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:626e89ac-e75a-1232-e1d9-708fa49e391e",
  "kind": "theorem",
  "lexical_name": "affineLocally_of_isOpenImmersion",
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
  "slug": "affinelocally-of-isopenimmersion--71fb1ddb0b51edebb98d167c",
  "source": {
    "blob": "9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 553,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71fb1ddb0b51edebb98d167cf49ff9a50f1498449894d8f16faf2d8fbcbe9170",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:626e89ac-e75a-1232-e1d9-708fa49e391e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineLocally_of_isOpenImmersion (hP : RingHom.PropertyIsLocal @P) {X Y : Scheme}
    (f : X ⟶ Y) [hf : IsOpenImmersion f] : affineLocally (@P) f := by
  intro U
  haveI H : IsAffine _ := U.2
  rw [← Category.comp_id (f ∣_ U)]
  apply hP.sourceAffineLocally_comp_of_isOpenImmersion
  -- Porting note: need to excuse Lean from synthesizing an instance
  rw [@source_affine_openCover_iff _ hP _ _ _ _ (Scheme.openCoverOfIsIso (𝟙 _)) (_)]
  · intro i; erw [Category.id_comp, op_id, Scheme.Γ.map_id]
    let esto := Scheme.Γ.obj (Opposite.op (Y.restrict <| Opens.openEmbedding U.val))
    let eso := Scheme.Γ.obj (Opposite.op ((Scheme.openCoverOfIsIso
      (𝟙 (Y.restrict <| Opens.openEmbedding U.val))).obj i))
    -- Porting note: Lean this needed this spelled out before
    -- convert hP.HoldsAwayLocalizationAway _ (1 : Scheme.Γ.obj _) _
    have : 𝟙 (Scheme.Γ.obj (Opposite.op (Y.restrict <| Opens.openEmbedding U.val)))
      = @algebraMap esto eso _ _ (_) := (RingHom.algebraMap_toAlgebra _).symm
    rw [this]
    have := hP.HoldsForLocalizationAway
    convert @this esto eso _ _ ?_ ?_ ?_
    · exact 1
    -- Porting note: again we have to bypass TC synthesis to keep Lean from running away
    · refine'
        @IsLocalization.away_of_isUnit_of_bijective _ _ _ _ (_) _ isUnit_one Function.bijective_id
  · intro; exact H
#align ring_hom.property_is_local.affine_locally_of_is_open_immersion RingHom.PropertyIsLocal.affineLocally_of_isOpenImmersion

set_option maxHeartbeats 3000000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/RingHomProperties/Variantba8c284e4d13e7303e6621cadfda76e7fbc7aefb3a48030c22368a5f9e33f033.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cb86b07c5c9fe20bccc7dabe7036a473cfa1a3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# of_stalk_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72ea009f26ad49af53818d47438612510ff020ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 836,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a2a2dc73f339764432a4402920c0911e791ab0bf212fc3e6cc65b67e0532cd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a56e7b00-debf-8507-0c18-2e42f72c1d28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9faf6d75-6263-bba1-604b-915abfb6358e",
  "kind": "theorem",
  "lexical_name": "of_stalk_iso",
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
  "slug": "of-stalk-iso--3305b98d120bb4defa40dd66",
  "source": {
    "blob": "72ea009f26ad49af53818d47438612510ff020ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 862,
    "line": 836,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant2a2a2dc73f339764432a4402920c0911e791ab0bf212fc3e6cc65b67e0532cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3305b98d120bb4defa40dd66b43702cb7898377bc23b479c04b36c174e46e43e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant2a2a2dc73f339764432a4402920c0911e791ab0bf212fc3e6cc65b67e0532cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9faf6d75-6263-bba1-604b-915abfb6358e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 836–862.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_stalk_iso {X Y : SheafedSpace C} (f : X ⟶ Y) (hf : OpenEmbedding f.base)
    [H : ∀ x : X.1, IsIso (PresheafedSpace.stalkMap f x)] : SheafedSpace.IsOpenImmersion f :=
  { base_open := hf
    c_iso := fun U => by
      -- Porting note : was `apply (config := { instances := False }) ...`
      -- See https://github.com/leanprover/lean4/issues/2273
      have h := TopCat.Presheaf.app_isIso_of_stalkFunctor_map_iso
          (show Y.sheaf ⟶ (TopCat.Sheaf.pushforward f.base).obj X.sheaf from ⟨f.c⟩)
      refine @h _ ?_
      rintro ⟨_, y, hy, rfl⟩
      specialize H y
      delta PresheafedSpace.stalkMap at H
      haveI H' :=
        TopCat.Presheaf.stalkPushforward.stalkPushforward_iso_of_openEmbedding C hf X.presheaf y
      have := @IsIso.comp_isIso _ _ _ _ _ _ _ H (@IsIso.inv_isIso _ _ _ _ _ H')
      rwa [Category.assoc, IsIso.hom_inv_id, Category.comp_id] at this }
#align algebraic_geometry.SheafedSpace.is_open_immersion.of_stalk_iso AlgebraicGeometry.SheafedSpace.IsOpenImmersion.of_stalk_iso

end OfStalkIso

section Prod

-- Porting note : here `ι` should have same universe level as morphism of `C`, so needs explicit
-- universe level now
variable [HasLimits C] {ι : Type v} (F : Discrete ι ⥤ SheafedSpace.{_, v, v} C) [HasColimit F]
  (i : Discrete ι)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant2a2a2dc73f339764432a4402920c0911e791ab0bf212fc3e6cc65b67e0532cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant2a2a2dc73f339764432a4402920c0911e791ab0bf212fc3e6cc65b67e0532cd6.lean#L836).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72ea009f26ad49af53818d47438612510ff020ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

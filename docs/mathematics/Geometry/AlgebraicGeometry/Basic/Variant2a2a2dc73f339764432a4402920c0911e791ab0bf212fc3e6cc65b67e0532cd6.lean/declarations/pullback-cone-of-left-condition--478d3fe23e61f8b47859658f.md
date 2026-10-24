# pullback_cone_of_left_condition

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
      "line": 384,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a2a2dc73f339764432a4402920c0911e791ab0bf212fc3e6cc65b67e0532cd6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e4d0c04-332b-7d69-0886-917c0dc54a06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e6cee1d-f880-9344-b4ea-1f503c651bf5",
  "kind": "theorem",
  "lexical_name": "pullback_cone_of_left_condition",
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
  "slug": "pullback-cone-of-left-condition--478d3fe23e61f8b47859658f",
  "source": {
    "blob": "72ea009f26ad49af53818d47438612510ff020ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 402,
    "line": 384,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant2a2a2dc73f339764432a4402920c0911e791ab0bf212fc3e6cc65b67e0532cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:478d3fe23e61f8b47859658f539454dc8a87eda7fbc2abeba084982168634872",
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

Occurrence: `result:3e6cee1d-f880-9344-b4ea-1f503c651bf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–402.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_cone_of_left_condition : pullbackConeOfLeftFst f g ≫ f = Y.ofRestrict _ ≫ g := by
  -- Porting note : `ext` did not pick up `NatTrans.ext`
  refine PresheafedSpace.Hom.ext _ _ ?_ <| NatTrans.ext _ _ <| funext fun U => ?_
  · simpa using pullback.condition
  · induction U using Opposite.rec'
    -- Porting note : `NatTrans.comp_app` is not picked up by `dsimp`
    -- Perhaps see : https://github.com/leanprover-community/mathlib4/issues/5026
    rw [NatTrans.comp_app]
    dsimp only [comp_c_app, unop_op, whiskerRight_app, pullbackConeOfLeftFst]
    -- simp only [ofRestrict_c_app, NatTrans.comp_app]
    simp only [Quiver.Hom.unop_op, TopCat.Presheaf.pushforwardObj_map, app_invApp_assoc,
      eqToHom_app, eqToHom_unop, Category.assoc, NatTrans.naturality_assoc, Functor.op_map]
    erw [← Y.presheaf.map_comp, ← Y.presheaf.map_comp]
    congr 1
#align algebraic_geometry.PresheafedSpace.is_open_immersion.pullback_cone_of_left_condition AlgebraicGeometry.PresheafedSpace.IsOpenImmersion.pullback_cone_of_left_condition

/-- We construct the pullback along an open immersion via restricting along the pullback of the
maps of underlying spaces (which is also an open embedding).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant2a2a2dc73f339764432a4402920c0911e791ab0bf212fc3e6cc65b67e0532cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant2a2a2dc73f339764432a4402920c0911e791ab0bf212fc3e6cc65b67e0532cd6.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72ea009f26ad49af53818d47438612510ff020ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

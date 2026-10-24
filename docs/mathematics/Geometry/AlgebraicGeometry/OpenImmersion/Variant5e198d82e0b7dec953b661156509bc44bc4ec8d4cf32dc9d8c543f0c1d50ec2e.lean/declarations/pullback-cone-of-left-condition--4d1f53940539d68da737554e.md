# pullback_cone_of_left_condition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2823eb6226890efa94548b285fde55731f8229d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec452b70-d177-3346-4c7f-793d5333371a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3cd3222-ff29-8197-3042-ae1d9fc5926e",
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
  "slug": "pullback-cone-of-left-condition--4d1f53940539d68da737554e",
  "source": {
    "blob": "2823eb6226890efa94548b285fde55731f8229d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 327,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d1f53940539d68da737554e190f977eb41d3d07a1ea10890b4175d96112085f",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3cd3222-ff29-8197-3042-ae1d9fc5926e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullback_cone_of_left_condition : pullbackConeOfLeftFst f g ≫ f = Y.ofRestrict _ ≫ g := by
  -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): `ext` did not pick up `NatTrans.ext`
  refine PresheafedSpace.Hom.ext _ _ ?_ <| NatTrans.ext <| funext fun U => ?_
  · simpa using pullback.condition
  · induction U
    -- Porting note: `NatTrans.comp_app` is not picked up by `dsimp`
    -- Perhaps see : https://github.com/leanprover-community/mathlib4/issues/5026
    rw [NatTrans.comp_app]
    dsimp only [comp_c_app, unop_op, whiskerRight_app, pullbackConeOfLeftFst]
    -- simp only [ofRestrict_c_app, NatTrans.comp_app]
    simp only [app_invApp_assoc,
      eqToHom_app, Category.assoc, NatTrans.naturality_assoc]
    erw [← Y.presheaf.map_comp, ← Y.presheaf.map_comp]
    congr 1

/-- We construct the pullback along an open immersion via restricting along the pullback of the
maps of underlying spaces (which is also an open embedding).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/OpenImmersion/Variant5e198d82e0b7dec953b661156509bc44bc4ec8d4cf32dc9d8c543f0c1d50ec2e.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2823eb6226890efa94548b285fde55731f8229d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# diagramCompPreservesLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e67ac19c17edc927cd11c5aa04b750f5b2b608da185ee8bc4366932c1d0b6e3",
  "kind": "def",
  "lexical_name": "diagramCompPreservesLimits",
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
  "slug": "diagramcomppreserveslimits--84d0bd11fd0987a75e366eb4",
  "source": {
    "blob": "e6e52b0cd5eac929436817660f73cbc97009e04b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84d0bd11fd0987a75e366eb4b7290ef1efb011e4ae618fcda971354892dd840b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e67ac19c17edc927cd11c5aa04b750f5b2b608da185ee8bc4366932c1d0b6e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def diagramCompPreservesLimits : diagram F U ⋙ G ≅ diagram.{v} (F ⋙ G) U := by
  fapply NatIso.ofComponents
  rintro ⟨j⟩
  exact PreservesProduct.iso _ _
  exact PreservesProduct.iso _ _
  rintro ⟨⟩ ⟨⟩ ⟨⟩
  · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
    -- See https://github.com/leanprover-community/mathlib4/issues/5229
    refine limit.hom_ext (fun j => ?_)
    simp
  · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
    -- See https://github.com/leanprover-community/mathlib4/issues/5229
    refine limit.hom_ext (fun j => ?_)
    -- Porting note : `attribute [local reducible]` doesn't work, this is its replacement
    dsimp [diagram, leftRes, rightRes]
    simp [limit.lift_π, Functor.comp_map, map_lift_piComparison, Fan.mk_π_app,
      PreservesProduct.iso_hom, parallelPair_map_left, Functor.map_comp, Category.assoc]
  · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
    -- See https://github.com/leanprover-community/mathlib4/issues/5229
    refine limit.hom_ext (fun j => ?_)
    -- Porting note : `attribute [local reducible]` doesn't work, this is its replacement
    dsimp [diagram, leftRes, rightRes]
    simp [limit.lift_π, Functor.comp_map, map_lift_piComparison, Fan.mk_π_app,
      PreservesProduct.iso_hom, parallelPair_map_left, Functor.map_comp, Category.assoc]
  · -- Porting note : `ext` can't see `limit.hom_ext` applies here:
    -- See https://github.com/leanprover-community/mathlib4/issues/5229
    refine limit.hom_ext (fun j => ?_)
    simp [diagram, leftRes, rightRes]
set_option linter.uppercaseLean3 false in
#align Top.presheaf.sheaf_condition.diagram_comp_preserves_limits TopCat.Presheaf.SheafCondition.diagramCompPreservesLimits

-- attribute [local reducible] res

/-- When `G` preserves limits, the image under `G` of the sheaf condition fork for `F`
is the sheaf condition fork for `F ⋙ G`,
postcomposed with the inverse of the natural isomorphism `diagramCompPreservesLimits`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Forget/Variant0be9a8dc5604b3189d06ad9488e6f692f7e7bd4971b3d8e913cb8d31fbd15e2d.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6e52b0cd5eac929436817660f73cbc97009e04b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

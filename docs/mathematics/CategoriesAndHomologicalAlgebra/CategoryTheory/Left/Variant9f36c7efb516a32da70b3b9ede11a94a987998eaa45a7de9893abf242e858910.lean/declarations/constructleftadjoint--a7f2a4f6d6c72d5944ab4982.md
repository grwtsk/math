# constructLeftAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72a7d66265f9bcd90ee96cd7fc3c124933e55de0e9a96ccb3cecce27b2cdac21",
  "kind": "def",
  "lexical_name": "constructLeftAdjoint",
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
  "slug": "constructleftadjoint--a7f2a4f6d6c72d5944ab4982",
  "source": {
    "blob": "5c7c97a260cd0c7a44526512b7724c257cd104bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 175,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7f2a4f6d6c72d5944ab4982706d53b2927cfba60130f21d1d729686642a92cb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72a7d66265f9bcd90ee96cd7fc3c124933e55de0e9a96ccb3cecce27b2cdac21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def constructLeftAdjoint (h : ∀ X : B, RegularEpi (adj₁.counit.app X)) : B ⥤ A := by
  refine Adjunction.leftAdjointOfEquiv (fun X Y => constructLeftAdjointEquiv R _ adj₁ adj₂ h Y X) ?_
  intro X Y Y' g h
  rw [constructLeftAdjointEquiv_apply, constructLeftAdjointEquiv_apply,
    Equiv.symm_apply_eq, Subtype.ext_iff]
  dsimp
  -- This used to be `rw`, but we need `erw` after https://github.com/leanprover/lean4/pull/2644
  erw [Cofork.IsColimit.homIso_natural, Cofork.IsColimit.homIso_natural]
  erw [adj₂.homEquiv_naturality_right]
  simp_rw [Functor.comp_map]
  -- This used to be `simp`, but we need `cat_disch` after https://github.com/leanprover/lean4/pull/2644
  cat_disch

end LiftLeftAdjoint

/-- The adjoint triangle theorem: Suppose `U : B ⥤ C` has a left adjoint `F` such that each counit
`ε_X : FUX ⟶ X` is a regular epimorphism. Then if a category `A` has coequalizers of reflexive
pairs, then a functor `R : A ⥤ B` has a left adjoint if the composite `R ⋙ U` does.

Note the converse is true (with weaker assumptions), by `Adjunction.comp`.
See https://ncatlab.org/nlab/show/adjoint+triangle+theorem
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7c97a260cd0c7a44526512b7724c257cd104bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

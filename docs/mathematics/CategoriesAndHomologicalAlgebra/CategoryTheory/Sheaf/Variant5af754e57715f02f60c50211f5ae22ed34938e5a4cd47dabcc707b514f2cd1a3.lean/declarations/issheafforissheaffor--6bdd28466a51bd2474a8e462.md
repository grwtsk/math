# isSheafForIsSheafFor'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb9fe77d87843a5e6fab352622c92c99078b242cf38bc976c94b3fd99bd23100",
  "kind": "def",
  "lexical_name": "isSheafForIsSheafFor'",
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
  "slug": "issheafforissheaffor--6bdd28466a51bd2474a8e462",
  "source": {
    "blob": "0bc9b9cb5589ca85ddfbde76ab0ddb3640051b07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 665,
    "line": 642,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bdd28466a51bd2474a8e462db80c2f46d782ba15ad98d38ea43abb62ab99934",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb9fe77d87843a5e6fab352622c92c99078b242cf38bc976c94b3fd99bd23100`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–665.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isSheafForIsSheafFor' (P : Cᵒᵖ ⥤ A) (s : A ⥤ Type max v₁ u₁)
    [∀ J, PreservesLimitsOfShape (Discrete.{max v₁ u₁} J) s] (U : C) (R : Presieve U) :
    IsLimit (s.mapCone (Fork.ofι _ (w R P))) ≃
      IsLimit (Fork.ofι _ (Equalizer.Presieve.w (P ⋙ s) R)) := by
  let e : parallelPair (s.map (firstMap R P)) (s.map (secondMap R P)) ≅
    parallelPair (Equalizer.Presieve.firstMap (P ⋙ s) R)
      (Equalizer.Presieve.secondMap (P ⋙ s) R) := by
    refine parallelPair.ext (PreservesProduct.iso s _) ((PreservesProduct.iso s _))
      (limit.hom_ext (fun j => ?_)) (limit.hom_ext (fun j => ?_))
    · dsimp [Equalizer.Presieve.firstMap, firstMap]
      simp only [map_lift_piComparison, Functor.map_comp, limit.lift_π, Fan.mk_pt,
        Fan.mk_π_app, assoc, piComparison_comp_π_assoc]
    · dsimp [Equalizer.Presieve.secondMap, secondMap]
      simp only [map_lift_piComparison, Functor.map_comp, limit.lift_π, Fan.mk_pt,
        Fan.mk_π_app, assoc, piComparison_comp_π_assoc]
  refine Equiv.trans (isLimitMapConeForkEquiv _ _) ?_
  refine (IsLimit.postcomposeHomEquiv e _).symm.trans
    (IsLimit.equivIsoLimit (Fork.ext (Iso.refl _) ?_))
  dsimp [Equalizer.forkMap, forkMap, e, Fork.ι]
  simp only [id_comp, map_lift_piComparison]

-- Remark : this lemma uses `A'` not `A`; `A'` is `A` but with a universe
-- restriction. Can it be generalised?
/-- The equalizer definition of a sheaf given by `isSheaf'` is equivalent to `isSheaf`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant5af754e57715f02f60c50211f5ae22ed34938e5a4cd47dabcc707b514f2cd1a3.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bc9b9cb5589ca85ddfbde76ab0ddb3640051b07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

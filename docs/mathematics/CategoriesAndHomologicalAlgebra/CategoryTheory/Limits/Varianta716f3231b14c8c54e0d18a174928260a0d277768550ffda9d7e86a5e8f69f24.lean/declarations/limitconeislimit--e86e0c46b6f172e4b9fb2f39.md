# limitConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd44a0b817d2e2e41c6805135a79bffadf29dd45e7126992bfc32a5647d922d6",
  "kind": "def",
  "lexical_name": "limitConeIsLimit",
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
  "slug": "limitconeislimit--e86e0c46b6f172e4b9fb2f39",
  "source": {
    "blob": "0dfe72004c3eb8194c77a9f19abb895eacf1d196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e86e0c46b6f172e4b9fb2f39d956a3219cf13361c7356bcbf6ce28e726a7d935",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd44a0b817d2e2e41c6805135a79bffadf29dd45e7126992bfc32a5647d922d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitConeIsLimit : IsLimit (limitCone.{v, w} F) := by
  refine
    IsLimit.ofFaithful (forget (AlgCat R)) (Types.Small.limitConeIsLimit.{v, w} _)
      (fun s => ofHom
        { toFun := _, map_one' := ?_, map_mul' := ?_, map_zero' := ?_, map_add' := ?_,
          commutes' := ?_ })
      (fun s => rfl)
  · congr
    ext j
    simp only [Functor.mapCone_π_app, forget_map, map_one, Pi.one_apply]
  · intro x y
    ext j
    simp only [Functor.comp_obj, forget_obj, Equiv.toFun_as_coe, Functor.mapCone_pt,
      Functor.mapCone_π_app, forget_map, Equiv.symm_apply_apply,
      Types.Small.limitCone_pt, equivShrink_symm_mul]
    apply map_mul
  · ext j
    simp only [Functor.comp_obj, forget_obj, Equiv.toFun_as_coe, Functor.mapCone_pt,
      Functor.mapCone_π_app, forget_map, Equiv.symm_apply_apply,
      equivShrink_symm_zero]
    apply map_zero
  · intro x y
    ext j
    simp only [Functor.comp_obj, forget_obj, Equiv.toFun_as_coe, Functor.mapCone_pt,
      Functor.mapCone_π_app, forget_map, Equiv.symm_apply_apply,
      Types.Small.limitCone_pt, equivShrink_symm_add]
    apply map_add
  · intro r
    simp only [← Shrink.algEquiv_symm_apply _ R, limitCone, Equiv.algebraMap_def, Equiv.symm_symm]
    apply congrArg
    apply Subtype.ext
    ext j
    exact (s.π.app j).hom.commutes r

end HasLimits

open HasLimits

/-- The category of R-algebras has all limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Varianta716f3231b14c8c54e0d18a174928260a0d277768550ffda9d7e86a5e8f69f24.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dfe72004c3eb8194c77a9f19abb895eacf1d196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

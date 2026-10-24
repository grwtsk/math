# limitConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e750f5755c124cdf1915fde644cc33ddcba59afb5b218e1b7f30420aa8cf225b",
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
  "slug": "limitconeislimit--def736420f12da48fb69a7b5",
  "source": {
    "blob": "ce8b64899c2173fa1eddd7633080bc6e7f3c5b35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 91,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant27d91b1c15325177490963cc2bb4c6cbb8a7ecad1b1dc73325308f9f21643afd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:def736420f12da48fb69a7b51400c4edb9682b69a9018bdcfd8968be87943df4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant27d91b1c15325177490963cc2bb4c6cbb8a7ecad1b1dc73325308f9f21643afd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e750f5755c124cdf1915fde644cc33ddcba59afb5b218e1b7f30420aa8cf225b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def limitConeIsLimit : IsLimit (limitCone F) := by
  refine IsLimit.ofFaithful (forget SemiRingCat.{u}) (Types.Small.limitConeIsLimit.{v, u} _)
    (fun s => ofHom { toFun := _, map_one' := ?_, map_mul' := ?_, map_zero' := ?_, map_add' := ?_})
    (fun s => rfl)
  · simp only [Functor.mapCone_π_app, forget_map, map_one]
    rfl
  · intro x y
    simp only [Functor.comp_obj, Equiv.toFun_as_coe, Functor.mapCone_pt, Functor.mapCone_π_app,
      forget_map, map_mul]
    rw [← equivShrink_mul]
    rfl
  · simp only [Functor.mapCone_π_app, forget_map, map_zero]
    rfl
  · intro x y
    simp only [Functor.comp_obj, Equiv.toFun_as_coe, Functor.mapCone_pt, Functor.mapCone_π_app,
      forget_map, map_add]
    rw [← equivShrink_add]
    rfl

end HasLimits

open HasLimits

/-- If `(F ⋙ forget SemiRingCat).sections` is `u`-small, `F` has a limit. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant27d91b1c15325177490963cc2bb4c6cbb8a7ecad1b1dc73325308f9f21643afd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant27d91b1c15325177490963cc2bb4c6cbb8a7ecad1b1dc73325308f9f21643afd.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce8b64899c2173fa1eddd7633080bc6e7f3c5b35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

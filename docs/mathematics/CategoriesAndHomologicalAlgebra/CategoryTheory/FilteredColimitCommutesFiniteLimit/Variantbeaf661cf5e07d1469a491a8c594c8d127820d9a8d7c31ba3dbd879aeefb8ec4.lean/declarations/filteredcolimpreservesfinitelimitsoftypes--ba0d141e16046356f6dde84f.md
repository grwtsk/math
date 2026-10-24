# filteredColimPreservesFiniteLimitsOfTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c321ec27a5a7da12e4eea3c7b7c9a58783adb82a05143c3eb9a422246f406b1",
  "kind": "instance",
  "lexical_name": "filteredColimPreservesFiniteLimitsOfTypes",
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
  "slug": "filteredcolimpreservesfinitelimitsoftypes--ba0d141e16046356f6dde84f",
  "source": {
    "blob": "0a34758978c247dc6dbfc547169b8dc6bc135081",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 330,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba0d141e16046356f6dde84fd3a5b8bb460581872ffc1ecddaa7894a8ae517d0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c321ec27a5a7da12e4eea3c7b7c9a58783adb82a05143c3eb9a422246f406b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance filteredColimPreservesFiniteLimitsOfTypes :
    PreservesFiniteLimits (colim : (K ⥤ Type v) ⥤ _) := by
  apply preservesFiniteLimitsOfPreservesFiniteLimitsOfSize.{v}
  intro J _ _
  refine ⟨fun {F} => ⟨fun {c} hc => IsLimit.ofIsoLimit (limit.isLimit _) ?_⟩⟩
  symm
  trans colim.mapCone (limit.cone F)
  · exact Functor.mapIso _ (hc.uniqueUpToIso (limit.isLimit F))
  · exact asIso (colimitLimitToLimitColimitCone.{v, v + 1} F)
#align category_theory.limits.filtered_colim_preserves_finite_limits_of_types CategoryTheory.Limits.filteredColimPreservesFiniteLimitsOfTypes

variable {C : Type u} [Category.{v} C] [ConcreteCategory.{v} C]

section

variable [HasLimitsOfShape J C] [HasColimitsOfShape K C]

variable [ReflectsLimitsOfShape J (forget C)] [PreservesColimitsOfShape K (forget C)]

variable [PreservesLimitsOfShape J (forget C)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variantbeaf661cf5e07d1469a491a8c594c8d127820d9a8d7c31ba3dbd879aeefb8ec4.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a34758978c247dc6dbfc547169b8dc6bc135081` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

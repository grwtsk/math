# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df4d105082428276e627cd87df327bb2748a565e5554e0e794721be162ff3d51",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fb0471df8026e7c6c2f8a22a",
  "source": {
    "blob": "9be2b974c6b50017a2e7085113a70b196a6378ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 372,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb0471df8026e7c6c2f8a22a4e0116fd6aef9c30c3c28dbbb1b5bdccf3bc27cb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df4d105082428276e627cd87df327bb2748a565e5554e0e794721be162ff3d51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance [PreservesFiniteLimits (forget C)] [PreservesColimitsOfShape K (forget C)]
    [HasFiniteLimits C] [HasColimitsOfShape K C] [(forget C).ReflectsIsomorphisms] :
    PreservesFiniteLimits (colim : (K ⥤ C) ⥤ _) := by
  apply preservesFiniteLimits_of_preservesFiniteLimitsOfSize.{v}
  intro J _ _
  infer_instance

end

section

variable {C : Type u} [Category.{v} C]
variable {J : Type u₁} [Category.{v₁} J]
variable {K : Type u₂} [Category.{v₂} K]
variable [HasLimitsOfShape J C] [HasColimitsOfShape K C]
variable [PreservesLimitsOfShape J (colim : (K ⥤ C) ⥤ _)]

/-- A curried version of the fact that filtered colimits commute with finite limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimitCommutesFiniteLimit/Variant276df23d275fb3c08e51f46bb9aec9ec83107a2f85ddc05ce234135fb3b8861b.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be2b974c6b50017a2e7085113a70b196a6378ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

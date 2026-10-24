# vPullbackConeIsLimitOfMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e650470cb22312357519277981bfdd94aa2527af4f1b451957f527aa4ee5c2a",
  "kind": "def",
  "lexical_name": "vPullbackConeIsLimitOfMap",
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
  "slug": "vpullbackconeislimitofmap--9ba5c4dd213af669010bc733",
  "source": {
    "blob": "aee703c24694bf7b5a92b1eb57fdf9bf98ff3dbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 378,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ba5c4dd213af669010bc733843e613f5d84b3bfcb9e912378f02f4f92a43a91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e650470cb22312357519277981bfdd94aa2527af4f1b451957f527aa4ee5c2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def vPullbackConeIsLimitOfMap (i j : D.J) [ReflectsLimit (cospan (D.ι i) (D.ι j)) F]
    (hc : IsLimit ((D.mapGlueData F).vPullbackCone i j)) : IsLimit (D.vPullbackCone i j) := by
  apply isLimitOfReflects F
  apply (isLimitMapConePullbackConeEquiv _ _).symm _
  let e :
    cospan (F.map (D.ι i)) (F.map (D.ι j)) ≅
      cospan ((D.mapGlueData F).ι i) ((D.mapGlueData F).ι j)
  exact
    NatIso.ofComponents
      (fun x => by
        cases x
        exacts [D.gluedIso F, Iso.refl _])
      (by rintro (_ | _) (_ | _) (_ | _ | _) <;> simp)
  apply IsLimit.postcomposeHomEquiv e _ _
  apply hc.ofIsoLimit
  refine' Cones.ext (Iso.refl _) _
  · rintro (_ | _ | _)
    change _ = _ ≫ (_ ≫ _) ≫ _
    all_goals change _ = 𝟙 _ ≫ _ ≫ _; aesop_cat
set_option linter.uppercaseLean3 false in
#align category_theory.glue_data.V_pullback_cone_is_limit_of_map CategoryTheory.GlueData.vPullbackConeIsLimitOfMap

-- porting note: commenting out omit
-- omit H

/-- If there is a forgetful functor into `Type` that preserves enough (co)limits, then `D.ι` will
be jointly surjective. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GlueData/Variantf6d82687a5dccd6729fcae50965df590b4770a75dae26cc9853f88f0de0aa97a.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aee703c24694bf7b5a92b1eb57fdf9bf98ff3dbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# isLimitSheafConditionForkOfIsLimitMapCone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:310b1ae07833b2c124c1eed72f4331e8ba1e065902d31694d6b4148a83beaf6a",
  "kind": "def",
  "lexical_name": "isLimitSheafConditionForkOfIsLimitMapCone",
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
  "slug": "islimitsheafconditionforkofislimitmapcone--e47471d1eebe2a80e027d685",
  "source": {
    "blob": "0bd2079d54ef7d242309c69aacb64f64010c25e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 458,
    "line": 420,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e47471d1eebe2a80e027d6855223529a2f2fcdccca11224c160d1bba04da2c76",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:310b1ae07833b2c124c1eed72f4331e8ba1e065902d31694d6b4148a83beaf6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 420–458.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitSheafConditionForkOfIsLimitMapCone (Q : IsLimit (F.mapCone (cocone U).op)) :
    IsLimit (SheafConditionEqualizerProducts.fork F U) :=
  IsLimit.ofIsoLimit ((IsLimit.ofConeEquiv (coneEquiv F U)).symm Q)
    { hom :=
        { hom := 𝟙 _
          w := by
            rintro ⟨⟩
            · simp
              rfl
            · -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): `ext` can't see `limit.hom_ext` applies here:
              refine limit.hom_ext fun ⟨i, j⟩ => ?_
              dsimp [coneEquivInverse, SheafConditionEqualizerProducts.res,
                SheafConditionEqualizerProducts.leftRes]
              simp only [limit.lift_π, limit.lift_π_assoc, Category.id_comp, Fan.mk_π_app,
                Category.assoc]
              rw [← F.map_comp]
              rfl }
      inv :=
        { hom := 𝟙 _
          w := by
            rintro ⟨⟩
            · simp
              rfl
            · -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11041): `ext` can't see `limit.hom_ext` applies here:
              refine limit.hom_ext fun ⟨i, j⟩ => ?_
              dsimp [coneEquivInverse, SheafConditionEqualizerProducts.res,
                SheafConditionEqualizerProducts.leftRes]
              simp only [limit.lift_π, limit.lift_π_assoc, Category.id_comp, Fan.mk_π_app,
                Category.assoc]
              rw [← F.map_comp]
              rfl } }

end SheafConditionPairwiseIntersections

open SheafConditionPairwiseIntersections

/-- The sheaf condition in terms of an equalizer diagram is equivalent
to the default sheaf condition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EqualizerProducts/Variantd963dbed4a7f219998e7905eb7b0d475250233bb11d770444344fb5e2b897256.lean#L420).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bd2079d54ef7d242309c69aacb64f64010c25e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

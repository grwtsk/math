# hasLimit_parallelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81b5874d8cd69c0b461f3ee7a6b34bf5a49a4ec9e91096a30c90f4c82be8c617",
  "kind": "def",
  "lexical_name": "hasLimit_parallelPair",
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
  "slug": "haslimit-parallelpair--b4c2f62728583610011f5f6d",
  "source": {
    "blob": "db88ade84586f1c1d27caa75a71ecb714aa372df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 112,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4c2f62728583610011f5f6d97fe07d2f9b1f933a5c51258d86da711074ef929",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81b5874d8cd69c0b461f3ee7a6b34bf5a49a4ec9e91096a30c90f4c82be8c617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasLimit_parallelPair {X Y : C} (f g : X ⟶ Y) : HasLimit (parallelPair f g) :=
  have huv : (pullback.fst : P f g ⟶ X) = pullback.snd :=
    calc
      (pullback.fst : P f g ⟶ X) = pullback.fst ≫ 𝟙 _ := Eq.symm <| Category.comp_id _
      _ = pullback.fst ≫ prod.lift (𝟙 X) f ≫ Limits.prod.fst := by rw [prod.lift_fst]
      _ = pullback.snd ≫ prod.lift (𝟙 X) g ≫ Limits.prod.fst := by rw [pullback.condition_assoc]
      _ = pullback.snd := by rw [prod.lift_fst, Category.comp_id]

  have hvu : (pullback.fst : P f g ⟶ X) ≫ f = pullback.snd ≫ g :=
    calc
      (pullback.fst : P f g ⟶ X) ≫ f = pullback.fst ≫ prod.lift (𝟙 X) f ≫ Limits.prod.snd := by
        rw [prod.lift_snd]
      _ = pullback.snd ≫ prod.lift (𝟙 X) g ≫ Limits.prod.snd := by rw [pullback.condition_assoc]
      _ = pullback.snd ≫ g := by rw [prod.lift_snd]

  have huu : (pullback.fst : P f g ⟶ X) ≫ f = pullback.fst ≫ g := by rw [hvu, ← huv]
  HasLimit.mk
    { cone := Fork.ofι pullback.fst huu
      isLimit :=
        Fork.IsLimit.mk _
          (fun s =>
            pullback.lift (Fork.ι s) (Fork.ι s) <|
              prod.hom_ext (by simp only [prod.lift_fst, Category.assoc])
                (by simp only [prod.comp_lift, Fork.condition s]))
          (fun s => by simp) fun s m h =>
          pullback.hom_ext (by simpa only [pullback.lift_fst] using h)
            (by simpa only [huv.symm, pullback.lift_fst] using h) }
#align category_theory.normal_mono_category.has_limit_parallel_pair CategoryTheory.NormalMonoCategory.hasLimit_parallelPair

end

section

attribute [local instance] hasLimit_parallelPair

/-- A `NormalMonoCategory` category with finite products and kernels has all equalizers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantff511751a35ecffa1c5be7222cb83e03dd712a4f2cd4050a47676bfbbe697db8.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db88ade84586f1c1d27caa75a71ecb714aa372df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

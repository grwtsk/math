# hasLimit_parallelPair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "56e7c46bf380faf241d4af0c85930d6cdad41251",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93c22b7dad145a37d8497bbc07ddb680bcda654a82539f597f3a2d0ac8051a26.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfea7652-3b4b-c57f-928b-fa3fbc92663e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a481c66c-58a6-0682-91e0-2828caa22339",
  "kind": "lemma",
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
  "slug": "haslimit-parallelpair--6d7963821c1205c7d3e90570",
  "source": {
    "blob": "56e7c46bf380faf241d4af0c85930d6cdad41251",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant93c22b7dad145a37d8497bbc07ddb680bcda654a82539f597f3a2d0ac8051a26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d7963821c1205c7d3e90570bae4dd8c15341235c067a107d1fde8fbba7d6dc3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant93c22b7dad145a37d8497bbc07ddb680bcda654a82539f597f3a2d0ac8051a26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a481c66c-58a6-0682-91e0-2828caa22339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasLimit_parallelPair {X Y : C} (f g : X ⟶ Y) : HasLimit (parallelPair f g) :=
  have huv : (pullback.fst _ _ : P f g ⟶ X) = pullback.snd _ _ :=
    calc
      (pullback.fst _ _ : P f g ⟶ X) = pullback.fst _ _ ≫ 𝟙 _ := Eq.symm <| Category.comp_id _
      _ = pullback.fst _ _ ≫ prod.lift (𝟙 X) f ≫ Limits.prod.fst := by rw [prod.lift_fst]
      _ = pullback.snd _ _ ≫ prod.lift (𝟙 X) g ≫ Limits.prod.fst := by rw [pullback.condition_assoc]
      _ = pullback.snd _ _ := by rw [prod.lift_fst, Category.comp_id]
  have hvu : (pullback.fst _ _ : P f g ⟶ X) ≫ f = pullback.snd _ _ ≫ g :=
    calc
      (pullback.fst _ _ : P f g ⟶ X) ≫ f =
        pullback.fst _ _ ≫ prod.lift (𝟙 X) f ≫ Limits.prod.snd := by rw [prod.lift_snd]
      _ = pullback.snd _ _ ≫ prod.lift (𝟙 X) g ≫ Limits.prod.snd := by rw [pullback.condition_assoc]
      _ = pullback.snd _ _ ≫ g := by rw [prod.lift_snd]
  have huu : (pullback.fst _ _ : P f g ⟶ X) ≫ f = pullback.fst _ _ ≫ g := by rw [hvu, ← huv]
  HasLimit.mk
    { cone := Fork.ofι (pullback.fst _ _) huu
      isLimit :=
        Fork.IsLimit.mk _
          (fun s =>
            pullback.lift (Fork.ι s) (Fork.ι s) <|
              Limits.prod.hom_ext (by simp only [prod.lift_fst, Category.assoc])
                (by simp only [prod.comp_lift, Fork.condition s]))
          (fun s => by simp) fun s m h =>
          pullback.hom_ext (by simpa only [pullback.lift_fst] using! h)
            (by simpa only [huv.symm, pullback.lift_fst] using! h) }

end

section

attribute [local instance] hasLimit_parallelPair

/-- A `NormalMonoCategory` category with finite products and kernels has all equalizers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant93c22b7dad145a37d8497bbc07ddb680bcda654a82539f597f3a2d0ac8051a26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variant93c22b7dad145a37d8497bbc07ddb680bcda654a82539f597f3a2d0ac8051a26.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56e7c46bf380faf241d4af0c85930d6cdad41251` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

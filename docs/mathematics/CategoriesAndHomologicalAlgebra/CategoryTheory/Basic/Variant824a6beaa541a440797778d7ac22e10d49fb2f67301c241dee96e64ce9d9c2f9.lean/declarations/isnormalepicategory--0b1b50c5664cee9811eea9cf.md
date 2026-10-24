# isNormalEpiCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a14e862-23dc-af17-a7dc-7f31258fc499",
  "kind": "lemma",
  "lexical_name": "isNormalEpiCategory",
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
  "slug": "isnormalepicategory--0b1b50c5664cee9811eea9cf",
  "source": {
    "blob": "7f9b9fa1702bacda407e8a5d126090d46cfdac41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 230,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b1b50c5664cee9811eea9cf8ba4d81da27f9ee27dc67b4c297d7ed326bc95d5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a14e862-23dc-af17-a7dc-7f31258fc499`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isNormalEpiCategory : IsNormalEpiCategory C where
  normalEpiOfEpi f m := ⟨{
      W := kernel f
      g := kernel.ι _
      w := kernel.condition _
      isColimit := by
        haveI : Limits.HasImages C := hasImages
        haveI : HasEqualizers C := Preadditive.hasEqualizers_of_hasKernels
        haveI : HasZeroObject C := Limits.hasZeroObject_of_hasFiniteBiproducts _
        have aux (s : CokernelCofork (kernel.ι f)) :
            Cofork.π (CokernelCofork.ofπ _ (kernel.condition f)) ≫
              inv (imageMonoFactorisation f).m ≫ inv (Abelian.coimageImageComparison f) ≫
                colimit.desc (parallelPair (kernel.ι f) 0) s = Cofork.π s := ?_
        · refine isColimitAux _ (fun A => inv (imageMonoFactorisation f).m ≫
                  inv (Abelian.coimageImageComparison f) ≫ colimit.desc _ _) aux ?_
          intro A g hg
          rw [CokernelCofork.π_ofπ] at hg
          rw [← cancel_epi f, hg, ← aux, CokernelCofork.π_ofπ]
        · simp only [CokernelCofork.π_ofπ, ← Category.assoc]
          convert! colimit.ι_desc s WalkingParallelPair.one using 2
          rw [IsIso.comp_inv_eq, IsIso.comp_inv_eq, eq_comm, ← imageMonoFactorisation_e']
          exact (imageMonoFactorisation f).fac }⟩

end OfCoimageImageComparisonIsIso

variable [∀ {X Y : C} (f : X ⟶ Y), IsIso (Abelian.coimageImageComparison f)]
  [Limits.HasFiniteProducts C]

attribute [local instance] OfCoimageImageComparisonIsIso.isNormalMonoCategory

attribute [local instance] OfCoimageImageComparisonIsIso.isNormalEpiCategory

/-- A preadditive category with kernels, cokernels, and finite products,
in which the coimage-image comparison morphism is always an isomorphism,
is an abelian category. -/
@[stacks 0109
"The Stacks project uses this characterisation at the definition of an abelian category.",
  instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant824a6beaa541a440797778d7ac22e10d49fb2f67301c241dee96e64ce9d9c2f9.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f9b9fa1702bacda407e8a5d126090d46cfdac41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

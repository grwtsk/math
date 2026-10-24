# isNormalEpiCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4cf1ee9d88e62618593153621d96ac586c8b8f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e91f6a8-4eab-7015-3028-a5484ffaedde",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:920fcdb3-5aca-1233-5b93-6d080b01f0ec",
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
  "slug": "isnormalepicategory--b4313ff6f4ff62dcb5ee8c79",
  "source": {
    "blob": "a4cf1ee9d88e62618593153621d96ac586c8b8f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4313ff6f4ff62dcb5ee8c797fc0f0504e3c314c9eaabad190051e60c5374c3b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:920fcdb3-5aca-1233-5b93-6d080b01f0ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–247.

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
        have aux : ∀ (s : CokernelCofork (kernel.ι f)), Cofork.π (CokernelCofork.ofπ f (by simp)) ≫
          inv (imageMonoFactorisation f).m ≫ inv (Abelian.coimageImageComparison f) ≫
          colimit.desc (parallelPair (kernel.ι f) 0) s = Cofork.π s := ?_
        · refine isColimitAux _ (fun A => inv (imageMonoFactorisation f).m ≫
                  inv (Abelian.coimageImageComparison f) ≫ colimit.desc _ _) aux ?_
          intro A g hg
          rw [CokernelCofork.π_ofπ] at hg
          rw [← cancel_epi f, hg, ← aux, CokernelCofork.π_ofπ]
        · intro A
          simp only [CokernelCofork.π_ofπ, ← Category.assoc]
          convert colimit.ι_desc A WalkingParallelPair.one using 2
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
"The Stacks project uses this characterisation at the definition of an abelian category."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8820b6a14711a3c41a8da9a1cf85367595f182c423d875bc0ec23f52c230b926.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4cf1ee9d88e62618593153621d96ac586c8b8f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# isFiltered_of_isFiltered_costructuredArrow_small

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "60313b9ecf393c56262054565d3e1d600e72ef61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acf52d7b60ce90ce6d581cff299c3402e46000891412544654b7709e53768214.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e9cfb1fd-28d6-4f68-6dc6-81b00183e994",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7524c556-1819-3335-fe0e-385f60a1c3e9",
  "kind": "lemma",
  "lexical_name": "isFiltered_of_isFiltered_costructuredArrow_small",
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
  "slug": "isfiltered-of-isfiltered-costructuredarrow-small--cdce3fc1888b2376f7554091",
  "source": {
    "blob": "60313b9ecf393c56262054565d3e1d600e72ef61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 32,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CostructuredArrow/Variantacf52d7b60ce90ce6d581cff299c3402e46000891412544654b7709e53768214.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdce3fc1888b2376f7554091625c31e84bc81f49d331f0ee7d77a8abe24a4cd1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CostructuredArrow/Variantacf52d7b60ce90ce6d581cff299c3402e46000891412544654b7709e53768214.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7524c556-1819-3335-fe0e-385f60a1c3e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma isFiltered_of_isFiltered_costructuredArrow_small (L : A ⥤ T) (R : B ⥤ T)
    [IsFiltered B] [Final R] [∀ b, IsFiltered (CostructuredArrow L (R.obj b))] : IsFiltered A := by
  refine isFiltered_of_nonempty_limit_colimit_to_colimit_limit fun J {_ _} F => ⟨?_⟩
  let R' := Grothendieck.pre (CostructuredArrow.functor L) R
  haveI : ∀ b, PreservesLimitsOfShape J
      (colim (J := (R ⋙ CostructuredArrow.functor L).obj b) (C := Type u₁)) := fun b => by
    simp only [comp_obj, CostructuredArrow.functor_obj, Cat.of_α]
    exact filtered_colim_preservesFiniteLimits
  refine lim.map ((colimitIsoColimitGrothendieck L F.flip).hom ≫
    (inv (colimit.pre (CostructuredArrow.grothendieckProj L ⋙ F.flip) R'))) ≫
    (colimitLimitIso (R' ⋙ CostructuredArrow.grothendieckProj L ⋙ F.flip).flip).inv ≫
    colim.map ?_ ≫
    colimit.pre _ R' ≫
    (colimitIsoColimitGrothendieck L (limit F)).inv
  exact (limitCompWhiskeringLeftIsoCompLimit F (R' ⋙ CostructuredArrow.grothendieckProj L)).hom

end Small

variable {A : Type u₁} [Category.{v₁} A] {B : Type u₂} [Category.{v₂} B]
variable {T : Type u₃} [Category.{v₃} T]

/-- Given functors `L : A ⥤ T` and `R : B ⥤ T` with a common codomain we can conclude that `A`
is filtered given that `R` is final, `B` is filtered and each costructured arrow category
`CostructuredArrow L (R.obj b)` is filtered. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CostructuredArrow/Variantacf52d7b60ce90ce6d581cff299c3402e46000891412544654b7709e53768214.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CostructuredArrow/Variantacf52d7b60ce90ce6d581cff299c3402e46000891412544654b7709e53768214.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60313b9ecf393c56262054565d3e1d600e72ef61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# cartesianMonoidalCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9020fca79e70eddd78cd63a0ebfdcd1b9ae0673448f2bbc9fd8da9043520bec6",
  "kind": "instance",
  "lexical_name": "cartesianMonoidalCategory",
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
  "slug": "cartesianmonoidalcategory--0e4df138e2058bb6550fec82",
  "source": {
    "blob": "4ddebf93d61bfdd947a1c2b2d206561d5bdce353",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 52,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e4df138e2058bb6550fec82b651adc4420032892d1d545a5fbdae5a284c3a97",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9020fca79e70eddd78cd63a0ebfdcd1b9ae0673448f2bbc9fd8da9043520bec6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance cartesianMonoidalCategory : CartesianMonoidalCategory (Sheaf J A) :=
  .ofChosenFiniteProducts
   ({ cone := asEmptyCone { val := 𝟙_ (Cᵒᵖ ⥤ A), cond := tensorUnit_isSheaf _}
      isLimit.lift f := ⟨toUnit f.pt.val⟩
      isLimit.fac := by rintro _ ⟨⟨⟩⟩
      isLimit.uniq x f h := Sheaf.hom_ext _ _ (toUnit_unique f.val _) })
  fun X Y ↦ {
    cone := BinaryFan.mk
        (P := { val := X.val ⊗ Y.val
                cond := tensorProd_isSheaf J X Y})
        ⟨(fst _ _)⟩ ⟨(snd _ _)⟩
    isLimit.lift f := ⟨lift (BinaryFan.fst f).val (BinaryFan.snd f).val⟩
    isLimit.fac := by rintro s ⟨⟨j⟩⟩ <;> apply Sheaf.hom_ext <;> simp
    isLimit.uniq x f h := by
      apply Sheaf.hom_ext
      apply CartesianMonoidalCategory.hom_ext
      · specialize h ⟨.left⟩
        rw [Sheaf.hom_ext_iff] at h
        simpa using h
      · specialize h ⟨.right⟩
        rw [Sheaf.hom_ext_iff] at h
        simpa using h
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variante293339e072f408a0a9bf12cbc09a79a318a196fbf362834e2cbbc32a61c5720.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ddebf93d61bfdd947a1c2b2d206561d5bdce353` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

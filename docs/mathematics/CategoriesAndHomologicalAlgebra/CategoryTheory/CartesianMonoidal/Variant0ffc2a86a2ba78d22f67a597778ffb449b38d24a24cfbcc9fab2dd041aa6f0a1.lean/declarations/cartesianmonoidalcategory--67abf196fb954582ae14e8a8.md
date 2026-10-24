# cartesianMonoidalCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20b87088b94cb9c51dfa95812896a9f52d4607b07568fa6658f96ab1f585263d",
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
  "slug": "cartesianmonoidalcategory--67abf196fb954582ae14e8a8",
  "source": {
    "blob": "1139452fa906e909bb1f0f307016786d7e533e16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:67abf196fb954582ae14e8a80155281e791c0aec62290646ad502bb002c8b671",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20b87088b94cb9c51dfa95812896a9f52d4607b07568fa6658f96ab1f585263d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–67.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CartesianMonoidal/Variant0ffc2a86a2ba78d22f67a597778ffb449b38d24a24cfbcc9fab2dd041aa6f0a1.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1139452fa906e909bb1f0f307016786d7e533e16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

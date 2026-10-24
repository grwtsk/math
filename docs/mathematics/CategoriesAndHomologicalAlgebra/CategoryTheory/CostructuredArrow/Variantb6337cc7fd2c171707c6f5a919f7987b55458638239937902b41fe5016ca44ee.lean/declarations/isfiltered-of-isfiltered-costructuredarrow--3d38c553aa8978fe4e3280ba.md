# isFiltered_of_isFiltered_costructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edbe990a-0482-fec8-ca96-d2a4328f7e84",
  "kind": "theorem",
  "lexical_name": "isFiltered_of_isFiltered_costructuredArrow",
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
  "slug": "isfiltered-of-isfiltered-costructuredarrow--3d38c553aa8978fe4e3280ba",
  "source": {
    "blob": "f26bb1985e9ef6ef6acca0df8f9d71d80f8b46f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CostructuredArrow/Variantb6337cc7fd2c171707c6f5a919f7987b55458638239937902b41fe5016ca44ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d38c553aa8978fe4e3280ba1f86dcba42e60b1fb4c6c731b6e28ca23d6eff38",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CostructuredArrow/Variantb6337cc7fd2c171707c6f5a919f7987b55458638239937902b41fe5016ca44ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edbe990a-0482-fec8-ca96-d2a4328f7e84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isFiltered_of_isFiltered_costructuredArrow (L : A ⥤ T) (R : B ⥤ T)
    [IsFiltered B] [Final R] [∀ b, IsFiltered (CostructuredArrow L (R.obj b))] : IsFiltered A := by
  let sA : A ≌ AsSmall.{max u₁ u₂ u₃ v₁ v₂ v₃} A := AsSmall.equiv
  let sB : B ≌ AsSmall.{max u₁ u₂ u₃ v₁ v₂ v₃} B := AsSmall.equiv
  let sT : T ≌ AsSmall.{max u₁ u₂ u₃ v₁ v₂ v₃} T := AsSmall.equiv
  let sC : ∀ b, CostructuredArrow (sA.inverse ⋙ L ⋙ sT.functor)
      ((sB.inverse ⋙ R ⋙ sT.functor).obj ⟨b⟩) ≌ CostructuredArrow L (R.obj b) := fun b =>
    (CostructuredArrow.pre sA.inverse (L ⋙ sT.functor) _).asEquivalence.trans
      (CostructuredArrow.post L sT.functor _).asEquivalence.symm
  haveI : ∀ b, IsFiltered (CostructuredArrow _ ((sB.inverse ⋙ R ⋙ sT.functor).obj b)) :=
    fun b => IsFiltered.of_equivalence (sC b.1).symm
  haveI := isFiltered_of_isFiltered_costructuredArrow_small
    (sA.inverse ⋙ L ⋙ sT.functor) (sB.inverse ⋙ R ⋙ sT.functor)
  exact IsFiltered.of_equivalence sA.symm

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CostructuredArrow/Variantb6337cc7fd2c171707c6f5a919f7987b55458638239937902b41fe5016ca44ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CostructuredArrow/Variantb6337cc7fd2c171707c6f5a919f7987b55458638239937902b41fe5016ca44ee.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f26bb1985e9ef6ef6acca0df8f9d71d80f8b46f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

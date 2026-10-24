# isIndObject_of_isFiltered_of_finallySmall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b28f3ec-a46a-b8a3-c766-7c32dfcd7ad1",
  "kind": "theorem",
  "lexical_name": "isIndObject_of_isFiltered_of_finallySmall",
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
  "slug": "isindobject-of-isfiltered-of-finallysmall--c78eee9124c8adc12ff7dc5d",
  "source": {
    "blob": "b7e7f1ce6b73ec4e09cef03453a977be655219b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c78eee9124c8adc12ff7dc5dc5f8b84883e85eeef58681fdd48905fdce7a031c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b28f3ec-a46a-b8a3-c766-7c32dfcd7ad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIndObject_of_isFiltered_of_finallySmall (A : Cᵒᵖ ⥤ Type v)
    [IsFiltered (CostructuredArrow yoneda A)] [FinallySmall.{v} (CostructuredArrow yoneda A)] :
    IsIndObject A := by
  have h₁ : (factoring (fromFinalModel (CostructuredArrow yoneda A)) ⋙
      inclusion (fromFinalModel (CostructuredArrow yoneda A))).Final := Functor.final_of_natIso
    (factoringCompInclusion (fromFinalModel <| CostructuredArrow yoneda A)).symm
  have h₂ : Functor.Final (inclusion (fromFinalModel (CostructuredArrow yoneda A))) :=
    Functor.final_of_comp_full_faithful' (factoring _) (inclusion _)
  let c := (Presheaf.tautologicalCocone A).whisker
    (inclusion (fromFinalModel (CostructuredArrow yoneda A)))
  let hc : IsColimit c := (Functor.Final.isColimitWhiskerEquiv _ _).symm
    (Presheaf.isColimitTautologicalCocone A)
  have hq : Nonempty (FinalModel (CostructuredArrow yoneda A)) := Nonempty.map
    (Functor.Final.lift (fromFinalModel (CostructuredArrow yoneda A))) IsFiltered.nonempty
  exact ⟨_, inclusion (fromFinalModel _) ⋙ CostructuredArrow.proj yoneda A, c.ι, hc⟩

/-- The recognition theorem for ind-objects: `A : Cᵒᵖ ⥤ Type v` is an ind-object if and only if
    `CostructuredArrow yoneda A` is filtered and finally `v`-small.

    Theorem 6.1.5 of [Kashiwara2006] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndObject/Variant2491d34b0f2e531d8a80c9b9aeceb4cb553b0938b96125164685ae7546fe9ca2.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7e7f1ce6b73ec4e09cef03453a977be655219b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

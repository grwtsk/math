# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d9b97e650659f2d370372d07c256a62ffc3fef29aae6f9c6901f20271502b3df",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--8b40e30ce3049e667daae0dd",
  "source": {
    "blob": "0eb2739382f8a290f27a6d8df03a0c29ccb30f87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b40e30ce3049e667daae0ddcf08046b0e8a46dbf1915ad9fa9129aec1846921",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d9b97e650659f2d370372d07c256a62ffc3fef29aae6f9c6901f20271502b3df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (HomotopyCategory.plus C).IsVerdierRightLocalizing
    (HomotopyCategory.subcategoryAcyclic C) where
  fac {K L} φ hK hL := by
    obtain ⟨K : CochainComplex _ _, rfl⟩ := HomotopyCategory.quotient_obj_surjective K
    obtain ⟨L : CochainComplex _ _, rfl⟩ := HomotopyCategory.quotient_obj_surjective L
    simp only [HomotopyCategory.plus_quotient_obj_iff] at hL
    obtain ⟨n, hn⟩ := hL
    obtain ⟨φ, rfl⟩ := (HomotopyCategory.quotient _ _).map_surjective φ
    rw [HomotopyCategory.quotient_obj_mem_subcategoryAcyclic_iff_acyclic] at hK
    refine ⟨(HomotopyCategory.quotient _ _).obj (K.truncGE n),
      (HomotopyCategory.quotient _ _).map (K.πTruncGE n),
      (HomotopyCategory.quotient _ _).map (CochainComplex.truncGEMap φ n ≫ inv (L.πTruncGE n)),
      ?_, ?_, by simp [← Functor.map_comp]⟩
    · simp only [HomotopyCategory.plus_quotient_obj_iff]
      exact ⟨n, inferInstance⟩
    · rw [HomotopyCategory.quotient_obj_mem_subcategoryAcyclic_iff_acyclic]
      exact hK.truncGE _

variable (C)

/-- The functor `DerivedCategory.Plus.Qh : HomotopyCategory.Plus C ⥤ DerivedCategory.Plus C`
is induced by `DerivedCategory.Qh : HomotopyCategory C (.up ℤ) ⥤ DerivedCategory C`. -/
@[simps! -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Plus/Variantb2914bc88f44f07771c4f0b54d98fb86d907d559feecf7a035d1fd0c397c67b1.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eb2739382f8a290f27a6d8df03a0c29ccb30f87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

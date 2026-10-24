# πSummand_comp_ιSummand_comp_PInfty_eq_PInfty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71cf03f9-27d2-d214-4cd0-342731b8ee64",
  "kind": "theorem",
  "lexical_name": "πSummand_comp_ιSummand_comp_PInfty_eq_PInfty",
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
  "slug": "summand-comp-summand-comp-pinfty-eq-pinfty--56106cdc18ad95ef5627f8de",
  "source": {
    "blob": "6ab1fe0382dc81635f80d72d986a98f7bfc0df99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 149,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56106cdc18ad95ef5627f8de3962507e09207689f9eea7392f065628866cbf0a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71cf03f9-27d2-d214-4cd0-342731b8ee64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem πSummand_comp_ιSummand_comp_PInfty_eq_PInfty (n : ℕ) :
    s.πSummand (IndexSet.id (op [n])) ≫ s.ιSummand (IndexSet.id (op [n])) ≫ PInfty.f n =
      PInfty.f n := by
  conv_rhs => rw [← id_comp (PInfty.f n)]
  erw [s.decomposition_id, Preadditive.sum_comp]
  rw [Fintype.sum_eq_single (IndexSet.id (op [n])), assoc]
  rintro A (hA : ¬A.EqId)
  rw [assoc, s.ιSummand_comp_PInfty_eq_zero A hA, comp_zero]
set_option linter.uppercaseLean3 false in
#align simplicial_object.splitting.π_summand_comp_ι_summand_comp_P_infty_eq_P_infty SimplicialObject.Splitting.πSummand_comp_ιSummand_comp_PInfty_eq_PInfty

/-- The differentials `s.d i j : s.N i ⟶ s.N j` on nondegenerate simplices of a split
simplicial object are induced by the differentials on the alternating face map complex. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variant85e2386e99142da26b4c90dfef0b9e5bf8fcecbb1af9fca6e13881520ef7410b.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ab1fe0382dc81635f80d72d986a98f7bfc0df99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# πSummand_comp_cofan_inj_id_comp_PInfty_eq_PInfty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:694f1348-2662-4d58-4b25-5175b454ddbb",
  "kind": "theorem",
  "lexical_name": "πSummand_comp_cofan_inj_id_comp_PInfty_eq_PInfty",
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
  "slug": "summand-comp-cofan-inj-id-comp-pinfty-eq-pinfty--088a88e18c87f68d4cb699bd",
  "source": {
    "blob": "de3c89a5c125a19b8a1c06a17ef9b6a53a4db25e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:088a88e18c87f68d4cb699bdc8ae55d70253320d35b13f8185a752f69a8d7d9e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:694f1348-2662-4d58-4b25-5175b454ddbb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem πSummand_comp_cofan_inj_id_comp_PInfty_eq_PInfty (n : ℕ) :
    s.πSummand (IndexSet.id (op ⦋n⦌)) ≫ (s.cofan _).inj (IndexSet.id (op ⦋n⦌)) ≫ PInfty.f n =
      PInfty.f n := by
  conv_rhs => rw [← id_comp (PInfty.f n)]
  dsimp only [AlternatingFaceMapComplex.obj_X]
  rw [s.decomposition_id, Preadditive.sum_comp]
  rw [Fintype.sum_eq_single (IndexSet.id (op ⦋n⦌)), assoc]
  rintro A (hA : ¬A.EqId)
  rw [assoc, s.cofan_inj_comp_PInfty_eq_zero A hA, comp_zero]

/-- The differentials `s.d i j : s.N i ⟶ s.N j` on nondegenerate simplices of a split
simplicial object are induced by the differentials on the alternating face map complex. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SplitSimplicialObject/Variantd797ee9c5d827b8d6901d30e892ebad0e72afd89a2f653faab1b2999687b2325.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de3c89a5c125a19b8a1c06a17ef9b6a53a4db25e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

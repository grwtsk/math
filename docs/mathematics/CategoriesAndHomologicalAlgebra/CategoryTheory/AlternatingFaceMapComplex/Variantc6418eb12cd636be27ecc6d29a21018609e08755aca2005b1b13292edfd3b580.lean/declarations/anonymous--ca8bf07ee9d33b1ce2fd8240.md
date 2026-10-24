# ε

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68960be8c51966b8c4a587d10a3651d2417b5927661a576c761c589ea473da33",
  "kind": "def",
  "lexical_name": "ε",
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
  "slug": "anonymous--ca8bf07ee9d33b1ce2fd8240",
  "source": {
    "blob": "50e35f3fab4887ea2d5c698d8131c1fa9d19f805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 227,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantc6418eb12cd636be27ecc6d29a21018609e08755aca2005b1b13292edfd3b580.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca8bf07ee9d33b1ce2fd8240b7e27f22608f8a6adc52c090d5a9db7e4ba79a9a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantc6418eb12cd636be27ecc6d29a21018609e08755aca2005b1b13292edfd3b580.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68960be8c51966b8c4a587d10a3651d2417b5927661a576c761c589ea473da33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def ε [Limits.HasZeroObject C] :
    SimplicialObject.Augmented.drop ⋙ AlgebraicTopology.alternatingFaceMapComplex C ⟶
      SimplicialObject.Augmented.point ⋙ ChainComplex.single₀ C where
  app X := by
    refine (ChainComplex.toSingle₀Equiv _ _).symm ?_
    refine ⟨X.hom.app (op ⦋0⦌), ?_⟩
    dsimp
    rw [alternatingFaceMapComplex_obj_d, objD, Fin.sum_univ_two, Fin.val_zero,
      pow_zero, one_smul, Fin.val_one, pow_one, neg_smul, one_smul, add_comp,
      neg_comp, SimplicialObject.δ_naturality, SimplicialObject.δ_naturality]
    apply add_neg_cancel
  naturality X Y f := by
    apply HomologicalComplex.to_single_hom_ext
    #adaptation_note /-- This proof broke at nightly-2026-04-28. It used to be:
    ```
    dsimp
    simp [ChainComplex.toSingle₀Equiv, SimplicialObject.Augmented.w₀]
    ```
    The proof below is an emergency repair, and I've asked the authors of this file to review.
    -/
    change f.left.app _ ≫ _ = _ ≫ ((ChainComplex.single₀ _).map f.right).f 0
    rw [ChainComplex.toSingle₀Equiv_symm_apply_f_zero,
      ChainComplex.toSingle₀Equiv_symm_apply_f_zero,
      ChainComplex.single₀_map_f_zero]
    exact SimplicialObject.Augmented.w₀ f

@[simp]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantc6418eb12cd636be27ecc6d29a21018609e08755aca2005b1b13292edfd3b580.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantc6418eb12cd636be27ecc6d29a21018609e08755aca2005b1b13292edfd3b580.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50e35f3fab4887ea2d5c698d8131c1fa9d19f805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

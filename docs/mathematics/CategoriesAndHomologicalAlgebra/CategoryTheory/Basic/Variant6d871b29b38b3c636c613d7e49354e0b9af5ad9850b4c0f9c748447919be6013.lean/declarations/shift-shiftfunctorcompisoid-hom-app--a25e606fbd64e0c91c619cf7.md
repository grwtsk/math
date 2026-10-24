# shift_shiftFunctorCompIsoId_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b15a27b8-9f0b-c7e5-c62f-91c0fad1d500",
  "kind": "theorem",
  "lexical_name": "shift_shiftFunctorCompIsoId_hom_app",
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
  "slug": "shift-shiftfunctorcompisoid-hom-app--a25e606fbd64e0c91c619cf7",
  "source": {
    "blob": "bb786d4a55e058897ddd79f445e6777af403446f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 515,
    "line": 505,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a25e606fbd64e0c91c619cf7d46e342493ba715bf92a0701b423c64dcbea7d55",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b15a27b8-9f0b-c7e5-c62f-91c0fad1d500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–515.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shift_shiftFunctorCompIsoId_hom_app (n m : A) (h : n + m = 0) (X : C) :
  ((shiftFunctorCompIsoId C n m h).hom.app X)⟦n⟧' =
    (shiftFunctorCompIsoId C m n
      (by rw [← neg_eq_of_add_eq_zero_left h, add_right_neg])).hom.app (X⟦n⟧) := by
  dsimp [shiftFunctorCompIsoId]
  simpa only [Functor.map_comp, ← shiftFunctorAdd'_zero_add_inv_app n X,
    ← shiftFunctorAdd'_add_zero_inv_app n X]
    using shiftFunctorAdd'_assoc_inv_app n m n 0 0 n h
      (by rw [← neg_eq_of_add_eq_zero_left h, add_right_neg]) (by rw [h, zero_add]) X
#align category_theory.shift_shift_functor_comp_iso_id_hom_app CategoryTheory.shift_shiftFunctorCompIsoId_hom_app

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6d871b29b38b3c636c613d7e49354e0b9af5ad9850b4c0f9c748447919be6013.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb786d4a55e058897ddd79f445e6777af403446f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

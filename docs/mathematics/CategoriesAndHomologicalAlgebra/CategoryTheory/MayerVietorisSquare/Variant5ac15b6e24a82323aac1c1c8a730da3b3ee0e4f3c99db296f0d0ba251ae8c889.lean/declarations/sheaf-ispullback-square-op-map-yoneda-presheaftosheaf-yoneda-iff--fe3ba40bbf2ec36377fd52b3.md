# Sheaf.isPullback_square_op_map_yoneda_presheafToSheaf_yoneda_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4013c973-d3d8-4580-773d-69b888ab8e7f",
  "kind": "lemma",
  "lexical_name": "Sheaf.isPullback_square_op_map_yoneda_presheafToSheaf_yoneda_iff",
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
  "slug": "sheaf-ispullback-square-op-map-yoneda-presheaftosheaf-yoneda-iff--fe3ba40bbf2ec36377fd52b3",
  "source": {
    "blob": "943b7af0295d7d090cae223dc2c9935af7c8d1f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe3ba40bbf2ec36377fd52b3154e6ee730da67a2563f6c9cee13cfaa7ffd659e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4013c973-d3d8-4580-773d-69b888ab8e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Sheaf.isPullback_square_op_map_yoneda_presheafToSheaf_yoneda_iff
    [HasWeakSheafify J (Type v)]
    (F : Sheaf J (Type v)) (sq : Square C) :
    (sq.op.map ((yoneda ⋙ presheafToSheaf J _).op ⋙ yoneda.obj F)).IsPullback ↔
      (sq.op.map F.val).IsPullback := by
  refine Square.IsPullback.iff_of_equiv _ _
    (((sheafificationAdjunction J (Type v)).homEquiv _ _).trans yonedaEquiv)
    (((sheafificationAdjunction J (Type v)).homEquiv _ _).trans yonedaEquiv)
    (((sheafificationAdjunction J (Type v)).homEquiv _ _).trans yonedaEquiv)
    (((sheafificationAdjunction J (Type v)).homEquiv _ _).trans yonedaEquiv) ?_ ?_ ?_ ?_
  all_goals
    ext x
    dsimp
    rw [yonedaEquiv_naturality]
    erw [Adjunction.homEquiv_naturality_left]
    rfl

namespace GrothendieckTopology

variable (J)

/-- A Mayer-Vietoris square in a category `C` equipped with a Grothendieck
topology consists of a commutative square `f₁₂ ≫ f₂₄ = f₁₃ ≫ f₃₄` in `C`
such that `f₁₃` is a monomorphism and that the square becomes a
pushout square in the category of sheaves of sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant5ac15b6e24a82323aac1c1c8a730da3b3ee0e4f3c99db296f0d0ba251ae8c889.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `943b7af0295d7d090cae223dc2c9935af7c8d1f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Sheaf.isPullback_square_op_map_yoneda_presheafToSheaf_yoneda_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3302e424376100639903431669120916ca3655a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4feca5f3115207eea686e2ca25686d0e58d9eb9cfef2bf4461b80127c2de56e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2c4277c-6668-2741-f98d-d35cd1a838bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a7d26a39-74e4-ed8f-d570-cccec197dd04",
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
  "slug": "sheaf-ispullback-square-op-map-yoneda-presheaftosheaf-yoneda-iff--1248fa0a6107e282ecb1adfe",
  "source": {
    "blob": "3302e424376100639903431669120916ca3655a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 62,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant4feca5f3115207eea686e2ca25686d0e58d9eb9cfef2bf4461b80127c2de56e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1248fa0a6107e282ecb1adfe3bfdefd2a4177743df4095e27607c303a11e5797",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant4feca5f3115207eea686e2ca25686d0e58d9eb9cfef2bf4461b80127c2de56e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7d26a39-74e4-ed8f-d570-cccec197dd04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–86.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant4feca5f3115207eea686e2ca25686d0e58d9eb9cfef2bf4461b80127c2de56e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant4feca5f3115207eea686e2ca25686d0e58d9eb9cfef2bf4461b80127c2de56e6.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3302e424376100639903431669120916ca3655a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

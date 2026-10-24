# hasCardinalLT_arrow_iff_of_isThin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efbbea79-881d-766c-7e11-fcecd67b8f61",
  "kind": "lemma",
  "lexical_name": "hasCardinalLT_arrow_iff_of_isThin",
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
  "slug": "hascardinallt-arrow-iff-of-isthin--92ee20785ad8994ec3530f30",
  "source": {
    "blob": "2232cd235c0f90eeace6483fc9fe64a3e72663da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 123,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variantcdba38324f3b14d55630d02c3fe3c3df144008dd6257681bf45a91b36bdcc5c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92ee20785ad8994ec3530f305437666c0e0dd249f76e34f0308237c1e1d5293c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variantcdba38324f3b14d55630d02c3fe3c3df144008dd6257681bf45a91b36bdcc5c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efbbea79-881d-766c-7e11-fcecd67b8f61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasCardinalLT_arrow_iff_of_isThin (C : Type u) [Category.{v} C]
    [Quiver.IsThin C] (κ : Cardinal.{w}) (hκ : Cardinal.aleph0 ≤ κ) :
    HasCardinalLT (Arrow C) κ ↔ HasCardinalLT C κ :=
  ⟨hasCardinalLT_of_hasCardinalLT_arrow, fun h ↦
    (hasCardinalLT_prod hκ h h).of_injective (fun f ↦ (f.left, f.right))
      (fun f g h ↦
        Arrow.ext (congr_arg _root_.Prod.fst h) (congr_arg _root_.Prod.snd h)
          (by subsingleton))⟩

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variantcdba38324f3b14d55630d02c3fe3c3df144008dd6257681bf45a91b36bdcc5c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalArrow/Variantcdba38324f3b14d55630d02c3fe3c3df144008dd6257681bf45a91b36bdcc5c5.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2232cd235c0f90eeace6483fc9fe64a3e72663da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

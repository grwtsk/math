# fiberPullbackEquiv_symm_fst_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8948f577-85ed-3422-ecd2-7a33b5dfd603",
  "kind": "lemma",
  "lexical_name": "fiberPullbackEquiv_symm_fst_apply",
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
  "slug": "fiberpullbackequiv-symm-fst-apply--8559a5dc39f52cc8d71b0e4e",
  "source": {
    "blob": "3e4801c7f4317cec460f1c725166a9ad8873714b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 272,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant47e33aa5f7acccb9c0504f91b3cfb2d60ce142d5d691dd60ebe9aabd118b8eaf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8559a5dc39f52cc8d71b0e4ed3c42d639de8bdb040e96346688437949e117ffc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant47e33aa5f7acccb9c0504f91b3cfb2d60ce142d5d691dd60ebe9aabd118b8eaf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8948f577-85ed-3422-ecd2-7a33b5dfd603`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fiberPullbackEquiv_symm_fst_apply {X A B : C} {f : A ⟶ X} {g : B ⟶ X}
    (a : F.obj A) (b : F.obj B) (h : F.map f a = F.map g b) :
    F.map (pullback.fst f g) ((fiberPullbackEquiv F f g).symm ⟨(a, b), h⟩) = a := by
  simp only [fiberPullbackEquiv, Functor.comp_map, Iso.toEquiv_symm_fun]
  change ((Types.pullbackIsoPullback _ _).inv ≫ _ ≫
    (F ⋙ FintypeCat.incl).map (pullback.fst f g)) _ = _
  erw [PreservesPullback.iso_inv_fst, Types.pullbackIsoPullback_inv_fst]
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant47e33aa5f7acccb9c0504f91b3cfb2d60ce142d5d691dd60ebe9aabd118b8eaf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant47e33aa5f7acccb9c0504f91b3cfb2d60ce142d5d691dd60ebe9aabd118b8eaf.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e4801c7f4317cec460f1c725166a9ad8873714b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

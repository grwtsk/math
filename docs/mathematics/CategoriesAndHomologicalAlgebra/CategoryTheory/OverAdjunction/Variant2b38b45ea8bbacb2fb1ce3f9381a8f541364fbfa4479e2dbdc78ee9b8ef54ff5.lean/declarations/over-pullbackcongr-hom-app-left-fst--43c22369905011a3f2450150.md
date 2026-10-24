# Over.pullbackCongr_hom_app_left_fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c12df90-457a-05b7-eca0-f2f46f808d29",
  "kind": "lemma",
  "lexical_name": "Over.pullbackCongr_hom_app_left_fst",
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
  "slug": "over-pullbackcongr-hom-app-left-fst--43c22369905011a3f2450150",
  "source": {
    "blob": "e05098e9b2f705fa2dd8cfca33be3b9ebea341da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43c22369905011a3f24501506e3753c0c9c24c579555f40103fff0b45bb4082b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c12df90-457a-05b7-eca0-f2f46f808d29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Over.pullbackCongr_hom_app_left_fst {X Y : T} {f g : X ⟶ Y} (h : f = g) (A : P.Over Q Y) :
    ((Over.pullbackCongr h).hom.app A).left ≫ pullback.fst A.hom g =
      pullback.fst A.hom f := by
  subst h
  simp [pullbackCongr]

end Pullback

section Adjunction

variable [P.IsStableUnderComposition] [P.IsStableUnderBaseChange]
  [Q.IsStableUnderBaseChange] [HasPullbacks T]

/-- `P.Over.map` is left adjoint to `P.Over.pullback` if `f` satisfies `P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant2b38b45ea8bbacb2fb1ce3f9381a8f541364fbfa4479e2dbdc78ee9b8ef54ff5.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e05098e9b2f705fa2dd8cfca33be3b9ebea341da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

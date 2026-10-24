# Trident.IsLimit.homIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:254865c52a9cdf86e919233ee208ecf6c22be3f052d9850383ce055c283004dd",
  "kind": "def",
  "lexical_name": "Trident.IsLimit.homIso",
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
  "slug": "trident-islimit-homiso--41389d6ed874648b2ca0c8dc",
  "source": {
    "blob": "525685581ff294db8af5e88569a897c5b49bc83e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 380,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant6d758d71b8e40d48e8962b73f68cc660966253bb80285665ccd67b3630341547.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41389d6ed874648b2ca0c8dc98ac3558435ef0632f78063c6979cbe94c6fd20c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant6d758d71b8e40d48e8962b73f68cc660966253bb80285665ccd67b3630341547.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:254865c52a9cdf86e919233ee208ecf6c22be3f052d9850383ce055c283004dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Trident.IsLimit.homIso [Nonempty J] {t : Trident f} (ht : IsLimit t) (Z : C) :
    (Z ⟶ t.pt) ≃ { h : Z ⟶ X // ∀ j₁ j₂, h ≫ f j₁ = h ≫ f j₂ } where
  toFun k := ⟨k ≫ t.ι, by simp⟩
  invFun h := (Trident.IsLimit.lift' ht _ h.prop).1
  left_inv _ := Trident.IsLimit.hom_ext ht (Trident.IsLimit.lift' _ _ _).prop
  right_inv _ := Subtype.ext (Trident.IsLimit.lift' ht _ _).prop

/-- The bijection of `Trident.IsLimit.homIso` is natural in `Z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant6d758d71b8e40d48e8962b73f68cc660966253bb80285665ccd67b3630341547.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variant6d758d71b8e40d48e8962b73f68cc660966253bb80285665ccd67b3630341547.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `525685581ff294db8af5e88569a897c5b49bc83e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

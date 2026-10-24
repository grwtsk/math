# LeftExtension.isUniversalOfPrecomp₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c7b04c337602b235c89a66d3e3357bad8729726b36a08bbc4e19e086316d8f8e",
  "kind": "def",
  "lexical_name": "LeftExtension.isUniversalOfPrecomp₂",
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
  "slug": "leftextension-isuniversalofprecomp--17354d49778db8aca7d834f8",
  "source": {
    "blob": "679175ed8050b5804555b167c1a5934ac953b31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 730,
    "line": 702,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17354d49778db8aca7d834f8961630aaf28a12bbbf5f2af69b05de1945110f10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c7b04c337602b235c89a66d3e3357bad8729726b36a08bbc4e19e086316d8f8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 702–730.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LeftExtension.isUniversalOfPrecomp₂
    (hα : (LeftExtension.mk F₁ α).IsUniversal)
    {b : L'.LeftExtension F₁}
    (hb : ((LeftExtension.precomp₂ L' α).obj b).IsUniversal) :
    b.IsUniversal := by
  letI (y : L'.LeftExtension F₁) : Unique (b ⟶ y) := by
    let u : (LeftExtension.precomp₂ L' α).obj b ⟶
      (LeftExtension.precomp₂ L' α).obj y := hb.to _
    refine
      ⟨⟨StructuredArrow.homMk u.right <| by
          apply hα.hom_ext
          ext t
          have := congr_app u.w t
          dsimp at this
          simp only [precomp₂_obj_hom_app, assoc] at this
          simp [this]⟩, fun a => ?_⟩
    ext1
    apply hb.hom_ext
    ext t
    have := congr_app u.w t
    dsimp at this
    simp only [precomp₂_obj_hom_app, assoc] at this
    simp [this, ← a.w]
  apply IsInitial.ofUnique

/-- If the left extension defined by `α : F₀ ⟶ L ⋙ F₁` is universal,
then for every `L' : D ⥤ D'`, `F₁ : D ⥤ H`, an extension
`b : L'.LeftExtension F₁` is universal if and only if
`(LeftExtension.precomp₂ L' α).obj b` is universal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c4220bf5a505301cabf6ef4106ca77bf566e6b182ac19782d436172c41f64e8.lean#L702).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679175ed8050b5804555b167c1a5934ac953b31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

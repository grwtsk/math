# isColimitOfIsColimitπ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:600494ce91d02bfa6c51d5ea042d40a45937ce37d5f66b66558a7739de212512",
  "kind": "def",
  "lexical_name": "isColimitOfIsColimitπ",
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
  "slug": "iscolimitofiscolimit--8cfd56ba9c4556c8d921c0a1",
  "source": {
    "blob": "1b79d901138eb20850b7883eebdd628b99a45e21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 164,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cfd56ba9c4556c8d921c0a1136c807260730937aab1ac0d6b9dcc5be7b4de56",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:600494ce91d02bfa6c51d5ea042d40a45937ce37d5f66b66558a7739de212512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isColimitOfIsColimitπ (c : Cocone F)
    (h₁ : IsColimit (π₁.mapCocone c)) (h₂ : IsColimit (π₂.mapCocone c))
    (h₃ : IsColimit (π₃.mapCocone c)) : IsColimit c where
  desc s :=
    { τ₁ := h₁.desc (π₁.mapCocone s)
      τ₂ := h₂.desc (π₂.mapCocone s)
      τ₃ := h₃.desc (π₃.mapCocone s)
      comm₁₂ := h₁.hom_ext (fun j => by
        have eq₁ := h₁.fac (π₁.mapCocone s)
        have eq₂ := h₂.fac (π₂.mapCocone s)
        have eq₁₂ := fun j => (c.ι.app j).comm₁₂
        have eq₁₂' := fun j => (s.ι.app j).comm₁₂
        dsimp at eq₁ eq₂ eq₁₂ eq₁₂' ⊢
        rw [reassoc_of% (eq₁ j), eq₁₂', reassoc_of% eq₁₂, eq₂])
      comm₂₃ := h₂.hom_ext (fun j => by
        have eq₂ := h₂.fac (π₂.mapCocone s)
        have eq₃ := h₃.fac (π₃.mapCocone s)
        have eq₂₃ := fun j => (c.ι.app j).comm₂₃
        have eq₂₃' := fun j => (s.ι.app j).comm₂₃
        dsimp at eq₂ eq₃ eq₂₃ eq₂₃' ⊢
        rw [reassoc_of% (eq₂ j), eq₂₃', reassoc_of% eq₂₃, eq₃]) }
  fac s j := by
    ext
    · apply IsColimit.fac h₁
    · apply IsColimit.fac h₂
    · apply IsColimit.fac h₃
  uniq s m hm := by
    ext
    · exact h₁.uniq (π₁.mapCocone s) _ (fun j => π₁.congr_map (hm j))
    · exact h₂.uniq (π₂.mapCocone s) _ (fun j => π₂.congr_map (hm j))
    · exact h₃.uniq (π₃.mapCocone s) _ (fun j => π₃.congr_map (hm j))

section

variable (F)
variable [HasColimit (F ⋙ π₁)] [HasColimit (F ⋙ π₂)] [HasColimit (F ⋙ π₃)]

/-- Construction of a colimit cocone for a functor `J ⥤ ShortComplex C` using the colimits
of the three components `J ⥤ C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1b77697d3ec9c92f5547a21d37de0def000da764b7389c9f67d777bc3f653202.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b79d901138eb20850b7883eebdd628b99a45e21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

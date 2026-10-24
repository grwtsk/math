# combPairIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d6d1ed0dd05b4e75a66f468d88957063147bef758f65572c32b492c72789366",
  "kind": "def",
  "lexical_name": "combPairIsLimit",
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
  "slug": "combpairislimit--07b338d376b21c153e07c237",
  "source": {
    "blob": "644d68abced4024effca5279937e7401496aec2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 58,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantd386c450c179f8c353dfec4ce16540172a7030f5482f8d3cdc6ff80f4fe92c3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07b338d376b21c153e07c237290f0cb24b5eedd39d5dc00d1c2836741da13f1a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantd386c450c179f8c353dfec4ce16540172a7030f5482f8d3cdc6ff80f4fe92c3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d6d1ed0dd05b4e75a66f468d88957063147bef758f65572c32b492c72789366`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def combPairIsLimit : IsLimit (Fan.mk bc.pt (combPairHoms c₁ c₂ bc)) :=
  Fan.IsLimit.mk _
    (fun s ↦ Fan.IsLimit.lift h <| fun i ↦ by
      cases i
      · exact Fan.IsLimit.lift h₁ (fun a ↦ s.proj (.inl a))
      · exact Fan.IsLimit.lift h₂ (fun a ↦ s.proj (.inr a)))
    (fun s w ↦ by
      cases w <;>
      · simp only [fan_mk_proj, combPairHoms]
        erw [← Category.assoc, h.fac]
        simp only [pair_obj_left, mk_π_app, IsLimit.fac])
    (fun s m hm ↦ Fan.IsLimit.hom_ext h _ _ <| fun w ↦ by
      cases w
      · refine Fan.IsLimit.hom_ext h₁ _ _ (fun a ↦ by aesop)
      · refine Fan.IsLimit.hom_ext h₂ _ _ (fun a ↦ by aesop))

end Fan

namespace Cofan

variable {ι₁ ι₂ : Type*} {f₁ : ι₁ → C} {f₂ : ι₂ → C}
    (c₁ : Cofan f₁) (c₂ : Cofan f₂) (bc : BinaryCofan c₁.pt c₂.pt)
    (h₁ : IsColimit c₁) (h₂ : IsColimit c₂) (h : IsColimit bc)

/-- For cofans on maps `f₁ : ι₁ → C`, `f₂ : ι₂ → C` and a binary cofan on their
cocone points, construct one family of morphisms indexed by `ι₁ ⊕ ι₂` -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantd386c450c179f8c353dfec4ce16540172a7030f5482f8d3cdc6ff80f4fe92c3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantd386c450c179f8c353dfec4ce16540172a7030f5482f8d3cdc6ff80f4fe92c3f.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `644d68abced4024effca5279937e7401496aec2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

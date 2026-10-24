# combPairIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a0cfddda3e458a7db84afa5b4bceb7cc11c81fd9ac166d1807831e6d68c04b7e",
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
  "slug": "combpairislimit--4ee79a301d64c7d3153fa35d",
  "source": {
    "blob": "35f714cf6690cc223b0543e5da33e5fcec5574f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 53,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ee79a301d64c7d3153fa35d5ad3ea4c0af6a0ac4c3127d899c8d6673567e9dc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a0cfddda3e458a7db84afa5b4bceb7cc11c81fd9ac166d1807831e6d68c04b7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def combPairIsLimit : IsLimit (Fan.mk bc.pt (combPairHoms c₁ c₂ bc)) :=
  mkFanLimit _
    (fun s ↦ Fan.IsLimit.desc h <| fun i ↦ by
      cases i
      · exact Fan.IsLimit.desc h₁ (fun a ↦ s.proj (.inl a))
      · exact Fan.IsLimit.desc h₂ (fun a ↦ s.proj (.inr a)))
    (fun s w ↦ by
      cases w <;>
      · simp only [fan_mk_proj, combPairHoms]
        erw [← Category.assoc, h.fac]
        simp only [pair_obj_left, mk_pt, mk_π_app, IsLimit.fac])
    (fun s m hm ↦ Fan.IsLimit.hom_ext h _ _ <| fun w ↦ by
      cases w
      · refine Fan.IsLimit.hom_ext h₁ _ _ (fun a ↦ by aesop)
      · refine Fan.IsLimit.hom_ext h₂ _ _ (fun a ↦ by aesop))

end Fan

namespace Cofan

variable {ι₁ ι₂ : Type*} {X : C} {f₁ : ι₁ → C} {f₂ : ι₂ → C}
    (c₁ : Cofan f₁) (c₂ : Cofan f₂) (bc : BinaryCofan c₁.pt c₂.pt)
    (h₁ : IsColimit c₁) (h₂ : IsColimit c₂) (h : IsColimit bc)

/-- For cofans on maps `f₁ : ι₁ → C`, `f₂ : ι₂ → C` and a binary cofan on their
cocone points, construct one family of morphisms indexed by `ι₁ ⊕ ι₂` -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Variantb223251e3bd4ba0cf394a5694328c21f10ca454dc534479753cf6197fe3e3d7b.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35f714cf6690cc223b0543e5da33e5fcec5574f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# combPairIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b7a68303f6448284276f44ee4328c4f1c46ca9f197f0bf8276fb1977081b0f5",
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
  "slug": "combpairislimit--d63044591c884388093fba2b",
  "source": {
    "blob": "dc56fde04af48ea860af9424cc094aca5d7e50fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Varianta13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d63044591c884388093fba2be2cfb933f124009b707b09451dd3bf05710f07a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Varianta13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b7a68303f6448284276f44ee4328c4f1c46ca9f197f0bf8276fb1977081b0f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–76.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Varianta13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CombinedProducts/Varianta13d93b7ebac6bbed3e8ca66d97c1134fec15539e82a85f846eaf4c863841c02.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc56fde04af48ea860af9424cc094aca5d7e50fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

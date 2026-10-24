# monoCoprodType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1ab00897cf9c5f710f62b1e33fe0859b7735d0334e448f5a71e4e78347ddaa5",
  "kind": "instance",
  "lexical_name": "monoCoprodType",
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
  "slug": "monocoprodtype--cf32d2d99405e6ffc635c44b",
  "source": {
    "blob": "f83bbfaf455c7dfb25036a172062f5fb0c69853a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Varianteac02fbdbff09cfb8f75d3917d32a1c0b678040efb73cf4b376e5fc7b662eff8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf32d2d99405e6ffc635c44bca47565e60ef5957ec228bd741facba0e1c2898a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Varianteac02fbdbff09cfb8f75d3917d32a1c0b678040efb73cf4b376e5fc7b662eff8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1ab00897cf9c5f710f62b1e33fe0859b7735d0334e448f5a71e4e78347ddaa5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance monoCoprodType : MonoCoprod (Type u) :=
  MonoCoprod.mk' fun A B => by
    refine ⟨BinaryCofan.mk (↾(Sum.inl : A → A ⊕ B))
      (↾Sum.inr), ?_, ?_⟩
    · exact BinaryCofan.IsColimit.mk _
        (fun f₁ f₂ => ↾fun x => by
          rcases x with x | x
          exacts [f₁ x, f₂ x])
        (fun f₁ f₂ => by rfl)
        (fun f₁ f₂ => by rfl)
        (fun f₁ f₂ m h₁ h₂ => by
          ext x
          rcases x with x | x
          · exact ConcreteCategory.congr_hom h₁ x
          · exact ConcreteCategory.congr_hom h₂ x)
    · rw [mono_iff_injective]
      intro a₁ a₂ h
      simpa using h

section

variable {I₁ I₂ : Type*} {X : I₁ ⊕ I₂ → C} (c : Cofan X)
  (c₁ : Cofan (X ∘ Sum.inl)) (c₂ : Cofan (X ∘ Sum.inr))
  (hc : IsColimit c) (hc₁ : IsColimit c₁) (hc₂ : IsColimit c₂)
include hc hc₁ hc₂

/-- Given a family of objects `X : I₁ ⊕ I₂ → C`, a cofan of `X`, and two colimit cofans
of `X ∘ Sum.inl` and `X ∘ Sum.inr`, this is a cofan for `c₁.pt` and `c₂.pt` whose
point is `c.pt`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Varianteac02fbdbff09cfb8f75d3917d32a1c0b678040efb73cf4b376e5fc7b662eff8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoCoprod/Varianteac02fbdbff09cfb8f75d3917d32a1c0b678040efb73cf4b376e5fc7b662eff8.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f83bbfaf455c7dfb25036a172062f5fb0c69853a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

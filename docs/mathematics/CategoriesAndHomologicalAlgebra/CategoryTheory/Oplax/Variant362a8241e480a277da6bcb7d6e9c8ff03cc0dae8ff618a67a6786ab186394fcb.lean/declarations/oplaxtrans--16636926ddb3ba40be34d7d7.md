# OplaxTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f01e223e98dc0d138e9f109d4157009291d90723bd0ec0dbae7bfeff1e89f97",
  "kind": "structure",
  "lexical_name": "OplaxTrans",
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
  "slug": "oplaxtrans--16636926ddb3ba40be34d7d7",
  "source": {
    "blob": "0c715f76d17cae803419d2771951514bff37c15a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16636926ddb3ba40be34d7d7f72f71d07dd8684028006e83962aa9c0d9437d88",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f01e223e98dc0d138e9f109d4157009291d90723bd0ec0dbae7bfeff1e89f97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OplaxTrans (F G : OplaxFunctor B C) where
  /-- The component 1-morphisms of an oplax transformation. -/
  app (a : B) : F.obj a ⟶ G.obj a
  /-- The 2-morphisms underlying the oplax naturality constraint. -/
  naturality {a b : B} (f : a ⟶ b) : F.map f ≫ app b ⟶ app a ≫ G.map f
  /-- Naturality of the oplax naturality constraint. -/
  naturality_naturality {a b : B} {f g : a ⟶ b} (η : f ⟶ g) :
      F.map₂ η ▷ app b ≫ naturality g = naturality f ≫ app a ◁ G.map₂ η := by
    aesop_cat
  /-- Oplax unity. -/
  naturality_id (a : B) :
      naturality (𝟙 a) ≫ app a ◁ G.mapId a =
        F.mapId a ▷ app a ≫ (λ_ (app a)).hom ≫ (ρ_ (app a)).inv := by
    aesop_cat
  /-- Oplax functoriality. -/
  naturality_comp {a b c : B} (f : a ⟶ b) (g : b ⟶ c) :
      naturality (f ≫ g) ≫ app a ◁ G.mapComp f g =
        F.mapComp f g ▷ app c ≫ (α_ _ _ _).hom ≫ F.map f ◁ naturality g ≫
          (α_ _ _ _).inv ≫ naturality f ▷ G.map g ≫ (α_ _ _ _).hom := by
    aesop_cat

attribute [reassoc (attr := simp)] OplaxTrans.naturality_naturality OplaxTrans.naturality_id
  OplaxTrans.naturality_comp

@[deprecated (since := "2025-04-23")] alias _root_.CategoryTheory.OplaxNatTrans := OplaxTrans

namespace OplaxTrans

variable {F : OplaxFunctor B C} {G H : OplaxFunctor B C} (η : OplaxTrans F G) (θ : OplaxTrans G H)

section

variable {a b c : B} {a' : C}

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c715f76d17cae803419d2771951514bff37c15a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

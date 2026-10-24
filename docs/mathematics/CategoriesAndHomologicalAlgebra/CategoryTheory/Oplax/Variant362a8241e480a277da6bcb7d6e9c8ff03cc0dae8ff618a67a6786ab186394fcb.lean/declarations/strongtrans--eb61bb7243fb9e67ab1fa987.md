# StrongTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:110f29877b8233a6ac5618dc4ceb58987cdb0f47ee8af7ac475668b29fb88e4d",
  "kind": "structure",
  "lexical_name": "StrongTrans",
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
  "slug": "strongtrans--eb61bb7243fb9e67ab1fa987",
  "source": {
    "blob": "0c715f76d17cae803419d2771951514bff37c15a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb61bb7243fb9e67ab1fa9879e55b3b5c6716efa82f3f089488b413525b92dff",
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

Occurrence: `declaration:110f29877b8233a6ac5618dc4ceb58987cdb0f47ee8af7ac475668b29fb88e4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StrongTrans (F G : OplaxFunctor B C) where
  app (a : B) : F.obj a ⟶ G.obj a
  naturality {a b : B} (f : a ⟶ b) : F.map f ≫ app b ≅ app a ≫ G.map f
  naturality_naturality {a b : B} {f g : a ⟶ b} (η : f ⟶ g) :
      F.map₂ η ▷ app b ≫ (naturality g).hom = (naturality f).hom ≫ app a ◁ G.map₂ η := by
    aesop_cat
  naturality_id (a : B) :
      (naturality (𝟙 a)).hom ≫ app a ◁ G.mapId a =
        F.mapId a ▷ app a ≫ (λ_ (app a)).hom ≫ (ρ_ (app a)).inv := by
    aesop_cat
  naturality_comp {a b c : B} (f : a ⟶ b) (g : b ⟶ c) :
      (naturality (f ≫ g)).hom ≫ app a ◁ G.mapComp f g =
        F.mapComp f g ▷ app c ≫ (α_ _ _ _).hom ≫ F.map f ◁ (naturality g).hom ≫
        (α_ _ _ _).inv ≫ (naturality f).hom ▷ G.map g ≫ (α_ _ _ _).hom := by
    aesop_cat

@[deprecated (since := "2025-04-23")] alias StrongOplaxNatTrans := StrongTrans

attribute [nolint docBlame] CategoryTheory.Oplax.StrongTrans.app
  CategoryTheory.Oplax.StrongTrans.naturality

attribute [reassoc (attr := simp)] StrongTrans.naturality_naturality
  StrongTrans.naturality_id StrongTrans.naturality_comp

/-- A structure on an oplax transformation that promotes it to a strong transformation.

See `Pseudofunctor.StrongTrans.mkOfOplax`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variant362a8241e480a277da6bcb7d6e9c8ff03cc0dae8ff618a67a6786ab186394fcb.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c715f76d17cae803419d2771951514bff37c15a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

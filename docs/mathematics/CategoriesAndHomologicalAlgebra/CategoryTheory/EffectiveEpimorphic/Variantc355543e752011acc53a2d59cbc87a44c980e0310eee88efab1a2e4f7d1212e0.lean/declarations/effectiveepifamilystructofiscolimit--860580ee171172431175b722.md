# effectiveEpiFamilyStructOfIsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c63dcde7bedb3df5620d0a437fa7d9219f3c3481046f4c8f4b2ed1d3e9f7df53",
  "kind": "def",
  "lexical_name": "effectiveEpiFamilyStructOfIsColimit",
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
  "slug": "effectiveepifamilystructofiscolimit--860580ee171172431175b722",
  "source": {
    "blob": "8ced95dc9bdc11db641646fe3c68cf180d92f8bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 215,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:860580ee171172431175b7224cc1f605b288c62bfae4134f19ff3b57dc5fe95d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c63dcde7bedb3df5620d0a437fa7d9219f3c3481046f4c8f4b2ed1d3e9f7df53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def effectiveEpiFamilyStructOfIsColimit {B : C} {α : Type*}
    (X : α → C) (π : (a : α) → (X a ⟶ B))
    (H : IsColimit (Sieve.generateFamily X π : Presieve B).cocone) :
    EffectiveEpiFamilyStruct X π :=
  let aux {W : C} (e : (a : α) → (X a ⟶ W))
    (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
      g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _) :
    Cocone (Sieve.generateFamily X π).arrows.diagram := {
      pt := W
      ι := {
        app := fun ⟨_,hT⟩ => hT.choose_spec.choose ≫ e hT.choose
        naturality := by
          intro ⟨A,a,(g₁ : A.left ⟶ _),ha⟩ ⟨B,b,(g₂ : B.left ⟶ _),hb⟩ (q : A ⟶ B)
          dsimp; rw [Category.comp_id, ← Category.assoc]
          apply h; rw [Category.assoc]
          generalize_proofs h1 h2 h3 h4
          rw [h2.choose_spec, h4.choose_spec, Over.w] } }
  { desc := fun {_} e h => H.desc (aux e h)
    fac := by
      intro W e h a
      dsimp
      have := H.fac (aux e h) ⟨Over.mk (π a), a, 𝟙 _, by simp⟩
      dsimp [aux] at this; rw [this]; clear this
      conv_rhs => rw [← Category.id_comp (e a)]
      apply h
      generalize_proofs h1 h2
      rw [h2.choose_spec, Category.id_comp]
    uniq := by
      intro W e h m hm
      apply H.uniq (aux e h)
      rintro ⟨T, a, (g : T.left ⟶ _), ha⟩
      dsimp
      nth_rewrite 1 [← ha, Category.assoc, hm]
      apply h
      generalize_proofs h1 h2
      rwa [h2.choose_spec] }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpimorphic/Variantc355543e752011acc53a2d59cbc87a44c980e0310eee88efab1a2e4f7d1212e0.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ced95dc9bdc11db641646fe3c68cf180d92f8bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# complete_distinguished_essImageDistTriang_morphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1362dbab-9d0f-711c-0426-ac76884825ff",
  "kind": "lemma",
  "lexical_name": "complete_distinguished_essImageDistTriang_morphism",
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
  "slug": "complete-distinguished-essimagedisttriang-morphism--89b3c8475e14bca285e1ea87",
  "source": {
    "blob": "b4fa7490470e73ae631fc62deb33058c8b258742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 89,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89b3c8475e14bca285e1ea87b6ae686e83a05431f465cd3a8fb20ab364fe6dcf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1362dbab-9d0f-711c-0426-ac76884825ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma complete_distinguished_essImageDistTriang_morphism
    (H : ∀ (T₁' T₂' : Triangle C) (_ : T₁' ∈ distTriang C) (_ : T₂' ∈ distTriang C)
      (a : L.obj (T₁'.obj₁) ⟶ L.obj (T₂'.obj₁)) (b : L.obj (T₁'.obj₂) ⟶ L.obj (T₂'.obj₂))
      (_ : L.map T₁'.mor₁ ≫ b = a ≫ L.map T₂'.mor₁),
      ∃ (φ : L.mapTriangle.obj T₁' ⟶ L.mapTriangle.obj T₂'), φ.hom₁ = a ∧ φ.hom₂ = b)
    (T₁ T₂ : Triangle D)
    (hT₁ : T₁ ∈ Functor.essImageDistTriang L) (hT₂ : T₂ ∈ L.essImageDistTriang)
    (a : T₁.obj₁ ⟶ T₂.obj₁) (b : T₁.obj₂ ⟶ T₂.obj₂) (fac : T₁.mor₁ ≫ b = a ≫ T₂.mor₁) :
    ∃ c, T₁.mor₂ ≫ c = b ≫ T₂.mor₂ ∧ T₁.mor₃ ≫ a⟦1⟧' = c ≫ T₂.mor₃ := by
  obtain ⟨T₁', e₁, hT₁'⟩ := hT₁
  obtain ⟨T₂', e₂, hT₂'⟩ := hT₂
  have comm₁ := e₁.inv.comm₁
  have comm₁' := e₂.hom.comm₁
  have comm₂ := e₁.hom.comm₂
  have comm₂' := e₂.hom.comm₂
  have comm₃ := e₁.inv.comm₃
  have comm₃' := e₂.hom.comm₃
  dsimp at comm₁ comm₁' comm₂ comm₂' comm₃ comm₃'
  simp only [assoc] at comm₃
  obtain ⟨φ, hφ₁, hφ₂⟩ := H T₁' T₂' hT₁' hT₂' (e₁.inv.hom₁ ≫ a ≫ e₂.hom.hom₁)
    (e₁.inv.hom₂ ≫ b ≫ e₂.hom.hom₂)
    (by simp only [assoc, ← comm₁', ← reassoc_of% fac, ← reassoc_of% comm₁])
  have h₂ := φ.comm₂
  have h₃ := φ.comm₃
  dsimp at h₂ h₃
  simp only [assoc] at h₃
  refine ⟨e₁.hom.hom₃ ≫ φ.hom₃ ≫ e₂.inv.hom₃, ?_, ?_⟩
  · rw [reassoc_of% comm₂, reassoc_of% h₂, hφ₂, assoc, assoc,
      Iso.hom_inv_id_triangle_hom₂_assoc, ← reassoc_of% comm₂',
      Iso.hom_inv_id_triangle_hom₃, comp_id]
  · rw [assoc, assoc, ← cancel_epi e₁.inv.hom₃, ← reassoc_of% comm₃,
      Iso.inv_hom_id_triangle_hom₃_assoc, ← cancel_mono (e₂.hom.hom₁⟦(1 : ℤ)⟧'),
      assoc, assoc, assoc, assoc, assoc, ← Functor.map_comp, ← Functor.map_comp, ← hφ₁,
      h₃, comm₃', Iso.inv_hom_id_triangle_hom₃_assoc]

end Functor

namespace Triangulated

namespace Localization

variable (W : MorphismProperty C) [L.IsLocalization W]
  [W.HasLeftCalculusOfFractions]

include W in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variantfa2c3fb2b768370e897e134e001d82eba06537674c1a1e9a1aff69602a4738f6.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4fa7490470e73ae631fc62deb33058c8b258742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

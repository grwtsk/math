# isoTriangleOfIso₁₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:edc0e36860be39b531ec13cba75a2df17c3b46adc2111c65af461a656814f4ba",
  "kind": "def",
  "lexical_name": "isoTriangleOfIso₁₃",
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
  "slug": "isotriangleofiso--eb95408df4968dcf77316f42",
  "source": {
    "blob": "334496d1ca65a779532e58d8ad914c532c8ce2ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 747,
    "line": 723,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb95408df4968dcf77316f42aff4205df52fa4d54b1831370136a155d5b4e0fb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:edc0e36860be39b531ec13cba75a2df17c3b46adc2111c65af461a656814f4ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–747.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoTriangleOfIso₁₃ (T₁ T₂ : Triangle C) (hT₁ : T₁ ∈ distTriang C)
    (hT₂ : T₂ ∈ distTriang C) (e₁ : T₁.obj₁ ≅ T₂.obj₁) (e₃ : T₁.obj₃ ≅ T₂.obj₃)
    (comm : T₁.mor₃ ≫ (shiftFunctor C 1).map e₁.hom = e₃.hom ≫ T₂.mor₃) :
    T₁ ≅ T₂ := by
  have h := exists_iso_of_arrow_iso _ _ (inv_rot_of_distTriang _ hT₁)
    (inv_rot_of_distTriang _ hT₂)
    (Arrow.isoMk ((shiftFunctor C (-1)).mapIso e₃) e₁ (by
      have := (shiftFunctorCompIsoId C (1 : ℤ) (-1) (by simp)).hom.naturality e₁.hom
      dsimp at this ⊢
      simp only [comp_neg, neg_comp, assoc, neg_inj, ← Functor.map_comp_assoc, ← comm]
      simp [this]))
  let e := h.choose
  have h₁ : e.hom.hom₁ = _ := h.choose_spec.1
  have h₂ : _ = e.hom.hom₂ := h.choose_spec.2.symm
  have h₃ := e.hom.comm₃
  have h₄ := (shiftFunctorCompIsoId C (-1 : ℤ) 1 (by simp)).inv.naturality e₃.hom
  dsimp at h₁ h₂ h₃ h₄
  refine Triangle.isoMk _ _ e₁ (Triangle.π₃.mapIso e) e₃ ?_ ?_ comm
  · convert! e.hom.comm₂ using 2
  · simp [← cancel_mono ((shiftFunctorCompIsoId C (-1) 1 (neg_add_cancel 1)).inv.app T₂.obj₃),
      ← h₃, assoc, h₁, h₄]

end Pretriangulated

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variante11dc94205419b028af8ee19ab1b0bb0c6f7ced60cb89857a44d4b08ccb5e458.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `334496d1ca65a779532e58d8ad914c532c8ce2ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

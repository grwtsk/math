# isIso_of_isIso_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:889218e7-08bb-18c5-da22-3f31a721feb7",
  "kind": "lemma",
  "lexical_name": "isIso_of_isIso_of_mono",
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
  "slug": "isiso-of-isiso-of-mono--cc3b6bd4a5c1a54f941ad9a8",
  "source": {
    "blob": "f98ef7527b6c4a2c1026252a7d155e7b8a0459f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 318,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Varianta35ab2c276d6e4cb88747ed148fb07a93e278594e1229423272a1f2becf96571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc3b6bd4a5c1a54f941ad9a8db11b0a8f780a033a2e85d0313700ba6eb9613f5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Varianta35ab2c276d6e4cb88747ed148fb07a93e278594e1229423272a1f2becf96571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:889218e7-08bb-18c5-da22-3f31a721feb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_of_isIso_of_mono (hR₁ : R₁.Exact) (hR₂ : R₂.Exact) (hR₁' : Mono (R₁.map' 0 1))
    (hR₂' : Mono (R₂.map' 0 1)) (h₁ : IsIso (app' φ 1)) (h₂ : Mono (app' φ 2)) :
    IsIso (app' φ 0) := by
  let ψ : mk₄ (0 : (0 : C) ⟶ (0 : C)) (0 : _ ⟶ _) (R₁.map' 0 1) (R₁.map' 1 2) ⟶
      mk₄ (0 : (0 : C) ⟶ (0 : C)) (0 : _ ⟶ _) (R₂.map' 0 1) (R₂.map' 1 2) :=
    homMk₄ 0 0 (app' φ 0) (app' φ 1) (app' φ 2) (by simp) (by simp) (naturality' φ 0 1)
      (naturality' φ 1 2)
  refine isIso_of_epi_of_isIso_of_isIso_of_mono ?_ ?_ ψ inferInstance inferInstance h₁ h₂
  · refine exact_of_δ₀ (exact₂_mk _ (by simp) ?_) (exact_of_δ₀ ?_ (exact₂_mk _ _ (hR₁.exact 0)))
    · rw [ShortComplex.exact_iff_mono _ (by simp)]
      infer_instance
    · refine exact₂_mk _ (by simp) ?_
      rwa [ShortComplex.exact_iff_mono _ (by simp)]
  · refine exact_of_δ₀ ?_ (exact_of_δ₀ ?_ (exact₂_mk _ _ (hR₂.exact 0)))
    · refine exact₂_mk _ (by simp) ?_
      rw [ShortComplex.exact_iff_mono _ (by simp)]
      infer_instance
    · refine exact₂_mk _ (by simp) ?_
      rwa [ShortComplex.exact_iff_mono _ (by simp)]

end Three

end Abelian

namespace ShortComplex

variable {C : Type*} [Category* C] [Abelian C]
variable {R₁ R₂ : ShortComplex C} (φ : R₁ ⟶ R₂)

attribute [local simp] ComposableArrows.Precomp.map

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Varianta35ab2c276d6e4cb88747ed148fb07a93e278594e1229423272a1f2becf96571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Varianta35ab2c276d6e4cb88747ed148fb07a93e278594e1229423272a1f2becf96571.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f98ef7527b6c4a2c1026252a7d155e7b8a0459f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

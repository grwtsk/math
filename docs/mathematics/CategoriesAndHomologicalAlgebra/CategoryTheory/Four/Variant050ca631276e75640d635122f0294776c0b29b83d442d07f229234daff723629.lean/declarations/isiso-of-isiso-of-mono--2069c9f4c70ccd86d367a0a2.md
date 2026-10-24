# isIso_of_isIso_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4fc7ad89f9077859102dd593708902dee14ed0db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d003b3a-bfce-75e7-edd6-8c3ecc90a418",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bd15ed4a-88fb-7eb0-bae6-79ad4e83bbac",
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
  "slug": "isiso-of-isiso-of-mono--2069c9f4c70ccd86d367a0a2",
  "source": {
    "blob": "4fc7ad89f9077859102dd593708902dee14ed0db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 310,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2069c9f4c70ccd86d367a0a2890d05318da90dcda6fefc54af90cf4d406792c1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd15ed4a-88fb-7eb0-bae6-79ad4e83bbac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–341.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant050ca631276e75640d635122f0294776c0b29b83d442d07f229234daff723629.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fc7ad89f9077859102dd593708902dee14ed0db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

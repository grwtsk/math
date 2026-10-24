# SnakeLemma.exact_δ_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd9e13d0-27d9-7666-b9b8-39e93ffe3d56",
  "kind": "lemma",
  "lexical_name": "SnakeLemma.exact_δ_left",
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
  "slug": "snakelemma-exact-left--e9c4e4976023c80ef1ec4e1d",
  "source": {
    "blob": "4d310f00c53daecf02e496373ce1a9d242643a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 198,
    "path": "GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant6efbfac2dd6944f53d9980dc4f75a43869f40d4f74bc7bf9e38e82956acda381.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9c4e4976023c80ef1ec4e1d9382647b50876eb77d22a5ec700d31966887a323",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SnakeLemma/Variant6efbfac2dd6944f53d9980dc4f75a43869f40d4f74bc7bf9e38e82956acda381.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd9e13d0-27d9-7666-b9b8-39e93ffe3d56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma SnakeLemma.exact_δ_left (G : C₁ →ₗ[R] C₂) (hF : G.comp π₁ = π₂.comp g₁) (h : Surjective π₁) :
    Exact (δ i₁ i₂ i₃ f₁ f₂ hf g₁ g₂ hg h₁ h₂ σ hσ ρ hρ ι₃ hι₃ π₁ hπ₁) G := by
  have H₂ := δ_aux i₂ i₃ f₂ g₁ g₂ hg h₂ σ hσ ρ hρ ι₃ hι₃
  intro x
  constructor
  · intro H
    obtain ⟨x, rfl⟩ := h x
    obtain ⟨y, hy⟩ := (hπ₂ (g₁ x)).mp (by simpa only [← LinearMap.comp_apply, hF] using H)
    obtain ⟨z, hz⟩ : f₂ y ∈ range ι₃ := (hι₃ (f₂ y)).mp (by rw [← i₃.comp_apply, ← h₂,
      g₂.comp_apply, hy, hg.apply_apply_eq_zero])
    exact ⟨z, δ_eq i₁ i₂ i₃ f₁ f₂ hf g₁ g₂ hg h₁ h₂ σ hσ ρ hρ ι₃ hι₃ π₁ hπ₁ _ _ hz.symm _ hy.symm⟩
  · rintro ⟨x, rfl⟩
    simp only [δ, coe_mk, AddHom.coe_mk]
    rw [← G.comp_apply, hF, π₂.comp_apply, H₂, hπ₂.apply_apply_eq_zero]

/--
Suppose we have an exact commutative diagram
```
                K₃
                |
                ι₃
                ↓
M₁ -f₁→ M₂ -f₂→ M₃
|       |       |
i₁      i₂      i₃
↓       ↓       ↓
N₁ -g₁→ N₂ -g₂→ N₃
|
π₁
↓
C₁

```
such that `f₂` is surjective and `g₁` is injective,
then this is the linear map `K₃ → C₁` given by the snake lemma.

Also see `SnakeLemma.δ` for a computable version.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SnakeLemma/Variant6efbfac2dd6944f53d9980dc4f75a43869f40d4f74bc7bf9e38e82956acda381.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant6efbfac2dd6944f53d9980dc4f75a43869f40d4f74bc7bf9e38e82956acda381.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d310f00c53daecf02e496373ce1a9d242643a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

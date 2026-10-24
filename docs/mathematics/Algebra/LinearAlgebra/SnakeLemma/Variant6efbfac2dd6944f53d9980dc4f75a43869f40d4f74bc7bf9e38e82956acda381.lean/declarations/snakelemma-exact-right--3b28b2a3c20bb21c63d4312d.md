# SnakeLemma.exact_δ_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:95c0d812-fe06-b307-d287-661b8a136fa6",
  "kind": "lemma",
  "lexical_name": "SnakeLemma.exact_δ_right",
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
  "slug": "snakelemma-exact-right--3b28b2a3c20bb21c63d4312d",
  "source": {
    "blob": "4d310f00c53daecf02e496373ce1a9d242643a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant6efbfac2dd6944f53d9980dc4f75a43869f40d4f74bc7bf9e38e82956acda381.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b28b2a3c20bb21c63d4312da828510e49563886c764398d4487287bb3de17cf",
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

Occurrence: `result:95c0d812-fe06-b307-d287-661b8a136fa6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma SnakeLemma.exact_δ_right (F : K₂ →ₗ[R] K₃) (hF : f₂.comp ι₂ = ι₃.comp F)
    (h : Injective ι₃) :
    Exact F (δ i₁ i₂ i₃ f₁ f₂ hf g₁ g₂ hg h₁ h₂ σ hσ ρ hρ ι₃ hι₃ π₁ hπ₁) := by
  have H₁ : ∀ x, f₂ (σ x) = x := congr_fun hσ
  have H₂ := δ_aux i₂ i₃ f₂ g₁ g₂ hg h₂ σ hσ ρ hρ ι₃ hι₃
  intro x
  constructor
  · intro H
    obtain ⟨y, hy⟩ := (hπ₁ _).mp H
    obtain ⟨k, hk⟩ : σ (ι₃ x) - f₁ y ∈ Set.range ι₂ := by
      rw [← hι₂, map_sub, ← H₂, ← hy, sub_eq_zero]; exact congr($h₁ y)
    refine ⟨k, h ?_⟩
    rw [← ι₃.comp_apply, ← hF, f₂.comp_apply, hk, map_sub, H₁, hf.apply_apply_eq_zero, sub_zero]
  · rintro ⟨y, rfl⟩
    exact (δ_eq i₁ i₂ i₃ f₁ f₂ hf g₁ g₂ hg h₁ h₂ σ hσ ρ hρ ι₃ hι₃ π₁ hπ₁ _ (ι₂ y) congr($hF y)
      _ (by rw [map_zero, hι₂.apply_apply_eq_zero])).trans π₁.map_zero

include hπ₂ in
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
|       |
π₁      π₂
↓       ↓
C₁ -G-→ C₂

```
such that `f₂` is surjective with a (set-theoretic) section `σ`, `g₁` is injective with a
(set-theoretic) retraction `ρ`, and `π₁` is surjective, then `K₃ -δ→ C₁ -G→ C₂` is exact.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SnakeLemma/Variant6efbfac2dd6944f53d9980dc4f75a43869f40d4f74bc7bf9e38e82956acda381.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant6efbfac2dd6944f53d9980dc4f75a43869f40d4f74bc7bf9e38e82956acda381.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d310f00c53daecf02e496373ce1a9d242643a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

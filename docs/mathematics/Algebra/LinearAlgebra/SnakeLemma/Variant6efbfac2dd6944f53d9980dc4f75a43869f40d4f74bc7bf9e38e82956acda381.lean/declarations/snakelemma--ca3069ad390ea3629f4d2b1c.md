# SnakeLemma.δ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bb5e0d03819bfbbd5db42eede8ec75535f1a78fe88e942a3bf36aef8e529304b",
  "kind": "def",
  "lexical_name": "SnakeLemma.δ",
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
  "slug": "snakelemma--ca3069ad390ea3629f4d2b1c",
  "source": {
    "blob": "4d310f00c53daecf02e496373ce1a9d242643a44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 119,
    "path": "GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant6efbfac2dd6944f53d9980dc4f75a43869f40d4f74bc7bf9e38e82956acda381.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca3069ad390ea3629f4d2b1cdb30c2b1ae77492d5a9f4153862bd6b4c2060929",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SnakeLemma/Variant6efbfac2dd6944f53d9980dc4f75a43869f40d4f74bc7bf9e38e82956acda381.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bb5e0d03819bfbbd5db42eede8ec75535f1a78fe88e942a3bf36aef8e529304b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SnakeLemma.δ : K₃ →ₗ[R] C₁ :=
  haveI H₁ : ∀ x, f₂ (σ x) = x := congr_fun hσ
  haveI H₂ := δ_aux i₂ i₃ f₂ g₁ g₂ hg h₂ σ hσ ρ hρ ι₃ hι₃
  { toFun := fun x ↦ π₁ (ρ (i₂ (σ (ι₃ x))))
    map_add' := fun x y ↦ by
      rw [← map_add]
      exact eq_of_eq i₁ i₂ f₁ f₂ hf g₁ h₁ ρ hρ ι₃ π₁ hπ₁ (x + y) _ (H₁ _) _ (H₂ _)
        (σ (ι₃ x) + σ (ι₃ y)) (by simp only [map_add, H₁]) _ (by simp only [map_add, H₂])
    map_smul' := fun r x ↦ by
      simp only [← map_smul, RingHom.id_apply]
      apply eq_of_eq i₁ i₂ f₁ f₂ hf g₁ h₁ ρ hρ ι₃ π₁ hπ₁ (r • x) _ (H₁ _) _ (H₂ _)
        (r • σ (ι₃ x)) (by simp only [map_smul, H₁]) _ (by simp only [map_smul, H₂]) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SnakeLemma/Variant6efbfac2dd6944f53d9980dc4f75a43869f40d4f74bc7bf9e38e82956acda381.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant6efbfac2dd6944f53d9980dc4f75a43869f40d4f74bc7bf9e38e82956acda381.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d310f00c53daecf02e496373ce1a9d242643a44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# SnakeLemma.δ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:202c84aa08115449f8b012dace6e7c68c26aee9cba8fe0be55e93a09187e2811",
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
  "slug": "snakelemma--85bc340e960ecba302b87434",
  "source": {
    "blob": "bb7a8776f1f85debe7751c11d063b505769015b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 111,
    "path": "GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:85bc340e960ecba302b8743432f0c03b502e01d98f4b67dca31c4713cef748f1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:202c84aa08115449f8b012dace6e7c68c26aee9cba8fe0be55e93a09187e2811`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–123.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SnakeLemma/Variant68ac017092151d4b61a093a1041022f2e95f3eb394dd3172219b4982abc24ffb.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb7a8776f1f85debe7751c11d063b505769015b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

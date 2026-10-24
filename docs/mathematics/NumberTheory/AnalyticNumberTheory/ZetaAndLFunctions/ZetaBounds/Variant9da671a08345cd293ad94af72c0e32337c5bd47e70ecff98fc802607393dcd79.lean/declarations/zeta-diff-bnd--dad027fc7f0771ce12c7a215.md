# Zeta_diff_Bnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:913aa392-10ac-faaa-3130-3ee7c71a3bf5",
  "kind": "lemma",
  "lexical_name": "Zeta_diff_Bnd",
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
  "slug": "zeta-diff-bnd--dad027fc7f0771ce12c7a215",
  "source": {
    "blob": "1221067f6024cf817e255715555eb90609acba6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2858,
    "line": 2845,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dad027fc7f0771ce12c7a215223a5539f94a05054c2d463071fdcb170b096687",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:913aa392-10ac-faaa-3130-3ee7c71a3bf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2845–2858.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Zeta_diff_Bnd :
    ∃ (A : ℝ) (_ : A ∈ Ioc 0 (1 / 2)) (C : ℝ) (_ : 0 < C), ∀ (σ₁ σ₂ : ℝ) (t : ℝ) (_ : 3 < |t|)
    (_ : 1 - A / Real.log |t| ≤ σ₁) (_ : σ₂ ≤ 2) (_ : σ₁ < σ₂),
    ‖ζ (σ₂ + t * I) - ζ (σ₁ + t * I)‖ ≤  C * Real.log |t| ^ 2 * (σ₂ - σ₁) := by
  obtain ⟨A, hA, C, Cpos, hC⟩ := ZetaDerivUpperBnd
  refine ⟨A, hA, C, Cpos, ?_⟩
  intro σ₁ σ₂ t t_gt σ₁_ge σ₂_le σ₁_lt_σ₂
  have t_ne_zero : t ≠ 0 := by contrapose! t_gt; simp only [t_gt, abs_zero, Nat.ofNat_nonneg]
  rw [← Zeta_eq_int_derivZeta t_ne_zero]
  convert intervalIntegral.norm_integral_le_of_norm_le_const ?_ using 1
  · congr; rw [_root_.abs_of_nonneg (by linarith)]
  · intro σ hσ; rw [uIoc_of_le σ₁_lt_σ₂.le, mem_Ioc] at hσ
    exact hC σ t t_gt ⟨le_trans σ₁_ge hσ.1.le, le_trans hσ.2 σ₂_le⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variant9da671a08345cd293ad94af72c0e32337c5bd47e70ecff98fc802607393dcd79.lean#L2845).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1221067f6024cf817e255715555eb90609acba6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

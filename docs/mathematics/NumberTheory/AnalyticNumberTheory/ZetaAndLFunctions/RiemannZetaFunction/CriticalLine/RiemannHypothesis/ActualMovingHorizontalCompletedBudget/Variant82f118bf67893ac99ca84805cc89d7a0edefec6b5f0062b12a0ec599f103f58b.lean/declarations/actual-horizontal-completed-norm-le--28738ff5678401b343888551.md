# actual_horizontal_completed_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96db178c-f344-9763-2f4d-116b160dbc2f",
  "kind": "theorem",
  "lexical_name": "actual_horizontal_completed_norm_le",
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
  "slug": "actual-horizontal-completed-norm-le--28738ff5678401b343888551",
  "source": {
    "blob": "ff0a1d927734800a4c71ce6c865149abb73c1287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant82f118bf67893ac99ca84805cc89d7a0edefec6b5f0062b12a0ec599f103f58b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28738ff5678401b343888551a61e5a7fc8759c7ad163b752c306388720bec493",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant82f118bf67893ac99ca84805cc89d7a0edefec6b5f0062b12a0ec599f103f58b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96db178c-f344-9763-2f4d-116b160dbc2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_horizontal_completed_norm_le {Cg : ℝ} (hCg : 0 < Cg) :
    ∃ K : ℝ, 0 < K ∧ ∀ (A c R y : ℝ) (j : ℕ),
      1 ≤ A → 1 < c → c ≤ 3/2 → 7 ≤ j → (j : ℝ) ≤ R → R ≤ (j : ℝ)+1 →
      (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg*(Real.log ((j : ℝ)+3))^2) →
      (y = R ∨ y = -R) →
      ‖actualCompletedHorizontalIntegral A c y‖ ≤
        ((204288 : ℝ)^2/sourceNormalization A*(1+c^2)^2*
          Real.exp ((2*c-1)*A)/(A^9*R^6)) *
        (K*(Real.log ((j : ℝ)+3))^2)*(2*c-1) := by
  obtain ⟨K,hK,hlog⟩ := actual_completed_logDeriv_good_line hCg
  refine ⟨K,hK,?_⟩
  intro A c R y j hA hc hc2 hj hjR hRj hgood hy
  have hRp : 0 < R := by
    have hj7 : (7 : ℝ) ≤ j := by exact_mod_cast hj
    linarith
  have hyabs : |y| = R := by rcases hy with hy | hy <;> simp [hy,hRp.le]
  unfold actualCompletedHorizontalIntegral HIntegral
  have hi := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := 1-c) (b := c) (f := fun x : ℝ =>
      actualBilateralCorrelationTransform A ((x : ℂ)+y*I-1/2)*
        logDeriv completedRiemannZeta ((x : ℂ)+y*I))
    (C := ((204288 : ℝ)^2/sourceNormalization A*(1+c^2)^2*
      Real.exp ((2*c-1)*A)/(A^9*R^6))*(K*(Real.log ((j : ℝ)+3))^2))
    (fun x hx => ?_)
  · simpa only [show |c-(1-c)| = 2*c-1 by rw [abs_of_pos (by linarith)]; ring] using hi
  · rw [Set.uIoc_of_le (by linarith)] at hx
    rw [norm_mul]
    have hk := actual_bilateral_on_strip_norm_le A c x y hA hc hx.1.le hx.2
      (by rw [hyabs]; linarith)
    rw [hyabs] at hk
    exact mul_le_mul hk (hlog j R c x y hj hjR hRj hgood hc hc2 hy hx.1.le hx.2)
      (norm_nonneg _) (by have hZ := source_normalization_pos A hA; positivity)

/-- The explicit uniform-in-A coefficient of the actual horizontal estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant82f118bf67893ac99ca84805cc89d7a0edefec6b5f0062b12a0ec599f103f58b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant82f118bf67893ac99ca84805cc89d7a0edefec6b5f0062b12a0ec599f103f58b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff0a1d927734800a4c71ce6c865149abb73c1287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

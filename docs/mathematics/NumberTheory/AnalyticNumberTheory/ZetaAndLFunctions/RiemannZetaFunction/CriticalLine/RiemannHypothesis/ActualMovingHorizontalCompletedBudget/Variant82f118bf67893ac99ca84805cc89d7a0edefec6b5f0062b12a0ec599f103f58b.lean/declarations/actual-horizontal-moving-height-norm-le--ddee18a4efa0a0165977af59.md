# actual_horizontal_moving_height_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b694faa-b112-4344-4d6b-fbf04fa62ec4",
  "kind": "theorem",
  "lexical_name": "actual_horizontal_moving_height_norm_le",
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
  "slug": "actual-horizontal-moving-height-norm-le--ddee18a4efa0a0165977af59",
  "source": {
    "blob": "ff0a1d927734800a4c71ce6c865149abb73c1287",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant82f118bf67893ac99ca84805cc89d7a0edefec6b5f0062b12a0ec599f103f58b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddee18a4efa0a0165977af59645ed9659494bc86459a10b59b4d36b30f0c81d2",
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

Occurrence: `result:8b694faa-b112-4344-4d6b-fbf04fa62ec4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_horizontal_moving_height_norm_le {Cg : ℝ} (hCg : 0 < Cg) :
    ∃ K : ℝ, 0 < K ∧ ∀ (A c R y : ℝ) (j : ℕ),
      1 ≤ A → 1 < c → c ≤ 3/2 → 7 ≤ j → (j : ℝ) ≤ R → R ≤ (j : ℝ)+1 →
      (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg*(Real.log ((j : ℝ)+3))^2) →
      actualBumpMovingHeight A c ≤ R → (y = R ∨ y = -R) →
      ‖actualCompletedHorizontalIntegral A c y‖ ≤
        actualHorizontalSourceConstant K c*(Real.log ((j : ℝ)+3))^2/A^9*
          Real.exp (-((2*c-1)*A)/5) := by
  obtain ⟨K,hK,hbound⟩ := actual_horizontal_completed_norm_le hCg
  refine ⟨K,hK,?_⟩
  intro A c R y j hA hc hc2 hj hjR hRj hgood hheight hy
  have hb := hbound A c R y j hA hc hc2 hj hjR hRj hgood hy
  have he := actual_exponential_height_ratio_le ((2*c-1)*A) R hheight
  have hZ := source_normalization_pos A hA
  have hZlower := actualBumpNormalization_lower A hA
  have hzinv : 1/sourceNormalization A ≤ (109395/4096 : ℝ) := by
    rw [div_le_iff₀ hZ]
    nlinarith
  have ha : 0 < A := by linarith
  have hfac : 0 ≤ (2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*
      K*(Real.log ((j : ℝ)+3))^2/A^9 := by positivity
  calc
    _ ≤ _ := hb
    _ = ((2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*
        K*(Real.log ((j : ℝ)+3))^2/A^9) *
        (1/sourceNormalization A) * (Real.exp ((2*c-1)*A)/R^6) := by ring
    _ ≤ ((2*c-1)*(204288 : ℝ)^2*(1+c^2)^2*
        K*(Real.log ((j : ℝ)+3))^2/A^9) *
        (109395/4096) * Real.exp (-((2*c-1)*A)/5) := by
      exact mul_le_mul (mul_le_mul_of_nonneg_left hzinv hfac) he
        (by positivity) (by positivity)
    _ = _ := by unfold actualHorizontalSourceConstant; ring

end
end FormalResearch.RiemannHypothesis.ActualMovingHorizontalCompletedBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant82f118bf67893ac99ca84805cc89d7a0edefec6b5f0062b12a0ec599f103f58b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant82f118bf67893ac99ca84805cc89d7a0edefec6b5f0062b12a0ec599f103f58b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff0a1d927734800a4c71ce6c865149abb73c1287` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

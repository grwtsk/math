# actual_source_growing_horizontal_uniform_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2db8293-6bb4-c931-4d3f-fffb338964ef",
  "kind": "theorem",
  "lexical_name": "actual_source_growing_horizontal_uniform_budget",
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
  "slug": "actual-source-growing-horizontal-uniform-budget--0d5ceb7dd6c5a80cfcf2479e",
  "source": {
    "blob": "e38de46746134f412365e398fe7feae49b5af40f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 192,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant48e39a9306333083848bf83a0e462fc01fe066d2e85146e3d97c597073d51c8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d5ceb7dd6c5a80cfcf2479e129bed33d32ec82686782497988df0c0238a0d24",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant48e39a9306333083848bf83a0e462fc01fe066d2e85146e3d97c597073d51c8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2db8293-6bb4-c931-4d3f-fffb338964ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_growing_horizontal_uniform_budget :
    ∃ Cg : ℝ, 0 < Cg ∧ ∃ K : ℝ, 0 < K ∧
      ∀ A c : ℝ, 1 ≤ A → 1 < c → c ≤ 3/2 →
      ∃ R : ℝ, max 7 (actualBumpMovingHeight A c) ≤ R ∧
        R < max 7 (actualBumpMovingHeight A c)+2 ∧
        (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
          riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
            Cg*(Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2) ∧
        ∀ y : ℝ, (y = R ∨ y = -R) →
          ‖actualCompletedHorizontalIntegral A c y‖ ≤
            actualUniformHorizontalSourceConstant K c/A^9 := by
  obtain ⟨Cg,hCg,K,hK,hbound⟩ := actual_source_growing_horizontal_budget
  refine ⟨Cg,hCg,K,hK,?_⟩
  intro A c hA hc hc2
  obtain ⟨R,hlo,hhi,hgood,hb⟩ := hbound A c hA hc hc2
  refine ⟨R,hlo,hhi,hgood,?_⟩
  intro y hy
  have hlog := actual_moving_goodheight_log_factor_le A c hA hc
  have hκ : 0 < 2*c-1 := by linarith
  have hconst : 0 ≤ actualHorizontalSourceConstant K c/A^9 := by
    unfold actualHorizontalSourceConstant
    positivity
  calc
    _ ≤ _ := hb y hy
    _ = (actualHorizontalSourceConstant K c/A^9)*
        ((Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2*
          Real.exp (-((2*c-1)*A)/5)) := by ring
    _ ≤ (actualHorizontalSourceConstant K c/A^9)*(2*(Real.log 11)^2+8) :=
      mul_le_mul_of_nonneg_left hlog hconst
    _ = _ := by unfold actualUniformHorizontalSourceConstant; ring

end
end FormalResearch.RiemannHypothesis.ActualMovingHorizontalCompletedBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant48e39a9306333083848bf83a0e462fc01fe066d2e85146e3d97c597073d51c8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalCompletedBudget/Variant48e39a9306333083848bf83a0e462fc01fe066d2e85146e3d97c597073d51c8c.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e38de46746134f412365e398fe7feae49b5af40f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# actual_source_same_goodheight_full_ledger_and_horizontal_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3f47575-ac09-6621-1564-f17bc82eed8f",
  "kind": "theorem",
  "lexical_name": "actual_source_same_goodheight_full_ledger_and_horizontal_budget",
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
  "slug": "actual-source-same-goodheight-full-ledger-and-horizontal-budget--012e83fce60eaef4be556a08",
  "source": {
    "blob": "3f3d9b2490d2cc23152f90c6a5d7771211df42ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalResidueLedger/Variant73816dff6f9b9e028dedd258b7947166d5d80e6152cda0e7a7a170683e9678e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:012e83fce60eaef4be556a084d529dd7f6874d743e68eaa8788ee4a5877f99b8",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalResidueLedger/Variant73816dff6f9b9e028dedd258b7947166d5d80e6152cda0e7a7a170683e9678e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3f47575-ac09-6621-1564-f17bc82eed8f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_same_goodheight_full_ledger_and_horizontal_budget :
    ∃ Cg : ℝ, 0 < Cg ∧ ∃ K : ℝ, 0 < K ∧
      ∀ A c : ℝ, 1 ≤ A → 1 < c → c ≤ 3/2 →
      ∃ R : ℝ, max 7 (actualBumpMovingHeight A c) ≤ R ∧
        R < max 7 (actualBumpMovingHeight A c)+2 ∧
        (∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1/2 ≤ s.re → s.re ≤ 2 →
          riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
            Cg*(Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2) ∧
        (∀ y : ℝ, (y = R ∨ y = -R) →
          IntervalIntegrable (fun x : ℝ => actualInitialPrimeMellin A ((x : ℂ)+y*I)*
            logDeriv completedRiemannZeta ((x : ℂ)+y*I)) volume (1-c) c) ∧
        (∀ y : ℝ, (y = R ∨ y = -R) →
          ‖HIntegral (fun s => actualInitialPrimeMellin A s*
              logDeriv completedRiemannZeta s) (1-c) c y‖ ≤
            actualUniformHorizontalSourceConstant K c/A^9) ∧
        ‖actualInitialPrimeTwoTail A c R‖ ≤ actualBumpMovingTailConstant c/A^9 ∧
        ∃ Z : Finset ℂ,
          (Z : Set ℂ) = {ρ : ℂ | IsNontrivialZero ρ ∧ -R < ρ.im ∧ ρ.im < R} ∧
          RectangleIntegral' (fun s => actualInitialPrimeMellin A s*
            logDeriv completedRiemannZeta s)
              ((1-c : ℝ)-(R : ℂ)*I) ((c : ℂ)+(R : ℂ)*I) =
              ∑ ρ ∈ Z, (zeroMult ρ : ℂ)*actualInitialPrimeMellin A ρ := by
  obtain ⟨Cg,hCg,K,hK,hbound⟩ := actual_source_growing_horizontal_uniform_budget
  refine ⟨Cg,hCg,K,hK,?_⟩
  intro A c hA hc hc2
  obtain ⟨R,hlow,hupp,hgood,horiz⟩ := hbound A c hA hc hc2
  have h7 : 7 ≤ R := (le_max_left _ _).trans hlow
  have hbase : actualBumpMovingHeight A c ≤ R := (le_max_right _ _).trans hlow
  have hcomplete := completedZeta_ne_zero_on_horizontals hc hc2
    (fun s him hr1 hr2 => (hgood s him hr1 hr2).1)
  obtain ⟨Z,hZ,hrect⟩ := rectangle_identity
    (actualInitialPrimeKernel_contDiff A hA)
    (actualInitialPrimeKernel_hasCompactSupport A hA) hc hc2 h7 hcomplete
  simp_rw [← actualInitialPrimeMellin_eq_Hfn A] at hrect
  have hzero := actualInitialPrimeMellin_poles_zero A hA
  rw [hzero.1,hzero.2,sub_zero,sub_zero] at hrect
  refine ⟨R,hlow,hupp,hgood,?_,?_,
    actualInitialPrimeTwoTail_above_movingHeight_norm_le A c R hA hc hbase,Z,hZ,hrect⟩
  · intro y hy
    simp_rw [actual_initialMellin_eq_bilateral hA]
    exact actual_completed_horizontal_intervalIntegrable A c R y hA hc hc2 h7
      (fun s him hr1 hr2 => (hgood s him hr1 hr2).1) hy
  · intro y hy
    simp_rw [actual_initialMellin_eq_bilateral hA]
    exact horiz y hy

end
end FormalResearch.RiemannHypothesis.ActualMovingHorizontalResidueLedger
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalResidueLedger/Variant73816dff6f9b9e028dedd258b7947166d5d80e6152cda0e7a7a170683e9678e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualMovingHorizontalResidueLedger/Variant73816dff6f9b9e028dedd258b7947166d5d80e6152cda0e7a7a170683e9678e4.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f3d9b2490d2cc23152f90c6a5d7771211df42ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# actualOffAxisShell_compensated_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d2cdaab-4720-a38b-77d4-ca017070796d",
  "kind": "theorem",
  "lexical_name": "actualOffAxisShell_compensated_norm_bound",
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
  "slug": "actualoffaxisshell-compensated-norm-bound--e063b9a5885a542a49d36a06",
  "source": {
    "blob": "008a5074e1b88821788ed4273a48dad3211a0bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 191,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e063b9a5885a542a49d36a064b9e8194a37385de309c989b00f2db8886ee080d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d2cdaab-4720-a38b-77d4-ca017070796d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualOffAxisShell_compensated_norm_bound {Cg : ℝ} (hCg : 0 < Cg) :
    ∃ K : ℝ, 0 < K ∧ ∀ (A c R1 R2 : ℝ) (j1 j2 : ℕ),
      1 ≤ A → 1 < c → c ≤ 3 / 2 → 7 ≤ j1 → 7 ≤ j2 →
      (j1 : ℝ) ≤ R1 → R1 ≤ (j1 : ℝ)+1 →
      (j2 : ℝ) ≤ R2 → R2 ≤ (j2 : ℝ)+1 → R1 ≤ R2 →
      (∀ s : ℂ, (s.im = R1 ∨ s.im = -R1) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg*(Real.log ((j1 : ℝ)+3))^2) →
      (∀ s : ℂ, (s.im = R2 ∨ s.im = -R2) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤ Cg*(Real.log ((j2 : ℝ)+3))^2) →
      actualBumpMovingHeight A c ≤ R1 → actualBumpMovingHeight A c ≤ R2 →
      ‖(actualOffAxisZeroHeightHead A R2 - actualOffAxisZeroHeightHead A R1) +
        (actualCriticalZeroHeightHead A R2 - actualCriticalZeroHeightHead A R1) -
        (actualCompletedVerticalHead A c R2 - actualCompletedVerticalHead A c R1)‖ ≤
      (actualHorizontalSourceConstant K c/A^9 * Real.exp (-((2*c-1)*A)/5)) *
        ((Real.log ((j1 : ℝ)+3))^2 + (Real.log ((j2 : ℝ)+3))^2) / Real.pi := by
  obtain ⟨K,hK,hb⟩ := actual_horizontal_moving_height_norm_le hCg
  refine ⟨K,hK,?_⟩
  intro A c R1 R2 j1 j2 hA hc hc2 hj1 hj2 hjR1 hR1j hjR2 hR2j hR12 hg1 hg2 hh1 hh2
  have hR1 : 7 ≤ R1 := by exact_mod_cast (show (7 : ℝ) ≤ R1 by
    have hi : (7 : ℝ) ≤ j1 := by exact_mod_cast hj1
    exact hi.trans hjR1)
  let D1 := actualHorizontalSourceConstant K c*(Real.log ((j1 : ℝ)+3))^2/A^9 *
    Real.exp (-((2*c-1)*A)/5)
  let D2 := actualHorizontalSourceConstant K c*(Real.log ((j2 : ℝ)+3))^2/A^9 *
    Real.exp (-((2*c-1)*A)/5)
  have hc1 := actual_horizontal_correction_norm_le A c R1 D1 hA
    (fun y hy => hb A c R1 y j1 hA hc hc2 hj1 hjR1 hR1j hg1 hh1 hy)
  have hc2b := actual_horizontal_correction_norm_le A c R2 D2 hA
    (fun y hy => hb A c R2 y j2 hA hc hc2 hj2 hjR2 hR2j hg2 hh2 hy)
  have he : (actualOffAxisZeroHeightHead A R2 - actualOffAxisZeroHeightHead A R1) +
      (actualCriticalZeroHeightHead A R2 - actualCriticalZeroHeightHead A R1) =
      actualSignedZeroHeightShell A R1 R2 := by
    rw [actualSignedZeroHeightShell_eq_head_sub A R1 R2 hR12,
      actualZeroHeightHead_eq_critical_add_offAxis A R1,
      actualZeroHeightHead_eq_critical_add_offAxis A R2]
    ring
  rw [he, actualSignedZeroHeightShell_eq_contour_difference A c R1 R2
    hA hc hc2 hR1 hR12 (fun s him hrl hru => (hg1 s him hrl hru).1)
      (fun s him hrl hru => (hg2 s him hrl hru).1), add_sub_cancel_left]
  calc
    _ ≤ ‖actualFiniteHorizontalCorrection A c R2‖ +
        ‖actualFiniteHorizontalCorrection A c R1‖ := norm_sub_le _ _
    _ ≤ D2 / Real.pi + D1 / Real.pi := add_le_add hc2b hc1
    _ = _ := by dsimp [D1,D2]; ring

/-- Two separate genuine good heights select a dyadic shell and its phase budget.
No equality of independent existential heights and no signed vertical cap is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `008a5074e1b88821788ed4273a48dad3211a0bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

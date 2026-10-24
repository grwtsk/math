# actual_good_dyadic_offAxis_shell_compensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc9ceee0-0d2e-1fa9-fbed-35da943633b3",
  "kind": "theorem",
  "lexical_name": "actual_good_dyadic_offAxis_shell_compensation",
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
  "slug": "actual-good-dyadic-offaxis-shell-compensation--db0c924f755a4f6acefcb64e",
  "source": {
    "blob": "008a5074e1b88821788ed4273a48dad3211a0bcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 238,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db0c924f755a4f6acefcb64ec95b6596077f1ff58c6cd7164c4980ae1bb91426",
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

Occurrence: `result:dc9ceee0-0d2e-1fa9-fbed-35da943633b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_good_dyadic_offAxis_shell_compensation :
    ∃ Cg K : ℝ, 0 < Cg ∧ 0 < K ∧ ∀ A c : ℝ,
      1 ≤ A → 1 < c → c ≤ 3 / 2 → ∃ R1 R2 : ℝ,
      max 7 (actualBumpMovingHeight A c) ≤ R1 ∧
      R1 < max 7 (actualBumpMovingHeight A c)+2 ∧
      2*R1 ≤ R2 ∧ R2 ≤ 2*R1+3 ∧
      (∀ s : ℂ, (s.im = R1 ∨ s.im = -R1) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
          Cg*(Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2) ∧
      (∀ s : ℂ, (s.im = R2 ∨ s.im = -R2) → 1/2 ≤ s.re → s.re ≤ 2 →
        riemannZeta s ≠ 0 ∧ ‖logDeriv riemannZeta s‖ ≤
          Cg*(Real.log (((2*actualGoodHeightIndex A c+2 : ℕ) : ℝ)+3))^2) ∧
      ‖(actualOffAxisZeroHeightHead A R2 - actualOffAxisZeroHeightHead A R1) +
        (actualCriticalZeroHeightHead A R2 - actualCriticalZeroHeightHead A R1) -
        (actualCompletedVerticalHead A c R2 - actualCompletedVerticalHead A c R1)‖ ≤
      (actualHorizontalSourceConstant K c/A^9 * Real.exp (-((2*c-1)*A)/5)) *
        ((Real.log ((actualGoodHeightIndex A c : ℝ)+3))^2 +
          (Real.log (((2*actualGoodHeightIndex A c+2 : ℕ) : ℝ)+3))^2) / Real.pi := by
  obtain ⟨Cg,hCg,hgood⟩ := good_heights_at
  obtain ⟨K,hK,hbudget⟩ := actualOffAxisShell_compensated_norm_bound hCg
  refine ⟨Cg,K,hCg,hK,?_⟩
  intro A c hA hc hc2
  let j := actualGoodHeightIndex A c
  have hi := actualGoodHeightIndex_bounds A c
  have hj : 7 ≤ j := hi.1
  have hj2 : 7 ≤ 2*j+2 := by omega
  obtain ⟨R1,hjR1,hR1j,hg1⟩ := hgood j hj
  obtain ⟨R2,hjR2,hR2j,hg2⟩ := hgood (2*j+2) hj2
  have hcj : ((2*j+2 : ℕ) : ℝ) = 2*(j : ℝ)+2 := by norm_num
  have hlo : max 7 (actualBumpMovingHeight A c) ≤ R1 := hi.2.1.trans hjR1
  have hR1 : 7 ≤ R1 := (le_max_left _ _).trans hlo
  have hbase1 : actualBumpMovingHeight A c ≤ R1 := (le_max_right _ _).trans hlo
  have hdyad : 2*R1 ≤ R2 := by rw [hcj] at hjR2; linarith
  have hR12 : R1 ≤ R2 := by linarith
  refine ⟨R1,R2,hlo,by linarith [hi.2.2],hdyad,?_,hg1,hg2,?_⟩
  · rw [hcj] at hR2j
    linarith
  · exact hbudget A c R1 R2 j (2*j+2) hA hc hc2 hj hj2
      hjR1 hR1j hjR2 hR2j hR12 hg1 hg2 hbase1 (hbase1.trans hR12)

end FormalResearch.RiemannHypothesis.SourceActualSignedZeroDyadicShell
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variant4549242e616bab6691ad69a790a6ef5fdd15e2c2392eb4318874b77c74dd9964.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `008a5074e1b88821788ed4273a48dad3211a0bcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

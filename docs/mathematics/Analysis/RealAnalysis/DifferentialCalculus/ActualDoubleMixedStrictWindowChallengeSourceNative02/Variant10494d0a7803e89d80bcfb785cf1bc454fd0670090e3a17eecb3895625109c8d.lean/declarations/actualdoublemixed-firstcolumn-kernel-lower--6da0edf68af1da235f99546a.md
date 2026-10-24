# actualDoubleMixed_firstColumn_kernel_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c9d18ca-eede-3b46-73f5-fd3f8fa258c7",
  "kind": "theorem",
  "lexical_name": "actualDoubleMixed_firstColumn_kernel_lower",
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
  "slug": "actualdoublemixed-firstcolumn-kernel-lower--6da0edf68af1da235f99546a",
  "source": {
    "blob": "b3abd7433069b117a55acd1aadf6ba992942b6f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative02/Variant10494d0a7803e89d80bcfb785cf1bc454fd0670090e3a17eecb3895625109c8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6da0edf68af1da235f99546a97423267b67839ff9cc87ff3a31b9ae0daf1addc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative02/Variant10494d0a7803e89d80bcfb785cf1bc454fd0670090e3a17eecb3895625109c8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c9d18ca-eede-3b46-73f5-fd3f8fa258c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDoubleMixed_firstColumn_kernel_lower {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    (1 / 32 : ℝ) ≤ actualLogFourthKernel A (t + Real.log u) := by
  have hc := actualMixed_rectangle_correlation_lower hA ht ht1 hu hu2
  have h2 := RH16FiveCesaro.actualCorrelation_second_abs_le_five
    (by linarith : 91 ≤ A) (t + Real.log u)
  have h4 := actual_correlation_iterated_fourth_abs_le_sixty_seven
    A (t + Real.log u) (by linarith : 91 ≤ A)
  have h21 : |iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A)
      (t + Real.log u)| ≤ (1 / 1600 : ℝ) := by
    simp only [iteratedDeriv_succ, iteratedDeriv_zero]
    calc
      _ ≤ 5 / A ^ 2 := h2
      _ ≤ 5 / 8000 := div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by nlinarith)
      _ = 1 / 1600 := by norm_num
  have h41 : |iteratedDeriv 4 (sourceCorrelation explicitSecondDerivative A)
      (t + Real.log u)| ≤ (1 / 1600 : ℝ) := by
    calc
      _ ≤ 67 / A ^ 4 := h4
      _ ≤ 67 / 64000000 := div_le_div_of_nonneg_left (by norm_num)
        (by norm_num) (by nlinarith [sq_nonneg (A ^ 2 - 8000)])
      _ ≤ 1 / 1600 := by norm_num
  unfold actualLogFourthKernel
  linarith [(abs_le.mp h21).2, (abs_le.mp h41).1]

/-- The literal exponential factor stays positive and does not supply an A power. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative02/Variant10494d0a7803e89d80bcfb785cf1bc454fd0670090e3a17eecb3895625109c8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative02/Variant10494d0a7803e89d80bcfb785cf1bc454fd0670090e3a17eecb3895625109c8d.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3abd7433069b117a55acd1aadf6ba992942b6f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

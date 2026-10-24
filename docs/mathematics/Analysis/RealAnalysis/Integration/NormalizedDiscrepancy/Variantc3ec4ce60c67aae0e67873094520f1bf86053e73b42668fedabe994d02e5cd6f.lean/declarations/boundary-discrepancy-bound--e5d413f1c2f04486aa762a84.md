# boundary_discrepancy_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:278eb531-e9b6-d2c4-872c-e049320dd947",
  "kind": "theorem",
  "lexical_name": "boundary_discrepancy_bound",
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
  "slug": "boundary-discrepancy-bound--e5d413f1c2f04486aa762a84",
  "source": {
    "blob": "683e6a9262213a3abfb1a32ff90889e5c8b05494",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 44,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variantc3ec4ce60c67aae0e67873094520f1bf86053e73b42668fedabe994d02e5cd6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5d413f1c2f04486aa762a84a0a334851263de5a80c443d1f1b5676bd13633a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variantc3ec4ce60c67aae0e67873094520f1bf86053e73b42668fedabe994d02e5cd6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:278eb531-e9b6-d2c4-872c-e049320dd947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_discrepancy_bound {A B C c γ : ℝ} {E w H : ℝ → ℝ}
    (hA : 1 ≤ A) (hc : 0 ≤ c)
    (hMain : ∀ t : ℝ, 0 < t → |E t + γ| ≤ c / t ^ 2)
    (hGlobal : ∀ t : ℝ, |E t + γ| ≤ B + max 0 (-t))
    (hEnvelope : ∀ y ∈ Icc 0 (4 * A), |w y| ≤ H y)
    (hLeft : IntervalIntegrable (fun y => w y * (E (2 * A - y) + γ)) volume 0 A)
    (hRight : IntervalIntegrable (fun y => w y * (E (2 * A - y) + γ)) volume A (4 * A))
    (hHLeft : IntervalIntegrable H volume 0 A)
    (hHTail : IntervalIntegrable (fun y => H y * (B + y)) volume A (4 * A))
    (hMass : (∫ y in 0..A, H y) ≤ C) :
    |∫ y in 0..4 * A, w y * (E (2 * A - y) + γ)| ≤
      c * C / A ^ 2 + ∫ y in A..4 * A, H y * (B + y) := by
  have h0A : 0 ≤ A := by linarith
  have hAA : A ≤ 4 * A := by linarith
  have hscale : 0 ≤ c / A ^ 2 := div_nonneg hc (sq_nonneg A)
  have hmain : |∫ y in 0..A, w y * (E (2 * A - y) + γ)| ≤ c * C / A ^ 2 := by
    calc
      _ ≤ ∫ y in 0..A, |w y * (E (2 * A - y) + γ)| :=
        intervalIntegral.abs_integral_le_integral_abs h0A
      _ ≤ ∫ y in 0..A, H y * (c / A ^ 2) := by
        apply intervalIntegral.integral_mono_on h0A hLeft.abs (hHLeft.mul_const _)
        intro y hy
        have hyall : y ∈ Icc 0 (4 * A) := ⟨hy.1, hy.2.trans hAA⟩
        rw [abs_mul]
        exact (mul_le_mul_of_nonneg_left (discrepancy_on_main_window hA hc hMain hy)
          (abs_nonneg (w y))).trans
          (mul_le_mul_of_nonneg_right (hEnvelope y hyall) hscale)
      _ = (∫ y in 0..A, H y) * (c / A ^ 2) := intervalIntegral.integral_mul_const _ _
      _ ≤ C * (c / A ^ 2) := mul_le_mul_of_nonneg_right hMass hscale
      _ = c * C / A ^ 2 := by ring
  have htail : |∫ y in A..4 * A, w y * (E (2 * A - y) + γ)| ≤
      ∫ y in A..4 * A, H y * (B + y) := by
    calc
      _ ≤ ∫ y in A..4 * A, |w y * (E (2 * A - y) + γ)| :=
        intervalIntegral.abs_integral_le_integral_abs hAA
      _ ≤ _ := by
        apply intervalIntegral.integral_mono_on hAA hRight.abs hHTail
        intro y hy
        have hyall : y ∈ Icc 0 (4 * A) := ⟨h0A.trans hy.1, hy.2⟩
        rw [abs_mul]
        have he := discrepancy_on_tail_window hA hGlobal hy
        have hBy : 0 ≤ B + y := (abs_nonneg _).trans he
        exact (mul_le_mul_of_nonneg_left he (abs_nonneg (w y))).trans
          (mul_le_mul_of_nonneg_right (hEnvelope y hyall) hBy)
  rw [← intervalIntegral.integral_add_adjacent_intervals hLeft hRight]
  exact (abs_add_le _ _).trans (add_le_add hmain htail)

/-- Genuine integrability of the common tail justifies replacing [A,4A] by (A,∞). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variantc3ec4ce60c67aae0e67873094520f1bf86053e73b42668fedabe994d02e5cd6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NormalizedDiscrepancy/Variantc3ec4ce60c67aae0e67873094520f1bf86053e73b42668fedabe994d02e5cd6f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `683e6a9262213a3abfb1a32ff90889e5c8b05494` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# centered_error_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d8a35bbd-517e-6f85-f5f3-7b3cad11270a",
  "kind": "theorem",
  "lexical_name": "centered_error_bound",
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
  "slug": "centered-error-bound--887c6d60e1c43a2280190b5c",
  "source": {
    "blob": "edaa0bddf80cfcf4eaed73052fae331224074279",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:887c6d60e1c43a2280190b5ce02a69b88ebd14801d7783abaa9c2839c4fb5274",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d8a35bbd-517e-6f85-f5f3-7b3cad11270a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centered_error_bound {A d Y : ℝ} (hA : 1 ≤ A) (hd : 1 ≤ d) (hY : 1 ≤ Y)
    (v : ℝ → ℝ)
    (hv : ∀ y ∈ Icc 1 Y, |v y| ≤
      (1 + (1 / 2 + 5 / A) * Real.log y) / Real.sqrt d * y ^ (-(3 : ℝ) / 2)) :
    |∫ y in (1 : ℝ)..Y, (Int.fract y - 1 / 2) * v y| ≤
      (2 + 10 / A) / Real.sqrt d := by
  let c : ℝ := 1 / 2 + 5 / A
  let majorant : ℝ → ℝ := fun y =>
    (1 / (2 * Real.sqrt d)) * (y ^ (-(3 : ℝ) / 2) +
      c * (Real.log y * y ^ (-(3 : ℝ) / 2)))
  have hc : 0 ≤ c := by dsimp [c]; positivity
  have hi : IntervalIntegrable majorant volume 1 Y :=
    ((power_intervalIntegrable hY _).add
      ((log_power_intervalIntegrable hY).const_mul c)).const_mul _
  have he := intervalIntegral.norm_integral_le_of_norm_le hY (by
    apply Filter.Eventually.of_forall
    intro y hy
    rw [Real.norm_eq_abs, abs_mul]
    calc
      _ ≤ (1 / 2) * |v y| :=
        mul_le_mul_of_nonneg_right (centered_fract_abs_le y) (abs_nonneg _)
      _ ≤ (1 / 2) * ((1 + c * Real.log y) / Real.sqrt d *
          y ^ (-(3 : ℝ) / 2)) :=
        mul_le_mul_of_nonneg_left (hv y ⟨hy.1.le, hy.2⟩) (by norm_num)
      _ = majorant y := by dsimp [majorant]; ring) hi
  rw [Real.norm_eq_abs] at he
  apply he.trans
  dsimp [majorant]
  rw [intervalIntegral.integral_const_mul,
    intervalIntegral.integral_add (power_intervalIntegrable hY _)
      ((log_power_intervalIntegrable hY).const_mul c),
    intervalIntegral.integral_const_mul]
  calc
    _ ≤ (1 / (2 * Real.sqrt d)) * (2 + c * 4) := by
      gcongr
      · exact power_integral_le_two hY
      · exact log_power_integral_le_four hY
    _ = (2 + 10 / A) / Real.sqrt d := by dsimp [c]; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edaa0bddf80cfcf4eaed73052fae331224074279` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

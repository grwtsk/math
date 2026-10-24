# integral_thinHistoricalGreenResidual_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d5669a2-1fae-ec16-4111-dec4d7b1b713",
  "kind": "theorem",
  "lexical_name": "integral_thinHistoricalGreenResidual_zero",
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
  "slug": "integral-thinhistoricalgreenresidual-zero--257923bff8666bb2893bbf7b",
  "source": {
    "blob": "680e8d232c9dd1af0871f53fa4a80fd8985c8176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 24,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenModewiseReadout.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:257923bff8666bb2893bbf7ba1d735fc0562d10bede238a1bb2e8c8bc6dd045f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenModewiseReadout.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d5669a2-1fae-ec16-4111-dec4d7b1b713`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_thinHistoricalGreenResidual_zero
    {X : ℕ} (hX : 1 ≤ X) :
    (∫ t in (0 : ℝ)..1, thinHistoricalGreenResidual X t) = 0 := by
  unfold thinHistoricalGreenResidual
  rw [intervalIntegral.integral_ofReal]
  unfold center mass0 mass1 cumulative
  -- Finite step integrals and the logarithmic background reproduce the
  -- historical center mass0-mass1.
  simp_rw [intervalIntegral.integral_sub]
  have hstep (r : ℝ) (hr0 : 0 ≤ r) (hr1 : r ≤ 1) :
      (∫ t in (0 : ℝ)..1, thinHistoricalStep r t) = 1 - r := by
    unfold thinHistoricalStep
    rw [intervalIntegral.integral_indicator]
    · rw [intervalIntegral.integral_const]
      simp [Set.uIcc_of_le (by norm_num), hr0, hr1]
    · exact measurableSet_Ici
  have hloc : ∀ n ∈ centeredGreenWindow X,
      0 ≤ centeredGreenLocation X n ∧
      centeredGreenLocation X n ≤ 1 := by
    intro n hn
    unfold centeredGreenWindow centeredGreenLocation at *
    have hnI := Finset.mem_Ioc.mp hn
    have hXr : (0 : ℝ) < X := by exact_mod_cast hX
    constructor
    · have : (X : ℝ) < n := by exact_mod_cast hnI.1
      apply sub_nonneg.mpr
      exact (one_le_div hXr).mpr this.le
    · have : (n : ℝ) ≤ 2 * X := by exact_mod_cast hnI.2
      have hd : (n : ℝ) / X ≤ 2 := (div_le_iff₀ hXr).2 (by linarith)
      linarith
  have hatom :
      (∫ t in (0 : ℝ)..1, thinHistoricalAtomicCumulative X t) =
        ∑ n ∈ centeredGreenWindow X,
          centeredGreenArithmeticCoefficient n *
            (1 - centeredGreenLocation X n) := by
    unfold thinHistoricalAtomicCumulative
    rw [intervalIntegral.integral_finset_sum]
    apply Finset.sum_congr rfl
    intro n hn
    rw [intervalIntegral.integral_const_mul]
    exact congrArg (centeredGreenArithmeticCoefficient n)
      (hstep _ (hloc n hn).1 (hloc n hn).2)
  rw [cumulative_eq_atomic_sub_log]
  rw [intervalIntegral.integral_sub, hatom]
  have hlog :
      (∫ t in (0 : ℝ)..1, Real.log (1 + t)) =
        2 * Real.log 2 - 1 := by
    rw [intervalIntegral.integral_comp_add_right]
    norm_num
    rw [intervalIntegral.integral_log]
    norm_num
  rw [hlog]
  simp only [intervalIntegral.integral_const]
  field_simp
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenModewiseReadout.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenModewiseReadout.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `680e8d232c9dd1af0871f53fa4a80fd8985c8176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

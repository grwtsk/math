# pinnedPrimeWeightPsiSourceRule_signedResidual_stageEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c9990db-bd62-35e4-bb61-944bf4b10be8",
  "kind": "theorem",
  "lexical_name": "pinnedPrimeWeightPsiSourceRule_signedResidual_stageEnvelope",
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
  "slug": "pinnedprimeweightpsisourcerule-signedresidual-stageenvelope--b82ef8edce252cd459fd1f5d",
  "source": {
    "blob": "af64c7e1f8ffecceda8ec392a3027fdff8e943c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 205,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b82ef8edce252cd459fd1f5d378962012cdfca013ad77417169142a8e81e382a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c9990db-bd62-35e4-bb61-944bf4b10be8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pinnedPrimeWeightPsiSourceRule_signedResidual_stageEnvelope
    {ρ η : ℝ}
    (hρ : (3 : ℝ) / 4 ≤ ρ)
    (hη : 0 < η) :
    ∃ R : ℝ, 0 ≤ R ∧
      ∀ j : ℕ, ∀ v ∈ pinnedPrimeWeightNextOctave j,
        |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 ≤
          pinnedPrimeWeightStageErrorEnvelope j R ρ η := by
  obtain ⟨C₀, hC₀⟩ :=
    Chebyshev.psi_sub_theta_le_mul_sqrt
  let A : ℝ := |C₀|
  let e : ℝ := quadraticThreshold ρ + η / 2
  let S : ℝ := Real.rpow 2 e
  let R : ℝ := 2 * A * S + 1
  have hA : 0 ≤ A := abs_nonneg _
  have heHalf : (1 : ℝ) / 2 ≤ quadraticThreshold ρ :=
    half_le_quadraticThreshold hρ
  have he0 : 0 ≤ e := by
    dsimp [e]
    linarith
  have hS : 0 ≤ S := by
    dsimp [S]
    exact Real.rpow_nonneg (by norm_num) _
  have hR : 0 ≤ R := by
    dsimp [R]
    positivity
  refine ⟨R, hR, ?_⟩
  intro j v hv
  let X : ℕ := dyadicScale j
  let Y : ℕ := dyadicScale (j + 1)
  have hX : 0 < X := by
    dsimp [X]
    exact GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos j
  have hY : 0 < Y := by
    dsimp [Y]
    exact GRWTSK.NumberTheory.VonMangoldt.DyadicMellinConvergence.dyadicScale_pos (j + 1)
  have hYeq : Y = 2 * X := by
    dsimp [X, Y]
    exact dyadicScale_succ_eq_two_mul j
  have hpsiTheta :
      ψ v - θ v ≤ A * Real.sqrt v := by
    have h0 := hC₀ v
    have hCabs : C₀ ≤ A := by
      dsimp [A]
      exact le_abs_self C₀
    exact h0.trans
      (mul_le_mul_of_nonneg_right hCabs
        (Real.sqrt_nonneg v))
  have hsqrtY :
      Real.sqrt (((2 * Y : ℕ) : ℝ)) ≤
        2 * Real.rpow (Y : ℝ) e := by
    simpa [e] using
      (sqrt_twoX_le_two_thresholdAmplitude
        (ρ := quadraticThreshold ρ) (η := η)
        heHalf hη hY)
  have hsqrtV :
      Real.sqrt v ≤
        2 * Real.rpow (Y : ℝ) e := by
    exact (Real.sqrt_le_sqrt hv.2).trans hsqrtY
  have hYpow :
      Real.rpow (Y : ℝ) e =
        S * Real.rpow (X : ℝ) e := by
    calc
      Real.rpow (Y : ℝ) e =
          Real.rpow (2 * (X : ℝ)) e := by
        rw [hYeq]
        push_cast
        rfl
      _ = Real.rpow 2 e *
          Real.rpow (X : ℝ) e := by
        simp only [Real.rpow_eq_pow]
        exact Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2)
          (by exact_mod_cast hX.le)
      _ = S * Real.rpow (X : ℝ) e := by
        rfl
  have hsqrtX :
      Real.sqrt v ≤
        2 * S * Real.rpow (X : ℝ) e := by
    calc
      Real.sqrt v ≤ 2 * Real.rpow (Y : ℝ) e := hsqrtV
      _ = 2 * S * Real.rpow (X : ℝ) e := by
        rw [hYpow]
        ring
  have hresidual :
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| ≤
        2 * A * S * Real.rpow (X : ℝ) e := by
    rw [pinnedPrimeWeightPsiSourceRule_signedResidual_abs]
    calc
      ψ v - θ v ≤ A * Real.sqrt v := hpsiTheta
      _ ≤ A *
          (2 * S * Real.rpow (X : ℝ) e) :=
        mul_le_mul_of_nonneg_left hsqrtX hA
      _ = 2 * A * S * Real.rpow (X : ℝ) e := by
        ring
  have hXoneNat : 1 ≤ X :=
    Nat.one_le_iff_ne_zero.mpr (Nat.ne_of_gt hX)
  have hXone : (1 : ℝ) ≤ (X : ℝ) := by
    exact_mod_cast hXoneNat
  have hpowOne :
      1 ≤ Real.rpow (X : ℝ) e :=
    Real.one_le_rpow hXone he0
  have htotal :
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1 ≤
        R * Real.rpow (X : ℝ) e := by
    calc
      |pinnedPrimeWeightPsiSourceRule.signedResidual j v| + 1
          ≤ 2 * A * S * Real.rpow (X : ℝ) e +
              Real.rpow (X : ℝ) e :=
        add_le_add hresidual hpowOne
      _ = R * Real.rpow (X : ℝ) e := by
        dsimp [R]
        ring
  simpa [pinnedPrimeWeightStageErrorEnvelope, X, e] using htotal

/-- Explicit `7/8 -> 3/4` residual exponent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightPsiSourceRule.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af64c7e1f8ffecceda8ec392a3027fdff8e943c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

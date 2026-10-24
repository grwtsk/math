# thetaAtThreshold_to_energyAtThreshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f4230f6-3fbb-86d5-8079-3109e64991ba",
  "kind": "theorem",
  "lexical_name": "thetaAtThreshold_to_energyAtThreshold",
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
  "slug": "thetaatthreshold-to-energyatthreshold--d4cc88c8bbf95701f678920e",
  "source": {
    "blob": "b255aa4601e71c26aba1c46684f21f70ca7d7695",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 89,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4cc88c8bbf95701f678920e16b4a35188b343bdda916ebac9343ab26d5fb78f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f4230f6-3fbb-86d5-8079-3109e64991ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaAtThreshold_to_energyAtThreshold
    {ρ : ℝ}
    (hρ : (1 / 2 : ℝ) ≤ ρ)
    (hθ : AllDyadicThetaAtThreshold ρ) :
    AllDyadicEnergyAtThreshold ρ := by
  intro η hη
  obtain ⟨C, hC, j₀, htheta⟩ := hθ η hη
  obtain ⟨C₀, hC₀bound⟩ :=
    Chebyshev.psi_sub_theta_le_mul_sqrt
  let A₀ : ℝ := |C₀|
  let D : ℝ := C + 2 * A₀
  let E : ℝ := 6 * (3 * D + 1)^2
  have hA₀ : 0 ≤ A₀ := abs_nonneg _
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  have hE : 0 ≤ E := by
    dsimp [E]
    positivity
  refine ⟨E, hE, j₀, ?_⟩
  intro j hj
  let X : ℕ := dyadicScale j
  let a : ℝ := ρ + η / 2
  let T : ℝ := Real.rpow (X : ℝ) a
  have hX : 0 < X := by dsimp [X, dyadicScale]; positivity
  have hX2 : 2 ≤ X := by
    dsimp [X, dyadicScale]
    rw [pow_succ]
    have hp : 0 < (2 : ℕ)^j := pow_pos (by decide) _
    omega
  have hXr : (0 : ℝ) < (X : ℝ) := by exact_mod_cast hX
  have hT0 : 0 ≤ T := by
    dsimp [T]
    exact Real.rpow_nonneg hXr.le _
  have hT1 : 1 ≤ T := by
    dsimp [T, a]
    exact thresholdAmplitude_ge_one hρ hη hX
  have henv : PsiOctaveEnvelope X (D * T) := by
    refine ⟨mul_nonneg hD hT0, ?_⟩
    intro u hu
    have hthetaU :
        |thetaError u| + 1 ≤ C * T := by
      simpa [X, T, a] using htheta j hj u
        (by simpa [X] using hu)
    have hpsiTheta0 :
        0 ≤ ψ u - θ u :=
      sub_nonneg.mpr (Chebyshev.theta_le_psi u)
    have hpsiTheta :
        ψ u - θ u ≤
          2 * A₀ * T := by
      have h0 := hC₀bound u
      have hCabs : C₀ ≤ A₀ := by
        dsimp [A₀]
        exact le_abs_self C₀
      have hsqrtU :
          Real.sqrt u ≤ 2 * T := by
        have hsqrt2 :=
          sqrt_twoX_le_two_thresholdAmplitude
            hρ hη hX
        exact (Real.sqrt_le_sqrt hu.2).trans
          (by simpa [T, a, X] using hsqrt2)
      calc
        ψ u - θ u
            ≤ C₀ * Real.sqrt u := h0
        _ ≤ A₀ * Real.sqrt u :=
          mul_le_mul_of_nonneg_right hCabs
            (Real.sqrt_nonneg _)
        _ ≤ 2 * A₀ * T := by
          have :=
            mul_le_mul_of_nonneg_left hsqrtU hA₀
          nlinarith
    have herr :
        |psiError u| ≤
          |thetaError u| + (ψ u - θ u) := by
      unfold psiError thetaError
      have hid :
          ψ u - u =
            (θ u - u) + (ψ u - θ u) := by ring
      rw [hid]
      simpa only [abs_of_nonneg hpsiTheta0] using
        (abs_add_le (θ u - u) (ψ u - θ u))
    dsimp [D]
    nlinarith
  have henergy :=
    augmentedEnergy_le_of_psiEnvelope hX2 henv
  have hnumer :
      3 * (D * T) + 1 ≤
        (3 * D + 1) * T := by
    nlinarith
  have hratio :
      (3 * (D * T) + 1) / (X : ℝ) ≤
        ((3 * D + 1) * T) / (X : ℝ) :=
    div_le_div_of_nonneg_right hnumer hXr.le
  have hsquare :
      ((3 * (D * T) + 1) / (X : ℝ))^2 ≤
        (((3 * D + 1) * T) / (X : ℝ))^2 := by
    exact (sq_le_sq₀ (by positivity) (by positivity)).2 hratio
  have hcoarse :
      augmentedEnergy X ≤
        6 * (((3 * D + 1) * T) / (X : ℝ))^2 :=
    henergy.trans
      (mul_le_mul_of_nonneg_left hsquare (by norm_num))
  have hpow :
      (T / (X : ℝ))^2 =
        Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
    dsimp [T, a]
    rw [div_pow]
    rw [← Real.rpow_two]
    rw [← Real.rpow_mul hXr.le]
    rw [show ((X : ℝ)^2) =
      Real.rpow (X : ℝ) 2 by
        rw [Real.rpow_eq_pow, Real.rpow_two]]
    simp only [Real.rpow_eq_pow]
    rw [← Real.rpow_sub hXr]
    congr 1
    ring
  dsimp [E]
  calc
    augmentedEnergy X
        ≤ 6 * (((3 * D + 1) * T) / (X : ℝ))^2 := hcoarse
    _ = 6 * (3 * D + 1)^2 * (T / (X : ℝ))^2 := by
      ring
    _ = 6 * (3 * D + 1)^2 *
        Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
      rw [hpow]
    _ = E * Real.rpow (X : ℝ)
          (-2 * (1 - ρ) + η) := by
      rfl

/-- The linear arithmetic/Mellin route returns exactly the supplied threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/GradedThetaThresholdTransport.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b255aa4601e71c26aba1c46684f21f70ca7d7695` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

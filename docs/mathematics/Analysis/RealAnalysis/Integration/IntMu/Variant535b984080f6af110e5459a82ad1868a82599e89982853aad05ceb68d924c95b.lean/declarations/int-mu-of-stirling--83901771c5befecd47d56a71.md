# int_mu_of_stirling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0c0e30a-c5b9-80e5-c169-ea12dd29fc2e",
  "kind": "theorem",
  "lexical_name": "int_mu_of_stirling",
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
  "slug": "int-mu-of-stirling--83901771c5befecd47d56a71",
  "source": {
    "blob": "45a2c5160e9cf8b6b0e5e6ce4ab2189871d8305d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83901771c5befecd47d56a71b981467f0180b9515bc4914c97c4446adb58cd06",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0c0e30a-c5b9-80e5-c169-ea12dd29fc2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem int_mu_of_stirling (hst : StirlingHyp) :
    ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ T →
      |(∫ τ in T..(2 * T), Zeta23.mu τ) - T * ell1 T / (2 * Real.pi)| ≤ C / T := by
  obtain ⟨C, hC⟩ := hst
  have hC0 : 0 ≤ C := by
    have h := hC 1 (by norm_num)
    have := abs_nonneg (Zeta23.mu 1 - 1 / (2 * Real.pi) * Real.log (|1| / (2 * Real.pi)))
    nlinarith
  have hμcont : Continuous Zeta23.mu := Zeta23.mu_smooth.continuous
  refine ⟨C, 1, fun T hT => ?_⟩
  have hT0 : (0 : ℝ) < T := by linarith
  -- split μ = main + error on [T, 2T]
  have hint_mu : IntervalIntegrable Zeta23.mu volume T (2 * T) :=
    hμcont.intervalIntegrable _ _
  have hint_main : IntervalIntegrable
      (fun τ : ℝ => (1 / (2 * Real.pi)) * Real.log (τ / (2 * Real.pi))) volume T (2 * T) := by
    apply ContinuousOn.intervalIntegrable
    rw [Set.uIcc_of_le (by linarith)]
    refine ContinuousOn.mul continuousOn_const ?_
    intro τ hτ
    have hτ0 : (0 : ℝ) < τ := lt_of_lt_of_le hT0 hτ.1
    exact ((Real.continuousAt_log (by positivity)).comp
      (continuousAt_id.div_const _)).continuousWithinAt
  have hsplit : (∫ τ in T..(2 * T), Zeta23.mu τ)
      = (∫ τ in T..(2 * T), (1 / (2 * Real.pi)) * Real.log (τ / (2 * Real.pi)))
        + ∫ τ in T..(2 * T),
            (Zeta23.mu τ - (1 / (2 * Real.pi)) * Real.log (τ / (2 * Real.pi))) := by
    rw [← intervalIntegral.integral_add hint_main (hint_mu.sub hint_main)]
    congr 1
    funext τ
    ring
  rw [hsplit, integral_main_eq hT0]
  rw [add_sub_cancel_left]
  -- bound the error integral
  have herr_int : IntervalIntegrable
      (fun τ : ℝ => Zeta23.mu τ - (1 / (2 * Real.pi)) * Real.log (τ / (2 * Real.pi)))
      volume T (2 * T) := hint_mu.sub hint_main
  have hbound : ∀ τ ∈ Set.Icc T (2 * T),
      |Zeta23.mu τ - (1 / (2 * Real.pi)) * Real.log (τ / (2 * Real.pi))| ≤ C / τ ^ 2 := by
    intro τ hτ
    have hτ1 : (1 : ℝ) ≤ τ := le_trans hT hτ.1
    have habs : |τ| = τ := abs_of_pos (by linarith)
    have h := hC τ (by rwa [habs])
    rwa [habs] at h
  have hCtau : IntervalIntegrable (fun τ : ℝ => C / τ ^ 2) volume T (2 * T) := by
    apply ContinuousOn.intervalIntegrable
    rw [Set.uIcc_of_le (by linarith)]
    intro τ hτ
    have hτ0 : (0 : ℝ) < τ := lt_of_lt_of_le hT0 hτ.1
    exact (continuousAt_const.div (continuousAt_pow _ _) (by positivity)).continuousWithinAt
  have hCint : ∫ τ in T..(2 * T), C / τ ^ 2 = C / (2 * T) := by
    have hftc2 : ∀ τ ∈ Set.uIcc T (2 * T),
        HasDerivAt (fun x : ℝ => -C / x) (C / τ ^ 2) τ := by
      intro τ hτ
      rw [Set.uIcc_of_le (by linarith)] at hτ
      have hτ0 : (0 : ℝ) < τ := lt_of_lt_of_le hT0 hτ.1
      have hinv : HasDerivAt (fun x : ℝ => x⁻¹) (-1 / τ ^ 2) τ := (hasDerivAt_id τ).inv hτ0.ne'
      have h1 := hinv.const_mul (-C)
      have h3 : (fun x : ℝ => -C * x⁻¹) = fun x : ℝ => -C / x := by
        funext x
        ring
      rw [h3] at h1
      have heq : C / τ ^ 2 = -C * (-1 / τ ^ 2) := by ring
      rw [heq]
      exact h1
    rw [integral_eq_sub_of_hasDerivAt hftc2 hCtau]
    field_simp
    ring
  calc |∫ τ in T..(2 * T),
        (Zeta23.mu τ - (1 / (2 * Real.pi)) * Real.log (τ / (2 * Real.pi)))|
      ≤ ∫ τ in T..(2 * T),
          |Zeta23.mu τ - (1 / (2 * Real.pi)) * Real.log (τ / (2 * Real.pi))| :=
        intervalIntegral.abs_integral_le_integral_abs (by linarith)
    _ ≤ ∫ τ in T..(2 * T), C / τ ^ 2 := by
        refine intervalIntegral.integral_mono_on (by linarith) herr_int.abs hCtau ?_
        intro τ hτ
        exact hbound τ hτ
    _ = C / (2 * T) := hCint
    _ ≤ C / T := by
        have h2 : (0 : ℝ) < 2 * T := by linarith
        rw [div_le_div_iff₀ h2 hT0]
        nlinarith

/-- FTC anchor: ∫_T^{2T} log²(τ/2π) dτ = T(ℓ₁² + 1 − 2log²2) for T > 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntMu/Variant535b984080f6af110e5459a82ad1868a82599e89982853aad05ceb68d924c95b.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45a2c5160e9cf8b6b0e5e6ce4ab2189871d8305d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

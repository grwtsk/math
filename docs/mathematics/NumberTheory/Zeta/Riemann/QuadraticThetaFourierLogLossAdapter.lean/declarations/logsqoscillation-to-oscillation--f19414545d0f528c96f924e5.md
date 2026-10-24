# logSqOscillation_to_oscillation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe0d05fd-ed1e-8df0-f807-0a3225d68b7d",
  "kind": "theorem",
  "lexical_name": "logSqOscillation_to_oscillation",
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
  "slug": "logsqoscillation-to-oscillation--f19414545d0f528c96f924e5",
  "source": {
    "blob": "a9553c7e01ea056d11febaeb2355b2f92a2f3eab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 67,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f19414545d0f528c96f924e5bfffd8f2dcc80cdcab8dac6f01ab9749bb10d02d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe0d05fd-ed1e-8df0-f807-0a3225d68b7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logSqOscillation_to_oscillation
    {ρ : ℝ}
    (hlogosc : DyadicThetaErrorLogSqOscillationAt ρ) :
    DyadicThetaErrorOscillationAt ρ := by
  obtain ⟨S, hS, jbase, hbound⟩ := hlogosc
  intro η hη
  have hδ : 0 < η / 2 := by linarith
  obtain ⟨L, hL⟩ :
      ∃ L : ℝ, ∀ x ≥ L,
        (Real.log x)^2 ≤ Real.rpow x (η / 2) := by
    simpa only [eventually_atTop] using
      (eventually_log_sq_le_rpow hδ)
  have hscale :
      Tendsto (fun j : ℕ => (dyadicScale j : ℝ))
        atTop atTop := by
    unfold dyadicScale
    exact_mod_cast
      tendsto_pow_atTop_atTop_of_one_lt
        (by norm_num : 1 < (2 : ℕ))
  obtain ⟨jL, hjL⟩ :
      ∃ jL : ℕ, L ≤ (dyadicScale jL : ℝ) := by
    simpa only [eventually_atTop] using
      hscale.eventually_ge_atTop L
  let j₀ : ℕ := max jbase jL
  refine ⟨S, hS, j₀, ?_⟩
  intro j hj u hu
  have hjbase : jbase ≤ j := le_trans (le_max_left _ _) hj
  have hjL' : jL ≤ j := le_trans (le_max_right _ _) hj
  have hmono :
      dyadicScale jL ≤ dyadicScale j := by
    unfold dyadicScale
    exact pow_le_pow_right₀ (by norm_num : 0 ≤ (2 : ℕ))
      (Nat.add_le_add_right hjL' 1)
  have hXL :
      L ≤ (dyadicScale j : ℝ) :=
    hjL.trans (by exact_mod_cast hmono)
  have hlog :
      (Real.log (dyadicScale j : ℝ))^2 ≤
        Real.rpow (dyadicScale j : ℝ) (η / 2) :=
    hL _ hXL
  have hXpos : (0 : ℝ) < (dyadicScale j : ℝ) := by
    exact_mod_cast dyadicScale_pos j
  have hpow0 :
      0 ≤ Real.rpow (dyadicScale j : ℝ)
        (quadraticThreshold ρ) :=
    Real.rpow_nonneg hXpos.le _
  have hmul :
      S *
          Real.rpow (dyadicScale j : ℝ)
            (quadraticThreshold ρ) *
          (Real.log (dyadicScale j : ℝ))^2 ≤
        S *
          Real.rpow (dyadicScale j : ℝ)
            (quadraticThreshold ρ + η / 2) := by
    have h1 :=
      mul_le_mul_of_nonneg_left hlog
        (mul_nonneg hS hpow0)
    rw [← mul_assoc] at h1
    rw [← Real.rpow_add hXpos.le]
    simpa [mul_assoc] using h1
  exact (hbound j hjbase u hu).trans hmul

/-- A logarithmic-loss Fourier maximal readout is already sufficient for the
graded short-interval oscillation theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaFourierLogLossAdapter.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9553c7e01ea056d11febaeb2355b2f92a2f3eab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# psiAtThreshold_to_thetaAtThreshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3799a707-a077-817a-d8b5-d447e9dc4014",
  "kind": "theorem",
  "lexical_name": "psiAtThreshold_to_thetaAtThreshold",
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
  "slug": "psiatthreshold-to-thetaatthreshold--0939453f84e2ee6b41bb5399",
  "source": {
    "blob": "f7ed85d75ce10b1b3a1803aad500ab070607110c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 129,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0939453f84e2ee6b41bb53998eaac3d77d1c2783932e0cc8ff5797d4b97a1d09",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3799a707-a077-817a-d8b5-d447e9dc4014`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem psiAtThreshold_to_thetaAtThreshold
    {ρ : ℝ}
    (hρ : (1 / 2 : ℝ) ≤ ρ)
    (hψ : AllDyadicPsiAtThreshold ρ) :
    AllDyadicThetaAtThreshold ρ := by
  intro η hη
  obtain ⟨C, hC, j₀, hψbound⟩ := hψ η hη
  obtain ⟨C₀, hC₀bound⟩ :=
    Chebyshev.psi_sub_theta_le_mul_sqrt
  let A₀ : ℝ := |C₀|
  let D : ℝ := C + 2 * A₀
  have hA₀ : 0 ≤ A₀ := abs_nonneg _
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D, hD, j₀, ?_⟩
  intro j hj u hu
  let X : ℕ := dyadicScale j
  let T : ℝ :=
    Real.rpow (X : ℝ) (ρ + η / 2)
  have hX : 0 < X := dyadicScale_pos j
  have hψu :
      |psiError u| + 1 ≤ C * T := by
    simpa [X, T] using hψbound j hj u
      (by simpa [X] using hu)
  have hpsiTheta0 :
      0 ≤ ψ u - θ u :=
    sub_nonneg.mpr (Chebyshev.theta_le_psi u)
  have hpsiTheta :
      ψ u - θ u ≤ 2 * A₀ * T := by
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
        (by simpa [X, T] using hsqrt2)
    calc
      ψ u - θ u ≤ C₀ * Real.sqrt u := h0
      _ ≤ A₀ * Real.sqrt u :=
        mul_le_mul_of_nonneg_right hCabs
          (Real.sqrt_nonneg _)
      _ ≤ 2 * A₀ * T := by
        have :=
          mul_le_mul_of_nonneg_left hsqrtU hA₀
        nlinarith
  have herr :
      |thetaError u| ≤
        |psiError u| + (ψ u - θ u) := by
    unfold psiError thetaError
    have hid :
        θ u - u =
          (ψ u - u) - (ψ u - θ u) := by ring
    rw [hid]
    exact (abs_sub _ _).trans
      (add_le_add_left
        (by simpa [abs_of_nonneg hpsiTheta0])
        |ψ u - u|)
  dsimp [D]
  linarith

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/GradedPsiThresholdTransport.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7ed85d75ce10b1b3a1803aad500ab070607110c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

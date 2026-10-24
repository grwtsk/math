# thetaOctaveSquareRootBound_to_psi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:189efdde-a65c-9c2b-5534-df952ad782b6",
  "kind": "theorem",
  "lexical_name": "thetaOctaveSquareRootBound_to_psi",
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
  "slug": "thetaoctavesquarerootbound-to-psi--320bc491469031e5e3734354",
  "source": {
    "blob": "36836862adf42300225202b9120570933e02be64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 111,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:320bc491469031e5e37343542ba6ee2774b90b1943e1892b46a3df064de9ed93",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:189efdde-a65c-9c2b-5534-df952ad782b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaOctaveSquareRootBound_to_psi
    (htheta : AllDyadicThetaOctaveSquareRootBound) :
    AllDyadicPsiOctaveSquareRootBound := by
  intro η hη
  obtain ⟨C, hC, j₀, hthetaBound⟩ := htheta η hη
  obtain ⟨C₀, hC₀⟩ := Chebyshev.psi_sub_theta_le_mul_sqrt
  let A₀ : ℝ := |C₀|
  let D : ℝ := C + 2 * A₀
  have hA₀ : 0 ≤ A₀ := abs_nonneg _
  have hD : 0 ≤ D := by
    dsimp [D]
    positivity
  refine ⟨D, hD, j₀, ?_⟩
  intro j hj u hu
  let X : ℕ := dyadicScale j
  let target : ℝ :=
    (X : ℝ) * Real.sqrt (Real.rpow (X : ℝ) (-1 + η))
  have hX : 0 < X := by dsimp [X, dyadicScale]; positivity
  have huTheta :
      |thetaError u| + 1 ≤ C * target := by
    simpa [X, target, thetaError, mul_assoc] using hthetaBound j hj u
      (by simpa [X] using hu)
  have hpsiTheta0 :
      0 ≤ ψ u - θ u :=
    sub_nonneg.mpr (Chebyshev.theta_le_psi u)
  have hpsiTheta :
      ψ u - θ u ≤ A₀ * Real.sqrt u := by
    have h0 := hC₀ u
    have hCabs : C₀ ≤ A₀ := by
      dsimp [A₀]
      exact le_abs_self C₀
    exact h0.trans
      (mul_le_mul_of_nonneg_right hCabs (Real.sqrt_nonneg u))
  have hu0 : 0 ≤ u := (show (0 : ℝ) ≤ dyadicScale j by exact_mod_cast hX.le).trans hu.1
  have hsqrt_u :
      Real.sqrt u ≤
        Real.sqrt (((2 * X : ℕ) : ℝ)) :=
    Real.sqrt_le_sqrt hu.2
  have hsqrt_target :
      Real.sqrt u ≤ 2 * target := by
    exact hsqrt_u.trans (by
      simpa [target] using sqrt_twoX_le_two_target hX hη)
  have hhp :
      ψ u - θ u ≤ 2 * A₀ * target := by
    exact hpsiTheta.trans
      (by
        have := mul_le_mul_of_nonneg_left hsqrt_target hA₀
        nlinarith)
  have herr :
      |psiError u| ≤ |thetaError u| + (ψ u - θ u) := by
    unfold psiError thetaError
    have hid :
        ψ u - u = (θ u - u) + (ψ u - θ u) := by ring
    rw [hid]
    simpa only [abs_of_nonneg hpsiTheta0] using
      (abs_add_le (θ u - u) (ψ u - θ u))
  change |psiError u| + 1 ≤ D * (X : ℝ) *
    Real.sqrt (Real.rpow (X : ℝ) (-1 + η))
  calc
    |psiError u| + 1 ≤ (|thetaError u| + 1) + (ψ u - θ u) := by linarith [herr]
    _ ≤ C * target + 2 * A₀ * target := add_le_add huTheta hhp
    _ = D * (X : ℝ) * Real.sqrt (Real.rpow (X : ℝ) (-1 + η)) := by
      dsimp [D, target]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicThetaOctaveSupplier.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36836862adf42300225202b9120570933e02be64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

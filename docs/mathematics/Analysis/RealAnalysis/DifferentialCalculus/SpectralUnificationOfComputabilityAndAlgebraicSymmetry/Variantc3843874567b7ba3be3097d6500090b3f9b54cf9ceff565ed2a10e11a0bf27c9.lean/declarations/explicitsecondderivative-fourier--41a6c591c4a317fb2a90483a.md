# explicitSecondDerivative_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d96db2b7-8e7c-4b1f-51c7-6966562f6719",
  "kind": "theorem",
  "lexical_name": "explicitSecondDerivative_fourier",
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
  "slug": "explicitsecondderivative-fourier--41a6c591c4a317fb2a90483a",
  "source": {
    "blob": "c25ff0b4eda501229532c83da1d30fc82fa6948c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41a6c591c4a317fb2a90483a23e4425d664dc382be4b0dceb42637c2de4840f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d96db2b7-8e7c-4b1f-51c7-6966562f6719`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicitSecondDerivative_fourier (A ξ : ℝ) (hA : 1 ≤ A) :
    sourceFourier (explicitSecondDerivative A) ξ =
      -(ξ : ℂ) ^ 2 * sourceFourier (scaledBump A) ξ := by
  have hpos : 0 < A := by linarith
  have hne : A ≠ 0 := ne_of_gt hpos
  let w : ℝ → ℂ := fun x ↦ Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))
  let c : ℂ := Complex.I * (ξ : ℂ)
  have hw : Continuous w := by dsimp [w]; fun_prop
  have hc : Continuous (fun x ↦ c * w x) := continuous_const.mul hw
  have hb : Continuous (fun x ↦ (bumpInterior A x : ℂ)) :=
    Complex.continuous_ofReal.comp (bumpInterior_continuous A)
  have hf : Continuous (fun x ↦ (firstInterior A x : ℂ)) :=
    Complex.continuous_ofReal.comp (firstInterior_continuous A)
  have hs : Continuous (fun x ↦ (secondInterior A x : ℂ)) :=
    Complex.continuous_ofReal.comp (secondInterior_continuous A)
  have ibp₁ := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A) hb.continuousOn hw.continuousOn
    (fun x _ ↦ (bumpInterior_hasDerivAt A x).ofReal_comp)
    (fun x _ ↦ wave_hasDerivAt ξ x)
    (hf.intervalIntegrable (-A) A) (hc.intervalIntegrable (-A) A)
  have ibp₂ := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A) hf.continuousOn hw.continuousOn
    (fun x _ ↦ (firstInterior_hasDerivAt A x).ofReal_comp)
    (fun x _ ↦ wave_hasDerivAt ξ x)
    (hs.intervalIntegrable (-A) A) (hc.intervalIntegrable (-A) A)
  rw [(bumpInterior_endpoints A hne).1, (bumpInterior_endpoints A hne).2] at ibp₁
  rw [(firstInterior_endpoints A hne).1, (firstInterior_endpoints A hne).2] at ibp₂
  simp only [Complex.ofReal_zero, zero_mul, sub_zero, zero_sub] at ibp₁ ibp₂
  have hfactor (f : ℝ → ℝ) :
      (∫ x in -A..A, (f x : ℂ) * (c * w x)) =
        c * ∫ x in -A..A, (f x : ℂ) * w x := by
    simp_rw [mul_left_comm (f _ : ℂ) c]
    rw [intervalIntegral.integral_const_mul]
  change (∫ x in -A..A, (bumpInterior A x : ℂ) * (c * w x)) =
    -(∫ x in -A..A, (firstInterior A x : ℂ) * w x) at ibp₁
  change (∫ x in -A..A, (firstInterior A x : ℂ) * (c * w x)) =
    -(∫ x in -A..A, (secondInterior A x : ℂ) * w x) at ibp₂
  rw [hfactor] at ibp₁ ibp₂
  rw [scaledBump_eq_indicator A hpos, explicitSecondDerivative,
    sourceFourier_indicator _ _ _ _ (by linarith),
    sourceFourier_indicator _ _ _ _ (by linarith)]
  change (∫ x in -A..A, (secondInterior A x : ℂ) * w x) =
    -(ξ : ℂ) ^ 2 * ∫ x in -A..A, (bumpInterior A x : ℂ) * w x
  have hcsq : c * c = -(ξ : ℂ) ^ 2 := by
    dsimp [c]
    calc
      _ = (Complex.I * Complex.I) * (ξ : ℂ) ^ 2 := by ring
      _ = _ := by rw [Complex.I_mul_I]; ring
  calc
    _ = c * (c * ∫ x in -A..A, (bumpInterior A x : ℂ) * w x) := by
      rw [ibp₁]
      linear_combination ibp₂
    _ = _ := by rw [← mul_assoc, hcsq]

/-- Exact linearity for the integrable source bump subtraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantc3843874567b7ba3be3097d6500090b3f9b54cf9ceff565ed2a10e11a0bf27c9.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c25ff0b4eda501229532c83da1d30fc82fa6948c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

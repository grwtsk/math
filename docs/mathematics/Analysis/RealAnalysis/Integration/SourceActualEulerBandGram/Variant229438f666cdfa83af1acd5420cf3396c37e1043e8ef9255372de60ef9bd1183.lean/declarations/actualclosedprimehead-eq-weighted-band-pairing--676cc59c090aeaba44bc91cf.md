# actualClosedPrimeHead_eq_weighted_band_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66d67ae4-46c9-d97b-368a-2637f47b425e",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeHead_eq_weighted_band_pairing",
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
  "slug": "actualclosedprimehead-eq-weighted-band-pairing--676cc59c090aeaba44bc91cf",
  "source": {
    "blob": "fa5fcec7013ad60d1bf27b85e3a7473ac226e7e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 171,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant229438f666cdfa83af1acd5420cf3396c37e1043e8ef9255372de60ef9bd1183.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:676cc59c090aeaba44bc91cf43ca7e444f9b60b82e091b96e67c56242d583117",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant229438f666cdfa83af1acd5420cf3396c37e1043e8ef9255372de60ef9bd1183.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d67ae4-46c9-d97b-368a-2637f47b425e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeHead_eq_weighted_band_pairing {A T : ℝ}
    (hA : 1 ≤ A) (hT : 0 ≤ T) :
    actualClosedPrimeHead A (3 / 2) T =
      ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊ + 1),
        ((if n = 0 then 0 else ArithmeticFunction.vonMangoldt n /
          (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ) *
          ⟪actualTiltBandState A T,
            translation (Real.log n) (reflection (actualTiltBandState A T))⟫_ℂ := by
  unfold actualClosedPrimeHead actualClosedPrimeDirichletPolynomial
  norm_num only [Complex.ofReal_div, Complex.ofReal_ofNat]
  simp_rw [Finset.mul_sum]
  rw [intervalIntegral.integral_finsetSum (fun n _ => term_density_integrable hA n T),
    Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n _
  rcases eq_or_ne n 0 with rfl | hn
  · simp
  · rw [if_neg hn, actualTiltBand_reflected_pairing_eq_angular hA hT]
    simp_rw [term_phase n _ hn]
    rw [show (fun t : ℝ =>
      actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
        (((ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ) *
          Complex.exp (-(t : ℂ) * (Real.log n : ℂ) * I))) =
      (fun t : ℝ => ((ArithmeticFunction.vonMangoldt n /
        (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ) *
          (actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I) *
            Complex.exp (-(t : ℂ) * (Real.log n : ℂ) * I))) by funext t; ring]
    rw [intervalIntegral.integral_const_mul]
    ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant229438f666cdfa83af1acd5420cf3396c37e1043e8ef9255372de60ef9bd1183.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variant229438f666cdfa83af1acd5420cf3396c37e1043e8ef9255372de60ef9bd1183.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa5fcec7013ad60d1bf27b85e3a7473ac226e7e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

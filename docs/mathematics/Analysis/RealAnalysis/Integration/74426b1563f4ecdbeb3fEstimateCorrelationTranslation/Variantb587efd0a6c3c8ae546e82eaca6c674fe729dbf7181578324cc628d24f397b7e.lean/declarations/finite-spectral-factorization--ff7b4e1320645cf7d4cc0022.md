# finite_spectral_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfc2b9c9-ce92-56b3-a205-5e11a292702a",
  "kind": "theorem",
  "lexical_name": "finite_spectral_factorization",
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
  "slug": "finite-spectral-factorization--ff7b4e1320645cf7d4cc0022",
  "source": {
    "blob": "225d3a34d6f678c5f74cad27f8b40b76fcdcabd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff7b4e1320645cf7d4cc00229cf7ec1024e5c9421d6804be532ba11f916f1685",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfc2b9c9-ce92-56b3-a205-5e11a292702a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_spectral_factorization (A : ℝ) (hA : 1 ≤ A)
    (S T : Finset ℕ) (a b : ℕ → ℝ) :
    ((∑ i ∈ S, ∑ j ∈ T,
      (a i * b j) * sourceCorrelation explicitSecondDerivative A
        (Real.log (i : ℝ) + Real.log (j : ℝ)) : ℝ) : ℂ) =
      ∫ ξ, (spectralWeight A ξ : ℂ) *
        dirichletPolynomial S a ξ * dirichletPolynomial T b ξ := by
  have hp (i j : ℕ) : Integrable (fun ξ ↦
      ((a i * b j : ℝ) : ℂ) *
        (Complex.exp (((2 * Real.pi * (Real.log (i : ℝ) + Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
          Complex.I) * (spectralWeight A ξ : ℂ))) :=
    (spectral_phase_integrable A _ hA).const_mul _
  calc
    _ = ∑ i ∈ S, ∑ j ∈ T, ∫ ξ,
        ((a i * b j : ℝ) : ℂ) *
          (Complex.exp (((2 * Real.pi * (Real.log (i : ℝ) + Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
            Complex.I) * (spectralWeight A ξ : ℂ)) := by
      simp only [Complex.ofReal_sum, Complex.ofReal_mul,
        sourceCorrelation_eq_spectral_integral A _ hA, integral_const_mul]
    _ = ∫ ξ, ∑ i ∈ S, ∑ j ∈ T,
        ((a i * b j : ℝ) : ℂ) *
          (Complex.exp (((2 * Real.pi * (Real.log (i : ℝ) + Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
            Complex.I) * (spectralWeight A ξ : ℂ)) := by
      rw [integral_finsetSum S]
      · apply Finset.sum_congr rfl
        intro i hi
        exact (integral_finsetSum T fun j _ ↦ hp i j).symm
      · intro i hi
        exact integrable_finsetSum T fun j _ ↦ hp i j
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      unfold dirichletPolynomial
      simp only [Finset.mul_sum, Finset.sum_mul]
      conv_rhs => rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro i hi
      apply Finset.sum_congr rfl
      intro j hj
      have heq : (((2 * Real.pi * (Real.log (i : ℝ) + Real.log (j : ℝ)) * ξ : ℝ) : ℂ) *
          Complex.I) =
        (((2 * Real.pi * Real.log (i : ℝ) * ξ : ℝ) : ℂ) * Complex.I) +
          (((2 * Real.pi * Real.log (j : ℝ) * ξ : ℝ) : ℂ) * Complex.I) := by
        push_cast
        ring
      rw [heq, Complex.exp_add]
      push_cast
      ring

/-- The exact full residual factors spectrally without replacing signed arithmetic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `225d3a34d6f678c5f74cad27f8b40b76fcdcabd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

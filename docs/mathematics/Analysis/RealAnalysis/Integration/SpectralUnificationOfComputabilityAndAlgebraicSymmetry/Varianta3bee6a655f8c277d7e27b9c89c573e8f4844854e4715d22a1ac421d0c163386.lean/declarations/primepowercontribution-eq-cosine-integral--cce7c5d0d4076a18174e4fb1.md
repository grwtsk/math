# primePowerContribution_eq_cosine_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fca690f5-d847-9fdf-2e37-1e637a13eb62",
  "kind": "theorem",
  "lexical_name": "primePowerContribution_eq_cosine_integral",
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
  "slug": "primepowercontribution-eq-cosine-integral--cce7c5d0d4076a18174e4fb1",
  "source": {
    "blob": "0849e6295c3f90ed2a41b1a3b8581cd497fc61d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 126,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta3bee6a655f8c277d7e27b9c89c573e8f4844854e4715d22a1ac421d0c163386.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cce7c5d0d4076a18174e4fb1cccebb9b112b340ac6d50652347e0c40ad2aa9d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta3bee6a655f8c277d7e27b9c89c573e8f4844854e4715d22a1ac421d0c163386.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fca690f5-d847-9fdf-2e37-1e637a13eb62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primePowerContribution_eq_cosine_integral (g : ℝ → ℝ → ℝ) (A : ℝ)
    (ρ : ℝ → ℝ)
    (hcos : ∀ n ∈ primeIndices A,
      Integrable (fun ξ ↦ Real.cos (ξ * Real.log n) * ρ ξ))
    (hcorr : ∀ n ∈ primeIndices A,
      sourceCorrelation g A (Real.log n) =
        ∫ ξ, Real.cos (ξ * Real.log n) * ρ ξ) :
    -2 * primePowerContribution g A = ∫ ξ, cosineMultiplier A ξ * ρ ξ := by
  have hsum := integral_finsetSum (primeIndices A)
    (fun n hn ↦ (hcos n hn).const_mul (primeWeight n))
  simp_rw [integral_const_mul] at hsum
  calc
    -2 * primePowerContribution g A =
        -2 * ∑ n ∈ primeIndices A,
          primeWeight n * ∫ ξ, Real.cos (ξ * Real.log n) * ρ ξ := by
      congr 1
      apply Finset.sum_congr rfl
      intro n hn
      rw [hcorr n hn]
      rfl
    _ = ∫ ξ, -2 * ∑ n ∈ primeIndices A,
          primeWeight n * (Real.cos (ξ * Real.log n) * ρ ξ) := by
      rw [integral_const_mul, hsum]
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      simp [cosineMultiplier, Finset.sum_mul, mul_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta3bee6a655f8c277d7e27b9c89c573e8f4844854e4715d22a1ac421d0c163386.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta3bee6a655f8c277d7e27b9c89c573e8f4844854e4715d22a1ac421d0c163386.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0849e6295c3f90ed2a41b1a3b8581cd497fc61d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

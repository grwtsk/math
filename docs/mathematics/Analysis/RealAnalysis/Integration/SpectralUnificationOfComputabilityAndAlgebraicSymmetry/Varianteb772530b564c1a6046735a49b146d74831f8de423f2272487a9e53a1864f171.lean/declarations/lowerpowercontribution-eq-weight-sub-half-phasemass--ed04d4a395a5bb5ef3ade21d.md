# lowerPowerContribution_eq_weight_sub_half_phaseMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a31ed5d1-910a-2341-7938-47307940f8a6",
  "kind": "theorem",
  "lexical_name": "lowerPowerContribution_eq_weight_sub_half_phaseMass",
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
  "slug": "lowerpowercontribution-eq-weight-sub-half-phasemass--ed04d4a395a5bb5ef3ade21d",
  "source": {
    "blob": "d58fdbf444615471baf0cb8d65729b1faecac0e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianteb772530b564c1a6046735a49b146d74831f8de423f2272487a9e53a1864f171.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed04d4a395a5bb5ef3ade21dd181db793e861d01bdbb10dff47422d23c44c29c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianteb772530b564c1a6046735a49b146d74831f8de423f2272487a9e53a1864f171.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a31ed5d1-910a-2341-7938-47307940f8a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lowerPowerContribution_eq_weight_sub_half_phaseMass (A : ℝ) (hA : 1 ≤ A) :
    lowerPowerContribution A = lowerPowerWeight A - lowerPowerPhaseMass A / 2 := by
  have hterm (n : ℕ) :
      (∫ ξ, primeWeight n * Complex.normSq (1 - chi ξ n) * spectralDensity A ξ) =
        2 * primeWeight n -
          2 * (primeWeight n * sourceCorrelation explicitSecondDerivative A (Real.log n)) := by
    calc
      _ = ∫ ξ, primeWeight n *
          (2 * spectralDensity A ξ - 2 *
            (Real.cos (ξ * Real.log n) * spectralDensity A ξ)) := by
        apply integral_congr_ae
        filter_upwards [] with ξ
        rw [normSq_one_sub_chi]
        ring
      _ = _ := by
        rw [integral_const_mul,
          integral_sub ((spectralDensity_integrable A hA).const_mul 2)
            ((spectralDensity_cos_integrable A (Real.log n) hA).const_mul 2),
          integral_const_mul, integral_const_mul, spectralDensity_integral A hA,
          ← sourceCorrelation_eq_integral_cos A (Real.log n) hA]
        ring
  have hm : lowerPowerPhaseMass A =
      2 * lowerPowerWeight A - 2 * lowerPowerContribution A := by
    unfold lowerPowerPhaseMass lowerPowerPhaseDefect
    simp_rw [Finset.sum_mul]
    rw [integral_finsetSum (lowerPowerInventory A)
      (fun n _ ↦ lowerPowerPhaseTerm_integrable A hA n)]
    simp_rw [hterm]
    simp only [Finset.sum_sub_distrib, ← Finset.mul_sum]
    rfl
  linarith

/-- OPEN: only primes and prime squares require uniform phase compensation.
The complete higher-power sector already has a proved absolute bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianteb772530b564c1a6046735a49b146d74831f8de423f2272487a9e53a1864f171.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianteb772530b564c1a6046735a49b146d74831f8de423f2272487a9e53a1864f171.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d58fdbf444615471baf0cb8d65729b1faecac0e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

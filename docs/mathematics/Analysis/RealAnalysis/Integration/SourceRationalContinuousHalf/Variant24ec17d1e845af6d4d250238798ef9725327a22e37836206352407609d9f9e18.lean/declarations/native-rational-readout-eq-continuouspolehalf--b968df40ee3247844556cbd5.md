# native_rational_readout_eq_continuousPoleHalf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a1eaa55-03b4-2f9b-becc-c08725b2d9bf",
  "kind": "theorem",
  "lexical_name": "native_rational_readout_eq_continuousPoleHalf",
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
  "slug": "native-rational-readout-eq-continuouspolehalf--b968df40ee3247844556cbd5",
  "source": {
    "blob": "8346f427811751f510d4c5d0d7c4a647ac0b15e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b968df40ee3247844556cbd5b0c452e863a4f0c9bd3cd2a6440a586c6848052c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a1eaa55-03b4-2f9b-becc-c08725b2d9bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_rational_readout_eq_continuousPoleHalf (A : ℝ) (hA : 1 ≤ A) :
    (1 / (2 * Real.pi) : ℝ) *
      (∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
        (1 + Complex.I * (t : ℂ))) = (continuousPoleHalf A : ℂ) := by
  have hF := rationalReadout_product_integrable A hA
  have hinv := weightedCorrelation_eq_native_inverse A hA
  have hswap := integral_integral_swap
    (f := fun t u : ℝ ↦
      nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
        (Real.exp (-u) : ℂ) * Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ))) hF
  have hinner (t : ℝ) : nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) /
      (1 + Complex.I * (t : ℂ)) =
      ∫ u : ℝ in Ioi 0,
        nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
          (Real.exp (-u) : ℂ) * Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)) := by
    calc
      _ = nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
          (∫ u : ℝ in Ioi 0, (Real.exp (-u) : ℂ) *
            Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ))) := by
        rw [← rationalKernel_eq_laplace]
        ring
      _ = _ := by
        rw [← integral_const_mul]
        apply integral_congr_ae
        filter_upwards [] with u
        ring
  simp_rw [hinner]
  rw [hswap, ← integral_const_mul]
  unfold continuousPoleHalf
  rw [← integral_complex_ofReal]
  apply integral_congr_ae
  filter_upwards [] with u
  calc
    _ = (Real.exp (-u) : ℂ) *
        ((1 / (2 * Real.pi) : ℝ) *
          ∫ t : ℝ, nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
            Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ))) := by
      have heq : (fun t : ℝ ↦
          nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
            (Real.exp (-u) : ℂ) * Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ))) =
          (fun t : ℝ ↦ (Real.exp (-u) : ℂ) *
            (nativeMellinTransform A ((2 : ℂ) + Complex.I * (t : ℂ)) *
              Complex.exp (-Complex.I * (t : ℂ) * (u : ℂ)))) := by
        funext t
        ring
      rw [heq, integral_const_mul]
      ring
    _ = (Real.exp (-u) : ℂ) * (weightedCorrelation A u : ℂ) := by rw [← hinv u]
    _ = _ := by
      have he : Real.exp (-u) * weightedCorrelation A u =
          Real.exp (u / 2) * sourceCorrelation explicitSecondDerivative A u := by
        unfold weightedCorrelation
        rw [mul_left_comm, ← Real.exp_add]
        rw [show -u + 3 * u / 2 = u / 2 by ring]
        ring
      exact_mod_cast he

end
end FormalResearch.RiemannHypothesis.SourceRationalContinuousHalf
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8346f427811751f510d4c5d0d7c4a647ac0b15e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

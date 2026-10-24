# fourierModeOrthogonality_to_kernelComplexMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:983c66da-103c-ca3f-6aca-5af08afe28a8",
  "kind": "theorem",
  "lexical_name": "fourierModeOrthogonality_to_kernelComplexMass",
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
  "slug": "fouriermodeorthogonality-to-kernelcomplexmass--0841868f9a5d7b70a1bcffc2",
  "source": {
    "blob": "0c519b6630c64dfb533b33895a6335d9a0b156a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 41,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0841868f9a5d7b70a1bcffc20b5fa583ee9a778bfca23fd29cd0e8b043403678",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:983c66da-103c-ca3f-6aca-5af08afe28a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierModeOrthogonality_to_kernelComplexMass
    (horth : PeriodFourXFourierModeOrthogonalityClaim)
    {X N : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N) :
    (∑ r ∈ Finset.range (fejerOctavePeriod X),
      symmetricTriangularKernel N
        ((((r : ℝ) /
          ((fejerOctavePeriod X : ℕ) : ℝ))) :
          AddCircle (1 : ℝ))) : ℂ) =
      (fejerOctavePeriod X : ℂ) := by
  classical
  rcases hreg with ⟨hX, hN, hNL⟩
  unfold symmetricTriangularKernel
  rw [Finset.sum_comm]
  calc
    (∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
      ∑ r ∈ Finset.range (fejerOctavePeriod X),
        (symmetricTriangularWeight N k : ℂ) *
          fourier k
            ((((r : ℝ) /
              ((fejerOctavePeriod X : ℕ) : ℝ))) :
              AddCircle (1 : ℝ)))
      =
      ∑ k ∈ Finset.Icc (-(N : ℤ)) (N : ℤ),
        (symmetricTriangularWeight N k : ℂ) *
          (∑ r ∈ Finset.range (fejerOctavePeriod X),
            fourier k
              ((((r : ℝ) /
                ((fejerOctavePeriod X : ℕ) : ℝ))) :
                AddCircle (1 : ℝ)))) := by
          apply Finset.sum_congr rfl
          intro k hk
          rw [Finset.mul_sum]
    _ = (symmetricTriangularWeight N 0 : ℂ) *
        (fejerOctavePeriod X : ℂ) := by
          rw [← Finset.sum_eq_single 0]
          · simp [symmetricTriangularWeight_zero hN,
              periodFourX_zero_mode_sum hX]
          · intro k hk hk0
            rw [horth X N ⟨hX, hN, hNL⟩ k hk hk0]
            simp
          · intro hzero
            exfalso
            exact hzero (by simp [hN])
    _ = (fejerOctavePeriod X : ℂ) := by
          rw [symmetricTriangularWeight_zero hN]
          simp

/-- Therefore finite Fourier-mode orthogonality is sufficient to discharge the
period-4X sampled-kernel mass-one theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerMassOneReduction.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c519b6630c64dfb533b33895a6335d9a0b156a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

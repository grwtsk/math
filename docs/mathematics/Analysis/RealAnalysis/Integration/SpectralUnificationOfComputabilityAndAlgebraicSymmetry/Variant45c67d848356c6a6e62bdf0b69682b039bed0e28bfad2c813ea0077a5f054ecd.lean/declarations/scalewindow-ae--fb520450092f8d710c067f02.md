# scaleWindow_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3df5231-d60e-441f-0042-63cf5c408b4b",
  "kind": "theorem",
  "lexical_name": "scaleWindow_ae",
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
  "slug": "scalewindow-ae--fb520450092f8d710c067f02",
  "source": {
    "blob": "c63361f92fc8f634bbe903cddee8ff7740b59f57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant45c67d848356c6a6e62bdf0b69682b039bed0e28bfad2c813ea0077a5f054ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb520450092f8d710c067f02b70c27b357121046ed1ef990f35407d86d091d3e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant45c67d848356c6a6e62bdf0b69682b039bed0e28bfad2c813ea0077a5f054ecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3df5231-d60e-441f-0042-63cf5c408b4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scaleWindow_ae (T t : ℝ) (m d : ℕ) (ht : 0 ≤ t) :
    (fun A ↦ scaleWindow A t m d) =ᵐ[volume.restrict (Ioc 1 T)]
      (Ioc (lowerScale t) (upperScale T m d)).indicator (fun A ↦ scalePolynomial A t) := by
  filter_upwards [ae_restrict_mem measurableSet_Ioc,
    ae_restrict_of_ae (volume.ae_ne (Real.sqrt m)),
    ae_restrict_of_ae (volume.ae_ne (Real.sqrt d)),
    ae_restrict_of_ae (volume.ae_ne (t/2))] with A hA hm hd ht'
  have hA0 : 0 ≤ A := by linarith [hA.1]
  have hcut : A ∈ Ioc (lowerScale t) (upperScale T m d) ↔
      (A^2 < (m:ℝ) ∧ A^2 < (d:ℝ)) ∧ t ≤ 2*A := by
    simp only [lowerScale, upperScale, mem_Ioc, max_lt_iff, le_min_iff]
    rw [← Real.lt_sqrt hA0, ← Real.lt_sqrt hA0]
    constructor
    · rintro ⟨⟨_,htA⟩,_,hmA,hdA⟩
      exact ⟨⟨lt_of_le_of_ne hmA hm, lt_of_le_of_ne hdA hd⟩, by linarith⟩
    · rintro ⟨⟨hmA,hdA⟩,htA⟩
      exact ⟨⟨hA.1, by apply lt_of_le_of_ne (by linarith); exact Ne.symm ht'⟩,
        hA.2, hmA.le, hdA.le⟩
  by_cases hc : A^2 < (m:ℝ) ∧ A^2 < (d:ℝ)
  · by_cases hs : t ≤ 2*A
    · rw [indicator_of_mem (hcut.mpr ⟨hc,hs⟩), scaleWindow, if_pos hc]
      exact (scalePolynomial_eq_source A t hA.1.le ht hs).symm
    · have hnot : A ∉ Ioc (lowerScale t) (upperScale T m d) := fun h ↦ hs (hcut.mp h).2
      rw [indicator_of_notMem hnot, scaleWindow, if_pos hc]
      rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith [hA.1])
        (by rw [abs_of_nonneg ht]; linarith), mul_zero]
  · rw [indicator_of_notMem (fun h ↦ hc (hcut.mp h).1), scaleWindow, if_neg hc]

/-- Genuine local integrability, including the strict factor-cutoff jumps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant45c67d848356c6a6e62bdf0b69682b039bed0e28bfad2c813ea0077a5f054ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant45c67d848356c6a6e62bdf0b69682b039bed0e28bfad2c813ea0077a5f054ecd.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c63361f92fc8f634bbe903cddee8ff7740b59f57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

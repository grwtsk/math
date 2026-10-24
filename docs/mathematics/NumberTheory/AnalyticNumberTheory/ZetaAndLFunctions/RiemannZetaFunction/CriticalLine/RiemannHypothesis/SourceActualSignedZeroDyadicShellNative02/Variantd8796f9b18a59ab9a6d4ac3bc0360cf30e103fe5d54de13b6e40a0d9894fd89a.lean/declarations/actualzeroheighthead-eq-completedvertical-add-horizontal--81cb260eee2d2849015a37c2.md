# actualZeroHeightHead_eq_completedVertical_add_horizontal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52123ae8-d601-49e1-7ee1-105d857190c0",
  "kind": "theorem",
  "lexical_name": "actualZeroHeightHead_eq_completedVertical_add_horizontal",
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
  "slug": "actualzeroheighthead-eq-completedvertical-add-horizontal--81cb260eee2d2849015a37c2",
  "source": {
    "blob": "f8571d5cd300f8c5b72bb838f6c759f766ab16a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81cb260eee2d2849015a37c23c54a2f1a476ab7699dcdb6fbca0013f13ffc773",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52123ae8-d601-49e1-7ee1-105d857190c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroHeightHead_eq_completedVertical_add_horizontal (A c R : ℝ)
    (hA : 1 ≤ A) (hc : 1 < c) (hc2 : c ≤ 3 / 2) (hR : 7 ≤ R)
    (hgood : ∀ s : ℂ, (s.im = R ∨ s.im = -R) → 1 / 2 ≤ s.re → s.re ≤ 2 →
      riemannZeta s ≠ 0) :
    actualZeroHeightHead A R = actualCompletedVerticalHead A c R +
      actualFiniteHorizontalCorrection A c R := by
  have hcomplete := completedZeta_ne_zero_on_horizontals hc hc2 hgood
  obtain ⟨Z,hZ,hrect⟩ := rectangle_identity
    (actualInitialPrimeKernel_contDiff A hA) (actualInitialPrimeKernel_hasCompactSupport A hA)
    hc hc2 hR hcomplete
  simp_rw [← actualInitialPrimeMellin_eq_Hfn A] at hrect
  have hzero := actualInitialPrimeMellin_poles_zero A hA
  rw [hzero.1, hzero.2, sub_zero, sub_zero,
    ← actual_head_eq_complex_finset A R Z hZ] at hrect
  have hv := verticals_eq (actualInitialPrimeKernel_contDiff A hA)
    (actualInitialPrimeKernel_hasCompactSupport A hA) hc hc2 R
  simp_rw [← actualInitialPrimeMellin_eq_Hfn A] at hv
  have he : (fun t : ℝ => Fline (fun t =>
      (sourceCorrelation explicitSecondDerivative A t : ℂ)) c t) =
      (fun t : ℝ => 2 * (actualInitialPrimeMellin A
        ((c : ℂ) + (t : ℂ) * I) *
        logDeriv completedRiemannZeta ((c : ℂ) + (t : ℂ) * I))) := by
    funext t
    unfold Fline
    rw [← actualInitialPrimeMellin_eq_Hfn, ← actualInitialPrimeMellin_eq_Hfn,
      show (1 : ℂ) - c - t * I = 1 - ((c : ℂ) + (t : ℂ) * I) by ring,
      actualInitialPrimeMellin_one_sub A hA]
    ring
  rw [he, intervalIntegral.integral_const_mul] at hv
  unfold RectangleIntegral' RectangleIntegral at hrect
  have hzre : (((1-c : ℝ) : ℂ) - (R : ℂ) * I).re = 1-c := by simp
  have hzim : (((1-c : ℝ) : ℂ) - (R : ℂ) * I).im = -R := by simp
  have hwre : ((c : ℂ) + (R : ℂ) * I).re = c := by simp
  have hwim : ((c : ℂ) + (R : ℂ) * I).im = R := by simp
  simp only [hzre,hzim,hwre,hwim,smul_eq_mul] at hrect
  simp only [smul_eq_mul] at hv
  have hp : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  rw [← hrect]
  unfold actualCompletedVerticalHead actualFiniteHorizontalCorrection
  rw [show HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c (-R) -
      HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c R +
      VIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) c (-R) R -
      VIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) (-R) R =
      (HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c (-R) -
      HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c R) +
      (VIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) c (-R) R -
      VIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) (-R) R) by ring, hv]
  field_simp
  ring

/-- Both actual vertical and horizontal differences are retained in the source shell. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8571d5cd300f8c5b72bb838f6c759f766ab16a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

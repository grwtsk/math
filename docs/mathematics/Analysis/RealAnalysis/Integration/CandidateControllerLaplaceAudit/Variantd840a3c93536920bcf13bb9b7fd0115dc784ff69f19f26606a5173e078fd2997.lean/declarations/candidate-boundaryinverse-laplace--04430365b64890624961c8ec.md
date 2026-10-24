# candidate_boundaryInverse_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac214a32-c2bb-447f-7010-16ae029bcdc8",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_laplace",
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
  "slug": "candidate-boundaryinverse-laplace--04430365b64890624961c8ec",
  "source": {
    "blob": "6bb311bab7f72f1041b556558dec2b16eec332e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 399,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceAudit/Variantd840a3c93536920bcf13bb9b7fd0115dc784ff69f19f26606a5173e078fd2997.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04430365b64890624961c8ecb267e43d26392d780237f197ce0e29aa40b587fd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceAudit/Variantd840a3c93536920bcf13bb9b7fd0115dc784ff69f19f26606a5173e078fd2997.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac214a32-c2bb-447f-7010-16ae029bcdc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_laplace (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    (∫ x : ℝ in Ioi 0, Complex.exp (-z * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) = candidate X ε h z := by
  rw [setIntegral_eq_integral_of_ae_compl_eq_zero]
  · have he := candidate_boundaryInverse_fourier X hX (ε + z.re) h
      (by linarith) hh hh1 z.im
    have hc : candidate X (ε + z.re) h ((z.im : ℂ) * I) = candidate X ε h z := by
      rw [← candidate_shift]
      congr 1
      exact Complex.re_add_im z
    rw [← hc, ← he]
    apply integral_congr_ae
    filter_upwards [] with x
    rw [← candidate_boundaryInverse_tilt X hX ε h hε hh hh1 z.re hz x]
    rw [← mul_assoc, ← Complex.exp_add]
    congr 2
    calc
      -z * (x : ℂ) = -((z.re : ℂ) + (z.im : ℂ) * I) * (x : ℂ) := by
        rw [Complex.re_add_im]
      _ = _ := by ring
  · filter_upwards [volume.ae_ne (0 : ℝ)] with x hx
    intro hn
    have hxneg : x < 0 := lt_of_le_of_ne (le_of_not_gt hn) hx
    rw [candidate_boundaryInverse_eq_zero X hX ε h hε hh hh1 x hxneg, mul_zero]

end
end CandidateLaplaceScratch

/-! Actual half-line-vector admission and exact full-line Fourier identification. -/
set_option autoImplicit false
namespace CandidateControllerLaplaceScratch
open MeasureTheory FourierTransform Filter Complex Set
open scoped Topology
open FormalResearch.RiemannHypothesis.SourceComparison
open CorrectedControllerAnalytic CandidateCausality HalfLineExponential
open CandidateRealizationScratch CandidateInverseAdmissionScratch CandidateLaplaceScratch
noncomputable section

/-- The actual half-line Hilbert controller has a genuinely integrable Laplace integrand. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceAudit/Variantd840a3c93536920bcf13bb9b7fd0115dc784ff69f19f26606a5173e078fd2997.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateControllerLaplaceAudit/Variantd840a3c93536920bcf13bb9b7fd0115dc784ff69f19f26606a5173e078fd2997.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bb311bab7f72f1041b556558dec2b16eec332e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

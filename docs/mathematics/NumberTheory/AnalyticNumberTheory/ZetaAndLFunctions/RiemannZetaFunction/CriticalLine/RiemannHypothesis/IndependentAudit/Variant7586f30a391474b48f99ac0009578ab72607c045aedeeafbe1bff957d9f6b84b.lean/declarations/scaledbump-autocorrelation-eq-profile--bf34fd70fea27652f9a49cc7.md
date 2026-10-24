# scaledBump_autocorrelation_eq_profile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c950528-642e-c01e-979e-93d15773b78f",
  "kind": "theorem",
  "lexical_name": "scaledBump_autocorrelation_eq_profile",
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
  "slug": "scaledbump-autocorrelation-eq-profile--bf34fd70fea27652f9a49cc7",
  "source": {
    "blob": "5d626806608c4d455fad1db814819a19c3d28a92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IndependentAudit/Variant7586f30a391474b48f99ac0009578ab72607c045aedeeafbe1bff957d9f6b84b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf34fd70fea27652f9a49cc7840c5c17b80354ee08e44bc58b1e8fabffaabbe2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IndependentAudit/Variant7586f30a391474b48f99ac0009578ab72607c045aedeeafbe1bff957d9f6b84b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c950528-642e-c01e-979e-93d15773b78f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledBump_autocorrelation_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    (∫ x : ℝ, SourcePairing.scaledBump A x * SourcePairing.scaledBump A (x-t)) =
      overlapProfile (t/A) := by
  have hu0 : 0 ≤ t/A := div_nonneg ht0 hA.le
  have hu2 : t/A ≤ 2 := (div_le_iff₀ hA).mpr (by linarith)
  have he : (fun x : ℝ => SourcePairing.scaledBump A x * SourcePairing.scaledBump A (x-t)) =
      (fun x => (SourcePairing.sourceBump (x/A) *
        SourcePairing.sourceBump (x/A-t/A)) / A) := by
    funext x
    dsimp only [SourcePairing.scaledBump]
    rw [div_mul_div_comm, ← pow_two, Real.sq_sqrt hA.le]
    rw [show (x-t)/A = x/A-t/A by ring]
  rw [he, integral_div, Measure.integral_comp_div
    (fun x : ℝ => SourcePairing.sourceBump x * SourcePairing.sourceBump (x-t/A)) A,
    sourceBump_autocorrelation_eq_profile hu0 hu2]
  simp [abs_of_pos hA, smul_eq_mul, hA.ne']

end FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation

#print FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation.unitBump_overlap_integral
#print axioms FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation.unitBump_overlap_integral
#print FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation.sourceBump_overlap_eq_indicator
#print axioms FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation.sourceBump_overlap_eq_indicator
#print FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation.sourceBump_autocorrelation_eq_profile
#print axioms FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation.sourceBump_autocorrelation_eq_profile
#print FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation.scaledBump_autocorrelation_eq_profile
#print axioms FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation.scaledBump_autocorrelation_eq_profile

namespace FormalResearch.RiemannHypothesis.SourceBumpAutocorrelationReview
open MeasureTheory Set
open SourceBumpAutocorrelation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IndependentAudit/Variant7586f30a391474b48f99ac0009578ab72607c045aedeeafbe1bff957d9f6b84b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IndependentAudit/Variant7586f30a391474b48f99ac0009578ab72607c045aedeeafbe1bff957d9f6b84b.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d626806608c4d455fad1db814819a19c3d28a92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

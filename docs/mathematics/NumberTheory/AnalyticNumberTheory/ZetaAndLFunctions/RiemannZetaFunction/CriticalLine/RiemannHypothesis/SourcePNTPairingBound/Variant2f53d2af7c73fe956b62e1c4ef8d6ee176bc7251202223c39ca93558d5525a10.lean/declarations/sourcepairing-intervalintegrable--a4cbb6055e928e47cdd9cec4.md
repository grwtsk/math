# sourcePairing_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f3c751e91015f391c8cb811c6de54a47e74f3e3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:15c01adb-ff30-a583-8507-bfeb2a52bcda",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0fff5edd-e413-d5c5-a293-ef2c25dae3a6",
  "kind": "theorem",
  "lexical_name": "sourcePairing_intervalIntegrable",
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
  "slug": "sourcepairing-intervalintegrable--a4cbb6055e928e47cdd9cec4",
  "source": {
    "blob": "f3c751e91015f391c8cb811c6de54a47e74f3e3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4cbb6055e928e47cdd9cec4bbed4d0c04220e7744e19ee1b2071ffac49e994d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fff5edd-e413-d5c5-a293-ef2c25dae3a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePairing_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ errorProfile t * sourceWeight explicitSecondDerivative A t)
      volume lowerEndpoint (2*A) := by
  let F := PrimePowerDescent.exponentialTest
    (sourceCorrelation explicitSecondDerivative A)
  have hc := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hf : ContDiff ℝ 1 F := PrimePowerDescent.exponentialTest_contDiff _ hc
  have hp := PrimePowerDescent.chebyshev_mul_deriv_intervalIntegrable
    (2*A) (source_interval_order A hA) F hf
  have he := (Real.continuous_exp.mul hf.continuous_deriv_one).intervalIntegrable (μ := volume)
    lowerEndpoint (2*A)
  have hi := hp.sub he
  simpa only [errorProfile, chebyshevError, sub_mul, Pi.mul_apply, F,
    PrimePowerDescent.exponentialTest_deriv _ hc, sourceWeight] using hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTPairingBound/Variant2f53d2af7c73fe956b62e1c4ef8d6ee176bc7251202223c39ca93558d5525a10.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3c751e91015f391c8cb811c6de54a47e74f3e3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

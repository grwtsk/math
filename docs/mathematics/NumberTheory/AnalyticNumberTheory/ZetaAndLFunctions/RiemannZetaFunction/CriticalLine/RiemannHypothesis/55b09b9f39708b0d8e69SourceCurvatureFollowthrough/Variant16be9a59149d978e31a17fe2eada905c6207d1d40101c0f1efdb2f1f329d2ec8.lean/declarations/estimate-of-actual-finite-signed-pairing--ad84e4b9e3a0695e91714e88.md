# estimate_of_actual_finite_signed_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc4b099c-0a87-b8d5-f24d-efeec33b28ee",
  "kind": "theorem",
  "lexical_name": "estimate_of_actual_finite_signed_pairing",
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
  "slug": "estimate-of-actual-finite-signed-pairing--ad84e4b9e3a0695e91714e88",
  "source": {
    "blob": "59ee1f73c8a54c41be3efc89c665ca265d5df0df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variant16be9a59149d978e31a17fe2eada905c6207d1d40101c0f1efdb2f1f329d2ec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad84e4b9e3a0695e91714e88f631ab5274fd6a74d5a5ee83905082fd69695f85",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variant16be9a59149d978e31a17fe2eada905c6207d1d40101c0f1efdb2f1f329d2ec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bc4b099c-0a87-b8d5-f24d-efeec33b28ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_actual_finite_signed_pairing (J : ℝ)
    (hpair : ∀ A : ℝ, 91 ≤ A → -J ≤
      ∫ t in Real.log 2..2 * A,
        actualFiniteSecondReadout t * deriv (deriv (RH16CesaroKernel.cesaroWeight A)) t) :
    CorrelationAssembly.EstimateObligation := by
  apply RH16CesaroSignedPairing.estimate_of_signed_pairing J
  intro A hA
  rw [signed_pairing_eq_actual_finite_row A (by linarith)]
  exact hpair A hA
end RH16CurvatureFollowthrough
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variant16be9a59149d978e31a17fe2eada905c6207d1d40101c0f1efdb2f1f329d2ec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/55b09b9f39708b0d8e69SourceCurvatureFollowthrough/Variant16be9a59149d978e31a17fe2eada905c6207d1d40101c0f1efdb2f1f329d2ec8.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ee1f73c8a54c41be3efc89c665ca265d5df0df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

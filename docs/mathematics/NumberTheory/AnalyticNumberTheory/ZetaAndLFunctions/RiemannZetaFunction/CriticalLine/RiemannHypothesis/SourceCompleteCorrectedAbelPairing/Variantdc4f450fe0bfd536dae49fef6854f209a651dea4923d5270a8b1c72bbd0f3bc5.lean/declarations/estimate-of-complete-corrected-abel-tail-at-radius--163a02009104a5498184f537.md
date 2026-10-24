# estimate_of_complete_corrected_Abel_tail_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f681b016-0b2c-778b-c4eb-d55f332d012d",
  "kind": "theorem",
  "lexical_name": "estimate_of_complete_corrected_Abel_tail_at_radius",
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
  "slug": "estimate-of-complete-corrected-abel-tail-at-radius--163a02009104a5498184f537",
  "source": {
    "blob": "426345fc25cb651e30f8c9a75a8512431b038762",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:163a02009104a5498184f537a6bc3a5550143417179ebe2a63055c672afe001e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f681b016-0b2c-778b-c4eb-d55f332d012d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_complete_corrected_Abel_tail_at_radius {K R : ℝ} (hR : 117 ≤ R)
    (hrow : ∀ A : ℝ, R ≤ A → ∀ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |actualPeanoCubicRemainder A (Real.log (d : ℝ))| ≤ 320 * 67 / A ^ 4)
    (hpair : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_corrected_completeOmega_tail_at_radius hR hrow
  intro A hRA
  rw [correctedCompleteOmega_eq_complete_pairing A (by linarith)]
  exact hpair A hRA

end
end FormalResearch.RiemannHypothesis.SourceCompleteCorrectedAbelPairing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCompleteCorrectedAbelPairing/Variantdc4f450fe0bfd536dae49fef6854f209a651dea4923d5270a8b1c72bbd0f3bc5.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `426345fc25cb651e30f8c9a75a8512431b038762` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

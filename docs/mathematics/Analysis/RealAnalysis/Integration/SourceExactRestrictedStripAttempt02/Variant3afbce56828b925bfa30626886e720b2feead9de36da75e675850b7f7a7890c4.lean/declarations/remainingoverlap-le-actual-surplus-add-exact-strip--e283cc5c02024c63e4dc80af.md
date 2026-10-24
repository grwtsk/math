# remainingOverlap_le_actual_surplus_add_exact_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d28667c-37f9-4f96-0032-4a13692eb93a",
  "kind": "theorem",
  "lexical_name": "remainingOverlap_le_actual_surplus_add_exact_strip",
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
  "slug": "remainingoverlap-le-actual-surplus-add-exact-strip--e283cc5c02024c63e4dc80af",
  "source": {
    "blob": "56940c7938edaeb9d5db78b53031ab83812034aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt02/Variant3afbce56828b925bfa30626886e720b2feead9de36da75e675850b7f7a7890c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e283cc5c02024c63e4dc80afb1a859bc48337aae1713392a9bf9d3c315c5bdb0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt02/Variant3afbce56828b925bfa30626886e720b2feead9de36da75e675850b7f7a7890c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d28667c-37f9-4f96-0032-4a13692eb93a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainingOverlap_le_actual_surplus_add_exact_strip {Q A : ℝ} (hQ : 91 ≤ Q)
    (hQA : Q ≤ A) :
    remainingOverlapBalance A ≤ VaughanOperatorReview.covarianceOperatorValue A / 2 -
      SourceSamplingLedger.independentMainTerm A +
        (Real.log 4 + 4 + Real.log 2) * (1 / 2 + 2 * tailEnergyCoefficient Q / Q ^ 2) := by
  rw [actual_surplus_eq_remainingOverlap_sub_strip (by linarith : 1 ≤ A)]
  have h := actual_retained_spatial_strip_abs_le_uniform hQ hQA
  have hn := le_abs_self (∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v)
  linarith
end RH16ExactRestrictedStrip
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt02/Variant3afbce56828b925bfa30626886e720b2feead9de36da75e675850b7f7a7890c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactRestrictedStripAttempt02/Variant3afbce56828b925bfa30626886e720b2feead9de36da75e675850b7f7a7890c4.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56940c7938edaeb9d5db78b53031ab83812034aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

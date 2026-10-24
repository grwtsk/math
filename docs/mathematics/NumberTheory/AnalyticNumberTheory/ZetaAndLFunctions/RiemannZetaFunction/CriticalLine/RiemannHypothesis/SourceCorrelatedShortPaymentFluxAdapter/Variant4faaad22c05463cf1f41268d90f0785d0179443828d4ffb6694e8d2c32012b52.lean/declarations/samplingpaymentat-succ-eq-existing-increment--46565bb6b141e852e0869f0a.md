# samplingPaymentAt_succ_eq_existing_increment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12fec791-48a7-c873-4994-48ab176b51d2",
  "kind": "theorem",
  "lexical_name": "samplingPaymentAt_succ_eq_existing_increment",
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
  "slug": "samplingpaymentat-succ-eq-existing-increment--46565bb6b141e852e0869f0a",
  "source": {
    "blob": "59f0a52d8d469bcc995b951ef35d5b2a120c8558",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortPaymentFluxAdapter/Variant4faaad22c05463cf1f41268d90f0785d0179443828d4ffb6694e8d2c32012b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46565bb6b141e852e0869f0a27e42436a89cd59f2a377e306cfb206cd9553c43",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortPaymentFluxAdapter/Variant4faaad22c05463cf1f41268d90f0785d0179443828d4ffb6694e8d2c32012b52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12fec791-48a7-c873-4994-48ab176b51d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem samplingPaymentAt_succ_eq_existing_increment (A : ℝ) (U : ℕ) :
    samplingPaymentAt A (U + 1) - samplingPaymentAt A U =
      (moebius (U + 1) : ℝ) * sourceLogSamplingMainTerm A (U + 1 : ℕ) -
        shortPlainIncrement A U := by
  simp only [samplingPaymentAt_eq_existing_fixed_cutoff_terms]
  have hl := shortLogSamplingAt_succ A U
  have hp := shortPlainSamplingAt_succ A U
  linear_combination hl - hp

/-- Both old-axis edges and the single square corner remain explicit at fixed source scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortPaymentFluxAdapter/Variant4faaad22c05463cf1f41268d90f0785d0179443828d4ffb6694e8d2c32012b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortPaymentFluxAdapter/Variant4faaad22c05463cf1f41268d90f0785d0179443828d4ffb6694e8d2c32012b52.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59f0a52d8d469bcc995b951ef35d5b2a120c8558` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

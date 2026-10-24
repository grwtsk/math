# samplingPaymentAt_succ_eq_edges_and_corner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2e26b73-5243-0e26-3c5b-2276322061a6",
  "kind": "theorem",
  "lexical_name": "samplingPaymentAt_succ_eq_edges_and_corner",
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
  "slug": "samplingpaymentat-succ-eq-edges-and-corner--511cdd943a85cf1c961cfdf8",
  "source": {
    "blob": "59f0a52d8d469bcc995b951ef35d5b2a120c8558",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortPaymentFluxAdapter/Variant4faaad22c05463cf1f41268d90f0785d0179443828d4ffb6694e8d2c32012b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:511cdd943a85cf1c961cfdf81a84180a302a35493a3a55e3ddcf565ed4efc3c6",
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

Occurrence: `result:f2e26b73-5243-0e26-3c5b-2276322061a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem samplingPaymentAt_succ_eq_edges_and_corner (A : ℝ) (U : ℕ) :
    samplingPaymentAt A (U + 1) - samplingPaymentAt A U =
      (moebius (U + 1) : ℝ) * sourceLogSamplingMainTerm A (U + 1 : ℕ) -
        (moebius (U + 1) : ℝ) *
          (∑ m ∈ Finset.Icc 1 U, vonMangoldt m *
            sourcePlainSamplingMainTerm A (((U + 1) * m : ℕ) : ℝ)) -
        vonMangoldt (U + 1) *
          (∑ d ∈ Finset.Icc 1 U, realMoebius d *
            sourcePlainSamplingMainTerm A ((d * (U + 1) : ℕ) : ℝ)) -
        (moebius (U + 1) : ℝ) * vonMangoldt (U + 1) *
          sourcePlainSamplingMainTerm A (((U + 1) ^ 2 : ℕ) : ℝ) := by
  classical
  have hk : U + 1 ∉ Finset.Icc 1 U := by simp
  rw [samplingPaymentAt_succ_eq_existing_increment]
  unfold shortPlainIncrement
  rw [shortInventory_succ, Finset.sum_insert hk]
  simp only [pow_two]
  ring

/-- Actual arithmetic coefficients: the p=2 square corner has a nonzero coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortPaymentFluxAdapter/Variant4faaad22c05463cf1f41268d90f0785d0179443828d4ffb6694e8d2c32012b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortPaymentFluxAdapter/Variant4faaad22c05463cf1f41268d90f0785d0179443828d4ffb6694e8d2c32012b52.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59f0a52d8d469bcc995b951ef35d5b2a120c8558` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

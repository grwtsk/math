# samplingPaymentAt_succ_eq_edges_and_corner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4d51e8bffbf7c88e77704297757bbcd53784ea1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5512643837c62d0e349b38689a4dfc215321dc91a79effc89d30eecccca0c705.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2cb5761-5a93-1c30-d224-e7a8fc3a07f6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da996566-3604-df75-04cc-f7cd5185c190",
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
  "slug": "samplingpaymentat-succ-eq-edges-and-corner--7bbfec72a17b6646d2b70d8a",
  "source": {
    "blob": "b4d51e8bffbf7c88e77704297757bbcd53784ea1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortPaymentFluxAdapter/Variant5512643837c62d0e349b38689a4dfc215321dc91a79effc89d30eecccca0c705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bbfec72a17b6646d2b70d8aee3d729fce5db6406b3fad369cd0cc7db28a0131",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortPaymentFluxAdapter/Variant5512643837c62d0e349b38689a4dfc215321dc91a79effc89d30eecccca0c705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da996566-3604-df75-04cc-f7cd5185c190`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortPaymentFluxAdapter/Variant5512643837c62d0e349b38689a4dfc215321dc91a79effc89d30eecccca0c705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortPaymentFluxAdapter/Variant5512643837c62d0e349b38689a4dfc215321dc91a79effc89d30eecccca0c705.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d51e8bffbf7c88e77704297757bbcd53784ea1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# actual_closed_readout_eq_joint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a66fb12a-4567-3ee0-e3ef-a8c1acd01692",
  "kind": "theorem",
  "lexical_name": "actual_closed_readout_eq_joint",
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
  "slug": "actual-closed-readout-eq-joint--1359e59e0c7db29c634ee37d",
  "source": {
    "blob": "cf8dab5e2115e1786c800944900e8a22c7055629",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointClosedReadout/Variant37be731b74f2a8194f996e1d62d7cc2a8232ab0ed892e0f09e3da8992d425ff1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1359e59e0c7db29c634ee37d091cc1234a725668de3769f8da6f1d8b71bb4966",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointClosedReadout/Variant37be731b74f2a8194f996e1d62d7cc2a8232ab0ed892e0f09e3da8992d425ff1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a66fb12a-4567-3ee0-e3ef-a8c1acd01692`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_closed_readout_eq_joint (b : ℝ) :
    actualClosedXiSqrtReadout (Real.exp b) =
      2 * (actualJointMangoldtReadout b - Real.exp (b / 2)) +
        2 * (2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) *
          ((2 : ℝ) ^ (-1 / 2 : ℝ) - Real.exp (-b / 2)) +
            2 * (2 : ℝ) ^ (1 / 2 : ℝ) := by
  unfold actualClosedXiSqrtReadout actualJointMangoldtReadout
  rw [actual_half_log_sum_eq_closed, actual_full_log_sum_eq_closed_psi]
  rw [Chebyshev.psi_eq_sum_Icc]
  have hm : (Real.exp b) ^ (-1 / 2 : ℝ) = Real.exp (-b / 2) := by
    rw [← Real.exp_mul]
    congr 1
    ring
  have hp : (Real.exp b) ^ (1 / 2 : ℝ) = Real.exp (b / 2) := by
    rw [← Real.exp_mul]
    congr 1
    ring
  rw [hm, hp]
  simp_rw [mul_sub]
  rw [Finset.sum_sub_distrib, ← Finset.sum_mul]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointClosedReadout/Variant37be731b74f2a8194f996e1d62d7cc2a8232ab0ed892e0f09e3da8992d425ff1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualJointClosedReadout/Variant37be731b74f2a8194f996e1d62d7cc2a8232ab0ed892e0f09e3da8992d425ff1.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf8dab5e2115e1786c800944900e8a22c7055629` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

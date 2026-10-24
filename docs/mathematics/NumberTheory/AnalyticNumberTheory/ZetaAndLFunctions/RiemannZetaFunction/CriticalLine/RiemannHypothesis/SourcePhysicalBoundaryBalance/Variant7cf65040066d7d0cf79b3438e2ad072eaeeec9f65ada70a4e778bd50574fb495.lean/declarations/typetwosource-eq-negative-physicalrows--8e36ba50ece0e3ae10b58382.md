# typeTwoSource_eq_negative_physicalRows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb10240a-e7e7-02ed-95e6-9345d736235f",
  "kind": "theorem",
  "lexical_name": "typeTwoSource_eq_negative_physicalRows",
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
  "slug": "typetwosource-eq-negative-physicalrows--8e36ba50ece0e3ae10b58382",
  "source": {
    "blob": "3bc729d0933553761663e1b0d37eb96b039a770b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 76,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e36ba50ece0e3ae10b5838237eef88f5aea03960d8b9fb8a4accbf358d82f6b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb10240a-e7e7-02ed-95e6-9345d736235f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeTwoSource_eq_negative_physicalRows (A : ℝ) (hA : 1 ≤ A) :
    typeTwoSource A = -∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      realMoebius d * physicalQuotientRowsAt A d (vaughanCutoff A) := by
  classical
  rw [typeTwoSource_eq_rectangle A hA]
  simp_rw [beta_weighted_long_sum (vaughanCutoff A) (sourceKernelCutoff A)
    (vaughanCutoff_pos A hA)]
  simp_rw [mul_neg, Finset.mul_sum]
  rw [Finset.sum_neg_distrib, Finset.sum_comm]
  congr 1
  apply Finset.sum_congr rfl
  intro d _
  unfold physicalQuotientRowsAt
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m _
  simp only [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro k _
  ring

/-- The restored physical diagonal sums to the negative raw beta diagonal, without its centered mean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant7cf65040066d7d0cf79b3438e2ad072eaeeec9f65ada70a4e778bd50574fb495.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bc729d0933553761663e1b0d37eb96b039a770b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

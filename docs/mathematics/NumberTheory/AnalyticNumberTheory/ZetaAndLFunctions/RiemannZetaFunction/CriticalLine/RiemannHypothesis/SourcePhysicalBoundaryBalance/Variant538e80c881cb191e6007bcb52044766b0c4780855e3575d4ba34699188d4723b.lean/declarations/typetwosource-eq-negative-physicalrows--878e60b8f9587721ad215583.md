# typeTwoSource_eq_negative_physicalRows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f95be401eb2d7c6def46834d48e1e69e548019fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/538e80c881cb191e6007bcb52044766b0c4780855e3575d4ba34699188d4723b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a82a916-7232-7951-c1df-bb1acdbe42d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1502abef-cfd7-247a-d198-797c6fd3bb8d",
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
  "slug": "typetwosource-eq-negative-physicalrows--878e60b8f9587721ad215583",
  "source": {
    "blob": "f95be401eb2d7c6def46834d48e1e69e548019fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant538e80c881cb191e6007bcb52044766b0c4780855e3575d4ba34699188d4723b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:878e60b8f9587721ad2155836ca6bfa974f2e0ac8297a81496ee386d6c3f8541",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant538e80c881cb191e6007bcb52044766b0c4780855e3575d4ba34699188d4723b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1502abef-cfd7-247a-d198-797c6fd3bb8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–87.

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
  simp only [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm]
  ring

/-- The restored physical diagonal sums to the negative raw beta diagonal, without its centered mean. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant538e80c881cb191e6007bcb52044766b0c4780855e3575d4ba34699188d4723b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePhysicalBoundaryBalance/Variant538e80c881cb191e6007bcb52044766b0c4780855e3575d4ba34699188d4723b.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f95be401eb2d7c6def46834d48e1e69e548019fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

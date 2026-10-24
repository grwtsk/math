# Submartingale.sum_sub_upcrossingStrat_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a2025caf9ce9944b38888d86c0f84e035620fb30",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 392,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12f1c70d-8300-8111-abdd-19573a328e02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:515eee11-b0c3-77fd-6786-2a8987f82f9d",
  "kind": "theorem",
  "lexical_name": "Submartingale.sum_sub_upcrossingStrat_mul",
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
  "slug": "submartingale-sum-sub-upcrossingstrat-mul--a3bf78434c5a7edab1c92543",
  "source": {
    "blob": "a2025caf9ce9944b38888d86c0f84e035620fb30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 401,
    "line": 392,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3bf78434c5a7edab1c925439701ad51fb0330f98cdf42aae7f3448792d4572c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:515eee11-b0c3-77fd-6786-2a8987f82f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–401.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.sum_sub_upcrossingStrat_mul [IsFiniteMeasure μ] (hf : Submartingale f ℱ μ)
    (a b : ℝ) (N : ℕ) : Submartingale (fun n : ℕ =>
      ∑ k ∈ Finset.range n, (1 - upcrossingStrat a b f N k) * (f (k + 1) - f k)) ℱ μ := by
  refine hf.sum_mul_sub
    (fun n => (stronglyAdapted_const ℱ 1 n).sub (hf.stronglyAdapted.upcrossingStrat n))
    (?_ : ∀ n ω, (1 - upcrossingStrat a b f N n) ω ≤ 1) ?_
  · exact fun n ω => sub_le_self _ upcrossingStrat_nonneg
  · intro n ω
    simp [upcrossingStrat_le_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant52ae3c65a83967ddbf9f639d4793fd369dc327b28d1946da3f10929f0882ffc7.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2025caf9ce9944b38888d86c0f84e035620fb30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

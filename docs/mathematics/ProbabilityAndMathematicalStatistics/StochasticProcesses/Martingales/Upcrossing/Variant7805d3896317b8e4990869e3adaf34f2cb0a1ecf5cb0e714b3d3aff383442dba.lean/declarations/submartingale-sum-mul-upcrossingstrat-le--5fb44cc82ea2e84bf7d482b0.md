# Submartingale.sum_mul_upcrossingStrat_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b3b3b33a3e465841f05a443e9584dadfe60e312",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 427,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/78/7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63bb79a3-1413-f637-1dd7-5ac8d5d1a50a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcc4e6b2-d08e-5f51-02ff-7de6a73ae9c5",
  "kind": "theorem",
  "lexical_name": "Submartingale.sum_mul_upcrossingStrat_le",
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
  "slug": "submartingale-sum-mul-upcrossingstrat-le--5fb44cc82ea2e84bf7d482b0",
  "source": {
    "blob": "9b3b3b33a3e465841f05a443e9584dadfe60e312",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 427,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fb44cc82ea2e84bf7d482b0ddb7c11df32c6a1a15bb5bc5c6d45c2d63fb3314",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcc4e6b2-d08e-5f51-02ff-7de6a73ae9c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submartingale.sum_mul_upcrossingStrat_le [IsFiniteMeasure μ] (hf : Submartingale f ℱ μ) :
    μ[∑ k in Finset.range n, upcrossingStrat a b f N k * (f (k + 1) - f k)] ≤ μ[f n] - μ[f 0] := by
  have h₁ : (0 : ℝ) ≤
      μ[∑ k in Finset.range n, (1 - upcrossingStrat a b f N k) * (f (k + 1) - f k)] := by
    have := (hf.sum_sub_upcrossingStrat_mul a b N).set_integral_le (zero_le n) MeasurableSet.univ
    rw [integral_univ, integral_univ] at this
    refine' le_trans _ this
    simp only [Finset.range_zero, Finset.sum_empty, integral_zero', le_refl]
  have h₂ : μ[∑ k in Finset.range n, (1 - upcrossingStrat a b f N k) * (f (k + 1) - f k)] =
    μ[∑ k in Finset.range n, (f (k + 1) - f k)] -
      μ[∑ k in Finset.range n, upcrossingStrat a b f N k * (f (k + 1) - f k)] := by
    simp only [sub_mul, one_mul, Finset.sum_sub_distrib, Pi.sub_apply, Finset.sum_apply,
      Pi.mul_apply]
    refine' integral_sub (Integrable.sub (integrable_finset_sum _ fun i _ => hf.integrable _)
      (integrable_finset_sum _ fun i _ => hf.integrable _)) _
    convert (hf.sum_upcrossingStrat_mul a b N).integrable n using 1
    ext; simp
  rw [h₂, sub_nonneg] at h₁
  refine' le_trans h₁ _
  simp_rw [Finset.sum_range_sub, integral_sub' (hf.integrable _) (hf.integrable _), le_refl]
#align measure_theory.submartingale.sum_mul_upcrossing_strat_le MeasureTheory.Submartingale.sum_mul_upcrossingStrat_le

/-- The number of upcrossings (strictly) before time `N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/StochasticProcesses/Martingales/Upcrossing/Variant7805d3896317b8e4990869e3adaf34f2cb0a1ecf5cb0e714b3d3aff383442dba.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b3b3b33a3e465841f05a443e9584dadfe60e312` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

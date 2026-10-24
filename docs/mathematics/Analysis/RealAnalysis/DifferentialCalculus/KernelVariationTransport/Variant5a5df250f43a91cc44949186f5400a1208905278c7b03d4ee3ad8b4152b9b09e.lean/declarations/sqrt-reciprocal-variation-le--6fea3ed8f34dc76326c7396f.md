# sqrt_reciprocal_variation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a29030fe-a5f1-66e6-dbdf-89e5c58aaa3f",
  "kind": "theorem",
  "lexical_name": "sqrt_reciprocal_variation_le",
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
  "slug": "sqrt-reciprocal-variation-le--6fea3ed8f34dc76326c7396f",
  "source": {
    "blob": "7cfeaf3c4ff11cdece71e085945663951cb41d86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 95,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fea3ed8f34dc76326c7396f272fa02062bf7669f8c56e8e8dbef175550a9642",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a29030fe-a5f1-66e6-dbdf-89e5c58aaa3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sqrt_reciprocal_variation_le (G : ℕ) :
    (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
      (1 / (j : ℝ) - 1 / ((j : ℝ) + 1))) ≤ 2 := by
  by_cases hG : G = 0
  · subst G
    simp
  have hG1 : 1 ≤ G := by omega
  have hset : Finset.Icc 1 (G - 1) = Finset.Ico 1 G := by
    ext j
    simp only [Finset.mem_Ico, Finset.mem_Icc]
    omega
  have ht : (∑ j ∈ Finset.Icc 1 (G - 1),
      (1 / Real.sqrt (j : ℝ) - 1 / Real.sqrt ((j : ℝ) + 1))) =
      1 - 1 / Real.sqrt (G : ℝ) := by
    rw [hset]
    have h := congrArg Neg.neg (sum_Ico_sub (fun j : ℕ ↦ 1 / Real.sqrt (j : ℝ)) hG1)
    simpa only [← sum_neg_distrib, neg_sub, Nat.cast_add, Nat.cast_one,
      Real.sqrt_one, div_one] using h
  calc
    _ ≤ ∑ j ∈ Finset.Icc 1 (G - 1),
        2 * (1 / Real.sqrt (j : ℝ) - 1 / Real.sqrt ((j : ℝ) + 1)) := by
      apply sum_le_sum
      intro j hj
      exact sqrt_reciprocal_step_le j (Finset.mem_Icc.mp hj).1
    _ = 2 * (1 - 1 / Real.sqrt (G : ℝ)) := by rw [← mul_sum, ht]
    _ ≤ 2 := by nlinarith [one_div_nonneg.mpr (Real.sqrt_nonneg (G : ℝ))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KernelVariationTransport/Variant5a5df250f43a91cc44949186f5400a1208905278c7b03d4ee3ad8b4152b9b09e.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cfeaf3c4ff11cdece71e085945663951cb41d86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

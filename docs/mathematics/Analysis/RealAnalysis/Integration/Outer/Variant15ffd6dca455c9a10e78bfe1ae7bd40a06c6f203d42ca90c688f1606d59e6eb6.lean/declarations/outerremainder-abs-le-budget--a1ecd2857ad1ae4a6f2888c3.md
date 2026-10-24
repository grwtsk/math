# outerRemainder_abs_le_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37fd5bda-3d54-6a6a-05b2-0d286fdb2aa2",
  "kind": "theorem",
  "lexical_name": "outerRemainder_abs_le_budget",
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
  "slug": "outerremainder-abs-le-budget--a1ecd2857ad1ae4a6f2888c3",
  "source": {
    "blob": "21bde7bc9f1ca4cef171802c818159631272181f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1ecd2857ad1ae4a6f2888c31b07fb6ddea7dd6b7b5c3a26e3b5435cdfac90bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37fd5bda-3d54-6a6a-05b2-0d286fdb2aa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem outerRemainder_abs_le_budget {A : ℝ} (hA : 1 ≤ A)
    {N : ℕ} (hN : N ≤ sourceKernelCutoff A) :
    |outerRemainder A N| ≤
      (2 + 10 / A) * ∑ d ∈ Finset.Icc 1 N, 1 / Real.sqrt (d : ℝ) := by
  unfold outerRemainder
  calc
    _ ≤ ∑ d ∈ Finset.Icc 1 N, |realMoebius d * innerRemainder A d| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 N, (2 + 10 / A) * (1 / Real.sqrt (d : ℝ)) := by
      apply Finset.sum_le_sum
      intro d hd
      have hmu : |realMoebius d| ≤ 1 := by
        unfold realMoebius
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      have hdr : (1 : ℝ) ≤ d := by exact_mod_cast (Finset.mem_Icc.mp hd).1
      have hE := innerRemainder_abs_le hA hdr
        (divisor_le_sourceUpper hN (Finset.mem_Icc.mp hd).2)
      rw [abs_mul]
      calc
        _ ≤ 1 * ((2 + 10 / A) / Real.sqrt (d : ℝ)) :=
          mul_le_mul hmu hE (abs_nonneg _) (by norm_num)
        _ = _ := by ring
    _ = _ := by rw [Finset.mul_sum]

/-- The explicit twelve-budget remains a growing finite envelope. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Outer/Variant15ffd6dca455c9a10e78bfe1ae7bd40a06c6f203d42ca90c688f1606d59e6eb6.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21bde7bc9f1ca4cef171802c818159631272181f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

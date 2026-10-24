# short_rectangle_eq_truncated_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a112edc37bec73676e0c09821edbfd911abba83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4d32e8c-46b9-cb91-64a7-f159ab7df211",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0159465-5315-f9b7-80d0-296c1ef277ce",
  "kind": "theorem",
  "lexical_name": "short_rectangle_eq_truncated_product",
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
  "slug": "short-rectangle-eq-truncated-product--ccb3f80fc13e631cca6a6556",
  "source": {
    "blob": "8a112edc37bec73676e0c09821edbfd911abba83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccb3f80fc13e631cca6a6556f68b8eff075a5db2c34afc37808d30a332a1f658",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0159465-5315-f9b7-80d0-296c1ef277ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem short_rectangle_eq_truncated_product (U : ℕ) (w : ℕ → ℝ) :
    (∑ d ∈ Finset.Icc 1 U, realMoebius d *
      ∑ m ∈ Finset.Icc 1 U, vonMangoldt m * w (d * m)) =
    ∑ n ∈ Finset.Icc 1 (U * U),
      (shortPart U (moebius : ArithmeticFunction ℝ) *
        shortPart U vonMangoldt) n * w n := by
  classical
  by_cases hU : 1 ≤ U
  · have hUN : U ≤ U * U := by nlinarith
    let W : ℕ → ℝ := fun n => if n ≤ U * U then w n else 0
    have hW (n : ℕ) (hn : U * U < n) : W n = 0 := by
      simp [W, Nat.not_le.mpr hn]
    have hv := finite_convolution_sum (U * U)
      (shortPart U (moebius : ArithmeticFunction ℝ))
      (shortPart U vonMangoldt) W hW
    have hl :
        (∑ n ∈ Finset.Icc 1 (U * U),
          (shortPart U (moebius : ArithmeticFunction ℝ) *
            shortPart U vonMangoldt) n * W n) =
        ∑ n ∈ Finset.Icc 1 (U * U),
          (shortPart U (moebius : ArithmeticFunction ℝ) *
            shortPart U vonMangoldt) n * w n := by
      apply Finset.sum_congr rfl
      intro n hn
      rw [show W n = w n from if_pos (Finset.mem_Icc.mp hn).2]
    rw [hl] at hv
    simp_rw [mul_assoc, ← Finset.mul_sum] at hv
    rw [sum_shortPart_weighted U (U * U) hUN] at hv
    have hi (d : ℕ) :
        (∑ m ∈ Finset.Icc 1 (U * U), shortPart U vonMangoldt m * W (d * m)) =
        ∑ m ∈ Finset.Icc 1 U, vonMangoldt m * W (d * m) :=
      sum_shortPart_weighted U (U * U) hUN vonMangoldt (fun m => W (d * m))
    simp_rw [hi] at hv
    calc
      _ = ∑ d ∈ Finset.Icc 1 U, (moebius : ArithmeticFunction ℝ) d *
          ∑ m ∈ Finset.Icc 1 U, vonMangoldt m * W (d * m) := by
        apply Finset.sum_congr rfl
        intro d hd
        rw [intCoe_apply]
        change (moebius d : ℝ) * _ = (moebius d : ℝ) * _
        congr 1
        apply Finset.sum_congr rfl
        intro m hm
        have hp : d * m ≤ U * U :=
          Nat.mul_le_mul (Finset.mem_Icc.mp hd).2 (Finset.mem_Icc.mp hm).2
        rw [show W (d * m) = w (d * m) from if_pos hp]
      _ = _ := hv.symm
  · have hU0 : U = 0 := by omega
    subst U
    simp

/-- Product grouping retains the actual truncated coefficient on the whole U-squared carrier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a112edc37bec73676e0c09821edbfd911abba83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

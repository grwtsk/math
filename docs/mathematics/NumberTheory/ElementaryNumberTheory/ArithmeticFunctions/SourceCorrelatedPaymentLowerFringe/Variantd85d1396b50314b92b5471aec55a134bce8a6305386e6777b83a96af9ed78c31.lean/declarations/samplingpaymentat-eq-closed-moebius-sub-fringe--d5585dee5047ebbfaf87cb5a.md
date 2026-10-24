# samplingPaymentAt_eq_closed_moebius_sub_fringe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "309dd7d9b1068864450599b3be0c8a3725bb7072",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d85d1396b50314b92b5471aec55a134bce8a6305386e6777b83a96af9ed78c31.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f87e3306-7c04-4158-94c0-ba4206600784",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3a9927e-fceb-f1c9-fba9-3343af478ddc",
  "kind": "theorem",
  "lexical_name": "samplingPaymentAt_eq_closed_moebius_sub_fringe",
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
  "slug": "samplingpaymentat-eq-closed-moebius-sub-fringe--d5585dee5047ebbfaf87cb5a",
  "source": {
    "blob": "309dd7d9b1068864450599b3be0c8a3725bb7072",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 61,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variantd85d1396b50314b92b5471aec55a134bce8a6305386e6777b83a96af9ed78c31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5585dee5047ebbfaf87cb5a64bdc75dc14b463a90e0456d6692a47f4c483c28",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variantd85d1396b50314b92b5471aec55a134bce8a6305386e6777b83a96af9ed78c31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3a9927e-fceb-f1c9-fba9-3343af478ddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem samplingPaymentAt_eq_closed_moebius_sub_fringe (A : ℝ) (U : ℕ) :
    samplingPaymentAt A U =
      (∑ n ∈ Finset.Icc 1 U, (moebius n : ℝ) *
        (sourceLogSamplingMainTerm A n +
          Real.log (n : ℝ) * sourcePlainSamplingMainTerm A n)) -
      ∑ n ∈ Finset.Ioc U (U * U),
        (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n *
          sourcePlainSamplingMainTerm A n := by
  classical
  have hUU : U ≤ U * U := Nat.le_mul_self U
  have hi : Finset.Icc 1 (U * U) = Finset.Icc 1 U ∪ Finset.Ioc U (U * U) := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
    omega
  have hd : Disjoint (Finset.Icc 1 U) (Finset.Ioc U (U * U)) := by
    apply Finset.disjoint_left.mpr
    intro n hn hn'
    exact (not_lt_of_ge (Finset.mem_Icc.mp hn).2) (Finset.mem_Ioc.mp hn').1
  have hs :
      (∑ n ∈ Finset.Icc 1 (U * U),
        (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n *
          sourcePlainSamplingMainTerm A n) =
        (∑ n ∈ Finset.Icc 1 U,
          (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n *
            sourcePlainSamplingMainTerm A n) +
        ∑ n ∈ Finset.Ioc U (U * U),
          (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n *
            sourcePlainSamplingMainTerm A n := by
    rw [hi, Finset.sum_union hd]
  have hl :
      (∑ n ∈ Finset.Icc 1 U,
        (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n *
          sourcePlainSamplingMainTerm A n) =
        -(∑ n ∈ Finset.Icc 1 U,
          (moebius n : ℝ) * Real.log (n : ℝ) * sourcePlainSamplingMainTerm A n) := by
    rw [← Finset.sum_neg_distrib]
    apply Finset.sum_congr rfl
    intro n hn
    rw [truncated_coefficient_eq_full_of_le U n (Finset.mem_Icc.mp hn).2,
      moebius_mul_vonMangoldt_apply]
    ring
  rw [samplingPaymentAt_eq_truncated_product_sum, hs, hl]
  simp only [realMoebius, mul_add, Finset.sum_add_distrib, mul_assoc]
  ring

/-- The actual joint target keeps its independent baseline and physical unequal-index sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variantd85d1396b50314b92b5471aec55a134bce8a6305386e6777b83a96af9ed78c31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SourceCorrelatedPaymentLowerFringe/Variantd85d1396b50314b92b5471aec55a134bce8a6305386e6777b83a96af9ed78c31.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `309dd7d9b1068864450599b3be0c8a3725bb7072` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

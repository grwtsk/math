# quadratic_source_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a8d3b342297ea702f9a4d9c7fe6561b03255e815",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:164a9a37-f291-de18-2c02-d153117eb2ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09c8e4f6-20ad-8482-8290-34ec1e5d5ec5",
  "kind": "theorem",
  "lexical_name": "quadratic_source_transport",
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
  "slug": "quadratic-source-transport--ef46cc35b6ef712ff48b83f1",
  "source": {
    "blob": "a8d3b342297ea702f9a4d9c7fe6561b03255e815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 231,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef46cc35b6ef712ff48b83f18b69b718371d3080b08b9c5d0b166e29ef51c196",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09c8e4f6-20ad-8482-8290-34ec1e5d5ec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_source_transport (A : ℝ) (N : ℕ) (hN : N ≤ ⌊Real.exp (2 * A)⌋₊) :
    weightedContribution A (truncatedMoebius N ^ 2 * ζ * ArithmeticFunction.log) =
      ∑ i ∈ Icc 1 N, ∑ j ∈ Icc 1 N,
        (ArithmeticFunction.moebius i : ℝ) * (ArithmeticFunction.moebius j : ℝ) *
          thetaKernel A (i * j) := by
  rw [weightedContribution_eq_finiteWeight A _ (by simp [ArithmeticFunction.mul_apply])]
  simp only [pow_two, mul_assoc]
  rw [weighted_convolution _ _ _ _ (sourceFiniteWeight_zero A)]
  have hi (i : ℕ) (hi : i ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊) :
      (∑ n ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
        (truncatedMoebius N * (ζ * ArithmeticFunction.log)) n * sourceFiniteWeight A (i * n)) =
        ∑ j ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊, truncatedMoebius N j * thetaKernel A (i * j) := by
    rw [weighted_convolution _ _ _ _
      (fun n hn ↦ sourceFiniteWeight_mul_zero A i n (mem_Icc.mp hi).1 hn)]
    apply sum_congr rfl
    intro j hj
    congr 1
    have hij : 1 ≤ i * j := by
      have := (mem_Icc.mp hi).1
      have := (mem_Icc.mp hj).1
      nlinarith
    simp only [← Nat.mul_assoc]
    rw [weighted_convolution _ _ _ _
      (fun n hn ↦ sourceFiniteWeight_mul_zero A (i * j) n hij hn),
      thetaKernel_eq_finiteWeight]
    apply sum_congr rfl
    intro k hk
    have hk0 : k ≠ 0 := by have := (mem_Icc.mp hk).1; omega
    simp only [ArithmeticFunction.natCoe_apply, ArithmeticFunction.zeta_apply_ne hk0,
      Nat.cast_one, one_mul,
      Nat.mul_assoc]
    rfl
  calc
    _ = ∑ i ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
        truncatedMoebius N i * ∑ j ∈ Icc 1 ⌊Real.exp (2 * A)⌋₊,
          truncatedMoebius N j * thetaKernel A (i * j) := by
      apply sum_congr rfl
      intro i hi'
      rw [hi i hi']
    _ = ∑ i ∈ Icc 1 N, (ArithmeticFunction.moebius i : ℝ) *
        ∑ j ∈ Icc 1 N, (ArithmeticFunction.moebius j : ℝ) * thetaKernel A (i * j) := by
      rw [sum_truncatedMoebius _ N hN]
      apply sum_congr rfl
      intro i _
      rw [sum_truncatedMoebius _ N hN]
    _ = _ := by
      apply sum_congr rfl
      intro i _
      rw [mul_sum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaKernelTransport/Variantbf64ad1f6894e29b525d940b467918e318e2976148a2c3e624b9bd473720fd25.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d3b342297ea702f9a4d9c7fe6561b03255e815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

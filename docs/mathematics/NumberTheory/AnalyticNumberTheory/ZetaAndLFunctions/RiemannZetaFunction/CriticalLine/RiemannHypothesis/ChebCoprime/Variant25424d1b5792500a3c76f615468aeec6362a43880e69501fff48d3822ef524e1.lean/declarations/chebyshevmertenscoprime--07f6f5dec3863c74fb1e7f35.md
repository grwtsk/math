# chebyshevMertensCoprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e06332bc-c3ad-4541-48d3-671b31dbfc17",
  "kind": "theorem",
  "lexical_name": "chebyshevMertensCoprime",
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
  "slug": "chebyshevmertenscoprime--07f6f5dec3863c74fb1e7f35",
  "source": {
    "blob": "148adc76e100cf7e6b8f2d3c19126fec5a3b68fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 214,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07f6f5dec3863c74fb1e7f356d2c7f3011e5f601bbef8bd9df9d318fb188f2d9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e06332bc-c3ad-4541-48d3-671b31dbfc17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshevMertensCoprime (q : ℕ) (hq : 1 ≤ q) : ChebyshevMertensCoprime q := by
  obtain ⟨Ca, hCa⟩ := Zeta23.Cheb.chebyshevMertens.cheb2a
  obtain ⟨Cb, hCb⟩ := Zeta23.Cheb.chebyshevMertens.cheb2b
  have hlq0 : (0:ℝ) ≤ Real.log q ^ 2 := sq_nonneg _
  constructor
  · -- cheb2a
    refine ⟨Ca + 2 * Real.log q ^ 2, fun x hx => ?_⟩
    have hlogx : Real.log 2 ≤ Real.log x := Real.log_le_log two_pos hx
    have hlog2 : (0.6931471803:ℝ) < Real.log 2 := Real.log_two_gt_d9
    have hsplit := Finset.sum_filter_add_sum_filter_not (Finset.Ioc 0 ⌊x⌋₊)
      (fun n => Nat.Coprime n q) (fun n => (Λ n : ℝ) ^ 2 / n)
    have hrem : ∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ¬ Nat.Coprime n q),
        (Λ n : ℝ) ^ 2 / n ≤ Real.log q ^ 2 := by
      have h0 := removed_le q hq x (fun _ => 1) 1 (fun n _ => ⟨zero_le_one, le_rfl⟩) zero_le_one
      simpa using h0
    have hrem0 : (0:ℝ) ≤ ∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ¬ Nat.Coprime n q),
        (Λ n : ℝ) ^ 2 / n := by
      apply Finset.sum_nonneg
      intro n _
      have h0 := ArithmeticFunction.vonMangoldt_nonneg (n := n)
      positivity
    have hall := hCa x hx
    have hq2 : Real.log q ^ 2 ≤ 2 * Real.log q ^ 2 * Real.log x := by nlinarith
    calc |∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => Nat.Coprime n q), (Λ n : ℝ) ^ 2 / n
          - Real.log x ^ 2 / 2|
        = |(∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, (Λ n : ℝ) ^ 2 / n - Real.log x ^ 2 / 2)
            - ∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ¬ Nat.Coprime n q),
              (Λ n : ℝ) ^ 2 / n| := by
          rw [← hsplit]
          congr 1
          ring
      _ ≤ |∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, (Λ n : ℝ) ^ 2 / n - Real.log x ^ 2 / 2|
            + |∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ¬ Nat.Coprime n q),
              (Λ n : ℝ) ^ 2 / n| := abs_sub _ _
      _ ≤ Ca * Real.log x + Real.log q ^ 2 := by
          rw [abs_of_nonneg hrem0]
          linarith
      _ ≤ (Ca + 2 * Real.log q ^ 2) * Real.log x := by nlinarith
  · -- cheb2b
    refine ⟨Cb + 2 * Real.log q ^ 2, fun x hx => ?_⟩
    have hx1 : (1:ℝ) ≤ x := by linarith
    have hlogx : Real.log 2 ≤ Real.log x := Real.log_le_log two_pos hx
    have hlogx0 : (0:ℝ) ≤ Real.log x := Real.log_nonneg hx1
    have hlog2 : (0.6931471803:ℝ) < Real.log 2 := Real.log_two_gt_d9
    have hsplit := Finset.sum_filter_add_sum_filter_not (Finset.Ioc 0 ⌊x⌋₊)
      (fun n => Nat.Coprime n q) (fun n => (Λ n : ℝ) ^ 2 / n * (Real.log x - Real.log n))
    have hwbd : ∀ n ∈ Finset.Ioc 0 ⌊x⌋₊,
        0 ≤ Real.log x - Real.log n ∧ Real.log x - Real.log n ≤ Real.log x := by
      intro n hn
      obtain ⟨hn0, hnx⟩ := Finset.mem_Ioc.1 hn
      have hn1 : (1:ℝ) ≤ (n:ℝ) := by exact_mod_cast hn0
      have hnn : (n:ℝ) ≤ x := le_trans (by exact_mod_cast hnx) (Nat.floor_le (by linarith))
      constructor
      · have := Real.log_le_log (by linarith : (0:ℝ) < (n:ℝ)) hnn
        linarith
      · have := Real.log_nonneg hn1
        linarith
    have hrem := removed_le q hq x (fun n => Real.log x - Real.log n) (Real.log x) hwbd hlogx0
    have hrem0 : (0:ℝ) ≤ ∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ¬ Nat.Coprime n q),
        (Λ n : ℝ) ^ 2 / n * (Real.log x - Real.log n) := by
      apply Finset.sum_nonneg
      intro n hn
      have hmem := (Finset.mem_filter.1 hn).1
      have hw := (hwbd n hmem).1
      have h0 := ArithmeticFunction.vonMangoldt_nonneg (n := n)
      positivity
    have hall := hCb x hx
    have hq2 : Real.log x * Real.log q ^ 2 ≤ 2 * Real.log q ^ 2 * Real.log x ^ 2 := by nlinarith
    calc |∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => Nat.Coprime n q),
            (Λ n : ℝ) ^ 2 / n * (Real.log x - Real.log n) - Real.log x ^ 3 / 6|
        = |(∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, (Λ n : ℝ) ^ 2 / n * (Real.log x - Real.log n)
              - Real.log x ^ 3 / 6)
            - ∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ¬ Nat.Coprime n q),
              (Λ n : ℝ) ^ 2 / n * (Real.log x - Real.log n)| := by
          rw [← hsplit]
          congr 1
          ring
      _ ≤ |∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, (Λ n : ℝ) ^ 2 / n * (Real.log x - Real.log n)
              - Real.log x ^ 3 / 6|
            + |∑ n ∈ (Finset.Ioc 0 ⌊x⌋₊).filter (fun n => ¬ Nat.Coprime n q),
              (Λ n : ℝ) ^ 2 / n * (Real.log x - Real.log n)| := abs_sub _ _
      _ ≤ Cb * Real.log x ^ 2 + Real.log x * Real.log q ^ 2 := by
          rw [abs_of_nonneg hrem0]
          linarith
      _ ≤ (Cb + 2 * Real.log q ^ 2) * Real.log x ^ 2 := by nlinarith

/-- **Uniform coprime Chebyshev–Mertens**: one absolute `A` with
`ChebyshevMertensCoprimeBounded q (A·(1 + log q)²)` for every `q ≥ 1` (the uniform-in-`q`
`chebq_uniform` input; constant = ζ-constants + the (log q)² prime-power loss). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148adc76e100cf7e6b8f2d3c19126fec5a3b68fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

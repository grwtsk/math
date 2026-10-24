# chebyshevMertensCoprimeBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "242ddd0dc8878e093738083a2baf71fbd53260a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30c1747c-c649-08a8-ddf3-ba2739ff5110",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4640f65-35e2-a9d0-28e3-350b47f70eba",
  "kind": "theorem",
  "lexical_name": "chebyshevMertensCoprimeBounded",
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
  "slug": "chebyshevmertenscoprimebounded--03e4f6e60468b1415fcbf517",
  "source": {
    "blob": "242ddd0dc8878e093738083a2baf71fbd53260a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 295,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03e4f6e60468b1415fcbf5170e05a2921a889d3d232362168efe6fff0673913d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4640f65-35e2-a9d0-28e3-350b47f70eba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshevMertensCoprimeBounded :
    ∃ A : ℝ, 0 ≤ A ∧ ∀ q : ℕ, 1 ≤ q →
      ChebyshevMertensCoprimeBounded q (A * (1 + Real.log q) ^ 2) := by
  obtain ⟨Ca, hCa⟩ := Zeta23.Cheb.chebyshevMertens.cheb2a
  obtain ⟨Cb, hCb⟩ := Zeta23.Cheb.chebyshevMertens.cheb2b
  refine ⟨|Ca| + |Cb| + 2, by positivity, fun q hq => ?_⟩
  have hq1 : (1:ℝ) ≤ (q:ℝ) := by exact_mod_cast hq
  have hlq : (0:ℝ) ≤ Real.log q := Real.log_nonneg hq1
  have hA1 : (1:ℝ) ≤ (1 + Real.log q) ^ 2 := by nlinarith
  have hq2 : Real.log q ^ 2 ≤ (1 + Real.log q) ^ 2 := by nlinarith
  constructor
  · intro x hx
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
      _ ≤ (|Ca| + |Cb| + 2) * (1 + Real.log q) ^ 2 * Real.log x := by
          have e1 : Ca * Real.log x ≤ |Ca| * ((1 + Real.log q) ^ 2 * Real.log x) := by
            have h2 : Ca ≤ |Ca| := le_abs_self _
            have h3 : (0:ℝ) ≤ Real.log x := by linarith
            calc Ca * Real.log x ≤ |Ca| * Real.log x := mul_le_mul_of_nonneg_right h2 h3
              _ = |Ca| * Real.log x * 1 := (mul_one _).symm
              _ ≤ |Ca| * Real.log x * (1 + Real.log q) ^ 2 :=
                  mul_le_mul_of_nonneg_left hA1 (mul_nonneg (abs_nonneg Ca) h3)
              _ = |Ca| * ((1 + Real.log q) ^ 2 * Real.log x) := by ring
          have e2 : Real.log q ^ 2 ≤ 2 * ((1 + Real.log q) ^ 2 * Real.log x) := by
            have h3 : (1:ℝ)/2 ≤ Real.log x := by linarith
            nlinarith
          have e3 : (0:ℝ) ≤ |Cb| * ((1 + Real.log q) ^ 2 * Real.log x) := by
            have h3 : (0:ℝ) ≤ Real.log x := by linarith
            positivity
          nlinarith
  · intro x hx
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
      · have h0 := Real.log_le_log (by linarith : (0:ℝ) < (n:ℝ)) hnn
        linarith
      · have h0 := Real.log_nonneg hn1
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
      _ ≤ (|Ca| + |Cb| + 2) * (1 + Real.log q) ^ 2 * Real.log x ^ 2 := by
          have h3 : (1:ℝ)/2 ≤ Real.log x := by linarith
          have e1 : Cb * Real.log x ^ 2 ≤ |Cb| * ((1 + Real.log q) ^ 2 * Real.log x ^ 2) := by
            calc Cb * Real.log x ^ 2 ≤ |Cb| * Real.log x ^ 2 :=
                  mul_le_mul_of_nonneg_right (le_abs_self _) (sq_nonneg _)
              _ = |Cb| * Real.log x ^ 2 * 1 := (mul_one _).symm
              _ ≤ |Cb| * Real.log x ^ 2 * (1 + Real.log q) ^ 2 :=
                  mul_le_mul_of_nonneg_left hA1 (mul_nonneg (abs_nonneg Cb) (sq_nonneg _))
              _ = |Cb| * ((1 + Real.log q) ^ 2 * Real.log x ^ 2) := by ring
          have e2 : Real.log x * Real.log q ^ 2 ≤ 2 * ((1 + Real.log q) ^ 2 * Real.log x ^ 2) := by
            nlinarith [sq_nonneg (Real.log x)]
          have e3 : (0:ℝ) ≤ |Ca| * ((1 + Real.log q) ^ 2 * Real.log x ^ 2) := by positivity
          nlinarith

/-- the plain (per-q) version, re-derived from the uniform one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant3ea4fab0f1332655ad0e2d9183d0bbfcbcae734a119fb7a63820ac9509ef2de8.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `242ddd0dc8878e093738083a2baf71fbd53260a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

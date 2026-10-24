# actual_finite_mangoldt_half_row_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1506c9d6-0155-499c-482d-37466e1e8b57",
  "kind": "theorem",
  "lexical_name": "actual_finite_mangoldt_half_row_abs_le",
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
  "slug": "actual-finite-mangoldt-half-row-abs-le--836554580069e4da52e73b70",
  "source": {
    "blob": "c690e786cbd792230363408231312db64378a5a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 179,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:836554580069e4da52e73b704199baa9cf9886c506602c303d6ee596ca6608a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1506c9d6-0155-499c-482d-37466e1e8b57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_finite_mangoldt_half_row_abs_le {A a : ℝ} (hA : 91 ≤ A)
    (ha : a ≤ 2 * A) (S : Finset ℕ) (hS : ∀ n ∈ S, 1 ≤ n) :
    |∑ n ∈ S, ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (Real.log n + a) -
        sourceCorrelation explicitSecondDerivative A (Real.log n + a) / 2)| ≤
      2144 * (Real.log 4 + 4) * Real.exp ((2 * A - a) / 2) / A ^ 4 := by
  classical
  let L := 2 * A - a
  let M := ⌊Real.exp L⌋₊
  let f := fun n : ℕ => 67 / A ^ 4 *
    (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
      ((L - Real.log n) ^ 3 / 6 + (L - Real.log n) ^ 4 / 48)
  have hL : 0 ≤ L := by dsimp only [L]; linarith
  have hb : |∑ n ∈ S, ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (Real.log n + a) -
        sourceCorrelation explicitSecondDerivative A (Real.log n + a) / 2)| ≤
      ∑ n ∈ S, if n ≤ M then f n else 0 := by
    apply (Finset.abs_sum_le_sum_abs _ _).trans
    apply Finset.sum_le_sum
    intro n hn
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast hS n hn
    by_cases hnm : n ≤ M
    · rw [if_pos hnm]
      have hz : Real.log (n : ℝ) ≤ L :=
        (Real.log_le_iff_le_exp hn0).mpr
          ((Nat.le_floor_iff (Real.exp_pos L).le).mp hnm)
      exact actual_row_term_abs_le hA (hS n hn) hz
    · rw [if_neg hnm]
      have hz : 2 * A ≤ Real.log n + a := by
        have ht : L < Real.log (n : ℝ) := by
          rw [Real.lt_log_iff_exp_lt hn0, ← Nat.floor_lt (Real.exp_pos L).le]
          exact Nat.lt_of_not_ge hnm
        dsimp only [L] at ht
        linarith
      rw [source_jet_zero_right A (by linarith) 1 _ hz,
        show sourceCorrelation explicitSecondDerivative A (Real.log n + a) = 0 from
          source_jet_zero_right A (by linarith) 0 _ hz]
      simp
  have hsubset : S.filter (fun n => n ≤ M) ⊆ Finset.Icc 1 M := by
    intro n hn
    exact Finset.mem_Icc.mpr ⟨hS n (Finset.mem_filter.mp hn).1, (Finset.mem_filter.mp hn).2⟩
  have hf (n : ℕ) (hn : n ∈ Finset.Icc 1 M) : 0 ≤ f n := by
    have hn0 : 0 < (n : ℝ) := by exact_mod_cast (Finset.mem_Icc.mp hn).1
    have hz : Real.log (n : ℝ) ≤ L := (Real.log_le_iff_le_exp hn0).mpr
      ((Nat.le_floor_iff (Real.exp_pos L).le).mp (Finset.mem_Icc.mp hn).2)
    dsimp only [f]
    positivity
  have heq : (∑ n ∈ Finset.Icc 1 M, f n) =
      67 / A ^ 4 * (actualHalfMangoldtEdgeMoment 3 L / 6 +
        actualHalfMangoldtEdgeMoment 4 L / 48) := by
    unfold actualHalfMangoldtEdgeMoment
    dsimp only [f, M]
    rw [Finset.sum_div, Finset.sum_div, ← Finset.sum_add_distrib]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    ring
  have h3 := actualHalfMangoldtEdgeMoment_le 2 hL
  have h4 := actualHalfMangoldtEdgeMoment_le 3 hL
  norm_num only [Nat.reduceAdd, Nat.factorial, Nat.cast_ofNat] at h3 h4
  calc
    _ ≤ ∑ n ∈ S, if n ≤ M then f n else 0 := hb
    _ = ∑ n ∈ S.filter (fun n => n ≤ M), f n := (Finset.sum_filter _ _).symm
    _ ≤ ∑ n ∈ Finset.Icc 1 M, f n :=
      Finset.sum_le_sum_of_subset_of_nonneg hsubset (fun n hn _ => hf n hn)
    _ = _ := heq
    _ ≤ 67 / A ^ 4 *
        (96 * (Real.log 4 + 4) * Real.exp (L / 2) / 6 +
          768 * (Real.log 4 + 4) * Real.exp (L / 2) / 48) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity)
      linarith
    _ = _ := by dsimp only [L]; ring

/-- The actual lower-column full Mangoldt row receives this unconditional norm bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Dd11f350e6298a7b2c5aActualSupportEdgeMangoldtRow/Variant9a2135ad20e6209ecb804967a363c5f3eb9ceb84d0034bf5a8b5cf039e98da8f.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c690e786cbd792230363408231312db64378a5a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

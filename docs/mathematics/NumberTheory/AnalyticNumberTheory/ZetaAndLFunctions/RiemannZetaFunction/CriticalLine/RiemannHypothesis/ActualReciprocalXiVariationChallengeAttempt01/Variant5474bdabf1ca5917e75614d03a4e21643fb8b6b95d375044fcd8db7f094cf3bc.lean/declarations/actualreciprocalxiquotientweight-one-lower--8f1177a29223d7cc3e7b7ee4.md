# actualReciprocalXiQuotientWeight_one_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3befc58e-3458-691d-cdfc-98437bc5fd2c",
  "kind": "theorem",
  "lexical_name": "actualReciprocalXiQuotientWeight_one_lower",
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
  "slug": "actualreciprocalxiquotientweight-one-lower--8f1177a29223d7cc3e7b7ee4",
  "source": {
    "blob": "2e2f75cc9d8641e67597b3aaf2ab649c93d9a776",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt01/Variant5474bdabf1ca5917e75614d03a4e21643fb8b6b95d375044fcd8db7f094cf3bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1177a29223d7cc3e7b7ee4cae8cb954c222682810a6223439f1fc72f61f1eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt01/Variant5474bdabf1ca5917e75614d03a4e21643fb8b6b95d375044fcd8db7f094cf3bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3befc58e-3458-691d-cdfc-98437bc5fd2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualReciprocalXiQuotientWeight_one_lower {q : ℕ} (hq : 2 ≤ q) :
    Real.sqrt ((8 * q : ℕ) : ℝ) * Real.log (q : ℝ) / 8 ≤
      actualReciprocalXiQuotientWeight ((8 * q : ℕ) : ℝ) 1 := by
  rw [actualReciprocalXiQuotientWeight_one, Nat.floor_natCast]
  have hsub : Finset.Icc q (2 * q) ⊆ Finset.Icc 1 (8 * q) := by
    intro m hm
    simp only [Finset.mem_Icc] at hm ⊢
    omega
  have hs : (∑ m ∈ Finset.Icc q (2 * q),
      Real.log (m : ℝ) * actualClosedXiAtomKernel ((8 * q : ℕ) : ℝ) m) ≤
      ∑ m ∈ Finset.Icc 1 (8 * q),
        Real.log (m : ℝ) * actualClosedXiAtomKernel ((8 * q : ℕ) : ℝ) m := by
    apply Finset.sum_le_sum_of_subset_of_nonneg hsub
    intro m hm _
    have hm1 := (Finset.mem_Icc.mp hm).1
    exact mul_nonneg (Real.log_nonneg (by exact_mod_cast hm1))
      (kernel_nonnegative hm1 (Finset.mem_Icc.mp hm).2)
  have hc : ((q + 1 : ℕ) : ℝ) *
      (Real.log (q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ)) ≤
      ∑ m ∈ Finset.Icc q (2 * q),
        Real.log (m : ℝ) * actualClosedXiAtomKernel ((8 * q : ℕ) : ℝ) m := by
    have hh := Finset.sum_le_sum (fun m hm => subrow_term_lower hq hm)
    have he : 2 * q + 1 - q = q + 1 := by omega
    simpa only [Finset.sum_const, Nat.card_Icc, he, nsmul_eq_mul] using hh
  have hq1 : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast (show 1 ≤ q by omega)
  have hN0 : 0 < ((8 * q : ℕ) : ℝ) := by positivity
  have hsN := Real.sq_sqrt (Nat.cast_nonneg (8 * q))
  have he : (q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ) =
      Real.sqrt ((8 * q : ℕ) : ℝ) / 8 := by
    apply (div_eq_iff (Real.sqrt_pos.2 hN0).ne').2
    push_cast at hsN
    nlinarith
  calc
    _ = Real.log (q : ℝ) * ((q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ)) := by
      rw [he]
      ring
    _ ≤ ((q + 1 : ℕ) : ℝ) *
        (Real.log (q : ℝ) / Real.sqrt ((8 * q : ℕ) : ℝ)) := by
      push_cast
      nlinarith [div_nonneg (Real.log_nonneg hq1)
        (Real.sqrt_nonneg ((8 * q : ℕ) : ℝ))]
    _ ≤ _ := hc.trans hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt01/Variant5474bdabf1ca5917e75614d03a4e21643fb8b6b95d375044fcd8db7f094cf3bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualReciprocalXiVariationChallengeAttempt01/Variant5474bdabf1ca5917e75614d03a4e21643fb8b6b95d375044fcd8db7f094cf3bc.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e2f75cc9d8641e67597b3aaf2ab649c93d9a776` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

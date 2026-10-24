# inverseThreeHalves_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6249c69-5146-0494-18f3-10bcd6b3612b",
  "kind": "theorem",
  "lexical_name": "inverseThreeHalves_sum_le",
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
  "slug": "inversethreehalves-sum-le--5e3e17c719532204caf18552",
  "source": {
    "blob": "0cd14cff30bd85a33ae992cc285e9a73e208c608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 217,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt03/Variantc702b6f273db90e5085c90af67f3e503bd71fa8d49d849dc729efc0d7677d64d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e3e17c719532204caf1855271f77bdaa208a89ca701a0b7d930fdbe70970afe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt03/Variantc702b6f273db90e5085c90af67f3e503bd71fa8d49d849dc729efc0d7677d64d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6249c69-5146-0494-18f3-10bcd6b3612b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverseThreeHalves_sum_le (N : ℕ) :
    (∑ n ∈ Finset.Icc 2 N, 1 / (n : ℝ) ^ (3 / 2 : ℝ)) ≤ 2 := by
  by_cases hN : 1 ≤ N
  · have hNreal : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hshift : (∑ i ∈ Finset.Ico 1 N,
        1 / ((i + 1 : ℕ) : ℝ) ^ (3 / 2 : ℝ)) =
        ∑ n ∈ Finset.Icc 2 N, 1 / (n : ℝ) ^ (3 / 2 : ℝ) := by
      rw [Finset.sum_Ico_add' (fun n : ℕ ↦ 1 / (n : ℝ) ^ (3 / 2 : ℝ)) 1 N 1]
      norm_num only [Nat.add_eq, Finset.Ico_add_one_right_eq_Icc]
    have hi : IntervalIntegrable inverseThreeHalves volume 1 (N : ℝ) :=
      (inverseThreeHalves_continuousOn hNreal).intervalIntegrable
    have hg : IntegrableOn inverseThreeHalves (Set.Ico (1 : ℝ) N) :=
      (intervalIntegrable_iff_integrableOn_Ico_of_le hNreal).mp hi
    have hcompare := sum_Ico_le_integral_of_le
      (f := fun y : ℝ ↦ 1 / (y + 1) ^ (3 / 2 : ℝ))
      (g := inverseThreeHalves) hN (fun i hi x hx ↦ ?_)
      (by simpa only [Nat.cast_one] using hg)
    · calc
        _ = ∑ i ∈ Finset.Ico 1 N,
            1 / ((i + 1 : ℕ) : ℝ) ^ (3 / 2 : ℝ) := hshift.symm
        _ ≤ (∫ x in (1 : ℝ)..(N : ℝ), inverseThreeHalves x) := by
          simpa only [Nat.cast_add, Nat.cast_one] using hcompare
        _ ≤ 2 := inverseThreeHalves_integral_le hNreal
    · have hi1 : (1 : ℝ) ≤ i := by exact_mod_cast hi.1
      have hx0 : 0 < x := by linarith [hx.1]
      have hxu : x ≤ (i : ℝ) + 1 := by
        simpa only [Nat.cast_add, Nat.cast_one] using hx.2.le
      have hp : x ^ (3 / 2 : ℝ) ≤ ((i : ℝ) + 1) ^ (3 / 2 : ℝ) :=
        Real.rpow_le_rpow hx0.le hxu (by norm_num)
      exact one_div_le_one_div_of_le (Real.rpow_pos_of_pos hx0 _) hp
  · have hN0 : N = 0 := by omega
    simp only [hN0, Finset.Icc_eq_empty_of_lt (by norm_num : (0 : ℕ) < 2),
      Finset.sum_empty]
    norm_num

/-- The conditional interface exposes only an elementary analytic inverse-power provider. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt03/Variantc702b6f273db90e5085c90af67f3e503bd71fa8d49d849dc729efc0d7677d64d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaSquareShellAttempt03/Variantc702b6f273db90e5085c90af67f3e503bd71fa8d49d849dc729efc0d7677d64d.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cd14cff30bd85a33ae992cc285e9a73e208c608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

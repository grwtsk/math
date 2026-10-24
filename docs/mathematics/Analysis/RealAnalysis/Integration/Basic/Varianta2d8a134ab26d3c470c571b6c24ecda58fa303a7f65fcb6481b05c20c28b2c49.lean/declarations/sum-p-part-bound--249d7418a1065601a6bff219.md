# sum_P_part_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ff8b8fe-97cc-9062-5c85-6f2dff682b94",
  "kind": "lemma",
  "lexical_name": "sum_P_part_bound",
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
  "slug": "sum-p-part-bound--249d7418a1065601a6bff219",
  "source": {
    "blob": "7f5598539f46f75f1cb8a084bcef17c567c1e3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1362,
    "line": 1325,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:249d7418a1065601a6bff219afa8f2826384e20a640edffc58055e47d85cf67e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0ff8b8fe-97cc-9062-5c85-6f2dff682b94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1325–1362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_P_part_bound (hF : LocalHypsCore cϱ p F) :
    |∑ k ∈ Finset.range p.d, ∫ r, F.phiHat r ^ 2 * Zeta23.PX p.X (p.tau k + r)|
      ≤ p.L ^ 2 / Real.log 2 * ∑ n ∈ primeRange p.X, acoef n := by
  have hlog2 : 0 < Real.log 2 := Real.log_pos one_lt_two
  simp_rw [P_part_eq hF]
  rw [← Finset.mul_sum, Finset.sum_comm]
  -- now: |-2 * Σ_n Σ_k a_n A(y_n) cos(τ_k y_n)|
  rw [abs_mul, abs_neg, abs_two]
  have hterm : ∀ n ∈ primeRange p.X,
      |∑ k ∈ Finset.range p.d, acoef n * F.Aphi (ycoef n) * Real.cos (p.tau k * ycoef n)|
        ≤ acoef n * (p.L ^ 2 / (2 * Real.log 2)) := by
    intro n hn
    have ha : 0 ≤ acoef n := div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.sqrt_nonneg _)
    have hfac : ∑ k ∈ Finset.range p.d, acoef n * F.Aphi (ycoef n) * Real.cos (p.tau k * ycoef n)
        = acoef n * (F.Aphi (ycoef n) * ∑ k ∈ Finset.range p.d, Real.cos (p.tau k * ycoef n)) := by
      rw [Finset.mul_sum, Finset.mul_sum]; exact Finset.sum_congr rfl fun k _ => by ring
    rw [hfac, abs_mul, abs_of_nonneg ha]
    rcases Nat.lt_or_ge n 2 with hn2 | hn2
    · -- n = 1: a_1 = 0
      have hn1 : n = 1 := by
        have := (Finset.mem_Ioc.1 hn).1; omega
      subst hn1
      simp [acoef, ArithmeticFunction.vonMangoldt_apply_one]
    · gcongr
      apply Aphi_mul_sum_cos_le hF
      exact Real.log_le_log two_pos (by exact_mod_cast hn2)
  calc 2 * |∑ n ∈ primeRange p.X, ∑ k ∈ Finset.range p.d,
          acoef n * F.Aphi (ycoef n) * Real.cos (p.tau k * ycoef n)|
      ≤ 2 * ∑ n ∈ primeRange p.X,
          |∑ k ∈ Finset.range p.d, acoef n * F.Aphi (ycoef n) * Real.cos (p.tau k * ycoef n)| := by
        gcongr; exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ 2 * ∑ n ∈ primeRange p.X, acoef n * (p.L ^ 2 / (2 * Real.log 2)) := by
        gcongr with n hn
        exact hterm n hn
    _ = p.L ^ 2 / Real.log 2 * ∑ n ∈ primeRange p.X, acoef n := by
        rw [← Finset.sum_mul]; field_simp

/-- The grid: `τ_k ∈ [T, 2T]` for `0 ≤ k < d` (§2.2 "τ_0,…,τ_{d−1} ∈ [T,2T)"), and `d ≤ LT/2π`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean#L1325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5598539f46f75f1cb8a084bcef17c567c1e3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

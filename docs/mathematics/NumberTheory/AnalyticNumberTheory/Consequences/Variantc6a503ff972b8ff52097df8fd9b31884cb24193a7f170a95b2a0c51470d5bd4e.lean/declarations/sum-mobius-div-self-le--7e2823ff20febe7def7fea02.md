# sum_mobius_div_self_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15723864-87a0-6904-aee3-37126487d1ee",
  "kind": "theorem",
  "lexical_name": "sum_mobius_div_self_le",
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
  "slug": "sum-mobius-div-self-le--7e2823ff20febe7def7fea02",
  "source": {
    "blob": "6718a5b2b25e4753f41d1454de228202f3cb531e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1656,
    "line": 1598,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e2823ff20febe7def7fea021fd8457bc64fb7728dec3eb8d61955a07c1d04b9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15723864-87a0-6904-aee3-37126487d1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1598–1656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_mobius_div_self_le (N : ℕ) : |∑ n ∈ range N, μ n / (n : ℚ)| ≤ 1 := by
  cases N with
  | zero => simp only [range_zero, sum_empty, abs_zero, zero_le_one]
  | succ N =>
  /- simple cases -/
  obtain rfl | hN := N.eq_zero_or_pos
  · simp
  /- annoying case -/
  have h_sum : 1 = (∑ d ∈ range (N + 1), (μ d / d : ℚ)) * N - ∑ d ∈ range (N + 1),
      μ d * Int.fract (N / d : ℚ) := calc
    (1 : ℚ) = ∑ m ∈ Ioc 0 N, ∑ d ∈ m.divisors, μ d := by
      have (x : ℕ) (hx : x ∈ Ioc 0 N) : ∑ d ∈ divisors x, μ d = if x = 1 then 1 else 0 := by
        rw [mem_Ioc] at hx
        rw [← coe_mul_zeta_apply, moebius_mul_coe_zeta, one_apply]
      rw [sum_congr rfl this]
      simp [hN.ne']
    _ = ∑ d ∈ range (N + 1), μ d * (N / d : ℕ) := by
      simp_rw [← coe_mul_zeta_apply, ArithmeticFunction.sum_Ioc_mul_zeta_eq_sum]
      rw [range_eq_Ico, ← Finset.insert_Ico_add_one_left_eq_Ico (add_one_pos _),
        sum_insert (by simp), Ico_add_one_add_one_eq_Ioc]
      simp
    _ = ∑ d ∈ range (N + 1), (μ d : ℚ) * ⌊(N / d : ℚ)⌋ := by
      simp_rw [Rat.floor_natCast_div_natCast]
      simp [← Int.natCast_ediv]
    _ = (∑ d ∈ range (N + 1), (μ d / d : ℚ)) * N - ∑ d ∈ range (N + 1),
        μ d * Int.fract (N / d : ℚ) := by
      simp_rw [sum_mul, ← sum_sub_distrib, mul_comm_div, ← mul_sub, Int.self_sub_fract]
  rw [eq_sub_iff_add_eq, eq_comm, ← eq_div_iff (by norm_num [Nat.pos_iff_ne_zero.mp hN])] at h_sum

  /- Next, we establish bounds for the error term -/
  have hf' (d : ℕ) : |Int.fract ((N : ℚ) / d)| < 1 := by
    rw [abs_of_nonneg (Int.fract_nonneg _)]
    exact Int.fract_lt_one _
  have h_bound : |∑ d ∈ range (N + 1), μ d * Int.fract ((N : ℚ) / d)| ≤ N - 1 := by
    /- range (N + 1) → Icc 1 N + part that evals to 0 -/
    rw [range_eq_Ico, ← Finset.insert_Ico_add_one_left_eq_Ico (by simp), sum_insert (by simp),
      ArithmeticFunction.map_zero, Int.cast_zero, zero_mul, zero_add,
      Finset.Ico_add_one_right_eq_Icc, zero_add]
    /- Ico 1 (N + 1) → Ico 1 N ∪ {N + 1} that evals to 0 -/
    rw [← Ico_insert_right hN, sum_insert (by simp), div_self (by simp; grind), Int.fract_one,
      mul_zero, zero_add]
    /- bound sum -/
    have (d : ℕ) : |μ d * Int.fract ((N : ℚ) / d)| ≤ 1 := by
      rw [abs_mul, ← one_mul 1]
      refine mul_le_mul ?_ (hf' _).le (abs_nonneg _) zero_le_one
      norm_cast
      exact abs_moebius_le_one
    apply (abs_sum_le_sum_abs _ _).trans
    apply (sum_le_sum fun d _ ↦ this d).trans
    simp [cast_sub (one_le_iff_ne_zero.mpr hN.ne')]

  rw [h_sum, abs_le]
  rw [abs_le, neg_sub] at h_bound
  constructor
  <;> simp only [le_div_iff₀, div_le_iff₀, cast_pos.mpr hN]
  <;> linarith [h_bound.left]



```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variantc6a503ff972b8ff52097df8fd9b31884cb24193a7f170a95b2a0c51470d5bd4e.lean#L1598).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6718a5b2b25e4753f41d1454de228202f3cb531e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

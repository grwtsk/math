# sum_dvd_vonMangoldt_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbcbda78-7384-da51-fc20-8b29237084ce",
  "kind": "lemma",
  "lexical_name": "sum_dvd_vonMangoldt_div_le",
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
  "slug": "sum-dvd-vonmangoldt-div-le--6ee5b53043a8bf19b8637744",
  "source": {
    "blob": "3f4bca101844d3aaa2a246e1f56cee795701bb2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 264,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ee5b53043a8bf19b863774405a76e48bb7a6b8fdab9536ae574f6ce76ab8dd7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbcbda78-7384-da51-fc20-8b29237084ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_dvd_vonMangoldt_div_le {p : ℕ} (hp : p.Prime) (X : ℕ) :
    ∑ d ∈ (Ioc 0 X).filter (fun d => p ∣ d), Λ d / d ≤ 2 * Real.log p / p := by
  have hp2 : (2:ℝ) ≤ p := by exact_mod_cast hp.two_le
  have hp0 : (0:ℝ) < p := by linarith
  have hlogp : 0 ≤ Real.log p := Real.log_nonneg (by linarith)
  -- restrict to the support and re-index by d = p^(a+1), a < X
  have hsupp : ∑ d ∈ (Ioc 0 X).filter (fun d => p ∣ d), Λ d / d
      = ∑ d ∈ ((Ioc 0 X).filter (fun d => p ∣ d)).filter (fun d => Λ d ≠ 0), Λ d / d := by
    refine (sum_filter_of_ne fun d _ h => ?_).symm
    intro h0
    exact h (by rw [h0, zero_div])
  have hsub : ((Ioc 0 X).filter (fun d => p ∣ d)).filter (fun d => Λ d ≠ 0)
      ⊆ (range X).image (fun a => p ^ (a + 1)) := by
    intro d hd
    simp only [mem_filter, mem_Ioc] at hd
    obtain ⟨⟨⟨hd0, hdX⟩, hpd⟩, hΛ⟩ := hd
    obtain ⟨q, k, hq, hk, hqk, -, -⟩ := exists_prime_pow_of_vonMangoldt_ne_zero hΛ
    have hpq : p = q := (Nat.prime_dvd_prime_iff_eq hp hq).mp (hp.dvd_of_dvd_pow (hqk ▸ hpd))
    subst hpq
    refine mem_image.mpr ⟨k - 1, mem_range.mpr ?_, ?_⟩
    · have : k < p ^ k := Nat.lt_pow_self hp.one_lt
      omega
    · rw [Nat.sub_add_cancel hk, hqk]
  calc ∑ d ∈ (Ioc 0 X).filter (fun d => p ∣ d), Λ d / d
      = ∑ d ∈ ((Ioc 0 X).filter (fun d => p ∣ d)).filter (fun d => Λ d ≠ 0), Λ d / d := hsupp
    _ ≤ ∑ d ∈ (range X).image (fun a => p ^ (a + 1)), Λ d / d :=
        sum_le_sum_of_subset_of_nonneg hsub fun d _ _ =>
          div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg d)
    _ ≤ ∑ a ∈ range X, Λ (p ^ (a + 1)) / ((p ^ (a + 1) : ℕ) : ℝ) :=
        sum_image_le_of_nonneg fun a _ => div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg _)
    _ = ∑ a ∈ range X, Real.log p / p * (1 / p) ^ a := by
        refine sum_congr rfl fun a _ => ?_
        rw [ArithmeticFunction.vonMangoldt_apply_pow (Nat.succ_ne_zero a),
          ArithmeticFunction.vonMangoldt_apply_prime hp]
        have hcast : ((p ^ (a + 1) : ℕ) : ℝ) = (p : ℝ) * (p : ℝ) ^ a := by push_cast; ring
        rw [hcast, one_div, inv_pow]
        field_simp
    _ = Real.log p / p * ∑ a ∈ range X, (1 / p : ℝ) ^ a := by rw [mul_sum]
    _ ≤ Real.log p / p * 2 := by
        refine mul_le_mul_of_nonneg_left ?_ (div_nonneg hlogp hp0.le)
        calc ∑ a ∈ range X, (1 / p : ℝ) ^ a ≤ ∑ a ∈ range X, (1 / 2 : ℝ) ^ a := by
              refine sum_le_sum fun a _ => pow_le_pow_left₀ (by positivity) ?_ a
              exact one_div_le_one_div_of_le (by norm_num) hp2
          _ ≤ 2 := sum_geometric_two_le X
    _ = 2 * Real.log p / p := by ring

/-! ### sums over multiples of a prime:  D m p u := Σ_{N ≤ e^u, p ∣ N} Λ^{∗m}(N)/N -/

/-- Σ_{N≤e^u, p∣N} Λ^{∗m}(N)/N. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Varianta1966d3def24ce21d9459c23a396301b24c71906cd33c979d322f873e2a10f1f.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f4bca101844d3aaa2a246e1f56cee795701bb2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

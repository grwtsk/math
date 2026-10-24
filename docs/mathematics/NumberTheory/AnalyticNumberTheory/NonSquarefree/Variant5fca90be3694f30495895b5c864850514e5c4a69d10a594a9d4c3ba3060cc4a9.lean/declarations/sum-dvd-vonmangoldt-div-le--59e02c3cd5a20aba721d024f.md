# sum_dvd_vonMangoldt_div_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "668f6e396659b6f207692e888320091a765ab18c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a0308fc-ebb7-2a89-d768-6a63e71c4027",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a6d5f39-56c1-fc42-3d0e-07e77ea33e91",
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
  "slug": "sum-dvd-vonmangoldt-div-le--59e02c3cd5a20aba721d024f",
  "source": {
    "blob": "668f6e396659b6f207692e888320091a765ab18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 256,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59e02c3cd5a20aba721d024ffc0ea782bdcea342075c78cfbcdca82c8b2ba831",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a6d5f39-56c1-fc42-3d0e-07e77ea33e91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–304.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/NonSquarefree/Variant5fca90be3694f30495895b5c864850514e5c4a69d10a594a9d4c3ba3060cc4a9.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668f6e396659b6f207692e888320091a765ab18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

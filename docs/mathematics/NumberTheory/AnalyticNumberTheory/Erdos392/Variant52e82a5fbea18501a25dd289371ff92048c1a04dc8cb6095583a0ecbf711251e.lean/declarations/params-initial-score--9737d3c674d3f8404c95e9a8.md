# Params.initial.score

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b4a59df4-da1e-ddff-d8ab-59bed93bcce8",
  "kind": "theorem",
  "lexical_name": "Params.initial.score",
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
  "slug": "params-initial-score--9737d3c674d3f8404c95e9a8",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3023,
    "line": 2933,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9737d3c674d3f8404c95e9a826c77a132b90c0e8d7a231374dc76d36a8ebc98e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b4a59df4-da1e-ddff-d8ab-59bed93bcce8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2933–3023.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Params.initial.score (ε : ℝ) (hε : ε > 0) :
    ∀ᶠ n in .atTop, ∃ P : Params, P.n = n ∧ P.initial.score P.L ≤ ε * n := by
  have h_bound_score_1 : ∀ᶠ M in .atTop, ∀ P : Params,
      P.M = M → P.n * log (1 - 1 / (P.M : ℝ))⁻¹ ≤ ε * P.n / 5 :=
    (initial.bound_score_1 (ε := ε / 5) (by positivity)).mono
      fun M hM P hP ↦ by linarith [hM P hP]
  obtain ⟨M₀, hM₀⟩ := Filter.eventually_atTop.mp h_bound_score_1
  let M := max M₀ 2
  have hM : M > 1 ∧
      ∀ P : Params, P.M = M →
        P.n * log (1 - 1 / (P.M : ℝ))⁻¹ ≤ ε * P.n / 5 :=
    ⟨by omega, fun P hP ↦ hM₀ _ (le_max_left _ _) _ hP⟩
  have h_bound_score_2 : ∀ᶠ L in .atTop, ∀ᶠ n in .atTop, ∀ P : Params,
      P.L = L → P.n = n → P.M = M →
        ∑ _p ∈ Finset.filter (·.Prime) (Finset.Iic (P.n / P.L)),
          P.M * Real.log P.n ≤ ε * P.n / 5 :=
    (initial.bound_score_2 (ε / 5) (by positivity) M).mono fun L hL ↦
      hL.mono fun n hn P hPL hPn hPM ↦ by linarith [hn P hPL hPn hPM]
  obtain ⟨L₀, hL₀⟩ := Filter.eventually_atTop.mp h_bound_score_2
  let L := max L₀ 2
  have hL'' : 2 ≤ L := by omega
  have h_bound_score_3 : ∀ᶠ n in .atTop, ∀ P : Params,
      P.M = M → P.n = n →
        ∑ _p ∈ Finset.filter (·.Prime) (Finset.Iic ⌊(Real.sqrt P.n)⌋₊),
          P.M * Real.log P.n * Real.log P.n / Real.log 2 ≤ ε * P.n / 5 :=
    (initial.bound_score_3 (ε / 5) (by positivity) M).mono fun n hn P hPM hPn ↦ by grind
  have h_bound_score_4 : ∀ᶠ n in .atTop, ∀ P : Params,
      P.L = L → P.n = n → ∑ p ∈ Finset.filter (·.Prime) (Finset.Icc (P.n / P.L + 1) P.n),
        (P.n / p) * Real.log (P.n / p) ≤ ε * P.n / 10 :=
    (initial.bound_score_4 (ε / 10) (by positivity) L).mono fun n hn P hPL hPn ↦ by grind
  have h_bound_score_5 : ∀ᶠ n in .atTop, ∀ P : Params,
      P.M = M → P.L = L → P.n = n → ∑ _p ∈ filter (·.Prime) (Finset.Iic P.L),
        (P.M * Real.log P.n + P.M * P.L^2 * primeCounting P.n) * Real.log P.L ≤ ε * P.n / 5 :=
    (initial.bound_score_5 (ε / 5) (by positivity) M L).mono fun n hn P hPM hPL hPn ↦ by grind
  have h_boundary_small :
      ∀ᶠ n : ℕ in .atTop, (L + 1 : ℝ) * Real.log (L + 1) ≤ ε * n / 10 := by
    filter_upwards [Filter.eventually_ge_atTop
      (⌈((10 : ℝ) * ((L + 1 : ℝ) * Real.log (L + 1))) / ε⌉₊)]
      with n hn
    have hceil : ((10 : ℝ) * ((L + 1 : ℝ) * Real.log (L + 1))) / ε ≤ n := by
      exact (le_ceil _).trans (by exact_mod_cast hn)
    have hmul' : ((10 : ℝ) * ((L + 1 : ℝ) * Real.log (L + 1))) ≤ n * ε := by
      exact (div_le_iff₀ hε).1 hceil
    have hmul : ((10 : ℝ) * ((L + 1 : ℝ) * Real.log (L + 1))) ≤ ε * n := by
      simpa [mul_comm, mul_left_comm, mul_assoc] using hmul'
    nlinarith [hmul]
  have h_exists_n₀ : ∃ n₀ : ℕ, ∀ n ≥ n₀,
      n > L * L ∧ (n / L : ℕ) > Real.sqrt n := by
    refine ⟨L^2 + L^2 + 1, fun n hn ↦ ⟨by grind, ?_⟩⟩
    have hmod : n % L < L := mod_lt n (by positivity)
    rw [gt_iff_lt, sqrt_lt' (Nat.cast_pos.mpr <| by nlinarith [div_add_mod n L, hmod])]
    have : n < (n / L)^2 := by
      have : n ≤ L * (n / L) + (L - 1) := by
        calc n = L * (n / L) + n % L := (div_add_mod n L).symm
          _ ≤ L * (n / L) + (L - 1) := by omega
      have : (n / L)^2 ≥ (L + 1)^2 := Nat.pow_le_pow_left (by nlinarith [div_add_mod n L, hmod]) 2
      nlinarith [div_add_mod n L, hmod]
    exact_mod_cast this
  filter_upwards [Filter.eventually_ge_atTop h_exists_n₀.choose, hL₀ L (le_max_left _ _),
    h_bound_score_3, h_bound_score_4, h_bound_score_5,
    h_boundary_small] with n hn hn2 hn3 hn4 hn5 hn6
  obtain ⟨hn_LL, hn_sqrt⟩ := h_exists_n₀.choose_spec n hn
  let P : Params := ⟨n, M, L, hM.1, by positivity, hn_LL, hn_sqrt, hL''⟩
  have h_large_split := large_prime_sum_split P.n P.L (fun p => (P.n / p) * Real.log (P.n / p))
  have h_boundary_term :
      (if (P.n / P.L).Prime then
        ((P.n : ℝ) / (P.n / P.L : ℕ)) * Real.log ((P.n : ℝ) / (P.n / P.L : ℕ))
      else 0) ≤ ε * P.n / 10 := by
    exact (boundary_term_le P).trans (by simpa [P] using hn6)
  have h_large_tail : ∑ p ∈ Finset.filter (·.Prime) (Finset.Icc (P.n / P.L + 1) P.n),
      (P.n / p) * Real.log (P.n / p) ≤ ε * P.n / 10 := hn4 P rfl rfl
  have h_large : ∑ p ∈ Finset.filter (·.Prime) (Finset.Icc (P.n / P.L) P.n),
      (P.n / p) * Real.log (P.n / p) ≤ ε * P.n / 10 + ε * P.n / 10 := by
    rw [h_large_split]
    exact add_le_add h_boundary_term h_large_tail
  refine ⟨P, rfl, ?_⟩
  calc P.initial.score P.L ≤ _ := initial.score_bound P
    _ ≤ ε * P.n / 5 + ε * P.n / 5 + ε * P.n / 5 +
          (ε * P.n / 10 + ε * P.n / 10) + ε * P.n / 5 := by
        gcongr <;> first | exact hM.2 P rfl | exact hn2 P rfl rfl rfl |
          exact hn3 P rfl rfl | exact h_large | exact hn5 P rfl rfl rfl
    _ = ε * n := by ring

@[blueprint
  "erdos-sol-1"
  (statement := /-- One can find a balanced factorization of $n!$ with cardinality at most
  $n - n / \log n + o(n / \log n)$.--/)
  (proof := /-- Combine Proposition \ref{initial-score} with Proposition \ref{card-bound} and
  the Stirling approximation.-/)
  (latexEnv := "theorem")
  (discussion := 648)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L2933).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

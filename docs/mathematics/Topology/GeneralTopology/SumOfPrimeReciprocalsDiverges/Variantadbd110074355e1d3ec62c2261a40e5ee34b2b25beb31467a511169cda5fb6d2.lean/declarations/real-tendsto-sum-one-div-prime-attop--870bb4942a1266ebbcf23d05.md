# Real.tendsto_sum_one_div_prime_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:493021a6-3c46-094c-64cc-20f5a19554f1",
  "kind": "theorem",
  "lexical_name": "Real.tendsto_sum_one_div_prime_atTop",
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
  "slug": "real-tendsto-sum-one-div-prime-attop--870bb4942a1266ebbcf23d05",
  "source": {
    "blob": "ab3b98554054aef4bab73665a22340c104bfb2ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 219,
    "path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:870bb4942a1266ebbcf23d05cf9281943b76579859604366469f8df6e7a8d863",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:493021a6-3c46-094c-64cc-20f5a19554f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Real.tendsto_sum_one_div_prime_atTop :
    Tendsto (fun n => ∑ p in Finset.filter (fun p => Nat.Prime p) (range n), 1 / (p : ℝ))
      atTop atTop := by
  -- Assume that the sum of the reciprocals of the primes converges.
  by_contra h
  -- Then there is a natural number `k` such that for all `x`, the sum of the reciprocals of primes
  -- between `k` and `x` is less than 1/2.
  obtain ⟨k, h1⟩ := sum_lt_half_of_not_tendsto h
  -- Choose `x` sufficiently large for the argument below to work, and use a perfect square so we
  -- can easily take the square root.
  let x := 2 ^ (k + 1) * 2 ^ (k + 1)
  -- We will partition `range x` into two subsets:
  -- * `M`, the subset of those `e` for which `e + 1` is a product of powers of primes smaller
  --   than or equal to `k`;
  set M' := M x k with hM'
  -- * `U`, the subset of those `e` for which there is a prime `p > k` that divides `e + 1`.
  let P := Finset.filter (fun p => k < p ∧ Nat.Prime p) (range (x + 1))
  set U' := U x k with hU'
  -- This is indeed a partition, so `|U| + |M| = |range x| = x`.
  have h2 : x = card U' + card M' := by
    rw [← card_range x, hU', hM', ← range_sdiff_eq_biUnion]
    exact (card_sdiff_add_card_eq_card (Finset.filter_subset _ _)).symm
  -- But for the `x` we have chosen above, both `|U|` and `|M|` are less than or equal to `x / 2`,
  -- and for U, the inequality is strict.
  have h3 :=
    calc
      (card U' : ℝ) ≤ x * ∑ p in P, 1 / (p : ℝ) := card_le_mul_sum
      _ < x * (1 / 2) := (mul_lt_mul_of_pos_left (h1 x) (by norm_num))
      _ = x / 2 := mul_one_div (x : ℝ) 2
  have h4 :=
    calc
      (card M' : ℝ) ≤ 2 ^ k * x.sqrt := by exact_mod_cast card_le_two_pow_mul_sqrt
      _ = 2 ^ k * ↑(2 ^ (k + 1)) := by rw [Nat.sqrt_eq]
      _ = x / 2 := by field_simp [mul_right_comm, ← pow_succ']
  refine' lt_irrefl (x : ℝ) _
  calc
    (x : ℝ) = (card U' : ℝ) + (card M' : ℝ) := by assumption_mod_cast
    _ < x / 2 + x / 2 := (add_lt_add_of_lt_of_le h3 h4)
    _ = x := add_halves (x : ℝ)
#align theorems_100.real.tendsto_sum_one_div_prime_at_top Theorems100.Real.tendsto_sum_one_div_prime_atTop

end Theorems100
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3b98554054aef4bab73665a22340c104bfb2ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

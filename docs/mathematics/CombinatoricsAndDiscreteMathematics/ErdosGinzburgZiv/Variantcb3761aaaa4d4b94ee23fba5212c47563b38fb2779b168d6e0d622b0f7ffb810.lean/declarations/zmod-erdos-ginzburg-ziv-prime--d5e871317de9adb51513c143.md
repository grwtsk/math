# ZMod.erdos_ginzburg_ziv_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28742a86-d2a1-675d-f6d4-caffd0fc2ceb",
  "kind": "theorem",
  "lexical_name": "ZMod.erdos_ginzburg_ziv_prime",
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
  "slug": "zmod-erdos-ginzburg-ziv-prime--d5e871317de9adb51513c143",
  "source": {
    "blob": "8b1bb2cf9f910d2087ce41bdfc150a3981834093",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 60,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5e871317de9adb51513c14343c4acb86d80443364b71bc987f2fb483cb1117c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28742a86-d2a1-675d-f6d4-caffd0fc2ceb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem ZMod.erdos_ginzburg_ziv_prime (a : ι → ZMod p) (hs : #s = 2 * p - 1) :
    ∃ t ⊆ s, #t = p ∧ ∑ i ∈ t, a i = 0 := by
  haveI : NeZero p := inferInstance
  classical
  -- Let `N` be the number of common roots of our polynomials `f₁` and `f₂` (`f s ff` and `f s tt`).
  set N := Fintype.card {x // eval x (f₁ s a) = 0 ∧ eval x (f₂ s a) = 0}
  -- Zero is a common root to `f₁` and `f₂`, so `N` is nonzero
  let zero_sol : {x // eval x (f₁ s a) = 0 ∧ eval x (f₂ s a) = 0} :=
    ⟨0, by simp [f₁, f₂, map_sum, (Fact.out : p.Prime).one_lt, tsub_eq_zero_iff_le]⟩
  have hN₀ : 0 < N := @Fintype.card_pos _ _ ⟨zero_sol⟩
  have hs' : 2 * p - 1 = Fintype.card s := by simp [hs]
  -- Chevalley-Warning gives us that `p ∣ n` because the total degrees of `f₁` and `f₂` are at most
  -- `p - 1`, and we have `2 * p - 1 > 2 * (p - 1)` variables.
  have hpN : p ∣ N := char_dvd_card_solutions_of_add_lt p
    (totalDegree_f₁_add_totalDegree_f₂.trans_eq hs')
  -- Hence, `2 ≤ p ≤ N` and we can make a common root `x ≠ 0`.
  obtain ⟨x, hx⟩ := Fintype.exists_ne_of_one_lt_card ((Fact.out : p.Prime).one_lt.trans_le <|
    Nat.le_of_dvd hN₀ hpN) zero_sol
  -- This common root gives us the required subsequence, namely the `i ∈ s` such that `x i ≠ 0`.
  refine ⟨({a | x.1 a ≠ 0} : Finset _).map ⟨(↑), Subtype.val_injective⟩, ?_, ?_, ?_⟩
  · simp +contextual [subset_iff]
  -- From `f₁ x = 0`, we get that `p` divides the number of `a` such that `x a ≠ 0`.
  · rw [card_map]
    refine Nat.eq_of_dvd_of_lt_two_mul (Finset.card_pos.2 ?_).ne' ?_ <|
      (Finset.card_filter_le _ _).trans_lt ?_
    -- This number is nonzero because `x ≠ 0`.
    · rw [← Subtype.coe_ne_coe, Function.ne_iff] at hx
      exact hx.imp (fun a ha ↦ mem_filter.2 ⟨Finset.mem_attach _ _, ha⟩)
    · rw [← CharP.cast_eq_zero_iff (ZMod p), ← Finset.sum_boole]
      simpa only [f₁, map_sum, ZMod.pow_card_sub_one, map_pow, eval_X] using x.2.1
    -- And it is at most `2 * p - 1`, so it must be `p`.
    · rw [univ_eq_attach, card_attach, hs]
      exact tsub_lt_self (mul_pos zero_lt_two (Fact.out : p.Prime).pos) zero_lt_one
  -- From `f₂ x = 0`, we get that `p` divides the sum of the `a ∈ s` such that `x a ≠ 0`.
  · simpa [f₂, ZMod.pow_card_sub_one, Finset.sum_filter] using x.2.2

/-- The prime case of the **Erdős–Ginzburg–Ziv theorem** for `ℤ`.

Any sequence of `2 * p - 1` elements of `ℤ` contains a subsequence of `p` elements whose sum is
divisible by `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ErdosGinzburgZiv/Variantcb3761aaaa4d4b94ee23fba5212c47563b38fb2779b168d6e0d622b0f7ffb810.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b1bb2cf9f910d2087ce41bdfc150a3981834093` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

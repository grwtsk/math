# primeCounting_is_o_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43f4eb07-a9f6-6ca4-7a07-e7d617737629",
  "kind": "lemma",
  "lexical_name": "primeCounting_is_o_id",
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
  "slug": "primecounting-is-o-id--5a799ca26e5b840b47bb3d3f",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2679,
    "line": 2644,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a799ca26e5b840b47bb3d3f52ff92ccddfff58dfdaa6140ea73ea9a685bbc3d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43f4eb07-a9f6-6ca4-7a07-e7d617737629`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2644–2679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma primeCounting_is_o_id :
    IsLittleO .atTop (fun n ↦ (primeCounting n : ℝ)) (fun n ↦ (n : ℝ)) := by
  refine isLittleO_iff.mpr fun ε hε ↦ ?_
  obtain ⟨a, ha_ne_zero, ha_bound⟩ : ∃ a : ℕ, a ≠ 0 ∧ (a.totient : ℝ) / a < ε / 2 :=
    exists_phi_div_self_lt (half_pos hε)
  obtain ⟨N, hN⟩ : ∃ N : ℕ, ∀ n ≥ N,
      (primeCounting' n : ℝ) ≤
        (a.totient : ℝ) / a * n + (a.totient : ℝ) +
        primeCounting' (a + 1) := by
    refine ⟨a + 1 + 1, fun n hn ↦ ?_⟩
    have := primeCounting'_add_le ha_ne_zero (lt_succ_self a) (n - (a + 1))
    simp only [ne_eq, ge_iff_le, primeCounting'] at *
    rw [div_mul_eq_mul_div, div_add', div_add', le_div_iff₀] <;> norm_cast <;> try positivity
    rw [show a + 1 + (n - (a + 1)) = n by rw [add_tsub_cancel_of_le (by linarith)]] at this
    nlinarith [Nat.zero_le (φ a), Nat.zero_le (count Nat.Prime (a + 1)),
      Nat.zero_le ((n - (a + 1)) / a), Nat.div_mul_le_self (n - (a + 1)) a,
      Nat.sub_add_cancel (by linarith : a + 1 ≤ n)]
  have hN_primeCounting : ∀ᶠ n in .atTop, (primeCounting n : ℝ) ≤
      (totient a : ℝ) / a * (n : ℝ) + (totient a : ℝ) + primeCounting' (a + 1) + 1 := by
    simp only [ne_eq, ge_iff_le, primeCounting', primeCounting, Filter.eventually_atTop] at *
    refine ⟨N + 1, fun b hb ↦ ?_⟩
    specialize hN (b + 1) (by linarith)
    simp_all only [count_succ, cast_add, cast_ite, cast_one, CharP.cast_eq_zero]
    have h_phi_le : (φ a : ℝ) / a ≤ 1 := by
      rw [div_le_iff₀ (cast_pos.mpr <| pos_of_ne_zero ha_ne_zero)]
      simp [one_mul, totient_le a]
    nlinarith
  norm_num at *
  obtain ⟨M, hM⟩ := hN_primeCounting
  let C := (φ a : ℝ) + primeCounting' (a + 1) + 1
  refine ⟨M + ⌈C / (ε / 2)⌉₊ + 1, fun n hn ↦ ?_⟩
  have h_ceil := le_ceil (C / (ε / 2))
  have h_cancel := mul_div_cancel₀ C (by positivity : ε / 2 ≠ 0)
  have h_n_ge : (n : ℝ) ≥ M + ⌈C / (ε / 2)⌉₊ + 1 := by exact_mod_cast hn
  nlinarith [hM n (by linarith)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L2644).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

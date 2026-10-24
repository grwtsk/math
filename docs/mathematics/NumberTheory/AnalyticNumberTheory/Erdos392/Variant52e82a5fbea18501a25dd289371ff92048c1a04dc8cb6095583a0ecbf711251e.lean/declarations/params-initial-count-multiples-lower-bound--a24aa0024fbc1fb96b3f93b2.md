# Params.initial.count_multiples_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9cb4c406-8f71-c4c7-18eb-675957f2f426",
  "kind": "lemma",
  "lexical_name": "Params.initial.count_multiples_lower_bound",
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
  "slug": "params-initial-count-multiples-lower-bound--a24aa0024fbc1fb96b3f93b2",
  "source": {
    "blob": "fe7d44fd48f40aca7992cad68460a674c8831432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1248,
    "line": 1213,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a24aa0024fbc1fb96b3f93b2a14e6839575ef1a6e89f0ac76b34b9e5777f45a8",
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

Occurrence: `result:9cb4c406-8f71-c4c7-18eb-675957f2f426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1213–1248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Params.initial.count_multiples_lower_bound (n M p : ℕ) (hM : M > 0) (hp : p > 0) :
    M * (Finset.filter (p ∣ ·) (Finset.Ico (n - n / M) n)).card + M ≥ n / p := by
  have h1 : (Finset.filter (p ∣ ·) (Finset.Ico (n - n / M) n)).card ≥ (n / M) / p := by
    have hsup : Finset.filter (p ∣ ·) (Finset.Ico (n - n / M) n) ⊇
        Finset.image (p * ·) (Finset.Ico ((n - n / M + p - 1) / p)
          ((n + p - 1) / p)) := fun _ hx ↦ by
      simp +zetaDelta only [gt_iff_lt, mem_image, Finset.mem_Ico, Finset.mem_filter,
        tsub_le_iff_right] at *
      obtain ⟨a, ⟨ha₁, ha₂⟩, rfl⟩ := hx
      refine ⟨⟨?_, ?_⟩, by norm_num⟩
      · nlinarith [div_add_mod (n - n / M + p - 1) p, mod_lt (n - n / M + p - 1) hp,
          Nat.sub_add_cancel (div_le_self n M), Nat.sub_add_cancel (succ_le_of_lt (by omega :
            0 < n - n / M + p))]
      · nlinarith [div_mul_le_self (n + p - 1) p, Nat.sub_add_cancel (by omega : 1 ≤ n + p)]
    refine le_trans ?_ (Finset.card_mono hsup)
    rw [Finset.card_image_of_injective _ fun _ _ h ↦ mul_left_cancel₀ hp.ne' h]
    simp +arith only [card_Ico, div_le_iff_le_mul_add_pred hp]
    zify
    repeat rw [Nat.cast_sub] <;> push_cast <;> try omega
    · nlinarith [Int.mul_ediv_add_emod (n + p - 1) p,
        Int.emod_nonneg (n + p - 1) (by omega : (p : ℤ) ≠ 0),
        Int.emod_lt_of_pos (n + p - 1) (by omega : (p : ℤ) > 0),
        Int.mul_ediv_add_emod (p + (n - n / M) - 1) p,
        Int.emod_nonneg (p + (n - n / M) - 1) (by omega : (p : ℤ) ≠ 0),
        Int.emod_lt_of_pos (p + (n - n / M) - 1) (by omega : (p : ℤ) > 0),
        div_mul_le_self n M]
    · exact div_le_self _ _
    · rw [div_le_iff_le_mul_add_pred hp]
      rcases p with _ | _ | p <;> simp_all [succ_mul]
      nlinarith [div_add_mod (n + (p + 1)) (p + 1 + 1), mod_lt (n + (p + 1)) (by omega :
        p + 1 + 1 > 0), sub_le n (n / M), div_mul_le_self n M]
  have h2 : n / p ≤ M * ((n / M) / p) + M := le_of_lt_succ (Nat.div_lt_of_lt_mul <| by
    nlinarith [div_add_mod n M, mod_lt n hM, div_add_mod (n / M) p, mod_lt (n / M) hp])
  exact h2.trans (by gcongr)

/-- For `√n < p < n/L` and `0 < m < n`: smooth `m` has `ν_p(m) = 1` iff `p ∣ m`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant52e82a5fbea18501a25dd289371ff92048c1a04dc8cb6095583a0ecbf711251e.lean#L1213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe7d44fd48f40aca7992cad68460a674c8831432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

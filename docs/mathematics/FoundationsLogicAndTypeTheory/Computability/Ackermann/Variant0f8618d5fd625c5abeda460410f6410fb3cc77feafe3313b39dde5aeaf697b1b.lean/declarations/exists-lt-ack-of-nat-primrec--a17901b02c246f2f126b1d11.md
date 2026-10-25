# exists_lt_ack_of_nat_primrec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acc9162d-cf2d-63bd-e2dd-3c5795e0e58c",
  "kind": "theorem",
  "lexical_name": "exists_lt_ack_of_nat_primrec",
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
  "slug": "exists-lt-ack-of-nat-primrec--a17901b02c246f2f126b1d11",
  "source": {
    "blob": "2a8c91e09409d9db4f15b4f40b15464d165f702c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 320,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a17901b02c246f2f126b1d11edf725c3293fbbf0e2d9d52d83b3c001dee874d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acc9162d-cf2d-63bd-e2dd-3c5795e0e58c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 320–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_ack_of_nat_primrec {f : ℕ → ℕ} (hf : Nat.Primrec f) :
    ∃ m, ∀ n, f n < ack m n := by
  induction' hf with f g hf hg IHf IHg f g hf hg IHf IHg f g hf hg IHf IHg
  -- Zero function:
  · exact ⟨0, ack_pos 0⟩
  -- Successor function:
  · refine' ⟨1, fun n => _⟩
    rw [succ_eq_one_add]
    apply add_lt_ack
  -- Left projection:
  · refine' ⟨0, fun n => _⟩
    rw [ack_zero, lt_succ_iff]
    exact unpair_left_le n
  -- Right projection:
  · refine' ⟨0, fun n => _⟩
    rw [ack_zero, lt_succ_iff]
    exact unpair_right_le n
  all_goals cases' IHf with a ha; cases' IHg with b hb
  -- Pairing:
  · refine'
      ⟨max a b + 3, fun n =>
        (pair_lt_max_add_one_sq _ _).trans_le <|
          (pow_le_pow_of_le_left (add_le_add_right _ _) 2).trans <|
            ack_add_one_sq_lt_ack_add_three _ _⟩
    rw [max_ack_left]
    exact max_le_max (ha n).le (hb n).le
  -- Composition:
  · exact
      ⟨max a b + 2, fun n =>
        (ha _).trans <| (ack_strictMono_right a <| hb n).trans <| ack_ack_lt_ack_max_add_two a b n⟩
  -- Primitive recursion operator:
  · -- We prove this simpler inequality first.
    have :
      ∀ {m n},
        rec (f m) (fun y IH => g <| pair m <| pair y IH) n < ack (max a b + 9) (m + n) := by
      intro m n
      -- We induct on n.
      induction' n with n IH
      -- The base case is easy.
      · apply (ha m).trans (ack_strictMono_left m <| (le_max_left a b).trans_lt _)
        linarith
      · -- We get rid of the first `pair`.
        simp only [ge_iff_le]
        apply (hb _).trans ((ack_pair_lt _ _ _).trans_le _)
        -- If m is the maximum, we get a very weak inequality.
        cases' lt_or_le _ m with h₁ h₁
        · rw [max_eq_left h₁.le]
          exact ack_le_ack (Nat.add_le_add (le_max_right a b) <| by norm_num)
                           (self_le_add_right m _)
        rw [max_eq_right h₁]
        -- We get rid of the second `pair`.
        apply (ack_pair_lt _ _ _).le.trans
        -- If n is the maximum, we get a very weak inequality.
        cases' lt_or_le _ n with h₂ h₂
        · rw [max_eq_left h₂.le, add_assoc]
          exact
            ack_le_ack (Nat.add_le_add (le_max_right a b) <| by norm_num)
              ((le_succ n).trans <| self_le_add_left _ _)
        rw [max_eq_right h₂]
        -- We now use the inductive hypothesis, and some simple algebraic manipulation.
        apply (ack_strictMono_right _ IH).le.trans
        rw [add_succ m, add_succ _ 8, succ_eq_add_one, succ_eq_add_one,
            ack_succ_succ (_ + 8), add_assoc]
        exact ack_mono_left _ (Nat.add_le_add (le_max_right a b) le_rfl)
    -- The proof is now simple.
    exact ⟨max a b + 9, fun n => this.trans_le <| ack_mono_right _ <| unpair_add_le n⟩
#align exists_lt_ack_of_nat_primrec exists_lt_ack_of_nat_primrec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean#L320).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a8c91e09409d9db4f15b4f40b15464d165f702c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

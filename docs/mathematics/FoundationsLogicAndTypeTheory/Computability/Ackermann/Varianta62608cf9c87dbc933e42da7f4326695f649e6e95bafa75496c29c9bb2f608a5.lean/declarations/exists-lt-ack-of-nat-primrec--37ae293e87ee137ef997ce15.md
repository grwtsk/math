# exists_lt_ack_of_nat_primrec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0591278f143cf3bb909e263a515a3dd52fa92aff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c32209e7-331c-cf93-5c72-f687fa3514df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9837ebe7-a904-056c-4d8a-efeab87c6580",
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
  "slug": "exists-lt-ack-of-nat-primrec--37ae293e87ee137ef997ce15",
  "source": {
    "blob": "0591278f143cf3bb909e263a515a3dd52fa92aff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37ae293e87ee137ef997ce15703090d4ce7afb33f2df539ff5ce8141d6367490",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9837ebe7-a904-056c-4d8a-efeab87c6580`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_lt_ack_of_nat_primrec {f : ℕ → ℕ} (hf : Nat.Primrec f) :
    ∃ m, ∀ n, f n < ack m n := by
  induction hf with
  | zero => exact ⟨0, ack_pos 0⟩
  | succ =>
    refine ⟨1, fun n => ?_⟩
    rw [succ_eq_one_add]
    apply add_lt_ack
  | left =>
    refine ⟨0, fun n => ?_⟩
    rw [ack_zero, Nat.lt_succ_iff]
    exact unpair_left_le n
  | right =>
    refine ⟨0, fun n => ?_⟩
    rw [ack_zero, Nat.lt_succ_iff]
    exact unpair_right_le n
  | pair hf hg IHf IHg =>
    obtain ⟨a, ha⟩ := IHf; obtain ⟨b, hb⟩ := IHg
    refine
      ⟨max a b + 3, fun n =>
        (pair_lt_max_add_one_sq _ _).trans_le <|
          (Nat.pow_le_pow_left (add_le_add_right ?_ _) 2).trans <|
            ack_add_one_sq_lt_ack_add_three _ _⟩
    rw [max_ack_left]
    exact max_le_max (ha n).le (hb n).le
  | comp hf hg IHf IHg =>
    obtain ⟨a, ha⟩ := IHf; obtain ⟨b, hb⟩ := IHg
    exact
      ⟨max a b + 2, fun n =>
        (ha _).trans <| (ack_strictMono_right a <| hb n).trans <| ack_ack_lt_ack_max_add_two a b n⟩
  | @prec f g hf hg IHf IHg =>
    obtain ⟨a, ha⟩ := IHf; obtain ⟨b, hb⟩ := IHg
    -- We prove this simpler inequality first.
    have :
      ∀ {m n},
        rec (f m) (fun y IH => g <| pair m <| pair y IH) n < ack (max a b + 9) (m + n) := by
      intro m n
      -- We induct on n.
      induction' n with n IH
      -- The base case is easy.
      · apply (ha m).trans (ack_strictMono_left m <| (le_max_left a b).trans_lt _)
        omega
      · -- We get rid of the first `pair`.
        simp only
        apply (hb _).trans ((ack_pair_lt _ _ _).trans_le _)
        -- If m is the maximum, we get a very weak inequality.
        rcases lt_or_le _ m with h₁ | h₁
        · rw [max_eq_left h₁.le]
          exact ack_le_ack (Nat.add_le_add (le_max_right a b) <| by norm_num)
                           (self_le_add_right m _)
        rw [max_eq_right h₁]
        -- We get rid of the second `pair`.
        apply (ack_pair_lt _ _ _).le.trans
        -- If n is the maximum, we get a very weak inequality.
        rcases lt_or_le _ n with h₂ | h₂
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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Varianta62608cf9c87dbc933e42da7f4326695f649e6e95bafa75496c29c9bb2f608a5.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0591278f143cf3bb909e263a515a3dd52fa92aff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

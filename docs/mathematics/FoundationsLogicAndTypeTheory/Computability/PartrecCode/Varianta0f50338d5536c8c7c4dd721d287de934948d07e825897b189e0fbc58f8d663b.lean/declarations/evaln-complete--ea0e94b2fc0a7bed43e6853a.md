# evaln_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00b28b55-a0b3-dc10-5905-7e2a55bf509d",
  "kind": "theorem",
  "lexical_name": "evaln_complete",
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
  "slug": "evaln-complete--ea0e94b2fc0a7bed43e6853a",
  "source": {
    "blob": "bdc1d168e35228d2f5e4abdc6ace1f06abe839b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 794,
    "line": 714,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea0e94b2fc0a7bed43e6853a130368b79ef8a9f0e97bd9569c6ce13df1c7ed52",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00b28b55-a0b3-dc10-5905-7e2a55bf509d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–794.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evaln_complete {c n x} : x ∈ eval c n ↔ ∃ k, x ∈ evaln k c n := by
  refine ⟨fun h => ?_, fun ⟨k, h⟩ => evaln_sound h⟩
  rsuffices ⟨k, h⟩ : ∃ k, x ∈ evaln (k + 1) c n
  · exact ⟨k + 1, h⟩
  induction c generalizing n x with
  | pair cf cg hf hg =>
    simp only [eval, Seq.seq, Part.map_eq_map, Part.mem_bind_iff, Part.mem_map_iff,
      evaln, Option.map_eq_map, Option.bind_eq_bind, Option.mem_def, Option.bind_eq_some_iff,
      Option.guard_eq_some', Option.map_eq_some_iff, exists_exists_and_eq_and, exists_const] at h ⊢
    obtain ⟨x, hx, y, hy, rfl⟩ := h; obtain ⟨k₁, hk₁⟩ := hf hx; obtain ⟨k₂, hk₂⟩ := hg hy
    exact ⟨max k₁ k₂, ⟨le_max_of_le_left <| Nat.le_of_lt_succ <| evaln_bound hk₁, _,
      evaln_mono (Nat.succ_le_succ <| le_max_left _ _) hk₁, _,
      evaln_mono (Nat.succ_le_succ <| le_max_right _ _) hk₂, rfl⟩⟩
  | comp cf cg hf hg =>
    simp only [eval, Part.bind_eq_bind, Part.mem_bind_iff, evaln, Option.bind_eq_bind,
      Option.mem_def, Option.bind_eq_some_iff, Option.guard_eq_some', exists_const] at h ⊢
    obtain ⟨y, hy, hx⟩ := h; obtain ⟨k₁, hk₁⟩ := hg hy; obtain ⟨k₂, hk₂⟩ := hf hx
    exact ⟨max k₁ k₂, ⟨le_max_of_le_left <| Nat.le_of_lt_succ <| evaln_bound hk₁, _,
      evaln_mono (Nat.succ_le_succ <| le_max_left _ _) hk₁,
      evaln_mono (Nat.succ_le_succ <| le_max_right _ _) hk₂⟩⟩
  | prec cf cg hf hg =>
    simp only [eval, unpaired, evaln, Option.bind_eq_bind, Option.mem_def,
      Option.bind_eq_some_iff, Option.guard_eq_some', exists_const] at h ⊢
    revert h
    generalize n.unpair.1 = n₁; generalize n.unpair.2 = n₂
    induction n₂ generalizing x n with
    | zero =>
      intro h
      obtain ⟨k, hk⟩ := hf h
      exact ⟨_, le_max_left _ _, evaln_mono (Nat.succ_le_succ <| le_max_right _ _) hk⟩
    | succ m IH =>
      simp only [Part.bind_eq_bind, Part.mem_bind_iff, forall_exists_index, and_imp,
        Option.bind_eq_some_iff]
      intro y hy hx
      rcases IH hy with ⟨k₁, nk₁, hk₁⟩
      rcases hg hx with ⟨k₂, hk₂⟩
      refine
        ⟨(max k₁ k₂).succ,
          Nat.le_succ_of_le <| le_max_of_le_left <|
            le_trans (le_max_left _ (Nat.pair n₁ m)) nk₁, y,
          evaln_mono (Nat.succ_le_succ <| le_max_left _ _) ?_,
          evaln_mono (Nat.succ_le_succ <| Nat.le_succ_of_le <| le_max_right _ _) hk₂⟩
      simp only [evaln.eq_8, bind, unpaired, unpair_pair, Option.mem_def, Option.bind_eq_some_iff,
        Option.guard_eq_some', exists_and_left, exists_const]
      exact ⟨le_trans (le_max_right _ _) nk₁, hk₁⟩
  | rfind' cf hf =>
    simp only [eval, Part.map_eq_map, Part.mem_map_iff, mem_rfind, decide_eq_false_iff_not] at h ⊢
    rcases h with ⟨y, ⟨hy₁, hy₂⟩, rfl⟩
    suffices ∃ k, y + n.unpair.2 ∈ evaln (k + 1) (rfind' cf) (Nat.pair n.unpair.1 n.unpair.2) by
      simpa [evaln, Option.bind_eq_some_iff]
    revert hy₁ hy₂
    generalize n.unpair.2 = m
    intro hy₁ hy₂
    induction y generalizing m with simp only [evaln, unpair_pair, Option.bind_eq_bind,
      Option.mem_def, Option.bind_eq_some_iff, Option.guard_eq_some', exists_const]
    | zero =>
      simp only [zero_add, decide_eq_true_eq, exists_eq_right] at hy₁
      rcases hf hy₁ with ⟨k, hk⟩
      exact ⟨_, Nat.le_of_lt_succ <| evaln_bound hk, _, hk, by simp⟩
    | succ y IH =>
      rcases hy₂ (Nat.succ_pos _) with ⟨a, ha, a0⟩
      rcases hf ha with ⟨k₁, hk₁⟩
      rcases IH m.succ (by simpa [Nat.succ_eq_add_one, add_comm, add_left_comm] using hy₁)
        fun {i} hi ↦ by
          simpa [Nat.succ_eq_add_one, add_comm, add_left_comm] using
            hy₂ (Nat.succ_lt_succ hi) with ⟨k₂, hk₂⟩
      use (max k₁ k₂).succ
      rw [zero_add] at hk₁
      use Nat.le_succ_of_le <| le_max_of_le_left <| Nat.le_of_lt_succ <| evaln_bound hk₁
      use a
      use evaln_mono (Nat.succ_le_succ <| Nat.le_succ_of_le <| le_max_left _ _) hk₁
      simpa [a0, add_comm, add_left_comm] using
        evaln_mono (Nat.succ_le_succ <| le_max_right _ _) hk₂
  | _ =>
    simp only [eval, evaln, pure, PFun.pure, PFun.coe_val, Part.mem_some_iff, Option.bind_eq_bind,
      Option.mem_def, Option.bind_eq_some_iff, Option.guard_eq_some', Option.some.injEq,
      exists_const, exists_and_right] at h ⊢
    exact ⟨⟨_, le_rfl⟩, h.symm⟩

section

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Varianta0f50338d5536c8c7c4dd721d287de934948d07e825897b189e0fbc58f8d663b.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdc1d168e35228d2f5e4abdc6ace1f06abe839b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

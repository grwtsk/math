# evaln_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:217edad5-9063-a82d-edc4-b6b7feb8284d",
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
  "slug": "evaln-complete--0af96074bfba36c739ee19ff",
  "source": {
    "blob": "d1555850f895dc321c487421e9df6bc4780e2215",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 936,
    "line": 865,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0af96074bfba36c739ee19ff4ff059cc7fdc76c7ac443f9fa89c0997e9c2bd03",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:217edad5-9063-a82d-edc4-b6b7feb8284d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 865–936.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evaln_complete {c n x} : x ∈ eval c n ↔ ∃ k, x ∈ evaln k c n :=
  ⟨fun h => by
    rsuffices ⟨k, h⟩ : ∃ k, x ∈ evaln (k + 1) c n
    · exact ⟨k + 1, h⟩
    induction c generalizing n x <;> simp [eval, evaln, pure, PFun.pure, Seq.seq, Bind.bind] at h ⊢
    iterate 4 exact ⟨⟨_, le_rfl⟩, h.symm⟩
    case pair cf cg hf hg =>
      rcases h with ⟨x, hx, y, hy, rfl⟩
      rcases hf hx with ⟨k₁, hk₁⟩; rcases hg hy with ⟨k₂, hk₂⟩
      refine' ⟨max k₁ k₂, _⟩
      refine'
        ⟨le_max_of_le_left <| Nat.le_of_lt_succ <| evaln_bound hk₁, _,
          evaln_mono (Nat.succ_le_succ <| le_max_left _ _) hk₁, _,
          evaln_mono (Nat.succ_le_succ <| le_max_right _ _) hk₂, rfl⟩
    case comp cf cg hf hg =>
      rcases h with ⟨y, hy, hx⟩
      rcases hg hy with ⟨k₁, hk₁⟩; rcases hf hx with ⟨k₂, hk₂⟩
      refine' ⟨max k₁ k₂, _⟩
      exact
        ⟨le_max_of_le_left <| Nat.le_of_lt_succ <| evaln_bound hk₁, _,
          evaln_mono (Nat.succ_le_succ <| le_max_left _ _) hk₁,
          evaln_mono (Nat.succ_le_succ <| le_max_right _ _) hk₂⟩
    case prec cf cg hf hg =>
      revert h
      generalize n.unpair.1 = n₁; generalize n.unpair.2 = n₂
      induction' n₂ with m IH generalizing x n <;> simp
      · intro h
        rcases hf h with ⟨k, hk⟩
        exact ⟨_, le_max_left _ _, evaln_mono (Nat.succ_le_succ <| le_max_right _ _) hk⟩
      · intro y hy hx
        rcases IH hy with ⟨k₁, nk₁, hk₁⟩
        rcases hg hx with ⟨k₂, hk₂⟩
        refine'
          ⟨(max k₁ k₂).succ,
            Nat.le_succ_of_le <| le_max_of_le_left <|
              le_trans (le_max_left _ (Nat.pair n₁ m)) nk₁, y,
            evaln_mono (Nat.succ_le_succ <| le_max_left _ _) _,
            evaln_mono (Nat.succ_le_succ <| Nat.le_succ_of_le <| le_max_right _ _) hk₂⟩
        simp [evaln, Bind.bind]
        exact ⟨le_trans (le_max_right _ _) nk₁, hk₁⟩
    case rfind' cf hf =>
      rcases h with ⟨y, ⟨hy₁, hy₂⟩, rfl⟩
      suffices ∃ k, y + n.unpair.2 ∈ evaln (k + 1) (rfind' cf) (Nat.pair n.unpair.1 n.unpair.2) by
        simpa [evaln, Bind.bind]
      revert hy₁ hy₂
      generalize n.unpair.2 = m
      intro hy₁ hy₂
      induction' y with y IH generalizing m <;> simp [evaln, Bind.bind]
      · simp at hy₁
        rcases hf hy₁ with ⟨k, hk⟩
        exact ⟨_, Nat.le_of_lt_succ <| evaln_bound hk, _, hk, by simp; rfl⟩
      · rcases hy₂ (Nat.succ_pos _) with ⟨a, ha, a0⟩
        rcases hf ha with ⟨k₁, hk₁⟩
        rcases IH m.succ (by simpa [Nat.succ_eq_add_one, add_comm, add_left_comm] using hy₁)
            fun {i} hi => by
            simpa [Nat.succ_eq_add_one, add_comm, add_left_comm] using
              hy₂ (Nat.succ_lt_succ hi) with
          ⟨k₂, hk₂⟩
        use (max k₁ k₂).succ
        rw [zero_add] at hk₁
        use Nat.le_succ_of_le <| le_max_of_le_left <| Nat.le_of_lt_succ <| evaln_bound hk₁
        use a
        use evaln_mono (Nat.succ_le_succ <| Nat.le_succ_of_le <| le_max_left _ _) hk₁
        simpa [Nat.succ_eq_add_one, a0, -max_eq_left, -max_eq_right, add_comm, add_left_comm] using
          evaln_mono (Nat.succ_le_succ <| le_max_right _ _) hk₂,
    fun ⟨k, h⟩ => evaln_sound h⟩
#align nat.partrec.code.evaln_complete Nat.Partrec.Code.evaln_complete

section

open Primrec

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/PartrecCode/Variant19b14f7e7971ea6899c491d2fba53aa061f11e46fcdb5565fd5febd4c830695b.lean#L865).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1555850f895dc321c487421e9df6bc4780e2215` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

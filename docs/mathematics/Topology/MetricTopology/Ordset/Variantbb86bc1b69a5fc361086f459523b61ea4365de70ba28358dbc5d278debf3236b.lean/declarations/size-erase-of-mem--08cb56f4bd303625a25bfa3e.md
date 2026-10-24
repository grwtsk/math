# size_erase_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c9b6326-f75d-e8b3-3782-8094947db78f",
  "kind": "theorem",
  "lexical_name": "size_erase_of_mem",
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
  "slug": "size-erase-of-mem--08cb56f4bd303625a25bfa3e",
  "source": {
    "blob": "3711a3aff68ab5153bdf75e832afd173540a8e4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1689,
    "line": 1645,
    "path": "GRWTSK/Topology/MetricTopology/Ordset/Variantbb86bc1b69a5fc361086f459523b61ea4365de70ba28358dbc5d278debf3236b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08cb56f4bd303625a25bfa3e3525780653cbd9ec055de89b59ac120a336f67b0",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Ordset/Variantbb86bc1b69a5fc361086f459523b61ea4365de70ba28358dbc5d278debf3236b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c9b6326-f75d-e8b3-3782-8094947db78f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1645–1689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem size_erase_of_mem [@DecidableRel α (· ≤ ·)] {x : α} {t a₁ a₂} (h : Valid' a₁ t a₂)
    (h_mem : x ∈ t) : size (erase x t) = size t - 1 := by
  induction t generalizing a₁ a₂ with
  | nil =>
    contradiction
  | node _ t_l t_x t_r t_ih_l t_ih_r =>
    have t_ih_l' := t_ih_l h.left
    have t_ih_r' := t_ih_r h.right
    clear t_ih_l t_ih_r
    dsimp only [Membership.mem, mem] at h_mem
    unfold erase
    revert h_mem; cases cmpLE x t_x <;> intro h_mem <;> dsimp only at h_mem ⊢
    · have t_ih_l := t_ih_l' h_mem
      clear t_ih_l' t_ih_r'
      have t_l_h := Valid'.erase_aux x h.left
      cases' t_l_h with t_l_valid t_l_size
      rw [size_balanceR t_l_valid.bal h.right.bal t_l_valid.sz h.right.sz
          (Or.inl (Exists.intro t_l.size (And.intro t_l_size h.bal.1)))]
      rw [t_ih_l, h.sz.1]
      have h_pos_t_l_size := pos_size_of_mem h.left.sz h_mem
      revert h_pos_t_l_size; cases' t_l.size with t_l_size <;> intro h_pos_t_l_size
      · cases h_pos_t_l_size
      · simp [Nat.succ_add]
    · rw [(Valid'.glue h.left h.right h.bal.1).2, h.sz.1]; rfl
    · have t_ih_r := t_ih_r' h_mem
      clear t_ih_l' t_ih_r'
      have t_r_h := Valid'.erase_aux x h.right
      cases' t_r_h with t_r_valid t_r_size
      rw [size_balanceL h.left.bal t_r_valid.bal h.left.sz t_r_valid.sz
          (Or.inr (Exists.intro t_r.size (And.intro t_r_size h.bal.1)))]
      rw [t_ih_r, h.sz.1]
      have h_pos_t_r_size := pos_size_of_mem h.right.sz h_mem
      revert h_pos_t_r_size; cases' t_r.size with t_r_size <;> intro h_pos_t_r_size
      · cases h_pos_t_r_size
      · simp [Nat.succ_add, Nat.add_succ]
#align ordnode.size_erase_of_mem Ordnode.size_erase_of_mem

end

end Ordnode

/-- An `Ordset α` is a finite set of values, represented as a tree. The operations on this type
maintain that the tree is balanced and correctly stores subtree sizes at each level. The
correctness property of the tree is baked into the type, so all operations on this type are correct
by construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Ordset/Variantbb86bc1b69a5fc361086f459523b61ea4365de70ba28358dbc5d278debf3236b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Ordset/Variantbb86bc1b69a5fc361086f459523b61ea4365de70ba28358dbc5d278debf3236b.lean#L1645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3711a3aff68ab5153bdf75e832afd173540a8e4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

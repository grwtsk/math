# compositionAsSetEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08eaf0d97053cb94ce5a9354213412ec94a2b7cb0320fb84b71a755b4939b70a",
  "kind": "def",
  "lexical_name": "compositionAsSetEquiv",
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
  "slug": "compositionassetequiv--e047e0a2cb4621a7ecc80a4f",
  "source": {
    "blob": "569cab6e7c28dddff033f8155e85f71b712e2a62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 864,
    "line": 795,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e047e0a2cb4621a7ecc80a4f7e7257efb81eb0a8f77df6738848884933a893cb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08eaf0d97053cb94ce5a9354213412ec94a2b7cb0320fb84b71a755b4939b70a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 795–864.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compositionAsSetEquiv (n : ℕ) : CompositionAsSet n ≃ Finset (Fin (n - 1))
    where
  toFun c :=
    { i : Fin (n - 1) |
        (⟨1 + (i : ℕ), by
              apply (add_lt_add_left i.is_lt 1).trans_le
              rw [Nat.succ_eq_add_one, add_comm]
              exact add_le_add (Nat.sub_le n 1) (le_refl 1)⟩ :
            Fin n.succ) ∈
          c.boundaries }.toFinset
  invFun s :=
    { boundaries :=
        { i : Fin n.succ |
            i = 0 ∨ i = Fin.last n ∨ ∃ (j : Fin (n - 1)) (_hj : j ∈ s), (i : ℕ) = j + 1 }.toFinset
      zero_mem := by simp
      getLast_mem := by simp }
  left_inv := by
    intro c
    ext i
    simp only [add_comm, Set.toFinset_setOf, Finset.mem_univ,
     forall_true_left, Finset.mem_filter, true_and, exists_prop]
    constructor
    · rintro (rfl | rfl | ⟨j, hj1, hj2⟩)
      · exact c.zero_mem
      · exact c.getLast_mem
      · convert hj1
    · simp only [or_iff_not_imp_left]
      intro i_mem i_ne_zero i_ne_last
      simp [Fin.ext_iff] at i_ne_zero i_ne_last
      have A : (1 + (i - 1) : ℕ) = (i : ℕ) := by
        rw [add_comm]
        exact Nat.succ_pred_eq_of_pos (pos_iff_ne_zero.mpr i_ne_zero)
      refine' ⟨⟨i - 1, _⟩, _, _⟩
      · have : (i : ℕ) < n + 1 := i.2
        simp [Nat.lt_succ_iff_lt_or_eq, i_ne_last] at this
        exact Nat.pred_lt_pred i_ne_zero this
      · convert i_mem
        simp only [ge_iff_le]
        rwa [add_comm]
      · simp only [ge_iff_le]
        symm
        rwa [add_comm]
  right_inv := by
    intro s
    ext i
    have : 1 + (i : ℕ) ≠ n := by
      apply ne_of_lt
      convert add_lt_add_left i.is_lt 1
      rw [add_comm]
      apply (Nat.succ_pred_eq_of_pos _).symm
      exact (zero_le i.val).trans_lt (i.2.trans_le (Nat.sub_le n 1))
    simp only [add_comm, Fin.ext_iff, Fin.val_zero, Fin.val_last, exists_prop, Set.toFinset_setOf,
      Finset.mem_univ, forall_true_left, Finset.mem_filter, add_eq_zero_iff, and_false,
      add_left_inj, false_or, true_and]
    erw [Set.mem_setOf_eq]
    simp [this, false_or_iff, add_right_inj, add_eq_zero_iff, one_ne_zero, false_and_iff,
      Fin.val_mk]
    constructor
    · intro h
      cases' h with n h
      · rw [add_comm] at this
        contradiction
      · cases' h with w h; cases' h with h₁ h₂
        rw [←Fin.ext_iff] at h₂
        rwa [h₂]
    · intro h
      apply Or.inr
      use i, h
#align composition_as_set_equiv compositionAsSetEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant9c3c462f688028108bd308b056abddb0846a0245fbc2a9201e89b0bfe3ca3d58.lean#L795).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `569cab6e7c28dddff033f8155e85f71b712e2a62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

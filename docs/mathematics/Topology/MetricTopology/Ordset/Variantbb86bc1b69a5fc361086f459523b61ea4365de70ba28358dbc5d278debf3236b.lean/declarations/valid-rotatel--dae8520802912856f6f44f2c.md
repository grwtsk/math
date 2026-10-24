# Valid'.rotateL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de849d28-a215-123b-d1db-0b244885f6bf",
  "kind": "theorem",
  "lexical_name": "Valid'.rotateL",
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
  "slug": "valid-rotatel--dae8520802912856f6f44f2c",
  "source": {
    "blob": "3711a3aff68ab5153bdf75e832afd173540a8e4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1300,
    "line": 1241,
    "path": "GRWTSK/Topology/MetricTopology/Ordset/Variantbb86bc1b69a5fc361086f459523b61ea4365de70ba28358dbc5d278debf3236b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dae8520802912856f6f44f2c686bdf2ef69907102ef382022f3503e664f8a56c",
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

Occurrence: `result:de849d28-a215-123b-d1db-0b244885f6bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1241–1300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Valid'.rotateL {l} {x : α} {r o₁ o₂} (hl : Valid' o₁ l x) (hr : Valid' x r o₂)
    (H1 : ¬size l + size r ≤ 1) (H2 : delta * size l < size r)
    (H3 : 2 * size r ≤ 9 * size l + 5 ∨ size r ≤ 3) : Valid' o₁ (@rotateL α l x r) o₂ := by
  cases' r with rs rl rx rr; · cases H2
  rw [hr.2.size_eq, Nat.lt_succ_iff] at H2
  rw [hr.2.size_eq] at H3
  replace H3 : 2 * (size rl + size rr) ≤ 9 * size l + 3 ∨ size rl + size rr ≤ 2 :=
    H3.imp (@Nat.le_of_add_le_add_right _ 2 _) Nat.le_of_succ_le_succ
  have H3_0 : size l = 0 → size rl + size rr ≤ 2 := by
    intro l0; rw [l0] at H3
    exact
      (or_iff_right_of_imp fun h => (mul_le_mul_left (by decide)).1 (le_trans h (by decide))).1 H3
  have H3p : size l > 0 → 2 * (size rl + size rr) ≤ 9 * size l + 3 := fun l0 : 1 ≤ size l =>
    (or_iff_left_of_imp <| by intro; linarith).1 H3
  have ablem : ∀ {a b : ℕ}, 1 ≤ a → a + b ≤ 2 → b ≤ 1 := by intros; linarith
  have hlp : size l > 0 → ¬size rl + size rr ≤ 1 := fun l0 hb =>
    absurd (le_trans (le_trans (Nat.mul_le_mul_left _ l0) H2) hb) (by decide)
  rw [rotateL]; split_ifs with h
  · have rr0 : size rr > 0 :=
      (mul_lt_mul_left (by decide)).1 (lt_of_le_of_lt (Nat.zero_le _) h : ratio * 0 < _)
    suffices BalancedSz (size l) (size rl) ∧ BalancedSz (size l + size rl + 1) (size rr) by
      exact hl.node3L hr.left hr.right this.1 this.2
    cases' Nat.eq_zero_or_pos (size l) with l0 l0
    · rw [l0]; replace H3 := H3_0 l0
      have := hr.3.1
      cases' Nat.eq_zero_or_pos (size rl) with rl0 rl0
      · rw [rl0] at this ⊢
        rw [le_antisymm (balancedSz_zero.1 this.symm) rr0]
        decide
      have rr1 : size rr = 1 := le_antisymm (ablem rl0 H3) rr0
      rw [add_comm] at H3
      rw [rr1, show size rl = 1 from le_antisymm (ablem rr0 H3) rl0]
      decide
    replace H3 := H3p l0
    rcases hr.3.1.resolve_left (hlp l0) with ⟨_, hb₂⟩
    refine' ⟨Or.inr ⟨_, _⟩, Or.inr ⟨_, _⟩⟩
    · exact Valid'.rotateL_lemma₁ H2 hb₂
    · exact Nat.le_of_lt_succ (Valid'.rotateL_lemma₂ H3 h)
    · exact Valid'.rotateL_lemma₃ H2 h
    · exact
        le_trans hb₂
          (Nat.mul_le_mul_left _ <| le_trans (Nat.le_add_left _ _) (Nat.le_add_right _ _))
  · cases' Nat.eq_zero_or_pos (size rl) with rl0 rl0
    · rw [rl0, not_lt, le_zero_iff, Nat.mul_eq_zero] at h
      replace h := h.resolve_left (by decide)
      erw [rl0, h, le_zero_iff, Nat.mul_eq_zero] at H2
      rw [hr.2.size_eq, rl0, h, H2.resolve_left (by decide)] at H1
      cases H1 (by decide)
    refine' hl.node4L hr.left hr.right rl0 _
    cases' Nat.eq_zero_or_pos (size l) with l0 l0
    · replace H3 := H3_0 l0
      cases' Nat.eq_zero_or_pos (size rr) with rr0 rr0
      · have := hr.3.1
        rw [rr0] at this
        exact Or.inl ⟨l0, le_antisymm (balancedSz_zero.1 this) rl0, rr0.symm ▸ zero_le_one⟩
      exact Or.inl ⟨l0, le_antisymm (ablem rr0 <| by rwa [add_comm]) rl0, ablem rl0 H3⟩
    exact
      Or.inr ⟨l0, not_lt.1 h, H2, Valid'.rotateL_lemma₄ (H3p l0), (hr.3.1.resolve_left (hlp l0)).1⟩
#align ordnode.valid'.rotate_l Ordnode.Valid'.rotateL

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Ordset/Variantbb86bc1b69a5fc361086f459523b61ea4365de70ba28358dbc5d278debf3236b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Ordset/Variantbb86bc1b69a5fc361086f459523b61ea4365de70ba28358dbc5d278debf3236b.lean#L1241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3711a3aff68ab5153bdf75e832afd173540a8e4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

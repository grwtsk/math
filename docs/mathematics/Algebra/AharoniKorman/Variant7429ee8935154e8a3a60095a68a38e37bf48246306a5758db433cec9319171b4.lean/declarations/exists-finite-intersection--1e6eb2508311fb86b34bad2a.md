# exists_finite_intersection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ceda3ba8-81f0-bcaf-ce25-e4aa5f9fcedf",
  "kind": "theorem",
  "lexical_name": "exists_finite_intersection",
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
  "slug": "exists-finite-intersection--1e6eb2508311fb86b34bad2a",
  "source": {
    "blob": "ede695c4c5c2bb0254a5568e0a360f44a0358566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 460,
    "line": 395,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e6eb2508311fb86b34bad2a575199cccff403551e50b7ef9c8d24a2082c6ef8",
  "verification": {
    "reference": "docs/verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ceda3ba8-81f0-bcaf-ce25-e4aa5f9fcedf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–460.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_finite_intersection (hC : IsChain (· ≤ ·) C) :
    ∃ᶠ n in atTop, (C ∩ level n).Finite := by
  -- Begin by assuming `C ∩ level n` is infinite for all `n ≥ n₀`
  rw [frequently_atTop]
  intro n₀
  by_contra! hC'
  -- Define `m n` to be the smallest value of `min x y` as `(x, y, n)` ranges over `C`.
  let m (n : ℕ) : ℕ := sInf {min (ofHollom x).1 (ofHollom x).2.1 | x ∈ C ∩ level n}
  -- `m n` is well-defined above `n₀`, since the set in question is nonempty (it's infinite).
  have nonempty_mins (n : ℕ) (hn : n₀ ≤ n) :
      {min (ofHollom x).1 (ofHollom x).2.1 | x ∈ C ∩ level n}.Nonempty :=
    (hC' n hn).nonempty.image _
  -- We aim to show that `m n` is strictly decreasing above `n₀`, which is clearly a contradiction.
  suffices ∀ n ≥ n₀, m (n + 1) < m n from no_strictly_decreasing _ this
  intro n hn
  -- Take `n ≥ n₀`, and take `u, v` such that `min u v = m n` (which exists by definition).
  -- We aim to show `m (n + 1) < min u v`
  obtain ⟨u, v, huv, hmn⟩ : ∃ u v : ℕ, h(u, v, n) ∈ C ∧ min u v = m n := by
    simpa [m] using Nat.sInf_mem (nonempty_mins n hn)
  rw [← hmn]
  -- Consider the set of points `{(x, y, z) | x + y ≤ 2 * (u + v)}`.
  let D : Set Hollom := {x | (ofHollom x).1 + (ofHollom x).2.1 ≤ 2 * (u + v)}
  -- There are infinitely many points in `C ∩ level (n + 1)` that are not in `D`...
  have : ((C ∩ level (n + 1)) \ D).Infinite := by
    -- ...because there are finitely many points in `C ∩ level (n + 1) ∩ D`...
    have : (C ∩ level (n + 1) ∩ D).Finite := by
      -- (indeed, `level (n + 1) ∩ D` is finite)
      refine .subset (.image (embed (n + 1)) (triangle_finite (2 * (u + v)))) ?_
      simp +contextual [Set.subset_def, D, embed_apply]
    -- ...and `C ∩ level (n + 1)` is infinite (by assumption).
    specialize hC' (n + 1) (by lia)
    rw [← (C ∩ level (n + 1)).inter_union_sdiff D, Set.infinite_union] at hC'
    refine hC'.resolve_left ?_
    simpa using this
  -- In fact, we only need it to be nonempty, and find a point.
  obtain ⟨x, hxy⟩ := this.nonempty
  induction hxy.1.2 using induction_on_level with | h x y =>
  simp only [Set.mem_sdiff, Set.mem_inter_iff, toHollom_mem_level_iff, and_true, Set.mem_ofPred_eq,
    not_le, D] at hxy
  -- Take the point `(x, y, n + 1)` in `C` that avoids `D`. As `(u, v, n)` is also in the chain `C`,
  -- they must be comparable.
  obtain h3 | h3 := hC.total huv hxy.1
  -- We cannot have `(u, v, n) ≤ (x, y, n + 1)` by definition of the order.
  · simpa using le_of_toHollom_le_toHollom h3
  -- Whereas if `(x, y, n + 1) ≤ (u, v, n)`, as `2 * (u + v) < x + y`, we must have
  -- `min x y + 1 ≤ min u v`, which finishes the proof.
  · cases h3
    case twice => lia
    case next_add => lia
    case next_min h3 =>
      rw [← Nat.add_one_le_iff]
      refine h3.trans' ?_
      simp only [add_le_add_iff_right]
      exact Nat.sInf_le ⟨_, ⟨hxy.1, by simp⟩, by simp⟩

/-!  In this section we define spinal maps, and prove important properties about them.  -/
section SpinalMap

variable {α : Type*} [PartialOrder α] {C : Set α}

/--
A spinal map is a function `f : α → C` which is the identity on `C`, and for which each fiber is an
antichain.
Provided `C` is a chain, the existence of a spinal map is equivalent to the fact that `C` is a
spine.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede695c4c5c2bb0254a5568e0a360f44a0358566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

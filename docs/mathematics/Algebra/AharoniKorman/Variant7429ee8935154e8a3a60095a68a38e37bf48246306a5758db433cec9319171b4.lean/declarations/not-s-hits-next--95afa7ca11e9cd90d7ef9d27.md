# not_S_hits_next

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60429f53-697f-0b11-4735-bd3dc7ff47f1",
  "kind": "theorem",
  "lexical_name": "not_S_hits_next",
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
  "slug": "not-s-hits-next--95afa7ca11e9cd90d7ef9d27",
  "source": {
    "blob": "ede695c4c5c2bb0254a5568e0a360f44a0358566",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1107,
    "line": 1041,
    "path": "GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95afa7ca11e9cd90d7ef9d273e13f5f72d7307b098179501ab76592982656f90",
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

Occurrence: `result:60429f53-697f-0b11-4735-bd3dc7ff47f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1041–1107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_S_hits_next (f : SpinalMap C) (hC : IsChain (· ≤ ·) C)
    {x : Hollom} (hx : x ∈ S n C) (hx' : x ∉ C ∩ level n) :
    f x ∉ C ∩ level (n + 1) := by
  cases (C ∩ level (n + 1)).finite_or_infinite
  -- In the case that `C ∩ level (n + 1)` is finite, this is immediate from the definition of `S`.
  case inl h =>
    rw [S, ite_eq_left h, Set.mem_ofPred_eq] at hx
    intro hy
    refine f.incomp_apply ?_ (hx.2 _ hy).symm
    have := R_subset_level hx.1
    simp only [level_eq, Set.mem_ofPred_eq] at this
    intro h
    simp [level_eq, h, this] at hy
  -- So suppose it is infinite
  case inr h =>
    -- Write `(x, y, n)` for our given point, and set `(a, b, n + 1) := f(x, y, n)`
    induction S_subset_level hx using induction_on_level with | h x y =>
    simp only [S, ite_eq_right h, Set.mem_ofPred_eq] at hx
    intro hp
    set fp := f h(x, y, n) with hfp
    clear_value fp
    induction hp.2 using induction_on_level with | h a b =>
    clear fp
    -- Certainly `x0 ≤ a` and `y0 ≤ b`
    obtain ⟨ha, hb⟩ : x0 n C ≤ a ∧ y0 n C ≤ b := by simpa using x0_y0_min hC hp.1
    -- Either `C ∩ level (n + 1)` stretches far left or far right: both cases are symmetric
    obtain (rbias | lbias) := left_or_right_bias (x0 n C) (y0 n C) (fun x y ↦ x0_y0_min hC) h
    · obtain ⟨j, hjCn, hj⟩ := rbias (a + b - x0 n C)
      -- If it goes to the right, take `j ∈ C` such that `(x0, a + b - x0, n + 1) ≤ j`
      -- Then we have `(a, b, n + 1) ≤ j`...
      have hj' : h(a, b, n + 1) ≤ j := by
        induction hjCn.2 using induction_on_level with | h c d =>
        apply hC.le_of_not_gt hjCn.1 hp.1 ?_
        intro h
        have : c + d < a + b := add_lt_add_of_lt h
        simp only [toHollom_le_toHollom_iff_fixed_right] at hj
        lia
      -- ...and `(x0, y0, n + 1) ≤ j`.
      have h0j : h(x0 n C, y0 n C, n + 1) ≤ j := hj'.trans' (by simp [ha, hb])
      have : line h(a, b, n + 1) = line h(x0 n C, a + b - x0 n C, n + 1) := by simp; lia
      -- Then we have `f(a, b, n + 1) = f(x0, a + b - x0, n + 1)` since they are at the same line
      have : f h(a, b, n + 1) = f h(x0 n C, a + b - x0 n C, n + 1) := apply_eq_of_line_eq f hC
        ⟨x0_y0_mem h.nonempty, by simp⟩ hjCn ‹_› this (x0_y0_min hC hp.1) (by simp; lia) hj' hj
      -- so `f(x, y, n) = (a, b, n + 1) = f(a, b, n + 1) = f(x0, a + b - x0, n + 1)`
      have : f h(x, y, n) = f h(x0 n C, a + b - x0 n C, n + 1) := by
        rw [← this, ← hfp, f.eq_self_of_mem hp.1]
      -- But `(x0 n C, a + b - x0 n C, n + 1) ≤ (x, y, n)` since `(x, y, n)` is in `S`, giving
      -- a contradiction since they are in the same fibre.
      exact f.not_le_of_eq this.symm (by simp) (.next_min (hx.2.trans' (by simp)))
    · obtain ⟨j, hjCn, hj⟩ := lbias (a + b - y0 n C)
      -- The left case is exactly symmetric
      have hj' : h(a, b, n + 1) ≤ j := by
        induction hjCn.2 using induction_on_level with | h c d =>
        apply hC.le_of_not_gt hjCn.1 hp.1 ?_
        intro h
        have : c + d < a + b := add_lt_add_of_lt h
        simp only [toHollom_le_toHollom_iff_fixed_right] at hj
        lia
      have h0j : h(x0 n C, y0 n C, n + 1) ≤ j := hj'.trans' (by simp [ha, hb])
      have : line h(a, b, n + 1) = line h(a + b - y0 n C, y0 n C, n + 1) := by simp; lia
      have := apply_eq_of_line_eq f hC ⟨x0_y0_mem h.nonempty, by simp⟩ hjCn ‹_› this
        (x0_y0_min hC hp.1) (by simp; lia) hj' hj
      have : f h(x, y, n) = f h(a + b - y0 n C, y0 n C, n + 1) := by
        rw [← this, ← hfp, f.eq_self_of_mem hp.1]
      exact f.not_le_of_eq this.symm (by simp) (.next_min (hx.2.trans' (by simp)))

/-- Every element of `S \ (C ∩ level n)` must be mapped into `C ∩ level (n - 1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AharoniKorman/Variant7429ee8935154e8a3a60095a68a38e37bf48246306a5758db433cec9319171b4.lean#L1041).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ede695c4c5c2bb0254a5568e0a360f44a0358566` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

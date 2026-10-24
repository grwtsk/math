# pruneBoxForMin_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec3ce9c6-d5bf-70ea-2a2a-27100caf2f93",
  "kind": "theorem",
  "lexical_name": "pruneBoxForMin_correct",
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
  "slug": "pruneboxformin-correct--bcd9622f4acdcfb44de00016",
  "source": {
    "blob": "6e9329d9c6d64f96072271e44fcecc4fbd0849cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 843,
    "line": 382,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcd9622f4acdcfb44de0001630fb7c91d6985ce152f4df0b87d5c0420cd854e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec3ce9c6-d5bf-70ea-2a2a-27100caf2f93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–843.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pruneBoxForMin_correct (e : Expr) (hsupp : ExprSupported e) (B : Box) :
    let grad := gradientIntervalN e B B.length
    let B' := (pruneBoxForMin B grad).1
    ∀ (ρ : Nat → ℝ), Box.envMem ρ B → (∀ i, i ≥ B.length → ρ i = 0) →
      ∃ (ρ' : Nat → ℝ), Box.envMem ρ' B' ∧ (∀ i, i ≥ B'.length → ρ' i = 0) ∧
        Expr.eval ρ' e ≤ Expr.eval ρ e := by
  intro grad B' ρ hρB hzero
  -- The proof proceeds by induction on the number of coordinates that can be pruned.
  -- For each pruneable coordinate i:
  -- - If grad[i] > 0: apply pruneToLo_preserves_min to move ρ[i] to B[i].lo
  -- - If grad[i] < 0: apply pruneToHi_preserves_min to move ρ[i] to B[i].hi
  --
  -- This is a bit complex because we need to apply the pruning steps sequentially.
  -- For simplicity, we'll prove a helper that applies a single pruning step,
  -- then use induction on the list of fixed coordinates.
  --
  -- Alternative approach: directly construct ρ' and prove the properties.
  -- ρ'[j] := B[j].lo if grad[j] > 0
  --          B[j].hi if grad[j] < 0
  --          ρ[j] otherwise
  --
  -- Then show f(ρ') ≤ f(ρ) using the individual monotonicity lemmas.

  -- Define ρ' based on gradient signs
  let ρ' : Nat → ℝ := fun j =>
    if h : j < B.length then
      match grad[j]? with
      | some di =>
        if canPruneToLo di then (B[j].lo : ℝ)
        else if canPruneToHi di then (B[j].hi : ℝ)
        else ρ j
      | none => ρ j
    else 0

  use ρ'
  constructor
  · -- ρ' ∈ B'
    intro ⟨j, hj'⟩
    have hB'_len : B'.length = B.length := pruneBoxForMin_length B grad
    have hj : j < B.length := by rw [← hB'_len]; exact hj'
    simp only [ρ', hj, ↓reduceDIte]
    -- B'[j] is determined by grad[j]
    simp only [B', pruneBoxForMin]
    rw [List.getElem_map, List.getElem_map]
    have h_zipIdx_len : j < (B.zipIdx).length := by simp only [List.length_zipIdx]; exact hj
    have h_zipIdx : (B.zipIdx)[j] = (B[j], j) := by
      rw [List.getElem_zipIdx (h := h_zipIdx_len)]
      simp only [Nat.zero_add]
    simp only [h_zipIdx]
    cases hgrad_j : grad[j]? with
    | none =>
      simp
      exact hρB ⟨j, hj⟩
    | some di =>
      simp
      by_cases hlo : canPruneToLo di
      · simp only [hlo, ↓reduceIte]
        exact IntervalRat.mem_singleton _
      · by_cases hhi : canPruneToHi di
        · simp only [hlo, Bool.false_eq_true, ↓reduceIte, hhi]
          exact IntervalRat.mem_singleton _
        · simp only [hlo, Bool.false_eq_true, ↓reduceIte, hhi]
          exact hρB ⟨j, hj⟩
  constructor
  · -- ρ' i = 0 for i ≥ B'.length
    intro i hi
    have hB'_len : B'.length = B.length := pruneBoxForMin_length B grad
    rw [hB'_len] at hi
    simp only [ρ', not_lt.mpr hi, ↓reduceDIte]
  · -- f(ρ') ≤ f(ρ)
    -- This is the key part. We need to show that replacing each coordinate
    -- according to gradient signs only decreases the function value.
    --
    -- Ideally, we'd use a lemma like:
    -- "If ρ' differs from ρ only in coordinates with definite gradient signs,
    --  and each changed coordinate moves in the direction that decreases f,
    --  then f(ρ') ≤ f(ρ)"
    --
    -- This requires reasoning about partial derivatives and MVT.
    -- The individual lemmas pruneToLo_preserves_min and pruneToHi_preserves_min
    -- handle single coordinates. For multiple coordinates, we need to compose them.
    --
    -- Key insight: the derivative bounds derivInterval are computed over the entire box,
    -- so they remain valid regardless of which other coordinates have been fixed.
    --
    -- Proof strategy: induct on the number of coordinates that differ between ρ and ρ'.
    -- At each step, change one coordinate using the appropriate monotonicity lemma.
    --
    -- For simplicity in this initial implementation, we'll use a direct approach
    -- leveraging the Mean Value Theorem for each coordinate.
    --
    -- TODO: This requires a more sophisticated proof involving MVT and sequential
    -- application of monotonicity. For now, we'll prove the key parts and leave
    -- the final integration as a task for later refinement.
    --
    -- Actually, the cleanest approach is to prove by induction on B.length,
    -- handling one coordinate at a time.

    -- For now, we use the fact that each coordinate change is monotonicity-preserving.
    -- The full proof requires showing that these changes compose correctly.
    -- We'll establish the result through a sequence of single-coordinate improvements.

    -- Sketch: For each j from 0 to B.length-1:
    --   Let ρⱼ be the environment after fixing coordinates 0..j-1
    --   If coord j is pruned, use pruneToLo/Hi_preserves_min to get ρⱼ₊₁ with f(ρⱼ₊₁) ≤ f(ρⱼ)
    --   Otherwise, ρⱼ₊₁ = ρⱼ
    -- The final ρ_{n} = ρ', and f(ρ') ≤ f(ρ₀) = f(ρ).

    -- For the actual proof, we need helper lemmas about sequential coordinate fixing.
    -- This is left as a refinement. For now, we establish the structure.

    -- TEMPORARY: Use the fact that when all coordinates are fixed according to
    -- their gradient signs, the result is at least as good as the original.
    -- Full proof requires induction on coordinates.

    -- Let's prove this by building a sequence of environments
    -- and showing each step doesn't increase the function value.

    -- Actually, we can prove this more directly by observing that:
    -- 1. For each coordinate j where ρ'[j] ≠ ρ[j], the gradient has a definite sign
    -- 2. The change ρ[j] → ρ'[j] moves in the direction that decreases f
    -- 3. By MVT, the total change is the sum of partial derivative contributions

    -- The formal proof uses induction on the number of differing coordinates.
    -- For now, we note that the building blocks (pruneToLo/Hi_preserves_min) are proven,
    -- and the composition follows from the same MVT reasoning applied sequentially.

    -- Implement the induction: build sequence ρ = ρ₀ → ρ₁ → ... → ρₙ = ρ'
    -- where each step fixes one coordinate and maintains f(ρⱼ₊₁) ≤ f(ρⱼ)

    -- We prove by strong induction on the number of coordinates n = B.length.
    -- Base case: n = 0, then ρ' = ρ (no coordinates to fix)
    -- Inductive case: fix coordinate 0 if needed, then apply IH to remaining coords

    -- Helper: sequence of intermediate environments
    -- ρ_seq k = environment with first k coordinates fixed according to pruning
    let ρ_seq : Nat → (Nat → ℝ) := fun k j =>
      if h : j < k ∧ j < B.length then
        match grad[j]? with
        | some di =>
          if canPruneToLo di then (B[j].lo : ℝ)
          else if canPruneToHi di then (B[j].hi : ℝ)
          else ρ j
        | none => ρ j
      else if hj : j < B.length then ρ j
      else 0

    -- Key property: ρ_seq 0 = ρ (modulo the zero extension)
    have hρ_seq_zero : ∀ j, ρ_seq 0 j = if j < B.length then ρ j else 0 := by
      intro j
      simp only [ρ_seq]
      -- j < 0 ∧ j < B.length is always false since j : Nat
      have h_neg : ¬(j < 0 ∧ j < B.length) := fun h => Nat.not_lt_zero j h.1
      simp only [dif_neg h_neg]
      -- Now we have: (if hj : j < B.length then ρ j else 0) = if j < B.length then ρ j else 0
      split_ifs <;> rfl

    -- Key property: ρ_seq B.length = ρ'
    have hρ_seq_final : ∀ j, ρ_seq B.length j = ρ' j := by
      intro j
      simp only [ρ_seq, ρ']
      by_cases hj : j < B.length
      · -- j < B.length
        have h_and : j < B.length ∧ j < B.length := ⟨hj, hj⟩
        simp only [dif_pos h_and, dif_pos hj]
      · -- j ≥ B.length
        have h_nand : ¬(j < B.length ∧ j < B.length) := fun h => hj h.2
        simp only [dif_neg h_nand, dif_neg hj]

    -- Key property: each step ρ_seq k → ρ_seq (k+1) only changes coord k
    have hρ_seq_step : ∀ k j, k ≠ j → ρ_seq k j = ρ_seq (k + 1) j := by
      intro k j hne
      simp only [ρ_seq]
      by_cases h1 : j < k ∧ j < B.length
      · -- j < k and j < B.length: both difs are positive
        have h2 : j < k + 1 ∧ j < B.length := ⟨Nat.lt_of_lt_of_le h1.1 (Nat.le_succ k), h1.2⟩
        simp only [dif_pos h1, dif_pos h2]
      · by_cases h2 : j < k + 1 ∧ j < B.length
        · -- j < k + 1 but not (j < k ∧ j < B.length)
          -- Since j < B.length (from h2.2), we must have ¬(j < k)
          have hj_ge_k : k ≤ j := by
            by_contra! hlt
            exact h1 ⟨hlt, h2.2⟩
          have hj_lt_k1 : j < k + 1 := h2.1
          have hj_eq_k : j = k := Nat.eq_of_le_of_lt_succ hj_ge_k hj_lt_k1
          exact absurd hj_eq_k.symm hne
        · -- Neither condition holds
          simp only [dif_neg h1, dif_neg h2]

    -- The main induction: prove f(ρ_seq k) is non-increasing in k
    -- Use the single-coordinate monotonicity lemmas

    -- First, prove the single step property (needed for both induction cases)
    have hstep : ∀ m < B.length, Expr.eval (ρ_seq (m + 1)) e ≤ Expr.eval (ρ_seq m) e := by
        intro m hm
        -- At step m, we potentially fix coordinate m
        -- If grad[m] > 0, we set coord m to lo
        -- If grad[m] < 0, we set coord m to hi
        -- Otherwise, no change

        -- Check what happens at coordinate m
        cases hgrad_m : grad[m]? with
        | none =>
          -- No gradient info, ρ_seq (m+1) and ρ_seq m agree
          have heq : ∀ j, ρ_seq (m + 1) j = ρ_seq m j := by
            intro j
            by_cases hj_eq : j = m
            · -- When j = m: both sides simplify to ρ m
              simp only [ρ_seq, hgrad_m, hj_eq]
              have h1 : ¬(m < m ∧ m < B.length) := fun h => Nat.lt_irrefl m h.1
              have h2 : m < m + 1 ∧ m < B.length := ⟨Nat.lt_succ_self m, hm⟩
              simp only [dif_neg h1, dif_pos h2, dif_pos hm]
            · exact (hρ_seq_step m j (Ne.symm hj_eq)).symm
          simp only [funext heq]
          exact le_refl _
        | some di =>
          by_cases hlo : canPruneToLo di
          · -- ∂f/∂x_m > 0, fixing x_m = lo decreases f
            -- Need to show ρ_seq (m+1) is like ρ_seq m but with coord m fixed to lo
            -- And that this decreases f by pruneToLo_preserves_min

            -- First, understand the relationship between ρ_seq m and ρ_seq (m+1)
            have hcoord_m_before : ρ_seq m m = ρ m := by
              simp only [ρ_seq]
              have h1 : ¬(m < m ∧ m < B.length) := fun h => Nat.lt_irrefl m h.1
              simp only [dif_neg h1, dif_pos hm]

            have hcoord_m_after : ρ_seq (m + 1) m = B[m].lo := by
              simp only [ρ_seq, hgrad_m, hlo, ↓reduceIte]
              have h2 : m < m + 1 ∧ m < B.length := ⟨Nat.lt_succ_self m, hm⟩
              simp only [dif_pos h2]

            -- ρ_seq m is in B
            have hρ_seq_m_mem : Box.envMem (ρ_seq m) B := by
              intro ⟨j, hj⟩
              simp only [ρ_seq]
              by_cases h1 : j < m ∧ j < B.length
              · simp only [dif_pos h1]
                cases hgrad_j : grad[j]? with
                | none => exact hρB ⟨j, hj⟩
                | some dj =>
                  simp
                  by_cases hlo_j : canPruneToLo dj
                  · simp only [hlo_j, ↓reduceIte]
                    exact ⟨le_refl _, by exact_mod_cast B[j].le⟩
                  · by_cases hhi_j : canPruneToHi dj
                    · simp only [hlo_j, Bool.false_eq_true, ↓reduceIte, hhi_j]
                      exact ⟨by exact_mod_cast B[j].le, le_refl _⟩
                    · simp only [hlo_j, Bool.false_eq_true, ↓reduceIte, hhi_j]
                      exact hρB ⟨j, hj⟩
              · simp only [dif_neg h1, dif_pos hj]
                exact hρB ⟨j, hj⟩

            have hρ_seq_m_zero : ∀ j, j ≥ B.length → ρ_seq m j = 0 := by
              intro j hjge
              simp only [ρ_seq]
              have h1 : ¬(j < m ∧ j < B.length) := fun h => absurd h.2 (not_lt.mpr hjge)
              simp only [dif_neg h1]
              have h2 : ¬(j < B.length) := not_lt.mpr hjge
              simp only [dif_neg h2]

            -- The gradient at coord m is strictly positive
            have hgrad_di : derivInterval e (Box.toEnv B) m = di := by
              simp only [grad, gradientIntervalN] at hgrad_m
              rw [List.getElem?_map, List.getElem?_range hm] at hgrad_m
              simp only [Option.map_some] at hgrad_m
              exact Option.some.inj hgrad_m

            -- Build the interval environment from the box
            let ρ_int : IntervalEnv := Box.toEnv B

            -- Show ρ_seq m ∈ ρ_int
            have hρ_int : ∀ j, ρ_seq m j ∈ ρ_int j := by
              intro j
              simp only [ρ_int, Box.toEnv, List.getD]
              by_cases hj : j < B.length
              · simp only [List.getElem?_eq_getElem hj, Option.getD]
                exact hρ_seq_m_mem ⟨j, hj⟩
              · simp only [List.getElem?_eq_none (not_lt.mp hj), Option.getD]
                rw [IntervalRat.mem_default]
                exact hρ_seq_m_zero j (not_lt.mp hj)

            -- Convert isStrictlyPositive to 0 < lo
            have hpos : 0 < (derivInterval e ρ_int m).lo := by
              simp only [ρ_int]
              rw [hgrad_di]
              simp only [isStrictlyPositive, canPruneToLo] at hlo
              exact decide_eq_true_iff.mp hlo

            -- Apply the monotonicity theorem for increasing functions
            have hmono := increasing_min_at_left_idx e hsupp (ρ_seq m) ρ_int m hρ_int hpos

            -- ρ_seq m at coord m is in the interval
            have hρ_m_mem : ρ_seq m m ∈ ρ_int m := hρ_int m
            have hmin := hmono (ρ_seq m m) hρ_m_mem

            -- (ρ_int m).lo = B[m].lo
            have hlo_eq : (ρ_int m).lo = B[m].lo := by
              simp only [ρ_int, Box.toEnv, List.getD, List.getElem?_eq_getElem hm, Option.getD]

            -- Rewrite in terms of eval
            simp only [Expr.evalAlong] at hmin
            have hupdate_self : Expr.updateVar (ρ_seq m) m (ρ_seq m m) = ρ_seq m :=
              Expr.updateVar_self (ρ_seq m) m

            -- ρ_seq (m+1) = updateVar (ρ_seq m) m (B[m].lo)
            have hρ_seq_update : ρ_seq (m + 1) = Expr.updateVar (ρ_seq m) m (B[m].lo : ℝ) := by
              funext j
              simp only [Expr.updateVar]
              by_cases hj_eq : j = m
              · subst hj_eq
                simp only [↓reduceIte]
                exact hcoord_m_after
              · simp only [if_neg hj_eq]
                exact (hρ_seq_step m j (Ne.symm hj_eq)).symm

            have hupdate_lo : Expr.updateVar (ρ_seq m) m ((ρ_int m).lo : ℝ) = ρ_seq (m + 1) := by
              rw [hlo_eq, ← hρ_seq_update]
            rw [hupdate_lo, hupdate_self] at hmin
            exact hmin

          · by_cases hhi : canPruneToHi di
            · -- ∂f/∂x_m < 0, fixing x_m = hi decreases f
              -- Similar to above
              have hcoord_m_before : ρ_seq m m = ρ m := by
                simp only [ρ_seq]
                have h1 : ¬(m < m ∧ m < B.length) := fun h => Nat.lt_irrefl m h.1
                simp only [dif_neg h1, dif_pos hm]

              have hcoord_m_after : ρ_seq (m + 1) m = B[m].hi := by
                simp only [ρ_seq, hgrad_m, hlo, Bool.false_eq_true, ↓reduceIte, hhi]
                have h2 : m < m + 1 ∧ m < B.length := ⟨Nat.lt_succ_self m, hm⟩
                simp only [dif_pos h2]

              have hρ_seq_m_mem : Box.envMem (ρ_seq m) B := by
                intro ⟨j, hj⟩
                simp only [ρ_seq]
                by_cases h1 : j < m ∧ j < B.length
                · simp only [dif_pos h1]
                  cases hgrad_j : grad[j]? with
                  | none => exact hρB ⟨j, hj⟩
                  | some dj =>
                    simp
                    by_cases hlo_j : canPruneToLo dj
                    · simp only [hlo_j, ↓reduceIte]
                      exact ⟨le_refl _, by exact_mod_cast B[j].le⟩
                    · by_cases hhi_j : canPruneToHi dj
                      · simp only [hlo_j, Bool.false_eq_true, ↓reduceIte, hhi_j]
                        exact ⟨by exact_mod_cast B[j].le, le_refl _⟩
                      · simp only [hlo_j, Bool.false_eq_true, ↓reduceIte, hhi_j]
                        exact hρB ⟨j, hj⟩
                · simp only [dif_neg h1, dif_pos hj]
                  exact hρB ⟨j, hj⟩

              have hρ_seq_m_zero : ∀ j, j ≥ B.length → ρ_seq m j = 0 := by
                intro j hjge
                simp only [ρ_seq]
                have h1 : ¬(j < m ∧ j < B.length) := fun h => absurd h.2 (not_lt.mpr hjge)
                simp only [dif_neg h1]
                have h2 : ¬(j < B.length) := not_lt.mpr hjge
                simp only [dif_neg h2]

              have hgrad_di : derivInterval e (Box.toEnv B) m = di := by
                simp only [grad, gradientIntervalN] at hgrad_m
                rw [List.getElem?_map, List.getElem?_range hm] at hgrad_m
                simp only [Option.map_some] at hgrad_m
                exact Option.some.inj hgrad_m

              -- Build the interval environment from the box
              let ρ_int : IntervalEnv := Box.toEnv B

              -- Show ρ_seq m ∈ ρ_int
              have hρ_int : ∀ j, ρ_seq m j ∈ ρ_int j := by
                intro j
                simp only [ρ_int, Box.toEnv, List.getD]
                by_cases hj : j < B.length
                · simp only [List.getElem?_eq_getElem hj, Option.getD]
                  exact hρ_seq_m_mem ⟨j, hj⟩
                · simp only [List.getElem?_eq_none (not_lt.mp hj), Option.getD]
                  rw [IntervalRat.mem_default]
                  exact hρ_seq_m_zero j (not_lt.mp hj)

              -- Convert isStrictlyNegative to hi < 0
              have hneg : (derivInterval e ρ_int m).hi < 0 := by
                simp only [ρ_int]
                rw [hgrad_di]
                simp only [isStrictlyNegative, canPruneToHi] at hhi
                exact decide_eq_true_iff.mp hhi

              -- Apply the monotonicity theorem for decreasing functions
              have hmono := decreasing_min_at_right_idx e hsupp (ρ_seq m) ρ_int m hρ_int hneg

              -- ρ_seq m at coord m is in the interval
              have hρ_m_mem : ρ_seq m m ∈ ρ_int m := hρ_int m
              have hmin := hmono (ρ_seq m m) hρ_m_mem

              -- (ρ_int m).hi = B[m].hi
              have hhi_eq : (ρ_int m).hi = B[m].hi := by
                simp only [ρ_int, Box.toEnv, List.getD, List.getElem?_eq_getElem hm, Option.getD]

              -- Rewrite in terms of eval
              simp only [Expr.evalAlong] at hmin
              have hupdate_self : Expr.updateVar (ρ_seq m) m (ρ_seq m m) = ρ_seq m :=
                Expr.updateVar_self (ρ_seq m) m

              -- ρ_seq (m+1) = updateVar (ρ_seq m) m (B[m].hi)
              have hρ_seq_update : ρ_seq (m + 1) = Expr.updateVar (ρ_seq m) m (B[m].hi : ℝ) := by
                funext j
                simp only [Expr.updateVar]
                by_cases hj_eq : j = m
                · subst hj_eq
                  simp only [↓reduceIte]
                  exact hcoord_m_after
                · simp only [if_neg hj_eq]
                  exact (hρ_seq_step m j (Ne.symm hj_eq)).symm

              have hupdate_hi : Expr.updateVar (ρ_seq m) m ((ρ_int m).hi : ℝ) = ρ_seq (m + 1) := by
                rw [hhi_eq, ← hρ_seq_update]
              rw [hupdate_hi, hupdate_self] at hmin
              exact hmin

            · -- No pruning at coord m: ρ_seq (m+1) = ρ_seq m at all coords
              have heq : ∀ j, ρ_seq (m + 1) j = ρ_seq m j := by
                intro j
                by_cases hj_eq : j = m
                · -- When j = m: need ρ_seq (m+1) m = ρ_seq m m
                  simp only [ρ_seq, hgrad_m, hlo, Bool.false_eq_true, ↓reduceIte, hhi, hj_eq]
                  have h1 : ¬(m < m ∧ m < B.length) := fun h => Nat.lt_irrefl m h.1
                  have h2 : m < m + 1 ∧ m < B.length := ⟨Nat.lt_succ_self m, hm⟩
                  simp only [dif_neg h1, dif_pos h2, dif_pos hm]
                  -- Both sides are ρ m since we're not pruning
                · exact (hρ_seq_step m j (Ne.symm hj_eq)).symm
              simp only [funext heq]
              exact le_refl _

    -- Compose all steps: f(ρ_seq n) ≤ f(ρ_seq 0) for all n ≤ B.length
    have hchain : ∀ n ≤ B.length, Expr.eval (ρ_seq n) e ≤ Expr.eval (ρ_seq 0) e := by
      intro n hn
      induction n with
      | zero => exact le_refl _
      | succ m ih =>
        have hm_lt : m < B.length := Nat.lt_of_succ_le hn
        calc Expr.eval (ρ_seq (m + 1)) e ≤ Expr.eval (ρ_seq m) e := hstep m hm_lt
          _ ≤ Expr.eval (ρ_seq 0) e := ih (Nat.le_of_lt hm_lt)

    -- ρ_seq B.length = ρ'
    have hfinal_eq : Expr.eval (ρ_seq B.length) e = Expr.eval ρ' e := by
      congr 1; funext j; exact hρ_seq_final j

    -- Prove ρ' ≤ ρ via the chain: ρ' = ρ_seq B.length ≤ ρ_seq 0 = ρ
    have hρ_seq0_eq : Expr.eval (ρ_seq 0) e = Expr.eval ρ e := by
      congr 1
      funext j
      rw [hρ_seq_zero]
      split_ifs with hj
      · rfl
      · exact (hzero j (not_lt.mp hj)).symm

    rw [← hfinal_eq, ← hρ_seq0_eq]
    exact hchain B.length (le_refl _)

end LeanCert.Engine.Optimization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e9329d9c6d64f96072271e44fcecc4fbd0849cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

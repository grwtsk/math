# minimizeIntervalIdx_go_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03a85a5a-4e5d-c77f-8745-f707519600d3",
  "kind": "theorem",
  "lexical_name": "minimizeIntervalIdx_go_correct",
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
  "slug": "minimizeintervalidx-go-correct--eae9b754b8b5fdb103c2e632",
  "source": {
    "blob": "9ca70cedf89542b60ae036f418c0b4be33db63fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 820,
    "line": 626,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eae9b754b8b5fdb103c2e63279506d76c6f27d192d4f3b8e6438b84396a2680f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03a85a5a-4e5d-c77f-8745-f707519600d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–820.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimizeIntervalIdx_go_correct (e : Expr) (hsupp : ExprSupported e)
    (ρ_int : IntervalEnv) (idx : Nat) (maxDepth depth : ℕ) (J : IntervalRat)
    (hJ_sub : ∀ t, t ∈ J → t ∈ ρ_int idx) :
    ∀ ρ_real : Nat → ℝ, (∀ i, ρ_real i ∈ ρ_int i) →
      ∀ t ∈ J,
        (minimizeIntervalIdx.go e ρ_int idx maxDepth J depth).valueBound.lo
          ≤ Expr.eval (Expr.updateVar ρ_real idx t) e := by
  induction depth generalizing J with
  | zero =>
    intro ρ_real hρ t ht
    rw [minimizeIntervalIdx.go]
    simp only [↓reduceIte]
    -- Base case: interval evaluation bounds all points
    have hρ' : ∀ i, (Expr.updateVar ρ_real idx t) i ∈ (updateIntervalEnv ρ_int idx J) i := by
      intro i
      simp only [Expr.updateVar, updateIntervalEnv]
      split_ifs with hi
      · exact ht
      · exact hρ i
    have heval := evalInterval_correct e hsupp (Expr.updateVar ρ_real idx t) (updateIntervalEnv ρ_int idx J) hρ'
    simp only [IntervalRat.mem_def] at heval
    exact heval.1
  | succ n ih =>
    intro ρ_real hρ t ht
    have hdepth : n + 1 ≠ 0 := Nat.succ_ne_zero n
    rw [minimizeIntervalIdx.go]
    simp only [hdepth, ↓reduceIte, Nat.add_sub_cancel]
    -- Note: ρ' in the go function is updateIntervalEnv ρ_int idx J
    split_ifs with hpos hneg hle
    · -- Derivative strictly positive: increasing function
      -- hpos : derivStrictlyPositive_idx e (updateIntervalEnv ρ_int idx J) idx = true
      have hpos' : 0 < (derivInterval e (updateIntervalEnv ρ_int idx J) idx).lo := by
        simp only [derivStrictlyPositive_idx, decide_eq_true_eq] at hpos
        exact hpos
      have hρ_lo : ∀ i, (Expr.updateVar ρ_real idx J.lo) i ∈
          (updateIntervalEnv ρ_int idx (IntervalRat.singleton J.lo)) i := by
        intro i
        simp only [Expr.updateVar, updateIntervalEnv]
        split_ifs with hi
        · exact IntervalRat.mem_singleton _
        · exact hρ i
      have heval := evalInterval_correct e hsupp (Expr.updateVar ρ_real idx J.lo)
        (updateIntervalEnv ρ_int idx (IntervalRat.singleton J.lo)) hρ_lo
      simp only [IntervalRat.mem_def] at heval
      -- Build membership for the derivative bound
      -- We use a modified ρ_real that has J.lo at index idx, since ρ_real idx is never used
      -- in the derivative computation (it gets replaced by the variable of differentiation)
      let ρ_real' := Expr.updateVar ρ_real idx (J.lo : ℝ)
      have hρ'_deriv : ∀ i, ρ_real' i ∈ (updateIntervalEnv ρ_int idx J) i := by
        intro i
        simp only [ρ_real', Expr.updateVar, updateIntervalEnv]
        split_ifs with hi
        · -- At idx: J.lo ∈ J
          simp only [IntervalRat.mem_def, Rat.cast_le]
          exact ⟨le_refl _, J.le⟩
        · exact hρ i
      -- Since evalAlong replaces ρ_real' idx with the variable x, monotonicity for ρ_real'
      -- is the same as for ρ_real
      have hmono' := strictMonoOn_of_deriv_pos_interval_idx e hsupp ρ_real'
        (updateIntervalEnv ρ_int idx J) idx hρ'_deriv hpos'
      -- evalAlong e ρ_real idx = evalAlong e ρ_real' idx because only ρ(idx) differs
      -- and evalAlong replaces it with the function argument
      have heq_along : ∀ x, Expr.evalAlong e ρ_real idx x = Expr.evalAlong e ρ_real' idx x := by
        intro x
        simp only [Expr.evalAlong]
        congr 1
        funext i
        simp only [Expr.updateVar, ρ_real']
        split_ifs with h1
        · rfl  -- i = idx: both give x
        · rfl  -- i ≠ idx: both give ρ_real i
      have hmono : StrictMonoOn (Expr.evalAlong e ρ_real idx)
          (Set.Icc ((updateIntervalEnv ρ_int idx J idx).lo : ℝ)
            ((updateIntervalEnv ρ_int idx J idx).hi : ℝ)) := by
        intro x hx y hy hxy
        rw [heq_along x, heq_along y]
        exact hmono' hx hy hxy
      simp only [IntervalRat.mem_def] at ht
      by_cases heq : (J.lo : ℝ) = t
      · calc (evalInterval e (updateIntervalEnv ρ_int idx (IntervalRat.singleton J.lo))).lo
            ≤ Expr.eval (Expr.updateVar ρ_real idx J.lo) e := heval.1
          _ = Expr.eval (Expr.updateVar ρ_real idx t) e := by rw [← heq]
      · have hlt : (J.lo : ℝ) < t := lt_of_le_of_ne ht.1 heq
        have hJlo_mem : (J.lo : ℝ) ∈ Set.Icc ((updateIntervalEnv ρ_int idx J idx).lo : ℝ)
            ((updateIntervalEnv ρ_int idx J idx).hi) := by
          simp only [Set.mem_Icc, updateIntervalEnv, ↓reduceIte]
          exact ⟨le_refl _, Rat.cast_le.mpr J.le⟩
        have ht_mem : t ∈ Set.Icc ((updateIntervalEnv ρ_int idx J idx).lo : ℝ)
            ((updateIntervalEnv ρ_int idx J idx).hi) := by
          simp only [Set.mem_Icc, updateIntervalEnv, ↓reduceIte]
          exact ht
        have hmono_at := hmono hJlo_mem ht_mem hlt
        simp only [Expr.evalAlong] at hmono_at
        calc (evalInterval e (updateIntervalEnv ρ_int idx (IntervalRat.singleton J.lo))).lo
            ≤ Expr.eval (Expr.updateVar ρ_real idx J.lo) e := heval.1
          _ ≤ Expr.eval (Expr.updateVar ρ_real idx t) e := le_of_lt hmono_at
    · -- Derivative strictly negative: decreasing function
      have hneg' : (derivInterval e (updateIntervalEnv ρ_int idx J) idx).hi < 0 := by
        simp only [derivStrictlyNegative_idx, decide_eq_true_eq] at hneg
        exact hneg
      have hρ_hi : ∀ i, (Expr.updateVar ρ_real idx J.hi) i ∈
          (updateIntervalEnv ρ_int idx (IntervalRat.singleton J.hi)) i := by
        intro i
        simp only [Expr.updateVar, updateIntervalEnv]
        split_ifs with hi
        · exact IntervalRat.mem_singleton _
        · exact hρ i
      have heval := evalInterval_correct e hsupp (Expr.updateVar ρ_real idx J.hi)
        (updateIntervalEnv ρ_int idx (IntervalRat.singleton J.hi)) hρ_hi
      simp only [IntervalRat.mem_def] at heval
      -- We use a modified ρ_real that has J.hi at index idx
      let ρ_real' := Expr.updateVar ρ_real idx (J.hi : ℝ)
      have hρ'_deriv : ∀ i, ρ_real' i ∈ (updateIntervalEnv ρ_int idx J) i := by
        intro i
        simp only [ρ_real', Expr.updateVar, updateIntervalEnv]
        split_ifs with hi
        · simp only [IntervalRat.mem_def, Rat.cast_le]
          exact ⟨J.le, le_refl _⟩
        · exact hρ i
      have hmono' := strictAntiOn_of_deriv_neg_interval_idx e hsupp ρ_real'
        (updateIntervalEnv ρ_int idx J) idx hρ'_deriv hneg'
      have heq_along : ∀ x, Expr.evalAlong e ρ_real idx x = Expr.evalAlong e ρ_real' idx x := by
        intro x
        simp only [Expr.evalAlong]
        congr 1
        funext i
        simp only [Expr.updateVar, ρ_real']
        split_ifs with h1
        · rfl
        · rfl
      have hmono : StrictAntiOn (Expr.evalAlong e ρ_real idx)
          (Set.Icc ((updateIntervalEnv ρ_int idx J idx).lo : ℝ)
            ((updateIntervalEnv ρ_int idx J idx).hi : ℝ)) := by
        intro x hx y hy hxy
        rw [heq_along x, heq_along y]
        exact hmono' hx hy hxy
      simp only [IntervalRat.mem_def] at ht
      by_cases heq : t = (J.hi : ℝ)
      · calc (evalInterval e (updateIntervalEnv ρ_int idx (IntervalRat.singleton J.hi))).lo
            ≤ Expr.eval (Expr.updateVar ρ_real idx J.hi) e := heval.1
          _ = Expr.eval (Expr.updateVar ρ_real idx t) e := by rw [← heq]
      · have hlt : t < (J.hi : ℝ) := lt_of_le_of_ne ht.2 heq
        have ht_mem : t ∈ Set.Icc ((updateIntervalEnv ρ_int idx J idx).lo : ℝ)
            ((updateIntervalEnv ρ_int idx J idx).hi) := by
          simp only [Set.mem_Icc, updateIntervalEnv, ↓reduceIte]
          exact ht
        have hJhi_mem : (J.hi : ℝ) ∈ Set.Icc ((updateIntervalEnv ρ_int idx J idx).lo : ℝ)
            ((updateIntervalEnv ρ_int idx J idx).hi) := by
          simp only [Set.mem_Icc, updateIntervalEnv, ↓reduceIte]
          exact ⟨Rat.cast_le.mpr J.le, le_refl _⟩
        have hmono_at := hmono ht_mem hJhi_mem hlt
        simp only [Expr.evalAlong] at hmono_at
        calc (evalInterval e (updateIntervalEnv ρ_int idx (IntervalRat.singleton J.hi))).lo
            ≤ Expr.eval (Expr.updateVar ρ_real idx J.hi) e := heval.1
          _ ≤ Expr.eval (Expr.updateVar ρ_real idx t) e := le_of_lt hmono_at
    · -- Bisection case, hle (r₁.lo ≤ r₂.lo)
      have hcases := mem_bisect_cases_idx J t ht
      cases hcases with
      | inl h1 =>
        have hsub1 : ∀ s, s ∈ J.bisect.1 → s ∈ ρ_int idx := fun s hs =>
          hJ_sub s (IntervalRat.mem_of_mem_bisect_left hs)
        exact ih J.bisect.1 hsub1 ρ_real hρ t h1
      | inr h2 =>
        have hsub2 : ∀ s, s ∈ J.bisect.2 → s ∈ ρ_int idx := fun s hs =>
          hJ_sub s (IntervalRat.mem_of_mem_bisect_right hs)
        have h := ih J.bisect.2 hsub2 ρ_real hρ t h2
        have hle_cast : ((minimizeIntervalIdx.go e ρ_int idx maxDepth (J.bisect.fst) n).valueBound.lo : ℝ)
            ≤ (minimizeIntervalIdx.go e ρ_int idx maxDepth (J.bisect.snd) n).valueBound.lo := by exact_mod_cast hle
        calc ((minimizeIntervalIdx.go e ρ_int idx maxDepth (J.bisect.fst) n).valueBound.lo : ℝ)
            ≤ (minimizeIntervalIdx.go e ρ_int idx maxDepth (J.bisect.snd) n).valueBound.lo := hle_cast
          _ ≤ Expr.eval (Expr.updateVar ρ_real idx t) e := h
    · -- Bisection case, ¬hle (r₁.lo > r₂.lo)
      have hcases := mem_bisect_cases_idx J t ht
      cases hcases with
      | inl h1 =>
        have hsub1 : ∀ s, s ∈ J.bisect.1 → s ∈ ρ_int idx := fun s hs =>
          hJ_sub s (IntervalRat.mem_of_mem_bisect_left hs)
        have h := ih J.bisect.1 hsub1 ρ_real hρ t h1
        have hlt := not_le.mp hle
        have hlt_cast : ((minimizeIntervalIdx.go e ρ_int idx maxDepth (J.bisect.snd) n).valueBound.lo : ℝ)
            ≤ (minimizeIntervalIdx.go e ρ_int idx maxDepth (J.bisect.fst) n).valueBound.lo := by
          exact_mod_cast (le_of_lt hlt)
        calc ((minimizeIntervalIdx.go e ρ_int idx maxDepth (J.bisect.snd) n).valueBound.lo : ℝ)
            ≤ (minimizeIntervalIdx.go e ρ_int idx maxDepth (J.bisect.fst) n).valueBound.lo := hlt_cast
          _ ≤ Expr.eval (Expr.updateVar ρ_real idx t) e := h
      | inr h2 =>
        have hsub2 : ∀ s, s ∈ J.bisect.2 → s ∈ ρ_int idx := fun s hs =>
          hJ_sub s (IntervalRat.mem_of_mem_bisect_right hs)
        exact ih J.bisect.2 hsub2 ρ_real hρ t h2

/-- Correctness theorem for n-variable minimization:
    For any real environment ρ_real satisfying ρ_int, and any t in ρ_int idx,
    the computed lower bound is valid.

    FULLY PROVED - no sorry, no axioms. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ca70cedf89542b60ae036f418c0b4be33db63fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

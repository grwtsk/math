# signChange_correct_idx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b304eee3-059c-bc63-9291-29e8fe1b0e23",
  "kind": "theorem",
  "lexical_name": "signChange_correct_idx",
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
  "slug": "signchange-correct-idx--3eb35809305f1bac7e24818b",
  "source": {
    "blob": "ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 234,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3eb35809305f1bac7e24818b863156dc849264bf8b4c93362b77f414baa0962a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b304eee3-059c-bc63-9291-29e8fe1b0e23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signChange_correct_idx (e : Expr) (hsupp : ExprSupported e)
    (ρ_int : IntervalEnv) (idx : Nat)
    (ρ_real : Nat → ℝ) (hρ : ∀ i, i ≠ idx → ρ_real i ∈ ρ_int i)
    (hsign : signChange_idx e ρ_int idx = true)
    (hCont : ContinuousOn (Expr.evalAlong e ρ_real idx)
              (Set.Icc ((ρ_int idx).lo : ℝ) ((ρ_int idx).hi : ℝ))) :
    ∃ x ∈ ρ_int idx, Expr.evalAlong e ρ_real idx x = 0 := by
  -- Unpack signChange_idx
  simp only [signChange_idx, decide_eq_true_eq] at hsign
  -- Define f for convenience
  set f := Expr.evalAlong e ρ_real idx with hf
  -- Define endpoint environments
  let ρ_lo : IntervalEnv := fun i => if i = idx then IntervalRat.singleton (ρ_int idx).lo else ρ_int i
  let ρ_hi : IntervalEnv := fun i => if i = idx then IntervalRat.singleton (ρ_int idx).hi else ρ_int i
  -- Show ρ_real with lo at idx is in ρ_lo
  have hρ_lo : ∀ i, Expr.updateVar ρ_real idx (ρ_int idx).lo i ∈ ρ_lo i := by
    intro i
    by_cases hi : i = idx
    · subst hi
      simp only [Expr.updateVar_same, ρ_lo, ↓reduceIte]
      exact IntervalRat.mem_singleton _
    · simp only [Expr.updateVar_other _ _ _ _ hi, ρ_lo, if_neg hi]
      exact hρ i hi
  -- Show ρ_real with hi at idx is in ρ_hi
  have hρ_hi : ∀ i, Expr.updateVar ρ_real idx (ρ_int idx).hi i ∈ ρ_hi i := by
    intro i
    by_cases hi : i = idx
    · subst hi
      simp only [Expr.updateVar_same, ρ_hi, ↓reduceIte]
      exact IntervalRat.mem_singleton _
    · simp only [Expr.updateVar_other _ _ _ _ hi, ρ_hi, if_neg hi]
      exact hρ i hi
  -- Get bounds from interval evaluation
  have hflo := evalInterval_correct e hsupp (Expr.updateVar ρ_real idx (ρ_int idx).lo) ρ_lo hρ_lo
  have hfhi := evalInterval_correct e hsupp (Expr.updateVar ρ_real idx (ρ_int idx).hi) ρ_hi hρ_hi
  simp only [IntervalRat.mem_def] at hflo hfhi
  -- f(lo) and f(hi) match Expr.eval with updated environments
  have hf_lo : f (ρ_int idx).lo = Expr.eval (Expr.updateVar ρ_real idx (ρ_int idx).lo) e := rfl
  have hf_hi : f (ρ_int idx).hi = Expr.eval (Expr.updateVar ρ_real idx (ρ_int idx).hi) e := rfl
  -- Get the interval bound
  have hle : ((ρ_int idx).lo : ℝ) ≤ (ρ_int idx).hi := by exact_mod_cast (ρ_int idx).le
  -- Now handle the two cases of signChange
  cases hsign with
  | inl hcase =>
    -- Case: f(lo).hi < 0 ∧ 0 < f(hi).lo
    have hflo_neg : f (ρ_int idx).lo < 0 := by
      rw [hf_lo]
      have hbound := hflo.2
      have hcast : ((evalInterval e ρ_lo).hi : ℝ) < 0 := by exact_mod_cast hcase.1
      linarith
    have hfhi_pos : 0 < f (ρ_int idx).hi := by
      rw [hf_hi]
      have hbound := hfhi.1
      have hcast : (0 : ℝ) < (evalInterval e ρ_hi).lo := by exact_mod_cast hcase.2
      linarith
    have h0_in_range : (0 : ℝ) ∈ Set.Icc (f (ρ_int idx).lo) (f (ρ_int idx).hi) :=
      ⟨le_of_lt hflo_neg, le_of_lt hfhi_pos⟩
    have hivt := intermediate_value_Icc (α := ℝ) (δ := ℝ) hle hCont
    have h0_in_image := hivt h0_in_range
    obtain ⟨c, hc_mem, hc_eq⟩ := h0_in_image
    refine ⟨c, ?_, hc_eq⟩
    simp only [IntervalRat.mem_def]
    exact hc_mem
  | inr hcase =>
    -- Case: f(hi).hi < 0 ∧ 0 < f(lo).lo
    have hfhi_neg : f (ρ_int idx).hi < 0 := by
      rw [hf_hi]
      have hbound := hfhi.2
      have hcast : ((evalInterval e ρ_hi).hi : ℝ) < 0 := by exact_mod_cast hcase.1
      linarith
    have hflo_pos : 0 < f (ρ_int idx).lo := by
      rw [hf_lo]
      have hbound := hflo.1
      have hcast : (0 : ℝ) < (evalInterval e ρ_lo).lo := by exact_mod_cast hcase.2
      linarith
    have h0_in_range : (0 : ℝ) ∈ Set.Icc (f (ρ_int idx).hi) (f (ρ_int idx).lo) :=
      ⟨le_of_lt hfhi_neg, le_of_lt hflo_pos⟩
    have hivt := intermediate_value_Icc' (α := ℝ) (δ := ℝ) hle hCont
    have h0_in_image := hivt h0_in_range
    obtain ⟨c, hc_mem, hc_eq⟩ := h0_in_image
    refine ⟨c, ?_, hc_eq⟩
    simp only [IntervalRat.mem_def]
    exact hc_mem

/-! ### N-variable bisection root finding -/

/-- Result of bisection root finding -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

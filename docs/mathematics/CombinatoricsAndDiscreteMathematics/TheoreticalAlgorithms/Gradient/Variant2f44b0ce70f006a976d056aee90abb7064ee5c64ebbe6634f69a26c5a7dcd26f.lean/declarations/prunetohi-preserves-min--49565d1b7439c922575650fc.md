# pruneToHi_preserves_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0901df29-e73a-a79f-2942-345cdde37395",
  "kind": "theorem",
  "lexical_name": "pruneToHi_preserves_min",
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
  "slug": "prunetohi-preserves-min--49565d1b7439c922575650fc",
  "source": {
    "blob": "6e9329d9c6d64f96072271e44fcecc4fbd0849cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 244,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49565d1b7439c922575650fcaa6da6e0447d6e43ce9a445b3249ef7b66184747",
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

Occurrence: `result:0901df29-e73a-a79f-2942-345cdde37395`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pruneToHi_preserves_min (e : Expr) (hsupp : ExprSupported e)
    (B : Box) (i : Fin B.length)
    (hgrad : isStrictlyNegative (derivInterval e (Box.toEnv B) i.val) = true) :
    ∀ (ρ : Nat → ℝ), Box.envMem ρ B → (∀ j, j ≥ B.length → ρ j = 0) →
      ∃ (ρ' : Nat → ℝ), Box.envMem ρ' B ∧ (∀ j, j ≥ B.length → ρ' j = 0) ∧
        ρ' i.val = B[i.val].hi ∧ Expr.eval ρ' e ≤ Expr.eval ρ e := by
  intro ρ hρ hzero
  let ρ' : Nat → ℝ := fun j => if j = i.val then (B[i.val].hi : ℝ) else ρ j
  use ρ'
  constructor
  · -- ρ' ∈ B
    intro ⟨j, hj⟩
    by_cases h : j = i.val
    · subst h
      simp only [↓reduceIte, ρ', IntervalRat.mem_def]
      constructor
      · have := B[i.val].le
        exact_mod_cast this
      · exact le_refl _
    · simp only [if_neg h, ρ']
      exact hρ ⟨j, hj⟩
  constructor
  · -- ρ' j = 0 for j ≥ B.length
    intro j hj
    simp only [ρ']
    have hne : j ≠ i.val := by
      intro heq
      rw [heq] at hj
      exact absurd i.isLt (not_lt.mpr hj)
    simp only [if_neg hne]
    exact hzero j hj
  constructor
  · simp only [↓reduceIte, ρ']
  · -- f(ρ') ≤ f(ρ)
    -- Use the monotonicity theorem: if ∂f/∂xᵢ < 0, minimum is at right endpoint
    simp only [isStrictlyNegative, decide_eq_true_eq] at hgrad
    -- Build the interval environment from the box
    let ρ_int : IntervalEnv := Box.toEnv B
    -- Show ρ ∈ ρ_int
    have hρ_int : ∀ j, ρ j ∈ ρ_int j := by
      intro j
      simp only [ρ_int, Box.toEnv, List.getD]
      by_cases hj : j < B.length
      · simp only [List.getElem?_eq_getElem hj, Option.getD]
        exact hρ ⟨j, hj⟩
      · simp only [List.getElem?_eq_none (not_lt.mp hj), Option.getD]
        rw [IntervalRat.mem_default]
        exact hzero j (not_lt.mp hj)
    -- Apply the monotonicity theorem for decreasing functions
    have hmono := decreasing_min_at_right_idx e hsupp ρ ρ_int i.val hρ_int hgrad
    -- The key fact: ρ i.val ∈ ρ_int i.val = B[i.val]
    have hρ_i_mem : ρ i.val ∈ ρ_int i.val := hρ_int i.val
    have hmin := hmono (ρ i.val) hρ_i_mem
    -- Now relate evalAlong to eval via ρ'
    simp only [Expr.evalAlong] at hmin
    -- Need: (ρ_int i.val).hi = B[i.val].hi
    have hhi_eq : (ρ_int i.val).hi = B[i.val].hi := by
      simp only [ρ_int, Box.toEnv, List.getD, List.getElem?_eq_getElem i.isLt, Option.getD]
    -- And: updateVar ρ i.val (ρ_int i.val).hi = ρ'
    have hρ'_eq : Expr.updateVar ρ i.val ((ρ_int i.val).hi : ℝ) = ρ' := by
      funext j
      simp only [Expr.updateVar, ρ']
      split_ifs with hj
      · simp only [hhi_eq]
      · rfl
    -- And: updateVar ρ i.val (ρ i.val) = ρ
    have hρ_eq : Expr.updateVar ρ i.val (ρ i.val) = ρ := Expr.updateVar_self ρ i.val
    rw [hρ'_eq, hρ_eq] at hmin
    exact hmin

/-! ### Pruned box membership and correctness -/

/-- Helper: membership in the pruned box implies membership in the original box.
    The pruned box only shrinks coordinates, never expands them. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e9329d9c6d64f96072271e44fcecc4fbd0849cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

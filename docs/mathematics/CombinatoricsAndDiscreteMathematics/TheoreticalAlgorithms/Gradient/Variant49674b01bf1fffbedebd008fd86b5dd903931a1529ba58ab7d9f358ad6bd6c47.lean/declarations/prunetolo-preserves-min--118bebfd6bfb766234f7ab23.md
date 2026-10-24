# pruneToLo_preserves_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "522802911ff0d2feac536666bffbcb40dbd25969",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3138004f-1eb3-c9d1-01bb-33f089da06ef",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9861e1f-ce0b-b6fc-ba22-bb55c126398a",
  "kind": "theorem",
  "lexical_name": "pruneToLo_preserves_min",
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
  "slug": "prunetolo-preserves-min--118bebfd6bfb766234f7ab23",
  "source": {
    "blob": "522802911ff0d2feac536666bffbcb40dbd25969",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 159,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:118bebfd6bfb766234f7ab23111b4963e7f563dd9bfa74dc7553a9aaf7767f65",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9861e1f-ce0b-b6fc-ba22-bb55c126398a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pruneToLo_preserves_min (e : Expr) (hsupp : ExprSupported e)
    (B : Box) (i : Fin B.length)
    (hgrad : isStrictlyPositive (derivInterval e (Box.toEnv B) i.val) = true) :
    ∀ (ρ : Nat → ℝ), Box.envMem ρ B → (∀ j, j ≥ B.length → ρ j = 0) →
      ∃ (ρ' : Nat → ℝ), Box.envMem ρ' B ∧ (∀ j, j ≥ B.length → ρ' j = 0) ∧
        ρ' i.val = B[i.val].lo ∧ Expr.eval ρ' e ≤ Expr.eval ρ e := by
  intro ρ hρ hzero
  -- The idea: if ∂f/∂xᵢ > 0 everywhere, then f(ρ) ≥ f(ρ[xᵢ := lo])
  -- We construct ρ' by replacing coordinate i with the low endpoint
  let ρ' : Nat → ℝ := fun j => if j = i.val then (B[i.val].lo : ℝ) else ρ j
  use ρ'
  constructor
  · -- ρ' ∈ B
    intro ⟨j, hj⟩
    by_cases h : j = i.val
    · subst h
      simp only [↓reduceIte, ρ', IntervalRat.mem_def]
      constructor
      · exact le_refl _
      · have := B[i.val].le
        exact_mod_cast this
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
  · -- ρ' i = B[i].lo
    simp only [↓reduceIte, ρ']
  · -- f(ρ') ≤ f(ρ)
    -- Use the monotonicity theorem: if ∂f/∂xᵢ > 0, minimum is at left endpoint
    -- Convert the boolean condition to a real inequality
    simp only [isStrictlyPositive, decide_eq_true_eq] at hgrad
    -- Build the interval environment from the box
    let ρ_int : IntervalEnv := Box.toEnv B
    -- Show ρ ∈ ρ_int (membership in the interval environment)
    have hρ_int : ∀ j, ρ j ∈ ρ_int j := by
      intro j
      simp only [ρ_int, Box.toEnv, List.getD]
      by_cases hj : j < B.length
      · simp only [List.getElem?_eq_getElem hj, Option.getD]
        exact hρ ⟨j, hj⟩
      · simp only [List.getElem?_eq_none (not_lt.mp hj), Option.getD]
        rw [IntervalRat.mem_default]
        exact hzero j (not_lt.mp hj)
    -- Apply the monotonicity theorem
    have hmono := increasing_min_at_left_idx e hsupp ρ ρ_int i.val hρ_int hgrad
    -- The key fact: ρ i.val ∈ ρ_int i.val = B[i.val]
    have hρ_i_mem : ρ i.val ∈ ρ_int i.val := hρ_int i.val
    have hmin := hmono (ρ i.val) hρ_i_mem
    -- Now relate evalAlong to eval via ρ'
    -- evalAlong e ρ i.val t = eval (updateVar ρ i.val t) e
    simp only [Expr.evalAlong] at hmin
    -- Need: (ρ_int i.val).lo = B[i.val].lo
    have hlo_eq : (ρ_int i.val).lo = B[i.val].lo := by
      simp only [ρ_int, Box.toEnv, List.getD, List.getElem?_eq_getElem i.isLt, Option.getD]
    -- And: updateVar ρ i.val (ρ_int i.val).lo = ρ'
    have hρ'_eq : Expr.updateVar ρ i.val ((ρ_int i.val).lo : ℝ) = ρ' := by
      funext j
      simp only [Expr.updateVar, ρ']
      split_ifs with hj
      · simp only [hlo_eq]
      · rfl
    -- And: updateVar ρ i.val (ρ i.val) = ρ
    have hρ_eq : Expr.updateVar ρ i.val (ρ i.val) = ρ := Expr.updateVar_self ρ i.val
    rw [hρ'_eq, hρ_eq] at hmin
    exact hmin

/-- If we prune a coordinate to hi because ∂f/∂xᵢ < 0, the minimum is preserved.
    NOTE: Requires ρ j = 0 for j ≥ B.length (standard assumption for box membership). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant49674b01bf1fffbedebd008fd86b5dd903931a1529ba58ab7d9f358ad6bd6c47.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `522802911ff0d2feac536666bffbcb40dbd25969` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

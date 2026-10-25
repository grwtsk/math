# signChange_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8dd95c784f254c3e8b7cff9c2c08b85870b070ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cf15901-e74e-125c-249d-fa7a368099c9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96e631e1-f8b7-686b-3a1e-51ec2471a5c5",
  "kind": "theorem",
  "lexical_name": "signChange_correct",
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
  "slug": "signchange-correct--749daabe794e3a04e22552ea",
  "source": {
    "blob": "8dd95c784f254c3e8b7cff9c2c08b85870b070ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:749daabe794e3a04e22552ea325f2f24e56f585e9a60d8fe9b6be2df3441b907",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96e631e1-f8b7-686b-3a1e-51ec2471a5c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signChange_correct (e : Expr) (hsupp : ExprSupported e)
    (I : IntervalRat) (hsign : signChange e I = true)
    (hCont : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi)) :
    ∃ x ∈ I, Expr.eval (fun _ => x) e = 0 := by
  -- Unpack signChange
  simp only [signChange, decide_eq_true_eq] at hsign
  -- Define f for convenience
  set f := fun x : ℝ => Expr.eval (fun _ => x) e with hf
  -- Get singleton memberships
  have hlo_sing : (I.lo : ℝ) ∈ IntervalRat.singleton I.lo := IntervalRat.mem_singleton I.lo
  have hhi_sing : (I.hi : ℝ) ∈ IntervalRat.singleton I.hi := IntervalRat.mem_singleton I.hi
  -- Apply evalInterval1_correct to get bounds on f(lo) and f(hi)
  have hflo := evalInterval1_correct e hsupp I.lo (IntervalRat.singleton I.lo) hlo_sing
  have hfhi := evalInterval1_correct e hsupp I.hi (IntervalRat.singleton I.hi) hhi_sing
  simp only [IntervalRat.mem_def] at hflo hfhi
  -- Get the interval bound
  have hle : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast I.le
  -- Now handle the two cases of signChange
  cases hsign with
  | inl hcase =>
    -- Case: f(lo).hi < 0 ∧ 0 < f(hi).lo, meaning f(lo) < 0 < f(hi)
    have hflo_neg : f I.lo < 0 := by
      have hbound : f I.lo ≤ (evalInterval1 e (IntervalRat.singleton I.lo)).hi := hflo.2
      have hcast : ((evalInterval1 e (IntervalRat.singleton I.lo)).hi : ℝ) < 0 := by
        exact_mod_cast hcase.1
      linarith
    have hfhi_pos : 0 < f I.hi := by
      have hbound : (evalInterval1 e (IntervalRat.singleton I.hi)).lo ≤ f I.hi := hfhi.1
      have hcast : (0 : ℝ) < (evalInterval1 e (IntervalRat.singleton I.hi)).lo := by
        exact_mod_cast hcase.2
      linarith
    -- Now apply IVT: since f(lo) < 0 < f(hi), 0 ∈ Icc (f lo) (f hi) ⊆ f '' Icc lo hi
    have h0_in_range : (0 : ℝ) ∈ Set.Icc (f I.lo) (f I.hi) := ⟨le_of_lt hflo_neg, le_of_lt hfhi_pos⟩
    have hivt := intermediate_value_Icc (α := ℝ) (δ := ℝ) hle hCont
    have h0_in_image := hivt h0_in_range
    obtain ⟨c, hc_mem, hc_eq⟩ := h0_in_image
    refine ⟨c, ?_, hc_eq⟩
    simp only [IntervalRat.mem_def]
    exact hc_mem
  | inr hcase =>
    -- Case: f(hi).hi < 0 ∧ 0 < f(lo).lo, meaning f(hi) < 0 < f(lo)
    have hfhi_neg : f I.hi < 0 := by
      have hbound : f I.hi ≤ (evalInterval1 e (IntervalRat.singleton I.hi)).hi := hfhi.2
      have hcast : ((evalInterval1 e (IntervalRat.singleton I.hi)).hi : ℝ) < 0 := by
        exact_mod_cast hcase.1
      linarith
    have hflo_pos : 0 < f I.lo := by
      have hbound : (evalInterval1 e (IntervalRat.singleton I.lo)).lo ≤ f I.lo := hflo.1
      have hcast : (0 : ℝ) < (evalInterval1 e (IntervalRat.singleton I.lo)).lo := by
        exact_mod_cast hcase.2
      linarith
    -- Apply IVT' variant: since f(hi) < 0 < f(lo), use intermediate_value_Icc'
    have h0_in_range : (0 : ℝ) ∈ Set.Icc (f I.hi) (f I.lo) := ⟨le_of_lt hfhi_neg, le_of_lt hflo_pos⟩
    have hivt := intermediate_value_Icc' (α := ℝ) (δ := ℝ) hle hCont
    have h0_in_image := hivt h0_in_range
    obtain ⟨c, hc_mem, hc_eq⟩ := h0_in_image
    refine ⟨c, ?_, hc_eq⟩
    simp only [IntervalRat.mem_def]
    exact hc_mem

/-! ## N-Variable Root Finding Infrastructure

The following section provides infrastructure for root finding in multi-variable
expressions. The key idea is that we search for roots along a specific coordinate
while holding other variables fixed.

For a multi-variable expression `e` with environment `ρ`, we can find roots of
`evalAlong e ρ idx` - the function obtained by varying coordinate `idx` while
keeping all other coordinates fixed according to `ρ`.
-/

/-! ### N-variable root checks -/

/-- Check if interval evaluation along coordinate `idx` excludes zero.
    Note: `idx` is kept for API consistency though the full box is checked. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb4b66f47bd858fbeec2da3214398f83335c29dadd836b099f9ee0689ef4c0e4b.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd95c784f254c3e8b7cff9c2c08b85870b070ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

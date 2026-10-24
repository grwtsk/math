# newton_step_at_most_one_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d4723e9-9692-6a46-67d3-f64c3ac15537",
  "kind": "theorem",
  "lexical_name": "newton_step_at_most_one_root",
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
  "slug": "newton-step-at-most-one-root--36f1bab2309da9b6dd0774c2",
  "source": {
    "blob": "ec9d246d4125bc4d43ddcf3493084911838ef0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 611,
    "line": 525,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36f1bab2309da9b6dd0774c2de13ee2a6277fc18f6915436b0f733c62f47fb0c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d4723e9-9692-6a46-67d3-f64c3ac15537`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–611.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem newton_step_at_most_one_root (e : Expr) (hsupp : ExprSupported e) (hvar0 : UsesOnlyVar0 e)
    (I : IntervalRat)
    (hN : (∃ N, newtonStepTM e I 0 1 = some N) ∨ (∃ N, newtonStepSimple e I 0 = some N))
    (hCont : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi))
    (x y : ℝ) (hx : x ∈ I) (hy : y ∈ I)
    (hx_root : Expr.eval (fun _ => x) e = 0) (hy_root : Expr.eval (fun _ => y) e = 0) :
    x = y := by
  by_contra hne
  -- Extract that derivative doesn't contain zero from the Newton step succeeding
  have hzero : ¬IntervalRat.containsZero (derivInterval e (fun _ => I) 0) := by
    rcases hN with ⟨N, hTM⟩ | ⟨N, hSimple⟩
    · simp only [newtonStepTM] at hTM
      cases htm : TaylorModel.fromExpr? e I 1 with
      | none => simp only [htm, Option.bind_eq_bind, Option.bind_none, reduceCtorEq] at hTM;
      | some tm =>
        simp only [htm] at hTM
        by_cases h : (derivInterval e (fun _ => I) 0).containsZero
        · simp only [h, ↓reduceDIte, Option.bind_eq_bind, Option.bind_fun_none,
          reduceCtorEq] at hTM
        · exact h
    · simp only [newtonStepSimple] at hSimple
      by_cases h : (derivInterval e (fun _ => I) 0).containsZero
      · simp only [h, ↓reduceDIte, reduceCtorEq] at hSimple
      · exact h
  -- f' ≠ 0 on I means f is strictly monotonic, so at most one root
  have hmvt := deriv_in_derivInterval e hsupp hvar0 I
  simp only [IntervalRat.mem_def] at hx hy
  -- Use Rolle's theorem: if f(x) = f(y) = 0 and x ≠ y, there's ξ between them with f'(ξ) = 0
  -- Ne.lt_or_lt hne gives: x < y ∨ y < x
  rcases lt_or_gt_of_ne hne with hlt | hlt
  · -- Case: x < y
    have hIcc_sub : Set.Icc x y ⊆ Set.Icc (I.lo : ℝ) I.hi := by
      intro z ⟨hzlo, hzhi⟩
      constructor
      · linarith [hx.1]
      · linarith [hy.2]
    have hCont' : ContinuousOn (evalFunc1 e) (Set.Icc x y) := hCont.mono hIcc_sub
    have hf_eq : evalFunc1 e x = evalFunc1 e y := by
      simp only [evalFunc1]
      rw [hx_root, hy_root]
    obtain ⟨ξ, hξ_mem, hξ_deriv⟩ := @exists_deriv_eq_zero (evalFunc1 e) x y hlt hCont' hf_eq
    have hξ_in_I : ξ ∈ I := by
      simp only [IntervalRat.mem_def]
      constructor
      · linarith [hx.1, hξ_mem.1]
      · linarith [hy.2, hξ_mem.2]
    have hderiv_in := hmvt ξ hξ_in_I
    rw [hξ_deriv] at hderiv_in
    simp only [IntervalRat.containsZero] at hzero
    simp only [IntervalRat.mem_def] at hderiv_in
    simp only [not_and_or, not_le] at hzero
    rcases hzero with hlo_pos | hhi_neg
    · have hcast : (0 : ℝ) < (derivInterval e (fun _ => I) 0).lo := by exact_mod_cast hlo_pos
      linarith [hderiv_in.1, hcast]
    · have hcast : ((derivInterval e (fun _ => I) 0).hi : ℝ) < 0 := by exact_mod_cast hhi_neg
      linarith [hderiv_in.2, hcast]
  · -- Case: y < x
    have hIcc_sub : Set.Icc y x ⊆ Set.Icc (I.lo : ℝ) I.hi := by
      intro z ⟨hzlo, hzhi⟩
      constructor
      · linarith [hy.1]
      · linarith [hx.2]
    have hCont' : ContinuousOn (evalFunc1 e) (Set.Icc y x) := hCont.mono hIcc_sub
    have hf_eq : evalFunc1 e y = evalFunc1 e x := by
      simp only [evalFunc1]
      rw [hy_root, hx_root]
    obtain ⟨ξ, hξ_mem, hξ_deriv⟩ := @exists_deriv_eq_zero (evalFunc1 e) y x hlt hCont' hf_eq
    have hξ_in_I : ξ ∈ I := by
      simp only [IntervalRat.mem_def]
      constructor
      · linarith [hy.1, hξ_mem.1]
      · linarith [hx.2, hξ_mem.2]
    have hderiv_in := hmvt ξ hξ_in_I
    rw [hξ_deriv] at hderiv_in
    simp only [IntervalRat.containsZero] at hzero
    simp only [IntervalRat.mem_def] at hderiv_in
    simp only [not_and_or, not_le] at hzero
    rcases hzero with hlo_pos | hhi_neg
    · have hcast : (0 : ℝ) < (derivInterval e (fun _ => I) 0).lo := by exact_mod_cast hlo_pos
      linarith [hderiv_in.1, hcast]
    · have hcast : ((derivInterval e (fun _ => I) 0).hi : ℝ) < 0 := by exact_mod_cast hhi_neg
      linarith [hderiv_in.2, hcast]

/-! ### Helper lemmas for Newton contraction existence proof -/

/-- Structure extracted from a contracting Newton step.
    When newtonStepSimple contracts, we can extract bounds on the quotient Q = fc/dI. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9d246d4125bc4d43ddcf3493084911838ef0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

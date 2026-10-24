# newton_step_core_at_most_one_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aadeba643fd3f4e60c7710626c255a7effe39f9b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1377,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eebdebd1-88fc-d782-eaad-e14803310177",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f0f29b7-92e5-e638-c744-2e05a69dbe02",
  "kind": "theorem",
  "lexical_name": "newton_step_core_at_most_one_root",
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
  "slug": "newton-step-core-at-most-one-root--b4a987d685bbc0f22c876494",
  "source": {
    "blob": "aadeba643fd3f4e60c7710626c255a7effe39f9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1440,
    "line": 1377,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4a987d685bbc0f22c876494094a8ba5d3e5f4052d5e10825457a8c76c28d6d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f0f29b7-92e5-e638-c744-2e05a69dbe02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1377–1440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem newton_step_core_at_most_one_root (e : Expr) (hsupp : ExprSupported e) (_hvar0 : UsesOnlyVar0 e)
    (I : IntervalRat) (cfg : EvalConfig)
    (hStep : ∃ N, newtonStepCore e I cfg = some N)
    (hCont : ContinuousOn (fun x => Expr.eval (fun _ => x) e) (Set.Icc I.lo I.hi))
    (x y : ℝ) (hx : x ∈ I) (hy : y ∈ I)
    (hx_root : Expr.eval (fun _ => x) e = 0) (hy_root : Expr.eval (fun _ => y) e = 0) :
    x = y := by
  obtain ⟨N, hN⟩ := hStep
  -- If step succeeds, dI doesn't contain zero
  set dI := derivIntervalCore e I cfg with hdI_def
  by_cases hzero : dI.containsZero
  · -- If dI contains zero, newtonStepCore returns none, but hN says it's some N
    unfold newtonStepCore at hN
    simp only [← hdI_def, dif_pos hzero, reduceCtorEq] at hN
  · -- dI doesn't contain zero, so derivative is nonzero everywhere on I
    simp only [IntervalRat.containsZero, not_and_or, not_le] at hzero

    by_contra hne
    -- If x ≠ y, Rolle's theorem gives ξ between them with f'(ξ) = 0
    simp only [IntervalRat.mem_def] at hx hy
    rcases lt_or_gt_of_ne hne with hlt | hlt
    · -- x < y case
      have hIcc_sub : Set.Icc x y ⊆ Set.Icc (I.lo : ℝ) I.hi := by
        intro z ⟨hzlo, hzhi⟩
        exact ⟨le_trans hx.1 hzlo, le_trans hzhi hy.2⟩
      have hCont' : ContinuousOn (evalFunc1 e) (Set.Icc x y) := hCont.mono hIcc_sub
      have hf_eq : evalFunc1 e x = evalFunc1 e y := by
        simp only [evalFunc1]; rw [hx_root, hy_root]
      obtain ⟨ξ, hξ_mem, hξ_deriv⟩ := @exists_deriv_eq_zero (evalFunc1 e) x y hlt hCont' hf_eq
      -- ξ ∈ (x, y) ⊆ I
      have hξ_in_I : ξ ∈ I := by
        simp only [IntervalRat.mem_def]
        exact ⟨le_trans hx.1 (le_of_lt hξ_mem.1), le_trans (le_of_lt hξ_mem.2) hy.2⟩
      -- f'(ξ) ∈ dI but f'(ξ) = 0
      have hderiv_in := derivIntervalCore_correct e hsupp I ξ hξ_in_I cfg
      rw [hξ_deriv] at hderiv_in
      simp only [IntervalRat.mem_def] at hderiv_in
      rcases hzero with hlo_pos | hhi_neg
      · have hcast : (0 : ℝ) < dI.lo := by exact_mod_cast hlo_pos
        linarith [hderiv_in.1]
      · have hcast : (dI.hi : ℝ) < 0 := by exact_mod_cast hhi_neg
        linarith [hderiv_in.2]
    · -- y < x case (symmetric)
      have hIcc_sub : Set.Icc y x ⊆ Set.Icc (I.lo : ℝ) I.hi := by
        intro z ⟨hzlo, hzhi⟩
        exact ⟨le_trans hy.1 hzlo, le_trans hzhi hx.2⟩
      have hCont' : ContinuousOn (evalFunc1 e) (Set.Icc y x) := hCont.mono hIcc_sub
      have hf_eq : evalFunc1 e y = evalFunc1 e x := by
        simp only [evalFunc1]; rw [hy_root, hx_root]
      obtain ⟨ξ, hξ_mem, hξ_deriv⟩ := @exists_deriv_eq_zero (evalFunc1 e) y x hlt hCont' hf_eq
      have hξ_in_I : ξ ∈ I := by
        simp only [IntervalRat.mem_def]
        exact ⟨le_trans hy.1 (le_of_lt hξ_mem.1), le_trans (le_of_lt hξ_mem.2) hx.2⟩
      have hderiv_in := derivIntervalCore_correct e hsupp I ξ hξ_in_I cfg
      rw [hξ_deriv] at hderiv_in
      simp only [IntervalRat.mem_def] at hderiv_in
      rcases hzero with hlo_pos | hhi_neg
      · have hcast : (0 : ℝ) < dI.lo := by exact_mod_cast hlo_pos
        linarith [hderiv_in.1]
      · have hcast : (dI.hi : ℝ) < 0 := by exact_mod_cast hhi_neg
        linarith [hderiv_in.2]

/-- MVT bound using Core functions: If f' ≥ dI.lo > 0 (increasing) and f(I.lo) > 0,
    then f(c) > dI.lo * hw where c = midpoint and hw = half-width. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variantab9cf2ae984ae636e0ac7f9b754497d9095d066e45f4d5f698a284597a0ae616.lean#L1377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aadeba643fd3f4e60c7710626c255a7effe39f9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

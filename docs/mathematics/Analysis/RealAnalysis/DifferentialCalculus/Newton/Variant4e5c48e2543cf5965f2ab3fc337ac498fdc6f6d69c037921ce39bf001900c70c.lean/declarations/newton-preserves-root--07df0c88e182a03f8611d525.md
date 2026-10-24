# newton_preserves_root

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a89186fd-61ff-8ab5-3758-ff61c5bf95e3",
  "kind": "theorem",
  "lexical_name": "newton_preserves_root",
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
  "slug": "newton-preserves-root--07df0c88e182a03f8611d525",
  "source": {
    "blob": "ec9d246d4125bc4d43ddcf3493084911838ef0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 524,
    "line": 378,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07df0c88e182a03f8611d52507cef6ae7b3770ffebab48a77a7a3dd92799a87c",
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

Occurrence: `result:a89186fd-61ff-8ab5-3758-ff61c5bf95e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–524.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem newton_preserves_root (e : Expr) (hsupp : ExprSupported e) (hvar0 : UsesOnlyVar0 e)
    (I N : IntervalRat)
    (hN : newtonStepTM e I 0 1 = some N ∨ newtonStepSimple e I 0 = some N)
    (x : ℝ) (hx : x ∈ I) (hroot : Expr.eval (fun _ => x) e = 0) :
    x ∈ N := by
  -- Key: we use newton_operator_preserves_root and show the components satisfy the conditions
  -- Both newtonStepTM and newtonStepSimple compute N = I ∩ (c - fc/dI)
  have hroot' : evalFunc1 e x = 0 := hroot
  rcases hN with hTM | hSimple
  · -- Case: newtonStepTM succeeded
    -- newtonStepTM uses Taylor model for fc, AD for dI
    -- Unfold the definition
    simp only [newtonStepTM] at hTM
    -- Extract the Taylor model from the monadic computation
    cases htm : TaylorModel.fromExpr? e I 1 with
    | none =>
      -- If fromExpr? returns none, then newtonStepTM returns none, contradiction with hTM
      simp only [htm, Option.bind_eq_bind, Option.bind_none, reduceCtorEq] at hTM
    | some tm =>
      simp only [htm] at hTM
      -- Extract the key values
      set dI := derivInterval e (fun _ => I) 0 with hdI_def
      -- Extract that derivative doesn't contain zero
      have hzero : ¬IntervalRat.containsZero dI := by
        intro hcontra
        by_cases h : (derivInterval e (fun _ => I) 0).containsZero
        · simp only [h, ↓reduceDIte, Option.bind_eq_bind, Option.bind_fun_none,
          reduceCtorEq] at hTM
        · exact h hcontra
      -- Define the Newton components
      let c : ℚ := tm.center
      let fc := TaylorModel.valueAtCenterInterval tm
      let dNonzero : IntervalRat.IntervalRatNonzero :=
        { lo := dI.lo, hi := dI.hi, le := dI.le, nonzero := hzero }
      let dInv := IntervalRat.invNonzero dNonzero
      let Q := IntervalRat.mul fc dInv
      let Newton : IntervalRat := { lo := c - Q.hi, hi := c - Q.lo, le := by linarith [Q.le] }
      -- Show that hTM gives us N = intersect I Newton
      have hTM' : IntervalRat.intersect I Newton = some N := by
        by_cases h : (derivInterval e (fun _ => I) 0).containsZero
        · exact absurd h hzero
        · simp only [h] at hTM
          convert hTM using 2
      -- Key: tm.center = I.midpoint (theorem is in LeanCert.Engine namespace, not TaylorModel)
      have hc_eq : c = I.midpoint := fromExpr?_center e I 1 tm htm
      -- Prove the premises for newton_operator_preserves_root
      have hc_in_I : (c : ℝ) ∈ I := by
        rw [hc_eq]
        exact IntervalRat.midpoint_mem I
      -- Prove f(c) ∈ fc using TM correctness
      have hfc_correct : evalFunc1 e c ∈ fc := by
        simp only [fc, evalFunc1]
        -- Use valueAtCenter_correct
        have hEvalSet := fromExpr_evalSet_correct e I 1 tm htm
        have hDomain := fromExpr?_domain e I 1 tm htm
        have hc_in_domain : (c : ℝ) ∈ tm.domain := by
          rw [hDomain]
          rw [hc_eq]
          exact IntervalRat.midpoint_mem I
        exact TaylorModel.valueAtCenter_correct tm (fun y => Expr.eval (fun _ => y) e)
          (hDomain.symm ▸ hEvalSet) hc_in_domain
      have hdI_correct : ∀ ξ ∈ I, deriv (evalFunc1 e) ξ ∈ dI := by
        intro ξ hξ
        simp only [hdI_def]
        exact deriv_in_derivInterval e hsupp hvar0 I ξ hξ
      -- Apply the abstract lemma to get x ∈ Newton
      have hx_in_Newton : x ∈ Newton := by
        have := newton_operator_preserves_root e hsupp hvar0 I c fc dI hc_in_I hfc_correct hdI_correct hzero x hx hroot'
        simp only [Newton, Q, dInv, dNonzero]
        convert this using 2
      -- Use mem_intersect: x ∈ I and x ∈ Newton implies x ∈ N
      have hx_in_intersect := IntervalRat.mem_intersect hx hx_in_Newton
      obtain ⟨K, hK_eq, hx_in_K⟩ := hx_in_intersect
      -- Since intersect I Newton = some N = some K, we have N = K
      have hN_eq_K : N = K := by
        rw [hTM'] at hK_eq
        simp only [Option.some.injEq] at hK_eq
        exact hK_eq
      rw [hN_eq_K]
      exact hx_in_K
  · -- Case: newtonStepSimple succeeded
    -- newtonStepSimple uses I.midpoint for c, evalInterval1 for fc
    -- First, extract the key property: the derivative interval doesn't contain zero
    -- (otherwise newtonStepSimple would return none)
    set c : ℚ := I.midpoint with hc_def
    set fc := evalInterval1 e (IntervalRat.singleton c) with hfc_def
    set dI := derivInterval e (fun _ => I) 0 with hdI_def
    have hzero : ¬IntervalRat.containsZero dI := by
      intro hcontra
      -- If dI contains zero, newtonStepSimple returns none
      simp only [newtonStepSimple] at hSimple
      -- Use decidability to split: either containsZero is true or false
      by_cases h : (derivInterval e (fun _ => I) 0).containsZero
      · -- Case: containsZero is true => hSimple : none = some N, contradiction
        simp only [h, ↓reduceDIte, reduceCtorEq] at hSimple
      · -- Case: containsZero is false, but we assumed hcontra says dI.containsZero
        -- dI = derivInterval e (fun _ => I) 0 by definition
        exact h hcontra
    -- Define the Newton components matching the definition
    let dNonzero : IntervalRat.IntervalRatNonzero :=
      { lo := dI.lo, hi := dI.hi, le := dI.le, nonzero := hzero }
    let dInv := IntervalRat.invNonzero dNonzero
    let Q := IntervalRat.mul fc dInv
    let Newton : IntervalRat := { lo := c - Q.hi, hi := c - Q.lo, le := by linarith [Q.le] }
    -- Show that hSimple gives us N = intersect I Newton
    have hSimple' : IntervalRat.intersect I Newton = some N := by
      simp only [newtonStepSimple] at hSimple
      -- Use by_cases to handle the dite
      by_cases h : (derivInterval e (fun _ => I) 0).containsZero
      · -- Case: containsZero is true, contradiction with hzero
        exact absurd h hzero
      · -- Case: containsZero is false, simplify the dite
        simp only [h] at hSimple
        -- Now hSimple : I.intersect {...} = some N
        -- Need to show our Newton equals the one in hSimple
        convert hSimple using 2
    -- Prove the premises for newton_operator_preserves_root
    have hc_in_I : (c : ℝ) ∈ I := IntervalRat.midpoint_mem I
    have hfc_correct : evalFunc1 e c ∈ fc := by
      simp only [hfc_def, evalFunc1]
      exact evalInterval1_correct e hsupp c (IntervalRat.singleton c) (IntervalRat.mem_singleton c)
    have hdI_correct : ∀ ξ ∈ I, deriv (evalFunc1 e) ξ ∈ dI := by
      intro ξ hξ
      simp only [hdI_def]
      exact deriv_in_derivInterval e hsupp hvar0 I ξ hξ
    -- Apply the abstract lemma to get x ∈ Newton
    have hx_in_Newton : x ∈ Newton := by
      have := newton_operator_preserves_root e hsupp hvar0 I c fc dI hc_in_I hfc_correct hdI_correct hzero x hx hroot'
      simp only [Newton, Q, dInv, dNonzero]
      convert this using 2
    -- Use mem_intersect: x ∈ I and x ∈ Newton implies x ∈ N
    have hx_in_intersect := IntervalRat.mem_intersect hx hx_in_Newton
    obtain ⟨K, hK_eq, hx_in_K⟩ := hx_in_intersect
    -- Since intersect I Newton = some N = some K, we have N = K
    have hN_eq_K : N = K := by
      rw [hSimple'] at hK_eq
      simp only [Option.some.injEq] at hK_eq
      exact hK_eq
    rw [hN_eq_K]
    exact hx_in_K

/-- At most one root when Newton step succeeds (regardless of contraction).

    If a Newton step succeeds (returns some N), then the derivative interval excludes zero.
    By MVT, this means f is strictly monotonic on I, hence at most one root.

    This lemma is independent of existence - it just proves uniqueness given any two roots. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9d246d4125bc4d43ddcf3493084911838ef0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

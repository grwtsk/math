# newtonStepTM_structure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c6b1faf-3eb9-4c75-c4b5-79661982f6f9",
  "kind": "lemma",
  "lexical_name": "newtonStepTM_structure",
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
  "slug": "newtonsteptm-structure--ca25194d3321874654d493a7",
  "source": {
    "blob": "ec9d246d4125bc4d43ddcf3493084911838ef0be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 740,
    "line": 691,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca25194d3321874654d493a72abcafe710d7f44552d5fe062fc6a55242028af3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c6b1faf-3eb9-4c75-c4b5-79661982f6f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 691–740.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma newtonStepTM_structure (e : Expr) (I N : IntervalRat)
    (hTM : newtonStepTM e I 0 1 = some N) :
    ∃ (tm : TaylorModel) (hdI_nonzero : ¬(derivInterval e (fun _ => I) 0).containsZero),
      TaylorModel.fromExpr? e I 1 = some tm ∧
      tm.center = I.midpoint ∧
      let c := I.midpoint
      let fc := TaylorModel.valueAtCenterInterval tm
      let dI := derivInterval e (fun _ => I) 0
      let dNonzero : IntervalRat.IntervalRatNonzero := ⟨dI, hdI_nonzero⟩
      let Q := IntervalRat.mul fc (IntervalRat.invNonzero dNonzero)
      N.lo = max I.lo (c - Q.hi) ∧ N.hi = min I.hi (c - Q.lo) := by
  -- Step 1: Unfold newtonStepTM
  unfold newtonStepTM at hTM
  -- Step 2: First case split on fromExpr? result
  match hFrom : TaylorModel.fromExpr? e I 1 with
  | none =>
      -- If fromExpr? returns none, the do-block returns none, contradicting hTM
      simp only [bind, Option.bind, hFrom, reduceCtorEq] at hTM
  | some tm =>
      -- Now the do-block continues with this tm
      simp only [hFrom, bind, Option.bind] at hTM
      -- Step 3: Split on containsZero for dI
      by_cases hzero : (derivInterval e (fun _ => I) 0).containsZero
      · -- If dI contains zero, the branch returns none; contradiction
        simp only [dif_pos hzero, reduceCtorEq] at hTM
      · -- Else branch: we really have an intersection = some N
        simp only [dif_neg hzero] at hTM
        -- Step 4: Build the witness
        have hcenter := fromExpr?_center e I 1 tm hFrom
        refine ⟨tm, hzero, rfl, hcenter, ?_⟩
        -- Extract N.lo and N.hi from the intersect equation
        -- hTM : IntervalRat.intersect I N' = some N
        -- where N' = { lo := tm.center - Q.hi, hi := tm.center - Q.lo, ... }
        simp only [IntervalRat.intersect] at hTM
        split at hTM
        · -- Success branch: intersection returned some
          rename_i hintersect
          simp only [Option.some.injEq] at hTM
          -- hTM : N = ⟨max I.lo (tm.center - Q.hi), min I.hi (tm.center - Q.lo), _⟩
          have hN_lo := congrArg IntervalRat.lo hTM.symm
          have hN_hi := congrArg IntervalRat.hi hTM.symm
          simp only at hN_lo hN_hi
          -- Rewrite tm.center to I.midpoint
          rw [hcenter] at hN_lo hN_hi
          exact ⟨hN_lo, hN_hi⟩
        · -- Failure branch: intersect returned none, contradiction
          simp only [reduceCtorEq] at hTM

/-- Key correctness lemma: for TM Newton step, f(c) ∈ the TM-computed fc interval.
    This is what allows us to use the generic contraction contradiction lemmas. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Newton/Variant4e5c48e2543cf5965f2ab3fc337ac498fdc6f6d69c037921ce39bf001900c70c.lean#L691).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec9d246d4125bc4d43ddcf3493084911838ef0be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

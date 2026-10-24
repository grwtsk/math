# minimizeInterval_go_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2365215c-ddea-844f-ce1f-c4d7ce0b9143",
  "kind": "theorem",
  "lexical_name": "minimizeInterval_go_correct",
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
  "slug": "minimizeinterval-go-correct--dcf271144ffdb74b6c2caabe",
  "source": {
    "blob": "9ca70cedf89542b60ae036f418c0b4be33db63fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 284,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcf271144ffdb74b6c2caabeb963298d7162f597806e0e5c9a5796f87b0cd27c",
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

Occurrence: `result:2365215c-ddea-844f-ce1f-c4d7ce0b9143`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 284–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minimizeInterval_go_correct (e : Expr) (hsupp : ExprSupported e) (hvar0 : UsesOnlyVar0 e)
    (maxDepth : ℕ) (depth : ℕ) (J : IntervalRat) :
    ∀ x ∈ J, (minimizeInterval.go e 0 maxDepth J depth).valueBound.lo
             ≤ Expr.eval (fun _ => x) e := by
  induction depth generalizing J with
  | zero =>
    -- Base case: depth = 0, just use interval evaluation
    intro x hx
    simp only [minimizeInterval.go, ↓reduceIte]
    exact minimizeInterval_base_correct e hsupp J x hx
  | succ n ih =>
    intro x hx
    -- Unfold the go definition for succ case
    -- Note: n + 1 ≠ 0, so we skip the first branch
    have hdepth : n + 1 ≠ 0 := Nat.succ_ne_zero n
    rw [minimizeInterval.go]
    simp only [hdepth, ↓reduceIte, Nat.add_sub_cancel]
    -- Now we branch on the derivative conditions
    split_ifs with hpos hneg hle
    · -- Derivative strictly positive: increasing function
      have hpos' : 0 < (derivInterval e (fun _ => J) 0).lo := by
        simp only [derivStrictlyPositive, decide_eq_true_eq] at hpos
        exact hpos
      exact increasing_endpoint_bound e hsupp hvar0 J hpos' x hx
    · -- Derivative strictly negative: decreasing function
      have hneg' : (derivInterval e (fun _ => J) 0).hi < 0 := by
        simp only [derivStrictlyNegative, decide_eq_true_eq] at hneg
        exact hneg
      exact decreasing_endpoint_bound e hsupp hvar0 J hneg' x hx
    · -- Bisection case, hle (r₁.lo ≤ r₂.lo)
      -- x is in one of the bisected intervals
      have hcases := mem_bisect_cases J x hx
      cases hcases with
      | inl h1 => exact ih J.bisect.1 x h1
      | inr h2 =>
        have h := ih J.bisect.2 x h2
        have hle_cast : ((minimizeInterval.go e 0 maxDepth (J.bisect.fst) n).valueBound.lo : ℝ)
            ≤ (minimizeInterval.go e 0 maxDepth (J.bisect.snd) n).valueBound.lo := by exact_mod_cast hle
        calc ((minimizeInterval.go e 0 maxDepth (J.bisect.fst) n).valueBound.lo : ℝ)
            ≤ (minimizeInterval.go e 0 maxDepth (J.bisect.snd) n).valueBound.lo := hle_cast
          _ ≤ Expr.eval (fun _ => x) e := h
    · -- Bisection case, ¬hle (r₁.lo > r₂.lo)
      have hcases := mem_bisect_cases J x hx
      cases hcases with
      | inl h1 =>
        have h := ih J.bisect.1 x h1
        have hlt := not_le.mp hle
        have hlt_cast : ((minimizeInterval.go e 0 maxDepth (J.bisect.snd) n).valueBound.lo : ℝ)
            ≤ (minimizeInterval.go e 0 maxDepth (J.bisect.fst) n).valueBound.lo := by exact_mod_cast (le_of_lt hlt)
        calc ((minimizeInterval.go e 0 maxDepth (J.bisect.snd) n).valueBound.lo : ℝ)
            ≤ (minimizeInterval.go e 0 maxDepth (J.bisect.fst) n).valueBound.lo := hlt_cast
          _ ≤ Expr.eval (fun _ => x) e := h
      | inr h2 => exact ih J.bisect.2 x h2

/-- Correctness: the minimum is in the computed interval.
    FULLY PROVED for varIdx = 0 and UsesOnlyVar0 expressions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean#L284).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ca70cedf89542b60ae036f418c0b4be33db63fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# maximizeInterval_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fd908f7-e601-2fde-558a-1e47a9053243",
  "kind": "theorem",
  "lexical_name": "maximizeInterval_correct",
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
  "slug": "maximizeinterval-correct--d3b76b810486417cbb1bd0b0",
  "source": {
    "blob": "9ca70cedf89542b60ae036f418c0b4be33db63fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 359,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3b76b810486417cbb1bd0b077ea6380c4907095df293b44fb840c5e9540d284",
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

Occurrence: `result:6fd908f7-e601-2fde-558a-1e47a9053243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maximizeInterval_correct (e : Expr) (hsupp : ExprSupported e) (hvar0 : UsesOnlyVar0 e)
    (I : IntervalRat)
    (maxDepth : ℕ) :
    ∀ x ∈ I, Expr.eval (fun _ => x) e ≤ (maximizeInterval e I 0 maxDepth).valueBound.hi := by
  intro x hx
  -- max f = -min(-f)
  -- result.valueBound = neg (minimizeInterval (neg e) ...).valueBound
  -- result.valueBound.hi = -(minimizeInterval (neg e) ...).valueBound.lo
  -- We need: f(x) ≤ result.valueBound.hi
  --        = -(minimizeInterval (neg e) ...).valueBound.lo
  -- Equivalently: (minimizeInterval (neg e) ...).valueBound.lo ≤ -f(x)
  have hneg_supp : ExprSupported (Expr.neg e) := ExprSupported.neg hsupp
  have hneg_var0 : UsesOnlyVar0 (Expr.neg e) := UsesOnlyVar0.neg e hvar0
  have hmin := minimizeInterval_correct (Expr.neg e) hneg_supp hneg_var0 I maxDepth x hx
  simp only [Expr.eval_neg] at hmin
  -- hmin: (minimizeInterval (neg e) ...).valueBound.lo ≤ -f(x)
  -- Need: f(x) ≤ (maximizeInterval e ...).valueBound.hi
  --     = -(minimizeInterval (neg e) ...).valueBound.lo
  simp only [maximizeInterval, IntervalRat.neg]
  -- Goal: f(x) ≤ ↑(-(minimizeInterval (neg e) ...).valueBound.lo)
  -- From hmin: ↑(minimizeInterval (neg e) ...).valueBound.lo ≤ -f(x)
  -- So: f(x) ≤ -(minimizeInterval (neg e) ...).valueBound.lo
  have h : Expr.eval (fun _ => x) e ≤
           -(((minimizeInterval (Expr.neg e) I 0 maxDepth).valueBound.lo) : ℝ) := by
    have hcast : (((minimizeInterval (Expr.neg e) I 0 maxDepth).valueBound.lo) : ℝ)
                 ≤ -Expr.eval (fun _ => x) e := hmin
    linarith
  convert h using 1
  -- Need: ↑(-(minimizeInterval e.neg I 0 maxDepth).valueBound.lo) =
  --       -↑(minimizeInterval e.neg I 0 maxDepth).valueBound.lo
  simp only [Rat.cast_neg]

/-! ### Bounds checking -/

/-- Check if f(x) ≥ c for all x in I -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Optimize/Variantb46b80fe9abc3556bf4bbeb627397e430f5fc4aefb1a71025c84e29b9873868a.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ca70cedf89542b60ae036f418c0b4be33db63fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

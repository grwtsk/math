# exprContinuousCore_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96dccb0f-f02f-1dbd-2c84-6243a64e0985",
  "kind": "theorem",
  "lexical_name": "exprContinuousCore_continuousOn",
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
  "slug": "exprcontinuouscore-continuouson--e92b5a815b48d0e66619e919",
  "source": {
    "blob": "9ece43ee45b550d676b203990572320b242e0349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e92b5a815b48d0e66619e919ed55f16bce778994bd861543ba261e010ee310e2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96dccb0f-f02f-1dbd-2c84-6243a64e0985`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exprContinuousCore_continuousOn (e : LExpr) (hsupp : ExprContinuousCore e)
    {s : Set ℝ} :
    ContinuousOn (fun x => LeanCert.Core.Expr.eval (fun _ => x) e) s := by
  induction hsupp with
  | const c =>
    simp only [LeanCert.Core.Expr.eval]
    exact continuousOn_const
  | var n =>
    -- eval (fun _ => x) (var n) = (fun _ => x) n = x
    simp only [LeanCert.Core.Expr.eval]
    exact continuous_id.continuousOn
  | add _ _ ih1 ih2 =>
    simp only [LeanCert.Core.Expr.eval]
    exact ih1.add ih2
  | mul _ _ ih1 ih2 =>
    simp only [LeanCert.Core.Expr.eval]
    exact ih1.mul ih2
  | neg _ ih =>
    simp only [LeanCert.Core.Expr.eval]
    exact ih.neg
  | sin _ ih =>
    simp only [LeanCert.Core.Expr.eval]
    exact Real.continuous_sin.comp_continuousOn ih
  | cos _ ih =>
    simp only [LeanCert.Core.Expr.eval]
    exact Real.continuous_cos.comp_continuousOn ih
  | exp _ ih =>
    simp only [LeanCert.Core.Expr.eval]
    exact Real.continuous_exp.comp_continuousOn ih
  | sqrt _ ih =>
    simp only [LeanCert.Core.Expr.eval]
    -- sqrt is continuous on [0, ∞) and returns 0 for negative inputs
    -- For ContinuousOn on any set, we use Real.continuous_sqrt
    exact Real.continuous_sqrt.comp_continuousOn ih
  | sinh _ ih =>
    simp only [LeanCert.Core.Expr.eval]
    exact Real.continuous_sinh.comp_continuousOn ih
  | cosh _ ih =>
    simp only [LeanCert.Core.Expr.eval]
    exact Real.continuous_cosh.comp_continuousOn ih
  | tanh _ ih =>
    simp only [LeanCert.Core.Expr.eval]
    -- tanh = sinh / cosh, and cosh > 0 everywhere
    have hcont : Continuous Real.tanh := by
      have h : Real.tanh = fun x => Real.sinh x / Real.cosh x := by
        ext x; exact Real.tanh_eq_sinh_div_cosh x
      rw [h]
      exact Real.continuous_sinh.div Real.continuous_cosh (fun x => ne_of_gt (Real.cosh_pos x))
    exact hcont.comp_continuousOn ih

/-- Specialized version for Icc intervals (common case for interval_roots) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProveContinuous/Varianta29fbe4d3fabbfd3d1e6d8f388a2a13b655ea58453ef490021ee8e92dc043d31.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ece43ee45b550d676b203990572320b242e0349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

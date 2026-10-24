# exprContinuousCore_continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e853a96808a6b4861710db3f8229db8bd735dfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de1e09ed-d178-e473-7a10-e0c4eefc893e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5fc16f9-bade-9769-b6db-0cf88e07dc11",
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
  "slug": "exprcontinuouscore-continuouson--e29277071ed62f8585c802bb",
  "source": {
    "blob": "0e853a96808a6b4861710db3f8229db8bd735dfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 107,
    "path": "GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e29277071ed62f8585c802bbea20176f2574c6f560c445d45a21005e7c7885c2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5fc16f9-bade-9769-b6db-0cf88e07dc11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–157.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProveContinuous/Variantdae8eb1bf96fb53580b84b58b563b7bf28824cbe20efda71489500d0b342d555.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e853a96808a6b4861710db3f8229db8bd735dfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

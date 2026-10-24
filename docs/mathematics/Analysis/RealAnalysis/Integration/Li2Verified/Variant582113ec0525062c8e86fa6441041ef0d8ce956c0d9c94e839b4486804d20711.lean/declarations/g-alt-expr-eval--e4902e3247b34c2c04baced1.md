# g_alt_expr_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a867a445-d626-40f4-f708-6fa442dc41ac",
  "kind": "theorem",
  "lexical_name": "g_alt_expr_eval",
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
  "slug": "g-alt-expr-eval--e4902e3247b34c2c04baced1",
  "source": {
    "blob": "c9106be74b741fa31457f5a3764c19c97fe53c3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 419,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4902e3247b34c2c04baced11dce3462af68dceac2d1bd1d2f1068cd98408769",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a867a445-d626-40f4-f708-6fa442dc41ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem g_alt_expr_eval (t : ℝ) (ht_pos : 0 < t) (ht_lt : t < 1) :
    Expr.eval (fun _ => t) g_alt_expr = g t := by
  have hsq : t * t = t^2 := by ring
  have h1mt2' : (1:ℝ) + -(t * t) = 1 - t^2 := by ring
  have hlog1m : (1:ℝ) + -t = 1 - t := by ring
  -- Evaluate the Expr to get the raw form
  simp only [g_alt_expr, Expr.eval]
  -- Now we need: Real.log (↑1 + -(t * t)) * (Real.log (↑1 + t) * Real.log (↑1 + -t))⁻¹
  --            = Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t))
  -- First normalize the coerced 1
  have h1_eq : (↑(1:ℚ) : ℝ) = (1:ℝ) := by norm_cast
  simp only [h1_eq]
  -- Now: Real.log (1 + -(t * t)) * (Real.log (1 + t) * Real.log (1 + -t))⁻¹
  rw [h1mt2', hlog1m]
  -- Now: Real.log (1 - t^2) * (Real.log (1 + t) * Real.log (1 - t))⁻¹ = g t
  -- Convert mul inv to div: a * b⁻¹ = a / b
  rw [← div_eq_mul_inv]
  -- Now: Real.log (1 - t^2) / (Real.log (1 + t) * Real.log (1 - t)) = g t
  exact (g_alt t ht_pos ht_lt).symm

/-- Mid-range interval for numerical integration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variant582113ec0525062c8e86fa6441041ef0d8ce956c0d9c94e839b4486804d20711.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9106be74b741fa31457f5a3764c19c97fe53c3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

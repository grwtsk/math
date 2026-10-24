# g_alt_expr_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f75406f6827c7451ea51375b6d9f2fe06fc13416",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 411,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:06e14f28-75f4-f9ab-45c4-13fa109960fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7f46494-67c2-7010-de8a-d2c2ea57de06",
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
  "slug": "g-alt-expr-eval--6f91b56f79d29d21a48ea5d6",
  "source": {
    "blob": "f75406f6827c7451ea51375b6d9f2fe06fc13416",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 411,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f91b56f79d29d21a48ea5d6ec9ab6256c05494d13fe57f8690fe7521b419a8a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7f46494-67c2-7010-de8a-d2c2ea57de06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–431.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Li2Verified/Variantb4417f1053a313e6b2d2e0646b33b26fd2e5a1fd639c30ded4af6f0cc741bfc9.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f75406f6827c7451ea51375b6d9f2fe06fc13416` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

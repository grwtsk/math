# neg_one_le_xsq_plus_sin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ec70cc07-362b-b551-d8d6-0edb613b0716",
  "kind": "theorem",
  "lexical_name": "neg_one_le_xsq_plus_sin",
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
  "slug": "neg-one-le-xsq-plus-sin--158c4a6f72af9eaaa2e5be55",
  "source": {
    "blob": "5c89f8d907bc723ac75f49f0a8e5147184b028df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 173,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:158c4a6f72af9eaaa2e5be552287365a27a4b6f92357219eaa5c166b940db88e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ec70cc07-362b-b551-d8d6-0edb613b0716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_one_le_xsq_plus_sin : ∀ x ∈ I01, (-1 : ℚ) ≤ Expr.eval (fun _ => x) exprXSqPlusSin := by
  intro x hx
  simp only [exprXSqPlusSin, Expr.eval_add, Expr.eval_mul, Expr.eval_sin, Expr.eval_var]
  have h1 : (0 : ℝ) ≤ x * x := by
    have := zero_le_xsq x hx
    simp only [exprXSq, Expr.eval_mul, Expr.eval_var] at this
    exact_mod_cast this
  have h2 : (-1 : ℝ) ≤ Real.sin x := Real.neg_one_le_sin x
  have hsum : (-1 : ℝ) ≤ x * x + Real.sin x := by linarith
  exact_mod_cast hsum

/-! ### Strict bounds -/

/-- The expression x² - 2 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variant0cef65536cbb66a1c312ed1f74d470264423d77f32d67f26ca3da369cf84ab46.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c89f8d907bc723ac75f49f0a8e5147184b028df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

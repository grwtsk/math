# evalIntervalReal_correct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6864c5e-0ad9-a308-8b5e-0324c7a1719e",
  "kind": "theorem",
  "lexical_name": "evalIntervalReal_correct",
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
  "slug": "evalintervalreal-correct--36f04babca2cfdf84cbcf15e",
  "source": {
    "blob": "c2ed4b2f53c2bd84851c3d47a5227de5dc022020",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36f04babca2cfdf84cbcf15e59dd70cf092ee86b03c1372ddfc34ea3da554526",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6864c5e-0ad9-a308-8b5e-0324c7a1719e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalIntervalReal_correct (e : Expr) (hsupp : ExprSupportedExt e)
    (ρ_real : Nat → ℝ) (ρ_int : IntervalRealEnv) (hρ : envMemReal ρ_real ρ_int) :
    Expr.eval ρ_real e ∈ evalIntervalReal e ρ_int := by
  induction hsupp with
  | const q =>
    simp only [Expr.eval_const, evalIntervalReal]
    exact IntervalReal.mem_singleton_rat q
  | var idx =>
    simp only [Expr.eval_var, evalIntervalReal]
    exact hρ idx
  | add _ _ ih₁ ih₂ =>
    simp only [Expr.eval_add, evalIntervalReal]
    exact IntervalReal.mem_add ih₁ ih₂
  | mul _ _ ih₁ ih₂ =>
    simp only [Expr.eval_mul, evalIntervalReal]
    exact IntervalReal.mem_mul' ih₁ ih₂
  | neg _ ih =>
    simp only [Expr.eval_neg, evalIntervalReal]
    exact IntervalReal.mem_neg ih
  | sin _ ih =>
    simp only [Expr.eval_sin, evalIntervalReal]
    exact IntervalReal.mem_sinInterval ih
  | cos _ ih =>
    simp only [Expr.eval_cos, evalIntervalReal]
    exact IntervalReal.mem_cosInterval ih
  | exp _ ih =>
    simp only [Expr.eval_exp, evalIntervalReal]
    exact IntervalReal.mem_expInterval ih
  | atan _ ih =>
    simp only [Expr.eval_atan, evalIntervalReal]
    exact IntervalReal.mem_atanInterval ih
  | arsinh _ ih =>
    simp only [Expr.eval_arsinh, evalIntervalReal]
    exact IntervalReal.mem_arsinhInterval ih
  | sinh _ ih =>
    simp only [Expr.eval_sinh, evalIntervalReal]
    exact IntervalReal.mem_sinhInterval ih
  | cosh _ ih =>
    simp only [Expr.eval_cosh, evalIntervalReal]
    exact IntervalReal.mem_coshInterval ih
  | sqrt _ ih =>
    simp only [Expr.eval_sqrt, evalIntervalReal]
    exact IntervalReal.mem_sqrtInterval ih

/-! ### Convenience functions -/

/-- Evaluate an expression with a single variable over a real-endpoint interval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalEvalReal/Variantba0cb5a88dd975033ff4bc923ec83549dd647faf14b0c731cc5517edb6fd444d.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2ed4b2f53c2bd84851c3d47a5227de5dc022020` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

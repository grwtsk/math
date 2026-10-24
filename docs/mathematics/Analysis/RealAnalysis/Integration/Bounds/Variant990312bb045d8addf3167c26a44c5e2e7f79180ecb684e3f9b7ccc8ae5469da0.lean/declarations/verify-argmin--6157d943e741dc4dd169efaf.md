# verify_argmin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fdecc1a-4aad-a3c0-ecfe-27f59ee5b51e",
  "kind": "theorem",
  "lexical_name": "verify_argmin",
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
  "slug": "verify-argmin--6157d943e741dc4dd169efaf",
  "source": {
    "blob": "5ea4189e45a24c7ff8d1c90dd03058a17967d83f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 268,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6157d943e741dc4dd169efaf13ab8ae78923146af49e729d9ff2897a0cc7df73",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fdecc1a-4aad-a3c0-ecfe-27f59ee5b51e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem verify_argmin (e : Expr) (hsupp : ExprSupportedCore e)
    (I : IntervalRat) (x c : ℚ) (cfg : EvalConfig) (_hx : (x : ℝ) ∈ I)
    (h_lower : checkLowerBound e I c cfg = true)
    (h_point : checkPointUpperBound e x c cfg = true) :
    ∀ y ∈ I, Expr.eval (fun _ => (x : ℝ)) e ≤ Expr.eval (fun _ => y) e := by
  intro y hy
  have h1 : Expr.eval (fun _ => (x : ℝ)) e ≤ c := verify_point_upper_bound e hsupp x c cfg h_point
  have h2 : c ≤ Expr.eval (fun _ => y) e := verify_lower_bound e hsupp I c cfg h_lower y hy
  exact le_trans h1 h2

/-! ### ExprSupportedWithInv bounds

Support for expressions with inv, log, atan, arsinh, atanh. These use the
`evalInterval?` evaluator which may return `none` for invalid inputs.

NOTE: These are noncomputable because `evalInterval?` uses Real Taylor approximations.
They cannot be used with `native_decide`. Use the verification theorems directly
in term proofs or with explicit computation.
-/

/-- Check upper bound for ExprSupportedWithInv expressions.
    Returns `true` iff evalInterval?1 succeeds and the upper bound is ≤ c.
    NOTE: Noncomputable - cannot be used with native_decide. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bounds/Variant990312bb045d8addf3167c26a44c5e2e7f79180ecb684e3f9b7ccc8ae5469da0.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea4189e45a24c7ff8d1c90dd03058a17967d83f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

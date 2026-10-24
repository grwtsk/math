# interior_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed04ef68-3202-1feb-554e-a3b861861cbe",
  "kind": "theorem",
  "lexical_name": "interior_eq",
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
  "slug": "interior-eq--5fdf6c8509bd5295f8e6d97b",
  "source": {
    "blob": "e2cc73c6411c209f01327d82a98b9370aeb09f98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fdf6c8509bd5295f8e6d97bc00f2dccc4ecbb9c624e75a999fe969d5102be56",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed04ef68-3202-1feb-554e-a3b861861cbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_eq (A : ℝ) (hA : 0 < A) (x : ℝ) :
    interior A x =
      ((Realization.secondInterior A x - Realization.bumpInterior A x / 4 : ℝ) : ℂ) := by
  unfold interior bumpPolynomial Realization.secondInterior Realization.bumpInterior
  simp only [derivative_pow, derivative_sub, derivative_C, derivative_X, derivative_mul,
    derivative_one, derivative_zero, eval_sub, eval_add,
    eval_mul, eval_pow, eval_C, eval_X, eval_one, eval_zero]
  push_cast
  have ha : (A : ℂ) ≠ 0 := by exact_mod_cast hA.ne'
  have hs : (Real.sqrt A : ℂ) ≠ 0 := by exact_mod_cast (Real.sqrt_pos.mpr hA).ne'
  field_simp
  ring
/-- The real-variable derivative of the complex polynomial exponential is checked exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroTransform/Variantf9645b83c06fc2e7e2039acff693ea96ea331845071199826d517a67072e9cd6.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2cc73c6411c209f01327d82a98b9370aeb09f98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

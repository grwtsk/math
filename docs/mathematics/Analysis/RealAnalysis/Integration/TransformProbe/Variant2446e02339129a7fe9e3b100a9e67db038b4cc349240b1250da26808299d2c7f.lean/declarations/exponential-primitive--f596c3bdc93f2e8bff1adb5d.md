# exponential_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe2118ce-0104-1096-f7cd-93baef254f6f",
  "kind": "theorem",
  "lexical_name": "exponential_primitive",
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
  "slug": "exponential-primitive--f596c3bdc93f2e8bff1adb5d",
  "source": {
    "blob": "b66316eb5f48ca19a33a47bc8b2895bf311b9e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 47,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f596c3bdc93f2e8bff1adb5d2497bfea120b665c7d3bffe4e23c167208dc6c49",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe2118ce-0104-1096-f7cd-93baef254f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_primitive (t : ℂ) (x : ℝ) :
    HasDerivAt (fun y : ℝ ↦ Complex.exp (t*y) * (primitivePolynomial t).eval (y:ℂ))
      (t^9 * (1-(x:ℂ)^2)^4 * Complex.exp (t*x)) x := by
  have hx : HasDerivAt (fun y : ℝ ↦ t * (y:ℂ)) t x := by
    simpa using (((hasDerivAt_id (x:ℂ)).const_mul t).comp_ofReal)
  have h := hx.cexp.mul (((primitivePolynomial t).hasDerivAt (x:ℂ)).comp_ofReal)
  convert h using 1 <;> try rfl
  have hp := congrArg (Polynomial.eval (x:ℂ)) (primitive_derivative t)
  simp only [eval_add, eval_mul, eval_C, eval_pow, eval_sub, eval_one, eval_X] at hp
  linear_combination (-(Complex.exp (t*x))) * hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b66316eb5f48ca19a33a47bc8b2895bf311b9e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

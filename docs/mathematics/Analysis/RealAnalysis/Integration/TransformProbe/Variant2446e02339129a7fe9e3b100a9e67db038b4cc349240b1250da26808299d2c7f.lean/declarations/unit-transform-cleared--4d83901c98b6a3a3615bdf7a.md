# unit_transform_cleared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc247876-ab46-128b-6d4f-91d66f6d77e2",
  "kind": "theorem",
  "lexical_name": "unit_transform_cleared",
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
  "slug": "unit-transform-cleared--4d83901c98b6a3a3615bdf7a",
  "source": {
    "blob": "b66316eb5f48ca19a33a47bc8b2895bf311b9e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 58,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d83901c98b6a3a3615bdf7a2a096ff4540d33011e8d90f88c86ab5b53133942",
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

Occurrence: `result:cc247876-ab46-128b-6d4f-91d66f6d77e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_transform_cleared (t : ℂ) :
    t^9 * (∫ x : ℝ in (-1)..1, (1-(x:ℂ)^2)^4 * Complex.exp (t*x)) =
      384 * (Complex.exp t * sourcePolynomial t - Complex.exp (-t) * sourcePolynomial (-t)) := by
  have hi := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun x _ ↦ exponential_primitive t x)
    (by apply Continuous.intervalIntegrable; fun_prop :
      IntervalIntegrable (fun x : ℝ ↦ t^9 * (1-(x:ℂ)^2)^4 * Complex.exp (t*x)) volume (-1) 1)
  simp only [mul_assoc, intervalIntegral.integral_const_mul] at hi
  norm_num only [Complex.ofReal_neg, Complex.ofReal_one, mul_one, mul_neg_one,
    primitive_endpoint_pos, primitive_endpoint_neg] at hi
  linear_combination hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant2446e02339129a7fe9e3b100a9e67db038b4cc349240b1250da26808299d2c7f.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b66316eb5f48ca19a33a47bc8b2895bf311b9e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

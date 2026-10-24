# unit_transform_cleared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "95ff9871cf987ffec8769f0f47b45b1768bfa6ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7fe58ae6-e61a-4e47-7ffa-a9e79c115179",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8ceb2ef-6281-31c6-a0ad-85cc06e893aa",
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
  "slug": "unit-transform-cleared--17db913b778db2299c18f608",
  "source": {
    "blob": "95ff9871cf987ffec8769f0f47b45b1768bfa6ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 50,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:17db913b778db2299c18f608b79dcb1606d8cc1d977a83ade68de4157ae3871b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8ceb2ef-6281-31c6-a0ad-85cc06e893aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–61.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TransformProbe/Variant8255add931bb79bc44ed13854e92dbd12d01b3fadc8bcb4f683413d01adf2c5c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95ff9871cf987ffec8769f0f47b45b1768bfa6ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

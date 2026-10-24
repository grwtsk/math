# exists_gl_smul_eq_self_iff_trace_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8232d71ac5ddf316cdfe78030c19bf1ea6afe83e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04c7f557-6c43-de8c-7ad4-a7a496739249",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e8ced21-5bb8-7ebc-5399-8bed3aeb906c",
  "kind": "theorem",
  "lexical_name": "exists_gl_smul_eq_self_iff_trace_eq_zero",
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
  "slug": "exists-gl-smul-eq-self-iff-trace-eq-zero--e239b62ec1d515361cb077c4",
  "source": {
    "blob": "8232d71ac5ddf316cdfe78030c19bf1ea6afe83e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 86,
    "path": "GRWTSK/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e239b62ec1d515361cb077c48f3b009909dff93159ae42e388e400ca34f97442",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e8ced21-5bb8-7ebc-5399-8bed3aeb906c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_gl_smul_eq_self_iff_trace_eq_zero (h : g.val.det < 0) :
    (∃ z : ℍ, g • z = z) ↔ g.val.trace = 0 := by
  constructor
  · rintro ⟨z, hz⟩
    linear_combination
      (norm := { simp [σ, h.not_gt, num, denom, z.im_ne_zero, Matrix.trace_fin_two, field] })
      congr($(gl_smul_eq_iff_num_eq.mp hz).im / z.im)
  · intro hadd
    by_cases hc : g 1 0 = 0
    · use ⟨⟨g 0 1 / (2 * g 1 1), 1⟩, one_pos⟩
      simp [gl_smul_eq_self_iff_re_eq, *]
    · use ⟨⟨-g 1 1 / g 1 0, √(-g.val.det) / |g 1 0|⟩, by simp [*]⟩
      simp [gl_smul_eq_self_iff_dist_sq_eq, *, dist_eq_norm, ← Complex.normSq_eq_norm_sq,
        Complex.normSq_apply, ← pow_two, div_pow, h.le]

/-- If `g` is an orientation-preserving map,
then the fixed points of its action on the upper half-plane
can be found from a quadratic equation.

If `c ≠ 0`, then this equation has a unique solution in the upper half-plane
given by `UpperHalfPlane.fixedPt`.
If `c = 0`, then the equation degenerates to a linear equation,
which has no solutions in the upper half-plane unless `g` is a scalar matrix.

See also `Matrix.GeneralLinearGroup.fixpointPolynomial_aeval_eq_zero_iff`
for a similar lemma about the action on the projective line,
encoded as `OnePoint R`, where `R` is the ring of coefficients.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/FixedPoints/Variantf253d424c6ebad3848c9f4e120c09193bef144db1866efbfb84dae73b77d44c5.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8232d71ac5ddf316cdfe78030c19bf1ea6afe83e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

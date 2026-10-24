# jensenTwo_zero_im_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4935f02994a127edaf09098b0baacf523f1720a1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 300,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7b50b2aa-9891-9968-0069-c7d577ccb52d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d35923ff-0867-9bb1-6a7c-ac2aa078113f",
  "kind": "theorem",
  "lexical_name": "jensenTwo_zero_im_eq_zero",
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
  "slug": "jensentwo-zero-im-eq-zero--0d541ea9ece9b1a74d7f316e",
  "source": {
    "blob": "4935f02994a127edaf09098b0baacf523f1720a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 300,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d541ea9ece9b1a74d7f316e9a5c5cdbf0d85a8507dc552da99e1d3db80db26a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d35923ff-0867-9bb1-6a7c-ac2aa078113f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 300–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jensenTwo_zero_im_eq_zero (z : ℂ)
    (hz : XiJensenReconstruction.jensenSection 2 z = 0) : z.im = 0 := by
  rw [jensenTwo_source_decode, quarticCompanion_charpoly] at hz
  have hl : (leadingScalar 2 : ℂ) ≠ 0 :=
    Complex.ofReal_ne_zero.mpr (leadingScalar_ne_zero (by norm_num : 1 ≤ 2))
  have hq := (mul_eq_zero.mp hz).resolve_left hl
  simp only [Polynomial.eval₂_add, Polynomial.eval₂_sub, Polynomial.eval₂_pow,
    Polynomial.eval₂_mul, Polynomial.eval₂_C, Polynomial.eval₂_X] at hq
  change z^4 - (jensenTwoB : ℂ) * z^2 + (jensenTwoC : ℂ) = 0 at hq
  have hquad : (z^2)^2 - (jensenTwoB : ℂ) * (z^2) + (jensenTwoC : ℂ) = 0 := by
    convert hq using 1
    ring
  have hi := XiHermiteQuadratic.quadratic_root_real_of_nonneg jensenTwoB jensenTwoC
    jensenTwo_discriminant_pos.le (z^2) hquad
  by_contra hne
  have hzre : z.re = 0 := by
    simp only [pow_two, Complex.mul_im] at hi
    have hzprod : z.re * z.im = 0 := by linarith only [hi]
    exact (mul_eq_zero.mp hzprod).resolve_right hne
  have hr := congrArg Complex.re hquad
  simp only [pow_two, Complex.add_re, Complex.sub_re, Complex.mul_re,
    Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.zero_re, hzre, zero_mul, mul_zero, add_zero, sub_zero, zero_sub] at hr
  have hb := jensenTwoB_pos
  have hc := jensenTwoC_pos
  have ht := mul_nonneg hb.le (sq_nonneg z.im)
  nlinarith [sq_nonneg (z.im^2)]

end
end FormalResearch.RiemannHypothesis.XiJensenTrace
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiJensenTrace/Variant2746fe99f56c08d8c54e35b2a1b08d7936ba2b5308836cfa1ac2cd5db190f74a.lean#L300).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4935f02994a127edaf09098b0baacf523f1720a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

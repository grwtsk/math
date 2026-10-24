# alphaOf_re_eq_sum_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb48eb7d-e082-c576-f659-727dd2187082",
  "kind": "theorem",
  "lexical_name": "alphaOf_re_eq_sum_norm",
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
  "slug": "alphaof-re-eq-sum-norm--d4a233473dee4164fb2536af",
  "source": {
    "blob": "24651d3b4e3943f8a21e03ecc9b507c29f4f3c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 130,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a233473dee4164fb2536af1fa47548eb7f893aeab9e7087a39cb4855564ab5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb48eb7d-e082-c576-f659-727dd2187082`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem alphaOf_re_eq_sum_norm (h : IsAdmissible lam eta)
    (hZ : IsConjInvariant Z m) {phi : L2Interval lam}
    (hsym : IsSymmetricL2 phi) :
    (alphaOf eta lam Z m phi).re
      = (∑ x ∈ simpleRealPart Z m ∪ multipleRealPart Z m,
          (m x : ℝ) * ‖inner ℂ phi (fzL2 h x)‖ ^ 2)
        + ∑ z ∈ nonRealPart Z, (m z : ℝ) *
            (‖inner ℂ phi (gzL2 h z)‖ ^ 2 - ‖inner ℂ phi (hzL2 h z)‖ ^ 2) := by
  classical
  rw [alphaOf_eq h hZ, Complex.add_re, Complex.re_sum, Complex.re_sum]
  congr 1
  · refine Finset.sum_congr rfl fun x hx => ?_
    have hxre : x.im = 0 := by
      rcases Finset.mem_union.mp hx with hx' | hx'
      · exact ((Finset.mem_filter.mp hx').2).1
      · exact ((Finset.mem_filter.mp hx').2).1
    rw [integral_mul_conj_eq_inner_of_ae (coeFn_fzL2 h x)]
    refine natCast_mul_sq_re ?_ _
    exact inner_symmetricL2_im_eq_zero hsym (fzL2_mem_symmetricSubspace h hxre)
  · refine Finset.sum_congr rfl fun z _ => ?_
    have hgim : (inner ℂ phi (gzL2 h z) : ℂ).im = 0 :=
      inner_symmetricL2_im_eq_zero hsym (gzL2_mem_symmetricSubspace h z)
    have hhim : (inner ℂ phi (hzL2 h z) : ℂ).im = 0 :=
      inner_symmetricL2_im_eq_zero hsym (hzL2_mem_symmetricSubspace h z)
    rw [integral_mul_conj_eq_inner_of_ae (coeFn_gzL2 h z),
      integral_mul_conj_eq_inner_of_ae (coeFn_hzL2 h z)]
    rw [Complex.sq_norm, Complex.sq_norm, Complex.normSq_apply, Complex.normSq_apply]
    simp only [Complex.mul_re, Complex.sub_re, Complex.sub_im, Complex.mul_im, sq,
      Complex.natCast_re, Complex.natCast_im, hgim, hhim]
    ring

/-- **First range: lower bound for the coefficient sum.** Summed over `j < dim U`, the real parts
of the Bessel coefficients against a symmetric adapted basis are at least `2|R₂| + |S|`. -/
@[zz_tag "lem_alpha_first_lower"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variant34f69d5f3a2884c9e9d973cf79d9b0799b567b41c43b7c96221c0e024940c263.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24651d3b4e3943f8a21e03ecc9b507c29f4f3c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

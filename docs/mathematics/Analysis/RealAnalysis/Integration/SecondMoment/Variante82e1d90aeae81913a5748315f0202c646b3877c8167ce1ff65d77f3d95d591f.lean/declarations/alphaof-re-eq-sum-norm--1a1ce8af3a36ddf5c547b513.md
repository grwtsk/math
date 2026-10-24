# alphaOf_re_eq_sum_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:341c6029-9f87-b755-6e50-a69e7555a1cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0303c3e-fc79-f1ec-809a-2d6b10523621",
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
  "slug": "alphaof-re-eq-sum-norm--1a1ce8af3a36ddf5c547b513",
  "source": {
    "blob": "1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a1ce8af3a36ddf5c547b513f9a2b472495d23985f211f12dd9a42fdd9f45158",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0303c3e-fc79-f1ec-809a-2d6b10523621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–155.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SecondMoment/Variante82e1d90aeae81913a5748315f0202c646b3877c8167ce1ff65d77f3d95d591f.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f21bf64d4a2dd90dc4b974e4073ee4d8e1c7e0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

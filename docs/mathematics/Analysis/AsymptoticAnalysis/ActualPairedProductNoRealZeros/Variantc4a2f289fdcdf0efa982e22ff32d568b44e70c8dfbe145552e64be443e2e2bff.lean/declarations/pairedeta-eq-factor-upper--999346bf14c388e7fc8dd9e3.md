# pairedEta_eq_factor_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "20524e95786b7a57d28806272d7dfa253f85ec3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 256,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4ed8544-fa06-d1b7-65a9-6d37200fb9fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d541fc90-77b8-d8e0-5a2c-18058d4bc628",
  "kind": "theorem",
  "lexical_name": "pairedEta_eq_factor_upper",
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
  "slug": "pairedeta-eq-factor-upper--999346bf14c388e7fc8dd9e3",
  "source": {
    "blob": "20524e95786b7a57d28806272d7dfa253f85ec3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 296,
    "line": 256,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:999346bf14c388e7fc8dd9e30ecbadbe9a56856955bacdd4539dfca5cb9f971c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d541fc90-77b8-d8e0-5a2c-18058d4bc628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–296.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem pairedEta_eq_factor_upper :
    EqOn pairedEta etaZetaFactor
      ({s : ℂ | 0 < s.re} ∩ {s : ℂ | 0 < s.im}) := by
  let U : Set ℂ :=
    {s : ℂ | 0 < s.re} ∩ {s : ℂ | 0 < s.im}
  have hUopen : IsOpen U :=
    (isOpen_lt continuous_const continuous_re).inter
      (isOpen_lt continuous_const continuous_im)
  have hUconn : IsPreconnected U :=
    ((convex_halfSpace_re_gt 0).inter
      (convex_halfSpace_im_gt 0)).isPreconnected
  have hetaDiff : DifferentiableOn ℂ pairedEta U :=
    differentiableOn_pairedEta.mono inter_subset_left
  have hfactorDiff : DifferentiableOn ℂ etaZetaFactor U := by
    intro s hs
    have hs1 : s ≠ 1 := by
      intro h
      subst s
      norm_num at hs
    have hpow :
        DifferentiableAt ℂ (fun w : ℂ => (2 : ℂ) ^ (-w)) s :=
      ((hasDerivAt_neg' s).const_cpow
        (Or.inl (by norm_num))).differentiableAt
    have hfac :
        DifferentiableAt ℂ
          (fun w : ℂ => 1 - 2 * (2 : ℂ) ^ (-w)) s :=
      (differentiableAt_const (c := (1 : ℂ))).sub
        ((differentiableAt_const (c := (2 : ℂ))).mul hpow)
    exact (hfac.mul
      (differentiableAt_riemannZeta hs1)).differentiableWithinAt
  have hz0 : (2 + I : ℂ) ∈ U := by
    constructor <;> norm_num
  have hnear : pairedEta =ᶠ[𝓝 (2 + I : ℂ)] etaZetaFactor := by
    filter_upwards [
      (isOpen_lt continuous_const continuous_re).mem_nhds
        (by norm_num : (1 : ℝ) < (2 + I : ℂ).re)] with s hs
    exact pairedEta_eq_factor_of_one_lt_re hs
  change EqOn pairedEta etaZetaFactor U
  exact (hetaDiff.analyticOnNhd hUopen).eqOn_of_preconnected_of_eventuallyEq
    (hfactorDiff.analyticOnNhd hUopen) hUconn hz0 hnear

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ActualPairedProductNoRealZeros/Variantc4a2f289fdcdf0efa982e22ff32d568b44e70c8dfbe145552e64be443e2e2bff.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20524e95786b7a57d28806272d7dfa253f85ec3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# reciprocal_square_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b4075fbfaa968641a726275a4ca4d9d3ff65d74",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f8dd090-7bdd-ed6e-5c8f-a3916fb8f8d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b31acd65-94d2-161f-3ef6-a6df9a836f74",
  "kind": "theorem",
  "lexical_name": "reciprocal_square_integrable",
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
  "slug": "reciprocal-square-integrable--d317c580bf734bba60c479d9",
  "source": {
    "blob": "1b4075fbfaa968641a726275a4ca4d9d3ff65d74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d317c580bf734bba60c479d923375d97d7b2dc351ff7cc2ec825a347f0dfe7ae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b31acd65-94d2-161f-3ef6-a6df9a836f74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocal_square_integrable (c : ℝ) (hc : 0 < c) :
    Integrable (fun t : ℝ => 1 / ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) := by
  refine (integrable_norm_iff (show AEStronglyMeasurable
    (fun t : ℝ => 1 / ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) volume from
      (show Measurable _ from by fun_prop).aestronglyMeasurable)).mp ?_
  have h := (integrable_inv_one_add_sq.comp_mul_right' (inv_ne_zero hc.ne')).const_mul (c ^ 2)⁻¹
  refine h.congr (Filter.Eventually.of_forall (fun t => ?_))
  simp only [norm_div, norm_one, norm_pow, Complex.sq_norm, Complex.normSq_apply,
    Complex.add_re, Complex.add_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im, mul_zero,
    zero_add, add_zero, mul_one, sub_zero]
  field_simp

/-- The Fourier transform is itself genuinely integrable, as required by inversion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPerronCombined/Variant1e6ffdd4bb05b1476a430c0a8f8ef7da9087b1080746738230f184bfe78adfb1.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4075fbfaa968641a726275a4ca4d9d3ff65d74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

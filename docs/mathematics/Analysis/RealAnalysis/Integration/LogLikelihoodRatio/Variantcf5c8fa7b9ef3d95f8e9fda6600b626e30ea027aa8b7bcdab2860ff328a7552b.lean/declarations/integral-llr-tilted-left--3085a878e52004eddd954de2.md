# integral_llr_tilted_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8059a462929f9cf7b5daa80f6b5fe657a1027ef5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ec3d498d-1c2b-54ba-7c02-06d9a24e6ec9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b407ed4d-daf3-eb0f-f9d2-5c3942bf2a2f",
  "kind": "lemma",
  "lexical_name": "integral_llr_tilted_left",
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
  "slug": "integral-llr-tilted-left--3085a878e52004eddd954de2",
  "source": {
    "blob": "8059a462929f9cf7b5daa80f6b5fe657a1027ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3085a878e52004eddd954de26fb4a8b434ba6537297d2d230c07b9e3d5af6b64",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b407ed4d-daf3-eb0f-f9d2-5c3942bf2a2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_llr_tilted_left [IsProbabilityMeasure μ] [SigmaFinite ν]
    (hμν : μ ≪ ν) (hf : Integrable f μ) (h_int : Integrable (llr μ ν) μ)
    (hfμ : Integrable (fun x ↦ exp (f x)) μ) (hfν : AEMeasurable f ν) :
    ∫ x, llr (μ.tilted f) ν x ∂μ = ∫ x, llr μ ν x ∂μ + ∫ x, f x ∂μ - log (∫ x, exp (f x) ∂μ) := by
  calc ∫ x, llr (μ.tilted f) ν x ∂μ
    = ∫ x, f x - log (∫ x, exp (f x) ∂μ) + llr μ ν x ∂μ :=
        integral_congr_ae (llr_tilted_left hμν hfμ hfν)
  _ = ∫ x, f x ∂μ - log (∫ x, exp (f x) ∂μ) + ∫ x, llr μ ν x ∂μ := by
        rw [integral_add ?_ h_int]
        swap; · exact hf.sub (integrable_const _)
        rw [integral_sub hf (integrable_const _)]
        simp only [integral_const, measureReal_univ_eq_one, smul_eq_mul, one_mul]
  _ = ∫ x, llr μ ν x ∂μ + ∫ x, f x ∂μ - log (∫ x, exp (f x) ∂μ) := by abel

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogLikelihoodRatio/Variantcf5c8fa7b9ef3d95f8e9fda6600b626e30ea027aa8b7bcdab2860ff328a7552b.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8059a462929f9cf7b5daa80f6b5fe657a1027ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

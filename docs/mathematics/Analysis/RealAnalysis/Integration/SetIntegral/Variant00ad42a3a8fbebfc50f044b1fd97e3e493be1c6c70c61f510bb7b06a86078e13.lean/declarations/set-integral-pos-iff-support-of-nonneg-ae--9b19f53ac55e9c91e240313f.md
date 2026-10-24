# set_integral_pos_iff_support_of_nonneg_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e93145a449b40beaf8f7f308cd682cf4c5ffae23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 560,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78562fa9-8b1a-8d4b-555d-0bfd457226da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:481d1b73-6914-de7b-3c40-32a906f65e5c",
  "kind": "theorem",
  "lexical_name": "set_integral_pos_iff_support_of_nonneg_ae",
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
  "slug": "set-integral-pos-iff-support-of-nonneg-ae--9b19f53ac55e9c91e240313f",
  "source": {
    "blob": "e93145a449b40beaf8f7f308cd682cf4c5ffae23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 560,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b19f53ac55e9c91e240313f01aa4e1459caa9cbbbc628ed452a24aa14c0045e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:481d1b73-6914-de7b-3c40-32a906f65e5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_integral_pos_iff_support_of_nonneg_ae {f : α → ℝ} (hf : 0 ≤ᵐ[μ.restrict s] f)
    (hfi : IntegrableOn f s μ) : (0 < ∫ x in s, f x ∂μ) ↔ 0 < μ (support f ∩ s) := by
  rw [integral_pos_iff_support_of_nonneg_ae hf hfi, Measure.restrict_apply₀]
  rw [support_eq_preimage]
  exact hfi.aestronglyMeasurable.aemeasurable.nullMeasurable (measurableSet_singleton 0).compl
#align measure_theory.set_integral_pos_iff_support_of_nonneg_ae MeasureTheory.set_integral_pos_iff_support_of_nonneg_ae

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variant00ad42a3a8fbebfc50f044b1fd97e3e493be1c6c70c61f510bb7b06a86078e13.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e93145a449b40beaf8f7f308cd682cf4c5ffae23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

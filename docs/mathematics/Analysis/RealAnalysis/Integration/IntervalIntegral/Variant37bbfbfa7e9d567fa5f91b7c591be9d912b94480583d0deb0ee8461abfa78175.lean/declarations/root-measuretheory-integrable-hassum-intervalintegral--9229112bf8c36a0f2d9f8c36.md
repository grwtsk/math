# _root_.MeasureTheory.Integrable.hasSum_intervalIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "695a9112542db70e1ac3085b50b76d4586b6e358",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1427,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:660ef67d-9710-abc8-c90f-122883c6d2f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e080745f-8cbe-c616-7418-602b7e4bdc0c",
  "kind": "theorem",
  "lexical_name": "_root_.MeasureTheory.Integrable.hasSum_intervalIntegral",
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
  "slug": "root-measuretheory-integrable-hassum-intervalintegral--9229112bf8c36a0f2d9f8c36",
  "source": {
    "blob": "695a9112542db70e1ac3085b50b76d4586b6e358",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1435,
    "line": 1427,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9229112bf8c36a0f2d9f8c36fb819969cb2f6a359d1d48768913032a5a77b4a7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e080745f-8cbe-c616-7418-602b7e4bdc0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1427–1435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MeasureTheory.Integrable.hasSum_intervalIntegral (hfi : Integrable f μ) (y : ℝ) :
    HasSum (fun n : ℤ => ∫ x in y + n..y + n + 1, f x ∂μ) (∫ x, f x ∂μ) := by
  simp_rw [integral_of_le (le_add_of_nonneg_right zero_le_one)]
  rw [← integral_univ, ← iUnion_Ioc_add_int_cast y]
  exact
    hasSum_integral_iUnion (fun i => measurableSet_Ioc) (pairwise_disjoint_Ioc_add_int_cast y)
      hfi.integrableOn
#align measure_theory.integrable.has_sum_interval_integral MeasureTheory.Integrable.hasSum_intervalIntegral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntervalIntegral/Variant37bbfbfa7e9d567fa5f91b7c591be9d912b94480583d0deb0ee8461abfa78175.lean#L1427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `695a9112542db70e1ac3085b50b76d4586b6e358` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

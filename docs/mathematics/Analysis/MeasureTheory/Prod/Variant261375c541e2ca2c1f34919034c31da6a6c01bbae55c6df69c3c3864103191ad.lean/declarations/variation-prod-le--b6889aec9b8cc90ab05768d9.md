# variation_prod_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a11edce1155ee73b04ed856f70353e9c9c7b81f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/26/261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2b1c5b94-1969-c694-4b85-2ad25da6c10b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5deb008-78c1-5036-0809-39fde2c94387",
  "kind": "lemma",
  "lexical_name": "variation_prod_le",
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
  "slug": "variation-prod-le--b6889aec9b8cc90ab05768d9",
  "source": {
    "blob": "9a11edce1155ee73b04ed856f70353e9c9c7b81f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 195,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6889aec9b8cc90ab05768d9dafadd4fc9fc6544743ac85c97d8b08db734ba20",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5deb008-78c1-5036-0809-39fde2c94387`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma variation_prod_le [CompleteSpace G] [IsFiniteMeasure μ.variation] [SFinite ν.variation] :
    (μ.prod ν B).variation ≤ ‖B‖ₑ • μ.variation.prod ν.variation := by
  apply variation_le_of_forall_enorm_le (fun s hs ↦ ?_)
  rw [prod_apply_eq_integral hs]
  simp only [Measure.smul_apply, smul_eq_mul, Measure.prod_apply hs]
  grw [enorm_integral_le_lintegral_enorm, ContinuousLinearMap.opENorm_flip,
    enorm_measure_le_variation]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variant261375c541e2ca2c1f34919034c31da6a6c01bbae55c6df69c3c3864103191ad.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a11edce1155ee73b04ed856f70353e9c9c7b81f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

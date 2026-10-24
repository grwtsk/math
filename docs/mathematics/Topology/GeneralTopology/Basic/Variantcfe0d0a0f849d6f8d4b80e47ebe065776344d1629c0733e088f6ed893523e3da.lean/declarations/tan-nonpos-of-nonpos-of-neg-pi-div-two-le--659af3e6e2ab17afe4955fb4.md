# tan_nonpos_of_nonpos_of_neg_pi_div_two_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a5eff052333541ad7bcf8a1e19037cac3d154ae6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 882,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d1cfe198-eda3-11df-d55c-4ae464644637",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04282208-f7c3-728f-66c7-80747c1b7c4d",
  "kind": "theorem",
  "lexical_name": "tan_nonpos_of_nonpos_of_neg_pi_div_two_le",
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
  "slug": "tan-nonpos-of-nonpos-of-neg-pi-div-two-le--659af3e6e2ab17afe4955fb4",
  "source": {
    "blob": "a5eff052333541ad7bcf8a1e19037cac3d154ae6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 885,
    "line": 882,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:659af3e6e2ab17afe4955fb48f38cea63410ff7d6ea4cec9be25fd901134f390",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04282208-f7c3-728f-66c7-80747c1b7c4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 882–885.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tan_nonpos_of_nonpos_of_neg_pi_div_two_le {x : ℝ} (hx0 : x ≤ 0) (hpx : -(π / 2) ≤ x) :
    tan x ≤ 0 :=
  neg_nonneg.1 (tan_neg x ▸ tan_nonneg_of_nonneg_of_le_pi_div_two (by linarith) (by linarith))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantcfe0d0a0f849d6f8d4b80e47ebe065776344d1629c0733e088f6ed893523e3da.lean#L882).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5eff052333541ad7bcf8a1e19037cac3d154ae6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

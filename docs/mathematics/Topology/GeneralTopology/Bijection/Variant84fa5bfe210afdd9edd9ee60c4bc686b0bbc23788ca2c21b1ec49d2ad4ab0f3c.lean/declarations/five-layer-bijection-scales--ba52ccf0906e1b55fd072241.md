# five_layer_bijection_scales

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c5f43204e5e0175b3a410f9b88f372e5288be6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e8991d9a-dab5-050e-7ea8-bb2e368be05e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b25c3101-74aa-e513-3caa-d1534a33b859",
  "kind": "theorem",
  "lexical_name": "five_layer_bijection_scales",
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
  "slug": "five-layer-bijection-scales--ba52ccf0906e1b55fd072241",
  "source": {
    "blob": "7c5f43204e5e0175b3a410f9b88f372e5288be6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 23,
    "path": "GRWTSK/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba52ccf0906e1b55fd072241ee52d3f34f004191d83915064930d258ea322b1c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b25c3101-74aa-e513-3caa-d1534a33b859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem five_layer_bijection_scales
    (cert : Think.Logic.ThinkFiveLayerCertificate) :
    ∀ n : Nat, ScaledFiveLayerBijection cert n :=
by
  exact atScale_of_base (Think.Logic.ThinkFiveLayerCertificate.sound cert)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bijection/Variant84fa5bfe210afdd9edd9ee60c4bc686b0bbc23788ca2c21b1ec49d2ad4ab0f3c.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c5f43204e5e0175b3a410f9b88f372e5288be6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

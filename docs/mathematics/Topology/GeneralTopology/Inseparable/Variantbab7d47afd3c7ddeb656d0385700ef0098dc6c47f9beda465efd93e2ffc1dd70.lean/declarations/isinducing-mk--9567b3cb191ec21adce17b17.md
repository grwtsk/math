# isInducing_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2964dc3b8ece309f0f62f7e1b56141b8900e11d1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 611,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/bab7d47afd3c7ddeb656d0385700ef0098dc6c47f9beda465efd93e2ffc1dd70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c14b3de7-b53e-ed13-61c8-4e61298fdc83",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c00ef32-3b1c-0c59-b23f-f144fd2a1f7e",
  "kind": "theorem",
  "lexical_name": "isInducing_mk",
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
  "slug": "isinducing-mk--9567b3cb191ec21adce17b17",
  "source": {
    "blob": "2964dc3b8ece309f0f62f7e1b56141b8900e11d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 611,
    "path": "GRWTSK/Topology/GeneralTopology/Inseparable/Variantbab7d47afd3c7ddeb656d0385700ef0098dc6c47f9beda465efd93e2ffc1dd70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9567b3cb191ec21adce17b176f51dc2df6c741def0fb4554d83e3e0cd9e3e4b1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Inseparable/Variantbab7d47afd3c7ddeb656d0385700ef0098dc6c47f9beda465efd93e2ffc1dd70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c00ef32-3b1c-0c59-b23f-f144fd2a1f7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 611–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isInducing_mk : IsInducing (mk : X → SeparationQuotient X) :=
  ⟨le_antisymm (continuous_iff_le_induced.1 continuous_mk) fun s hs =>
      ⟨mk '' s, isOpenMap_mk s hs, preimage_image_mk_open hs⟩⟩

@[deprecated (since := "2024-10-28")] alias inducing_mk := isInducing_mk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Inseparable/Variantbab7d47afd3c7ddeb656d0385700ef0098dc6c47f9beda465efd93e2ffc1dd70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Inseparable/Variantbab7d47afd3c7ddeb656d0385700ef0098dc6c47f9beda465efd93e2ffc1dd70.lean#L611).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2964dc3b8ece309f0f62f7e1b56141b8900e11d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

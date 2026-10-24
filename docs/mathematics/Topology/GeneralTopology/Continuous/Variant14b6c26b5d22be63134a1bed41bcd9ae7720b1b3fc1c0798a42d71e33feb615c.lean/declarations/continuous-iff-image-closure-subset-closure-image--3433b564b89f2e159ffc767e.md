# continuous_iff_image_closure_subset_closure_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "620526f00d25f19d30d07ba5cad2b7a3370ba6bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c79484af-7355-f88d-c24c-d715fecba8bf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af16078c-e409-934e-53a8-f69e211a2a83",
  "kind": "theorem",
  "lexical_name": "continuous_iff_image_closure_subset_closure_image",
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
  "slug": "continuous-iff-image-closure-subset-closure-image--3433b564b89f2e159ffc767e",
  "source": {
    "blob": "620526f00d25f19d30d07ba5cad2b7a3370ba6bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 231,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3433b564b89f2e159ffc767ee1cf8d16d0e8763d2bd42db602a16de031d6b0ab",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af16078c-e409-934e-53a8-f69e211a2a83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_iff_image_closure_subset_closure_image :
    Continuous f ↔ ∀ s, f '' closure s ⊆ closure (f '' s) where
  mp h s := image_closure_subset_closure_image h
  mpr h := continuous_iff_isClosed.mpr fun s hs ↦ isClosed_of_closure_subset <| by
    grw [image_subset_iff.mp <| h <| f ⁻¹' s, image_preimage_subset, hs.closure_subset]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant14b6c26b5d22be63134a1bed41bcd9ae7720b1b3fc1c0798a42d71e33feb615c.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `620526f00d25f19d30d07ba5cad2b7a3370ba6bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

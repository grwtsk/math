# sdiv_le_sdiv_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4606c09dc8cb8ebe3f8fae988111847aac8890a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 965,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ae5dd3c-a3da-d4f9-dd73-c5003102115a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca0122fb-b1a3-5e53-e399-078ec7db41dc",
  "kind": "theorem",
  "lexical_name": "sdiv_le_sdiv_left",
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
  "slug": "sdiv-le-sdiv-left--f6b1d6cbb93be901e216c0ed",
  "source": {
    "blob": "f4606c09dc8cb8ebe3f8fae988111847aac8890a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 968,
    "line": 965,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variantfd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6b1d6cbb93be901e216c0ed3e9aadc0af89e8fb6078d2bc374231a32dca401e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variantfd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca0122fb-b1a3-5e53-e399-078ec7db41dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 965–968.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sdiv_le_sdiv_left : g₁ ≤ g₂ → f /ₛ g₁ ≤ f /ₛ g₂ :=
  map₂_mono_left

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variantfd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variantfd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean#L965).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4606c09dc8cb8ebe3f8fae988111847aac8890a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

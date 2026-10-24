# IsClosed.not_normal_of_continuum_le_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8d39ada852153639c6c140c139bd454ed32f6e1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16b565674e5824aae801c7b4f8f022be293d80d358e9660ef0f5d600c0151df0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b68e0f75-0321-751e-868e-59645f91f127",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d694541-e784-0875-8035-ab185691708d",
  "kind": "theorem",
  "lexical_name": "IsClosed.not_normal_of_continuum_le_mk",
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
  "slug": "isclosed-not-normal-of-continuum-le-mk--218c78605ff1a84c6b5cdb6b",
  "source": {
    "blob": "e8d39ada852153639c6c140c139bd454ed32f6e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 56,
    "path": "GRWTSK/Topology/GeneralTopology/NotNormal/Variant16b565674e5824aae801c7b4f8f022be293d80d358e9660ef0f5d600c0151df0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:218c78605ff1a84c6b5cdb6bf13190bb55637138e847914955e01a35eafafb83",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NotNormal/Variant16b565674e5824aae801c7b4f8f022be293d80d358e9660ef0f5d600c0151df0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d694541-e784-0875-8035-ab185691708d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosed.not_normal_of_continuum_le_mk {s : Set X} (hs : IsClosed s) [DiscreteTopology s]
    (hmk : 𝔠 ≤ #s) : ¬NormalSpace X := fun _ ↦ hs.mk_lt_continuum.not_le hmk
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NotNormal/Variant16b565674e5824aae801c7b4f8f022be293d80d358e9660ef0f5d600c0151df0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NotNormal/Variant16b565674e5824aae801c7b4f8f022be293d80d358e9660ef0f5d600c0151df0.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8d39ada852153639c6c140c139bd454ed32f6e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

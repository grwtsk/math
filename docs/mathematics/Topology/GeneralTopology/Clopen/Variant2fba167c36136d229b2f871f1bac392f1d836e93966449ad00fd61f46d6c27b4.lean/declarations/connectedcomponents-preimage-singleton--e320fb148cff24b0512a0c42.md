# connectedComponents_preimage_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21ef24a75a090fef63c3765c810cde46f3257256",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 663,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2fba167c36136d229b2f871f1bac392f1d836e93966449ad00fd61f46d6c27b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27a69fed-f209-129b-efde-facf4a1afd79",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6c2767e-36a1-6dce-d39e-7cda00c03a6c",
  "kind": "theorem",
  "lexical_name": "connectedComponents_preimage_singleton",
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
  "slug": "connectedcomponents-preimage-singleton--e320fb148cff24b0512a0c42",
  "source": {
    "blob": "21ef24a75a090fef63c3765c810cde46f3257256",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 663,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant2fba167c36136d229b2f871f1bac392f1d836e93966449ad00fd61f46d6c27b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e320fb148cff24b0512a0c42723531fcf1fc5f387f5b5ac768f25be0dd97f903",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Variant2fba167c36136d229b2f871f1bac392f1d836e93966449ad00fd61f46d6c27b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6c2767e-36a1-6dce-d39e-7cda00c03a6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem connectedComponents_preimage_singleton {x : α} :
    (↑) ⁻¹' ({↑x} : Set (ConnectedComponents α)) = connectedComponent x := by
  ext y
  rw [mem_preimage, mem_singleton_iff, ConnectedComponents.coe_eq_coe']

/-- The preimage of the image of a set under the quotient map to `connectedComponents α`
is the union of the connected components of the elements in it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Clopen/Variant2fba167c36136d229b2f871f1bac392f1d836e93966449ad00fd61f46d6c27b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Variant2fba167c36136d229b2f871f1bac392f1d836e93966449ad00fd61f46d6c27b4.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21ef24a75a090fef63c3765c810cde46f3257256` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

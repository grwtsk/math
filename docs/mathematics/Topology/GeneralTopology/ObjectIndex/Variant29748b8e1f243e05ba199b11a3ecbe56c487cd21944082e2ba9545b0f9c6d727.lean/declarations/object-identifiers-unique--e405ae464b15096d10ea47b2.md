# object_identifiers_unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a9b29c772ed759579e887847b595898019d3eeb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a26107ab-35b3-c872-bfd7-078cc8ba41b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef8d4f53-2eec-f9e1-03d2-ac201bf3b846",
  "kind": "theorem",
  "lexical_name": "object_identifiers_unique",
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
  "slug": "object-identifiers-unique--e405ae464b15096d10ea47b2",
  "source": {
    "blob": "2a9b29c772ed759579e887847b595898019d3eeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 233,
    "path": "GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e405ae464b15096d10ea47b24682517dce2e8ae0586a33131269435e2a2dd97b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef8d4f53-2eec-f9e1-03d2-ac201bf3b846`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem object_identifiers_unique
    (index : CanonicalMathematicalIndex)
    {left right : MathematicalObjectRecord}
    (hleft : left ∈ index.objects.entries)
    (hright : right ∈ index.objects.entries)
    (hidentity : left.identity = right.identity) :
    left = right := by
  apply index.objects.keys_unique hleft hright
  rw [index.objectKey left, index.objectKey right, hidentity]

/-- IDX-02: declaration stable keys are unique. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant29748b8e1f243e05ba199b11a3ecbe56c487cd21944082e2ba9545b0f9c6d727.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9b29c772ed759579e887847b595898019d3eeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

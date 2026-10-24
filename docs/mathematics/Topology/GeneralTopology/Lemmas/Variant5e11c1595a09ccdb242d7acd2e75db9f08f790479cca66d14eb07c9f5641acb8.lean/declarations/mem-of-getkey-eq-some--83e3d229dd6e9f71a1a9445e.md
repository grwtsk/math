# mem_of_getKey?_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c735d0d564c6e876eeae404425ddc6b08603148b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 424,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e11c1595a09ccdb242d7acd2e75db9f08f790479cca66d14eb07c9f5641acb8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c2bcbf4-6cb1-bdcd-e63d-58f3a92542dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ec0e877-0184-c963-a06d-e76bdd8aec8d",
  "kind": "theorem",
  "lexical_name": "mem_of_getKey?_eq_some",
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
  "slug": "mem-of-getkey-eq-some--83e3d229dd6e9f71a1a9445e",
  "source": {
    "blob": "c735d0d564c6e876eeae404425ddc6b08603148b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 424,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant5e11c1595a09ccdb242d7acd2e75db9f08f790479cca66d14eb07c9f5641acb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83e3d229dd6e9f71a1a9445eb6edd7a6eeddc1badf80a6c96bb385403a81e6d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variant5e11c1595a09ccdb242d7acd2e75db9f08f790479cca66d14eb07c9f5641acb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ec0e877-0184-c963-a06d-e76bdd8aec8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_of_getKey?_eq_some [EquivBEq α] [LawfulHashable α] {k k' : α}
    (h : m.getKey? k = some k') : k' ∈ m :=
  ExtDHashMap.mem_of_getKey?_eq_some h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variant5e11c1595a09ccdb242d7acd2e75db9f08f790479cca66d14eb07c9f5641acb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variant5e11c1595a09ccdb242d7acd2e75db9f08f790479cca66d14eb07c9f5641acb8.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c735d0d564c6e876eeae404425ddc6b08603148b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

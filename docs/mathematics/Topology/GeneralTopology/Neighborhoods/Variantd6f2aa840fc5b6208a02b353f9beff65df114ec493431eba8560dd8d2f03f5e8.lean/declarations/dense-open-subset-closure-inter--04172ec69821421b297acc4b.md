# Dense.open_subset_closure_inter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1786220817deb3a9d38e9f59e93bd22fafd0dd34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 306,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ef6de71-e52f-2574-432d-5608ba345920",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6cd3b5ab-8fc6-9ee2-7fd4-eb9519955daa",
  "kind": "theorem",
  "lexical_name": "Dense.open_subset_closure_inter",
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
  "slug": "dense-open-subset-closure-inter--04172ec69821421b297acc4b",
  "source": {
    "blob": "1786220817deb3a9d38e9f59e93bd22fafd0dd34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 306,
    "path": "GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04172ec69821421b297acc4b634d2900aa7605fa91b24c59f8a48e6d152cc9bb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cd3b5ab-8fc6-9ee2-7fd4-eb9519955daa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Dense.open_subset_closure_inter (hs : Dense s) (ht : IsOpen t) :
    t ⊆ closure (t ∩ s) :=
  calc
    t = t ∩ closure s := by rw [hs.closure_eq, inter_univ]
    _ ⊆ closure (t ∩ s) := ht.inter_closure

/-- The intersection of an open dense set with a dense set is a dense set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Neighborhoods/Variantd6f2aa840fc5b6208a02b353f9beff65df114ec493431eba8560dd8d2f03f5e8.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1786220817deb3a9d38e9f59e93bd22fafd0dd34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

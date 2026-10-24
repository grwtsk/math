# IsCompact.closure_subset_of_isOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d39660bfd78f367e80c7ee07b36871de306e3f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1019,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f29bbadc-6bf2-2ec6-9311-b6f4f2ed66c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7698468b-a29f-bedd-cbcd-9d02ed0b939d",
  "kind": "theorem",
  "lexical_name": "IsCompact.closure_subset_of_isOpen",
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
  "slug": "iscompact-closure-subset-of-isopen--18e06be1f204488e239cee03",
  "source": {
    "blob": "2d39660bfd78f367e80c7ee07b36871de306e3f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1024,
    "line": 1019,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18e06be1f204488e239cee033bc31d41fbd21487ba913cac0b649c7411aa0c52",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7698468b-a29f-bedd-cbcd-9d02ed0b939d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1019–1024.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.closure_subset_of_isOpen {K : Set X} (hK : IsCompact K)
    {U : Set X} (hU : IsOpen U) (hKU : K ⊆ U) : closure K ⊆ U := by
  rw [hK.closure_eq_biUnion_inseparable, iUnion₂_subset_iff]
  exact fun x hx y hxy ↦ (hxy.mem_open_iff hU).1 (hKU hx)

/-- The closure of a compact set in an R₁ space is a compact set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant96c74f410b14c3adecc1cb06d90d9d7a61bbb1529c18000426687bee99ba6991.lean#L1019).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d39660bfd78f367e80c7ee07b36871de306e3f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

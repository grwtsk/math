# exists_subset_nhds_of_isCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db890c314bfdd993d67e09337afaa7a100c360a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 603,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a59f3685d73262c35ef49e1830e8b82e156ec35a46e8de2620671509ff973adb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:152cefe4-f67b-5694-bd4c-3b1c0d03735e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2a9106e-92c1-0084-3b8f-d1740d85b053",
  "kind": "theorem",
  "lexical_name": "exists_subset_nhds_of_isCompact",
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
  "slug": "exists-subset-nhds-of-iscompact--c9c7e404cedc02489ddaf3b2",
  "source": {
    "blob": "db890c314bfdd993d67e09337afaa7a100c360a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 607,
    "line": 603,
    "path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Varianta59f3685d73262c35ef49e1830e8b82e156ec35a46e8de2620671509ff973adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9c7e404cedc02489ddaf3b20041e8735c7a6460776e585f052d87811792daba",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hausdorff/Varianta59f3685d73262c35ef49e1830e8b82e156ec35a46e8de2620671509ff973adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2a9106e-92c1-0084-3b8f-d1740d85b053`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–607.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_subset_nhds_of_isCompact [T2Space X] {ι : Type*} [Nonempty ι] {V : ι → Set X}
    (hV : Directed (· ⊇ ·) V) (hV_cpct : ∀ i, IsCompact (V i)) {U : Set X}
    (hU : ∀ x ∈ ⋂ i, V i, U ∈ 𝓝 x) : ∃ i, V i ⊆ U :=
  exists_subset_nhds_of_isCompact' hV hV_cpct (fun i => (hV_cpct i).isClosed) hU

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hausdorff/Varianta59f3685d73262c35ef49e1830e8b82e156ec35a46e8de2620671509ff973adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hausdorff/Varianta59f3685d73262c35ef49e1830e8b82e156ec35a46e8de2620671509ff973adb.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db890c314bfdd993d67e09337afaa7a100c360a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

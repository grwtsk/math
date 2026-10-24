# IsCompact.isClosed

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
      "line": 577,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a59f3685d73262c35ef49e1830e8b82e156ec35a46e8de2620671509ff973adb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d19d227b-fd68-461c-7d0b-92a8d8028d6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0979a0c-0216-4eba-add4-6f8ade192f1a",
  "kind": "theorem",
  "lexical_name": "IsCompact.isClosed",
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
  "slug": "iscompact-isclosed--dc3b23f2d85f409701da4c07",
  "source": {
    "blob": "db890c314bfdd993d67e09337afaa7a100c360a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 582,
    "line": 577,
    "path": "GRWTSK/Topology/GeneralTopology/Hausdorff/Varianta59f3685d73262c35ef49e1830e8b82e156ec35a46e8de2620671509ff973adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc3b23f2d85f409701da4c07993a4fce0fc0d6a9d9356129fba3c1380ba73e6f",
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

Occurrence: `result:e0979a0c-0216-4eba-add4-6f8ade192f1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 577–582.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.isClosed [T2Space X] {s : Set X} (hs : IsCompact s) : IsClosed s :=
  isOpen_compl_iff.1 <| isOpen_iff_forall_mem_open.mpr fun x hx =>
    let ⟨u, v, _, vo, su, xv, uv⟩ :=
      SeparatedNhds.of_isCompact_isCompact hs isCompact_singleton (disjoint_singleton_right.2 hx)
    ⟨v, (uv.mono_left <| show s ≤ u from su).subset_compl_left, vo, by simpa using xv⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hausdorff/Varianta59f3685d73262c35ef49e1830e8b82e156ec35a46e8de2620671509ff973adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hausdorff/Varianta59f3685d73262c35ef49e1830e8b82e156ec35a46e8de2620671509ff973adb.lean#L577).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db890c314bfdd993d67e09337afaa7a100c360a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

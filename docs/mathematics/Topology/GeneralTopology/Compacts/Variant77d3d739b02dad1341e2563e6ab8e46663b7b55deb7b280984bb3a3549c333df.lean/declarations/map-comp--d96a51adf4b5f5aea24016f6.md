# map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "245f2d0d1631a2d8047fb1e98ccd31a42d74d502",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 589,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/77d3d739b02dad1341e2563e6ab8e46663b7b55deb7b280984bb3a3549c333df.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:de2d961c-9630-2e57-c37c-94b463671a4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7feb7220-72c5-7e92-fd93-65272a4a7896",
  "kind": "theorem",
  "lexical_name": "map_comp",
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
  "slug": "map-comp--d96a51adf4b5f5aea24016f6",
  "source": {
    "blob": "245f2d0d1631a2d8047fb1e98ccd31a42d74d502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 596,
    "line": 589,
    "path": "GRWTSK/Topology/GeneralTopology/Compacts/Variant77d3d739b02dad1341e2563e6ab8e46663b7b55deb7b280984bb3a3549c333df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d96a51adf4b5f5aea24016f6c886f536d5dc9813ffb5d6004fb195d2522d4c9f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Compacts/Variant77d3d739b02dad1341e2563e6ab8e46663b7b55deb7b280984bb3a3549c333df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7feb7220-72c5-7e92-fd93-65272a4a7896`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 589–596.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_comp (f : β → γ) (g : α → β) (hf : Continuous f) (hg : Continuous g) (hf' : IsOpenMap f)
    (hg' : IsOpenMap g) (K : CompactOpens α) :
    K.map (f ∘ g) (hf.comp hg) (hf'.comp hg') = (K.map g hg hg').map f hf hf' :=
  CompactOpens.ext <| Set.image_comp _ _ _
#align topological_space.compact_opens.map_comp TopologicalSpace.CompactOpens.map_comp

/-- The product of two `TopologicalSpace.CompactOpens`, as a `TopologicalSpace.CompactOpens` in the
product space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Compacts/Variant77d3d739b02dad1341e2563e6ab8e46663b7b55deb7b280984bb3a3549c333df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Compacts/Variant77d3d739b02dad1341e2563e6ab8e46663b7b55deb7b280984bb3a3549c333df.lean#L589).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `245f2d0d1631a2d8047fb1e98ccd31a42d74d502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

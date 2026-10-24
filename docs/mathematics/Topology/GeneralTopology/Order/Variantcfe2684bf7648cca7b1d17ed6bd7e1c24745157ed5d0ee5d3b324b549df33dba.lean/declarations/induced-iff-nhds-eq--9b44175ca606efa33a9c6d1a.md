# induced_iff_nhds_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "987652d85471476cee875bf94b5a36143a178e1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 860,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34fdc026-813d-03e4-1e06-8febf3c1e45b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:afb61e47-f141-0be0-0dd4-e97556fb0df7",
  "kind": "theorem",
  "lexical_name": "induced_iff_nhds_eq",
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
  "slug": "induced-iff-nhds-eq--9b44175ca606efa33a9c6d1a",
  "source": {
    "blob": "987652d85471476cee875bf94b5a36143a178e1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 865,
    "line": 860,
    "path": "GRWTSK/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b44175ca606efa33a9c6d1adb8db146c596fcfbd99150d6087fd728080f7093",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afb61e47-f141-0be0-0dd4-e97556fb0df7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 860–865.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induced_iff_nhds_eq [tα : TopologicalSpace α] [tβ : TopologicalSpace β] (f : β → α) :
    tβ = tα.induced f ↔ ∀ b, 𝓝 b = comap f (𝓝 <| f b) :=
  ⟨fun h a => h.symm ▸ nhds_induced f a, fun h =>
    eq_of_nhds_eq_nhds fun x => by rw [h, nhds_induced]⟩
#align induced_iff_nhds_eq induced_iff_nhds_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Order/Variantcfe2684bf7648cca7b1d17ed6bd7e1c24745157ed5d0ee5d3b324b549df33dba.lean#L860).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `987652d85471476cee875bf94b5a36143a178e1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

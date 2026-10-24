# _root_.GRWTSK.Topology.GeneralTopology.Path.Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.Filter.Tendsto.path_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abb07f93-a54a-3191-375c-53f0c504c347",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Path.Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.Filter.Tendsto.path_extend",
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
  "slug": "root-grwtsk-topology-generaltopology-path-variantdd83babc075d2c72b4d64f0--dd1edc013152f313cb04eb99",
  "source": {
    "blob": "cdc88775fd9bd3124ee2c1c112e2aea03f8071c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 257,
    "path": "GRWTSK/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd1edc013152f313cb04eb99f8760002902e9e7f1d83fb7f8d6909393f992a8a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abb07f93-a54a-3191-375c-53f0c504c347`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.Path.Variantdd83babc075d2c72b4d64f04fd479fa5d71bd58fabb8b8d28d0999cac229498f.Filter.Tendsto.path_extend {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    {l r : Y → X} {y : Y} {l₁ : Filter ℝ} {l₂ : Filter X} {γ : ∀ y, Path (l y) (r y)}
    (hγ : Tendsto (↿γ) (𝓝 y ×ˢ l₁.map (projIcc 0 1 zero_le_one)) l₂) :
    Tendsto (↿fun x => (γ x).extend) (𝓝 y ×ˢ l₁) l₂ :=
  Filter.Tendsto.IccExtend _ hγ
#align filter.tendsto.path_extend Filter.Tendsto.path_extend

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PathConnected/Variant7b8cbe19c4b6fc640e191b78738535375a43455893af76c2b5240e6dbbe23f64.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cdc88775fd9bd3124ee2c1c112e2aea03f8071c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

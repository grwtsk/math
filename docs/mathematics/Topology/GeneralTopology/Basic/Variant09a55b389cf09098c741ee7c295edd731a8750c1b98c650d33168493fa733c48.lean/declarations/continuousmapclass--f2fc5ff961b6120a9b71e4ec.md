# ContinuousMapClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5500337466641705783ee78ed40bcdd5f9f53356261a6aa036f1b81e6bf49186",
  "kind": "class",
  "lexical_name": "ContinuousMapClass",
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
  "slug": "continuousmapclass--f2fc5ff961b6120a9b71e4ec",
  "source": {
    "blob": "2d5fba1b99da404407efb85573bf4a3f2eafa102",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 44,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2fc5ff961b6120a9b71e4ec92509d09e269a8f3f9278e8c796c5928202d79bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5500337466641705783ee78ed40bcdd5f9f53356261a6aa036f1b81e6bf49186`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ContinuousMapClass (F : Type*) (α β : outParam <| Type*) [TopologicalSpace α]
  [TopologicalSpace β] extends FunLike F α fun _ => β where
  /-- Continuity -/
  map_continuous (f : F) : Continuous f
#align continuous_map_class ContinuousMapClass

end

export ContinuousMapClass (map_continuous)

attribute [continuity] map_continuous

section ContinuousMapClass

variable {F α β : Type*} [TopologicalSpace α] [TopologicalSpace β] [ContinuousMapClass F α β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant09a55b389cf09098c741ee7c295edd731a8750c1b98c650d33168493fa733c48.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d5fba1b99da404407efb85573bf4a3f2eafa102` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

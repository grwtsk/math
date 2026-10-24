# NonarchimedeanAddGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37bf9d9452fb5e82de4354d69c117da860f97cdd2c45c099206364fa51d10731",
  "kind": "class",
  "lexical_name": "NonarchimedeanAddGroup",
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
  "slug": "nonarchimedeanaddgroup--b1147451f15316008861e678",
  "source": {
    "blob": "2adf8a0a1f5314722fd6ad1cae5d3ee8c278f8c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 33,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1147451f15316008861e678274ff5ad36e8cda9643fcde2b446e8d5551f7591",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37bf9d9452fb5e82de4354d69c117da860f97cdd2c45c099206364fa51d10731`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class NonarchimedeanAddGroup (G : Type*) [AddGroup G] [TopologicalSpace G] : Prop
  extends IsTopologicalAddGroup G where
  is_nonarchimedean : ∀ U ∈ 𝓝 (0 : G), ∃ V : OpenAddSubgroup G, (V : Set G) ⊆ U

/-- A topological group is nonarchimedean if every neighborhood of 1 contains an open subgroup. -/
@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf42dd156a07cad38236361dea88134f33baee43cbae38fbacc9f1e57e9ec3c9e.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2adf8a0a1f5314722fd6ad1cae5d3ee8c278f8c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

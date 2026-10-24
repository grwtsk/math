# ProperSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffc688837818f39d9dc6db6ac2cef5eb3c4a5da90549d629cde9d433a39b8a13",
  "kind": "class",
  "lexical_name": "ProperSMul",
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
  "slug": "propersmul--d3ab68b7ac800b7c52a97392",
  "source": {
    "blob": "c34a482cfd6b3439bead60cfde47c446842a781a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3ab68b7ac800b7c52a97392c5722fc0ba20c76ffd049a64a539af0f870dd3c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffc688837818f39d9dc6db6ac2cef5eb3c4a5da90549d629cde9d433a39b8a13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ProperSMul (G X : Type*) [TopologicalSpace G] [TopologicalSpace X] [Group G]
    [MulAction G X] : Prop where
  /-- Proper group action in the sense of Bourbaki:
  the map `G × X → X × X` is a proper map (see `IsProperMap`). -/
  isProperMap_smul_pair : IsProperMap (fun gx ↦ (gx.1 • gx.2, gx.2) : G × X → X × X)

attribute [to_additive existing] properSMul_iff

variable {G X : Type*} [Group G] [MulAction G X]
variable [TopologicalSpace G] [TopologicalSpace X]

/-- If a group acts properly then in particular it acts continuously. -/
@[to_additive /-- If a group acts properly then in particular it acts continuously. -/]
-- See note [lower instance property]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantaac8b83b315c79de19e92504097e579a626e1962f9f4ceb306c91bee7033fbab.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c34a482cfd6b3439bead60cfde47c446842a781a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

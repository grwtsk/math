# _root_.GRWTSK.Topology.GeneralTopology.IsLocalSourceTargetProperty.Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.IsOpen.liftSourceTargetPropertyAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:566612ad-2355-04ef-42e8-052f548381b7",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.IsLocalSourceTargetProperty.Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.IsOpen.liftSourceTargetPropertyAt",
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
  "slug": "root-grwtsk-topology-generaltopology-islocalsourcetargetproperty-variant--69516c0402eb5b790cd07ef0",
  "source": {
    "blob": "87e128899c40999d24bf40879f65b8e0ab525eb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 220,
    "path": "GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Variant23e119451d0a5d2b9dc7d13808841013a4fa83425de7e2f1d5d110ea9e329b12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69516c0402eb5b790cd07ef00a34ea22aa26611ae7691f0a58688b5690b3a1a4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalSourceTargetProperty/Variant23e119451d0a5d2b9dc7d13808841013a4fa83425de7e2f1d5d110ea9e329b12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:566612ad-2355-04ef-42e8-052f548381b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.IsLocalSourceTargetProperty.Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.IsOpen.liftSourceTargetPropertyAt :
    IsOpen {x | LiftSourceTargetPropertyAt I J n g x P} := by
  rw [isOpen_iff_forall_mem_open]
  intro x hx
  -- Suppose the lifted property `P` holds at `x`:
  -- choose slice charts `φ` near `x` and `ψ` near `f x` s.t. `P f φ ψ` holds.
  -- Then the same charts witness that `P f φ ψ` holds at any `y ∈ φ.source`.
  refine ⟨hx.domChart.source, fun y hy ↦ ?_, hx.domChart.open_source, hx.mem_domChart_source⟩
  exact ⟨hx.domChart, hx.codChart, hy, hx.source_subset_preimage_source hy,
    hx.domChart_mem_maximalAtlas, hx.codChart_mem_maximalAtlas, hx.source_subset_preimage_source,
    hx.property⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalSourceTargetProperty/Variant23e119451d0a5d2b9dc7d13808841013a4fa83425de7e2f1d5d110ea9e329b12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Variant23e119451d0a5d2b9dc7d13808841013a4fa83425de7e2f1d5d110ea9e329b12.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87e128899c40999d24bf40879f65b8e0ab525eb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

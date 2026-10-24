# operationalTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bcb9af86751142f28577adaefc8b841136cf1f455f9d316be6415f9476776a2",
  "kind": "def",
  "lexical_name": "operationalTopology",
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
  "slug": "operationaltopology--94344f9e0a8f1a7d20b6e9e2",
  "source": {
    "blob": "2dd39b7f68a7453744cea1f8ead9aa8cac162d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94344f9e0a8f1a7d20b6e9e2173befd927e8d7de4531566969a06e3c41c7e603",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bcb9af86751142f28577adaefc8b841136cf1f455f9d316be6415f9476776a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[reducible] def operationalTopology : TopologicalSpace X where
  IsOpen U := ∀ x ∈ U, ∀ y, R.rel y x → y ∈ U
  isOpen_univ := by
    intro x hx y hyx
    trivial
  isOpen_inter := by
    intro U V hU hV x hx y hyx
    exact ⟨hU x hx.1 y hyx, hV x hx.2 y hyx⟩
  isOpen_sUnion := by
    intro family hfamily x hx y hyx
    rcases hx with ⟨U, hUfamily, hxU⟩
    exact ⟨U, hUfamily, hfamily U hUfamily x hxU y hyx⟩

/-- A set is closed exactly when it is upward closed under propagation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OperationalTopology/Variant44f3d98a95b0a9a82220454b7d2d658e10c5e15bd096afb43f25860555724562.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dd39b7f68a7453744cea1f8ead9aa8cac162d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

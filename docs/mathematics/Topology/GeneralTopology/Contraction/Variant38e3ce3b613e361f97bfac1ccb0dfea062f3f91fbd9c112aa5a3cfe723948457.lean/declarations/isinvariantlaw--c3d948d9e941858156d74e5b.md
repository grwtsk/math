# IsInvariantLaw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:263420d8b959d6601b3fa3c9a715b5e9bc27801d596ff5fa6de761a0f17fd0d7",
  "kind": "def",
  "lexical_name": "IsInvariantLaw",
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
  "slug": "isinvariantlaw--c3d948d9e941858156d74e5b",
  "source": {
    "blob": "af942319600b35487b72352111d34cf8e6797141",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3d948d9e941858156d74e5beac954afdf5d2b6b1e8537366f26f1f7204a9441",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:263420d8b959d6601b3fa3c9a715b5e9bc27801d596ff5fa6de761a0f17fd0d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsInvariantLaw
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (law : FiniteLaw X) : Prop :=
  kernel.push law = law

/-!
Schedule independence is a property of a family of kernels, not of repeated
application of one unnamed kernel.  This record is instantiated at one scale:
all schedules act on the same separated state space, preserve the same
admissible subset and invariant law, and use the same contraction margin.
It does not assert that any concrete project family satisfies these fields.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Contraction/Variant38e3ce3b613e361f97bfac1ccb0dfea062f3f91fbd9c112aa5a3cfe723948457.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af942319600b35487b72352111d34cf8e6797141` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

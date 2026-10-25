# ClusterState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df781e28105e74752f0524820d2aa7fe791da735e524e016f314eb13efeb396c",
  "kind": "structure",
  "lexical_name": "ClusterState",
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
  "slug": "clusterstate--08e3f2864a4f255ac9a97f3c",
  "source": {
    "blob": "e6543c2acdce0ca3e7212000bb808b0ec99cf510",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 367,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3249143deab03d0d0806fc418669ad3547a7388c5c88a95763d5cec413ef7d64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08e3f2864a4f255ac9a97f3c0cb6b6b5bda0742f0cc127f12cd69749956685e6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3249143deab03d0d0806fc418669ad3547a7388c5c88a95763d5cec413ef7d64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df781e28105e74752f0524820d2aa7fe791da735e524e016f314eb13efeb396c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 367–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ClusterState where
  /-- The cluster's slots. -/
  slots : Array Slot
  /-- The premises that appear in the rule's conclusion. These are the same for
  all cluster states of a rule, but are stored here for convenience. -/
  conclusionDeps : Array PremiseIndex
  /-- The variable map for this cluster. -/
  variableMap : VariableMap
  /-- Complete matches for this cluster. -/
  completeMatches : PHashSet Match
  /-- This flag is `true` if all `slotQueues` are potentially nonempty. Before
  that point, we do not add any hyps to the variable maps since the rule cannot
  possibly produce a complete match. -/
  haveHypForEachSlot : Bool
  /-- Hypotheses or pattern substitutions that have been added to the cluster
  state, but have not yet been added to the `variableMap`. -/
  slotQueues : Array (Array RawHyp)
  /-- There is exactly one queue for each slot. -/
  slotQueues_size : slotQueues.size = slots.size

namespace ClusterState

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3249143deab03d0d0806fc418669ad3547a7388c5c88a95763d5cec413ef7d64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/State/Variant3249143deab03d0d0806fc418669ad3547a7388c5c88a95763d5cec413ef7d64.lean#L367).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6543c2acdce0ca3e7212000bb808b0ec99cf510` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

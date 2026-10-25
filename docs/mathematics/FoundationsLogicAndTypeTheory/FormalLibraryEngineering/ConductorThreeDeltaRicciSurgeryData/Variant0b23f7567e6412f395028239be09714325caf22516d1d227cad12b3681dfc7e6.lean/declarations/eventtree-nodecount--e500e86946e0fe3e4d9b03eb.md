# EventTree.nodeCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92057c03bb7bee7843b126ed75080d13ba1db99a8d4304928a5911cca07b97f9",
  "kind": "def",
  "lexical_name": "EventTree.nodeCount",
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
  "slug": "eventtree-nodecount--e500e86946e0fe3e4d9b03eb",
  "source": {
    "blob": "70d38d5a5a05a7a4f6b70780311f8dee18429224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 786,
    "line": 772,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant0b23f7567e6412f395028239be09714325caf22516d1d227cad12b3681dfc7e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e500e86946e0fe3e4d9b03eb82c88fcfd5922532afba2ee65974deb32d62eeb8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant0b23f7567e6412f395028239be09714325caf22516d1d227cad12b3681dfc7e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92057c03bb7bee7843b126ed75080d13ba1db99a8d4304928a5911cca07b97f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 772–786.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def EventTree.nodeCount
    {data : ConductorThreeDeltaRicciSurgeryData}
    {N : ℕ} {hN : 2 ≤ N}
    {state : TypeIIBilinearSurgeryState (data.scaleData N hN)} :
    EventTree data N hN state → ℕ
  | .terminal _ => 1
  | .flow _ _ childTree => 1 + childTree.nodeCount
  | .surgery _ _ childTrees =>
      1 + ∑ child, (childTrees child).nodeCount

/-! ## Tree-wide dyadic cross-correlation energy -/

/-- Prefix of a matrix family immediately before `lower`, with an explicit
zero value at the natural-number boundary. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant0b23f7567e6412f395028239be09714325caf22516d1d227cad12b3681dfc7e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConductorThreeDeltaRicciSurgeryData/Variant0b23f7567e6412f395028239be09714325caf22516d1d227cad12b3681dfc7e6.lean#L772).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70d38d5a5a05a7a4f6b70780311f8dee18429224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

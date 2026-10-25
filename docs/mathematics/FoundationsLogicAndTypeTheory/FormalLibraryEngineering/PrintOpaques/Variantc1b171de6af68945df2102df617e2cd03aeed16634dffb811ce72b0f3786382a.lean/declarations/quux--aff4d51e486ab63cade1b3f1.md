# quux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25f984c3272588f3ae01b15974a92f55fd4c9489495a6c8036fed62fa878343f",
  "kind": "def",
  "lexical_name": "quux",
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
  "slug": "quux--aff4d51e486ab63cade1b3f1",
  "source": {
    "blob": "2613778e4a170fcea287ee0d490d6afdf133337d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 13,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintOpaques/Variantc1b171de6af68945df2102df617e2cd03aeed16634dffb811ce72b0f3786382a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aff4d51e486ab63cade1b3f1ef51e2b2bee6a9c113a381cc160242d0784d3bbe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintOpaques/Variantc1b171de6af68945df2102df617e2cd03aeed16634dffb811ce72b0f3786382a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25f984c3272588f3ae01b15974a92f55fd4c9489495a6c8036fed62fa878343f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quux : Bool := qux == 0

/--
info: 'quux' depends on opaque or partial definitions: [qux]
-/
#guard_msgs in
#print opaques quux

/-! Examples from the documentation. -/

/--
info: 'Classical.choice' depends on opaque or partial definitions: [Classical.choice]
-/
#guard_msgs in
#print opaques Classical.choice

/--
info: 'Classical.axiomOfChoice' does not use any opaque or partial definitions
-/
#guard_msgs in
#print opaques Classical.axiomOfChoice

/--
info: 'Std.HashMap.insert' depends on opaque or partial definitions: [System.Platform.getNumBits]
-/
#guard_msgs in
#print opaques Std.HashMap.insert

/--
info: 'Std.Stream.forIn' depends on opaque or partial definitions: [_private.Init.Data.Stream.0.Std.Stream.forIn.visit]
-/
#guard_msgs in
#print opaques Std.Stream.forIn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintOpaques/Variantc1b171de6af68945df2102df617e2cd03aeed16634dffb811ce72b0f3786382a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintOpaques/Variantc1b171de6af68945df2102df617e2cd03aeed16634dffb811ce72b0f3786382a.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2613778e4a170fcea287ee0d490d6afdf133337d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

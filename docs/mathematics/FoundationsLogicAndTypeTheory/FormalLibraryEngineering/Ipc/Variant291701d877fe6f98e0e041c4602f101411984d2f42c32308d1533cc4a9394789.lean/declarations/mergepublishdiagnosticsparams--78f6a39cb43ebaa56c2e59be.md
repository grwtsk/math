# mergePublishDiagnosticsParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4830664f2007f6db7403bdde65d069402b23daf2a1363009da4fcb364a193993",
  "kind": "def",
  "lexical_name": "mergePublishDiagnosticsParams",
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
  "slug": "mergepublishdiagnosticsparams--78f6a39cb43ebaa56c2e59be",
  "source": {
    "blob": "716b453f6da84a27cf9ff498f12100e60962db41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78f6a39cb43ebaa56c2e59be185a655ee18f866d7665be701e6bb7dcad749345",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4830664f2007f6db7403bdde65d069402b23daf2a1363009da4fcb364a193993`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mergePublishDiagnosticsParams (prev? : Option PublishDiagnosticsParams)
    (next : PublishDiagnosticsParams) : PublishDiagnosticsParams := Id.run do
  let replace := { next with isIncremental? := some false }
  let some prev := prev?
    | return replace
  if next.isIncremental?.getD false then
    return { next with
      diagnostics := prev.diagnostics ++ next.diagnostics
      isIncremental? := some false }
  return replace

/--
Waits for the worker to emit all diagnostic notifications for the current document version and
returns the accumulated diagnostics, if any.

Incoming notifications are merged using `mergePublishDiagnosticsParams`.

We used to return all notifications but with debouncing in the server, this would not be
deterministic anymore as what messages are dropped depends on wall-clock timing.
 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `716b453f6da84a27cf9ff498f12100e60962db41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

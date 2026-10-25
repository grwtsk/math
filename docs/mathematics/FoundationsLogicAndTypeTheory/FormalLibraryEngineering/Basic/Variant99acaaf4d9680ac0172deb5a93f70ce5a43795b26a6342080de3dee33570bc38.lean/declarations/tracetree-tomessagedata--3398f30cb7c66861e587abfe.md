# TraceTree.toMessageData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a04f9073ab48c98561bffe79cf9b922b166f7cc1f5806aa971fd06cd956de31c",
  "kind": "def",
  "lexical_name": "TraceTree.toMessageData",
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
  "slug": "tracetree-tomessagedata--3398f30cb7c66861e587abfe",
  "source": {
    "blob": "7c2ee08defb381768cd32c43caab17a657ca1bb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3398f30cb7c66861e587abfe7630b3f94aa9c7af2032ebb24285e203be7d92f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a04f9073ab48c98561bffe79cf9b922b166f7cc1f5806aa971fd06cd956de31c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta partial def TraceTree.toMessageData : TraceTree → MessageData
  | .node data msg children wrap => wrap (.trace data msg (children.map toMessageData))
  | .leaf msg => msg

/--
A trace postprocessor transforms the trace roots of a trace message before it is reported,
e.g. by filtering out irrelevant subtrees or pre-expanding interesting nodes.
Returning an empty array drops the trace message entirely.

Traces are reported as one message per source range inside a command, and a postprocessor is
applied to each of these messages separately; it therefore cannot move trace roots from one
source range to another.

Postprocessors are applied by the `postprocess_traces post in cmd` command and can be composed
left-to-right with `>=>`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant99acaaf4d9680ac0172deb5a93f70ce5a43795b26a6342080de3dee33570bc38.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c2ee08defb381768cd32c43caab17a657ca1bb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

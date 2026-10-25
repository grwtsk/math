# DelabTermInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a86cea7ee84da05b256a70540b7b3666304748c8f89ef6d421adab4a298fb67",
  "kind": "structure",
  "lexical_name": "DelabTermInfo",
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
  "slug": "delabterminfo--6c171e6b3cf79db1152d21e8",
  "source": {
    "blob": "ff0b1f85d6b211677b763aacdb13d569b6f62025",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c171e6b3cf79db1152d21e803424d8ec3ff3dbad86c94953de7b0aa747a61d7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a86cea7ee84da05b256a70540b7b3666304748c8f89ef6d421adab4a298fb67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DelabTermInfo extends TermInfo where
  /-- A source position to use for "go to definition", to override the default. -/
  location? : Option DeclarationLocation := none
  /-- Text to use to override the docstring. The string may be dynamic text. It is an `IO` action
  so that it can be computed only when it is used. The action receives a `PPContext` so that the
  action does not need to create a closure with the meta state. -/
  mkDocString? : Option (PPContext → IO String) := none
  /-- Whether to use explicit mode when pretty printing the term on hover. -/
  explicit : Bool := true

/--
Indicates that all overloaded elaborators failed. The subtrees of a `ChoiceInfo` node are the
partial `InfoTree`s of those failed elaborators. Retaining these partial `InfoTree`s helps
the language server provide interactivity even when all overloaded elaborators failed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant96d4b828d5fb9f220476ba12cdd3f61ccabdb50696879073285089748e3e27ff.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff0b1f85d6b211677b763aacdb13d569b6f62025` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

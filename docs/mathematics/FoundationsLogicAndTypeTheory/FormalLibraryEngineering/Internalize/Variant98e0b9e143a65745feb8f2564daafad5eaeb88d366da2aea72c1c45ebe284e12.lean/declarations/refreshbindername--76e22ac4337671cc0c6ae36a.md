# refreshBinderName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d49b9cd5adb3b97b745da3d6cb2c9cdb64d5fd51129990ec6d61e4d435a2a350",
  "kind": "def",
  "lexical_name": "refreshBinderName",
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
  "slug": "refreshbindername--76e22ac4337671cc0c6ae36a",
  "source": {
    "blob": "2d1f4f2b975c67aa8ee3c91ab9621ec077846698",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:76e22ac4337671cc0c6ae36a02e7b5bff6aaec7ec80d9108433aa78d44da40ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d49b9cd5adb3b97b745da3d6cb2c9cdb64d5fd51129990ec6d61e4d435a2a350`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def refreshBinderName (binderName : Name) : InternalizeM pu Name := do
  match binderName with
  | .num p _ =>
    return .num p (← modifyGetThe CompilerM.State fun s => (s.nextIdx, { s with nextIdx := s.nextIdx + 1 }))
  | _ =>
    if (← read).uniqueIdents then
      return .num binderName (← modifyGetThe CompilerM.State fun s => (s.nextIdx, { s with nextIdx := s.nextIdx + 1 }))
    else
      return binderName

/--
The `InternalizeM` monad is a translator. It "translates" the free variables
in the input expressions and `Code`, into new fresh free variables in the
local context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variant98e0b9e143a65745feb8f2564daafad5eaeb88d366da2aea72c1c45ebe284e12.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d1f4f2b975c67aa8ee3c91ab9621ec077846698` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a96fca3bd8d448a011cd9b46a2d3d54c67d763910e2d27faabb37c286df90e7",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--4a2a86992eed031e86eb1b04",
  "source": {
    "blob": "e6af04853ba13c2d50a909dfaed37219dc95f7eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 485,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a2a86992eed031e86eb1b04b782e6d0981d0653a63d96fd77a8ca89630aa302",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a96fca3bd8d448a011cd9b46a2d3d54c67d763910e2d27faabb37c286df90e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : FromDocArg MessageSeverity where
  fromDocArg v := private
    match v with
    | .ident x => do
      let x' ←
        try realizeGlobalConstNoOverloadWithInfo x
        catch
          | e => throwErrorAt x m!"{e.toMessageData}{← severityHint x}"
      match x' with
      | ``error => return error
      | ``warning => return warning
      | ``information => return information
      | _ =>
        let expected := [``information, ``warning, ``error].map (MessageData.ofConstName)
        throwErrorAt x m!"Expected {.orList expected} but got {.ofConstName x'}{← severityHint x}"
    | other => do
      throwErrorAt other.syntax "Expected a message severity{← severityHint other.syntax}"

/--
Retrieves the next positional argument from the arguments to a documentation extension. Throws
an error if no positional arguments remain.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DocString/Variant65243bce2b2dd86bcd496bf7739ff1ed2ec7025b6b8b798e30d1cc9cdf53776e.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6af04853ba13c2d50a909dfaed37219dc95f7eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

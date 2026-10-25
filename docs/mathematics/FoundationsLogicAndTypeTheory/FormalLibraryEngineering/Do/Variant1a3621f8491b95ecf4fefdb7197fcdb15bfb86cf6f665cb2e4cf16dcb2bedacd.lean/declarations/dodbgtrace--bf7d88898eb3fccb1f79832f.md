# doDbgTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:179eaa535300edb5763fe566aac3f116063729a4f11e39d44b1abb5fe18172d7",
  "kind": "def",
  "lexical_name": "doDbgTrace",
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
  "slug": "dodbgtrace--bf7d88898eb3fccb1f79832f",
  "source": {
    "blob": "eb16792599f501a6362079784c0d173d1998de0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant1a3621f8491b95ecf4fefdb7197fcdb15bfb86cf6f665cb2e4cf16dcb2bedacd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf7d88898eb3fccb1f79832fb3866ca165e4968f3e723ae5a6f2792bdefb34bf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant1a3621f8491b95ecf4fefdb7197fcdb15bfb86cf6f665cb2e4cf16dcb2bedacd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:179eaa535300edb5763fe566aac3f116063729a4f11e39d44b1abb5fe18172d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_doElem_parser] def doDbgTrace  := leading_parser:leadPrec
  "dbg_trace " >> ((interpolatedStr termParser) <|> termParser)
/--
*experimental*

`idbg e` enables live inspection of program state from the editor. When placed in a `do` block,
it captures all local variables in scope and the expression `e`, then:

- **In the language server**: starts a TCP server on localhost waiting for the running program to
  connect; the editor will mark this part of the program as "in progress" during this wait but that
  will not block `lake build` of the project.
- **In the compiled program**: on first execution of the `idbg` call site, connects to the server,
  receives the expression, compiles and evaluates it using the program's actual runtime values, and
  sends the `repr` result back.

The result is displayed as an info diagnostic on the `idbg` keyword. The expression `e` can be
edited while the program is running - each edit triggers re-elaboration of `e`, a new TCP exchange,
and an updated result. This makes `idbg` a live REPL for inspecting and experimenting with
program state at a specific point in execution. Only when `idbg` is inserted, moved, or removed does
the program need to be recompiled and restarted.

# Known Limitations

* The program will poll the server for up to 10 minutes and needs to be killed manually
  otherwise.
* Use of multiple `idbg` at once untested, likely too much overhead from overlapping imports without
  further changes.
* `LEAN_PATH` must be properly set up so the compiled program can import its origin module.
* Untested on Windows and macOS.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant1a3621f8491b95ecf4fefdb7197fcdb15bfb86cf6f665cb2e4cf16dcb2bedacd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Do/Variant1a3621f8491b95ecf4fefdb7197fcdb15bfb86cf6f665cb2e4cf16dcb2bedacd.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb16792599f501a6362079784c0d173d1998de0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

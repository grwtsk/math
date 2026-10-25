# waitFindSnapAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:74b0ac54b60718267f367d56f2afa0ec6eab84651cd9da9a78b3f1b6aa475b2e",
  "kind": "def",
  "lexical_name": "waitFindSnapAux",
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
  "slug": "waitfindsnapaux--32f4b23c0b1e5082fd710f1c",
  "source": {
    "blob": "ac4760b9f6d58a14edcc06cff2ffa079ca067d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 330,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32f4b23c0b1e5082fd710f1c42ed185efd6b874f42c6f3fd014618e18a107c9c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:74b0ac54b60718267f367d56f2afa0ec6eab84651cd9da9a78b3f1b6aa475b2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def waitFindSnapAux (notFoundX : RequestM α) (x : Snapshot → RequestM α)
    : Except IO.Error (Option Snapshot) → RequestM α
  /- The elaboration task that we're waiting for may be aborted if the file contents change.
  In that case, we reply with the `fileChanged` error by default. Thanks to this, the server doesn't
  get bogged down in requests for an old state of the document. -/
  | Except.error e => throw (RequestError.ofIoError e)
  | Except.ok none => notFoundX
  | Except.ok (some snap) => x snap

/-- Create a task which waits for the first snapshot matching `p`, handles various errors,
and if a matching snapshot was found executes `x` with it. If not found, the task executes
`notFoundX`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Requests/Variant4588f572ec38640c742a49473bd0dcaffc9c8a4b7364b43062e28e2193ccba1f.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4760b9f6d58a14edcc06cff2ffa079ca067d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# raceAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6161d30f0b0461377804e7f094ad0134b6794c2d7027eb9ad93ae205e4cad9b5",
  "kind": "def",
  "lexical_name": "raceAll",
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
  "slug": "raceall--db37d2e0aa1d3e14bf412d9e",
  "source": {
    "blob": "7c528e64387c29337fdb204a0909960095b6a0d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db37d2e0aa1d3e14bf412d9ecf46cbb51504dcd750901e41795fb46b1b58bb00",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6161d30f0b0461377804e7f094ad0134b6794c2d7027eb9ad93ae205e4cad9b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def raceAll [ForM ContextAsync c (ContextAsync α)] (xs : c)
    (prio := Task.Priority.default) : ContextAsync α := do
  let parent ← getContext
  let promise ← IO.Promise.new

  ForM.forM xs fun x => do
    let ctx ← CancellationContext.fork parent
    let task ← async (x ctx) prio

    background do
      try
        let result ← await task
        promise.resolve (.ok result)
      catch e =>
        discard $ promise.resolve (.error e)

  let result ← await promise
  parent.cancel .cancel
  Async.ofExcept result

/--
Launches a `ContextAsync` computation as an asynchronous task with a forked child context.
The child context is automatically cancelled when the task completes or fails.
-/
@[inline, specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c528e64387c29337fdb204a0909960095b6a0d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

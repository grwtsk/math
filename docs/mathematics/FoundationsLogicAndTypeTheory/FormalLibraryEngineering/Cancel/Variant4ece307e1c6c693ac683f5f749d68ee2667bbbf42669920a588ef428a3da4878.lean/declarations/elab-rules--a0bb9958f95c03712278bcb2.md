# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95301ca015de9e54a41b8295ff2fdaee07a7885405ba952bd046aebafa34979f",
  "kind": "elab_rules",
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
  "slug": "elab-rules--a0bb9958f95c03712278bcb2",
  "source": {
    "blob": "580eda1df1c61bc08fbbedf13cf264fd107af8fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 285,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancel/Variant4ece307e1c6c693ac683f5f749d68ee2667bbbf42669920a588ef428a3da4878.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0bb9958f95c03712278bcb264c4a0ac4f27e836f7b9e632783a7d696705e174",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancel/Variant4ece307e1c6c693ac683f5f749d68ee2667bbbf42669920a588ef428a3da4878.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95301ca015de9e54a41b8295ff2fdaee07a7885405ba952bd046aebafa34979f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab_rules : tactic
| `(tactic| wait_for_sync $label) => do
  let lbl := label.getString
  match (← IO.wait (← getSyncPromise lbl).result?) with
  | some _ => return
  | none   =>
    IO.eprintln s!"wait_for_sync: sync promise {lbl} dropped without resolution"

/--
Tactic for testing cancellation propagation. On the first invocation for a given `<label>`,
prints `<label>: blocked` to stderr, resolves the sync promise `<label>` (so a separate
theorem can gate the runner's `waitFor` on this invocation having actually started), and
loops on `Core.checkInterrupted` until the tactic's cancel token fires (at which point the
loop throws and `finally` resolves the shared task). Subsequent invocations (e.g. on
re-elaboration) wait on that task: they return as soon as the first invocation has actually
exited the loop, and hang otherwise. So if cancellation propagates correctly, the test
completes; if propagation is broken, the second invocation's wait blocks forever and the
test hangs (timeout = failure).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancel/Variant4ece307e1c6c693ac683f5f749d68ee2667bbbf42669920a588ef428a3da4878.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancel/Variant4ece307e1c6c693ac683f5f749d68ee2667bbbf42669920a588ef428a3da4878.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `580eda1df1c61bc08fbbedf13cf264fd107af8fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

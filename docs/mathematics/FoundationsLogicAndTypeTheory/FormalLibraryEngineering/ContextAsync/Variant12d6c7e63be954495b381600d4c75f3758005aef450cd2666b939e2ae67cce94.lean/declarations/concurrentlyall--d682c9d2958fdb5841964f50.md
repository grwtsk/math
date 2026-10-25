# concurrentlyAll

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e190f5a1f380f21a0526a4680b5be0b735c42734a4c5b11cf9cea1bf7291f857",
  "kind": "def",
  "lexical_name": "concurrentlyAll",
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
  "slug": "concurrentlyall--d682c9d2958fdb5841964f50",
  "source": {
    "blob": "7c528e64387c29337fdb204a0909960095b6a0d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d682c9d2958fdb5841964f50931d2da2ce6401021b0a634a98a34e4642f3898d",
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

Occurrence: `declaration:e190f5a1f380f21a0526a4680b5be0b735c42734a4c5b11cf9cea1bf7291f857`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def concurrentlyAll (xs : Array (ContextAsync α))
    (prio := Task.Priority.default) : ContextAsync (Array α) := do
  let ctx ← getContext
  let concurrentCtx ← ctx.fork

  let tasks : Array (AsyncTask α) ← xs.mapM fun ctxAsync => do
    let childCtx ← concurrentCtx.fork
    async (prio := prio)
      (try
        ctxAsync childCtx
      catch err => do
        concurrentCtx.cancel .cancel
        throw err
      finally
        childCtx.cancel .cancel)

  let result ← tasks.mapM await
  return result

/--
Launches a `ContextAsync` computation in the background, discarding its result.

The computation runs independently in the background in its own child context. The parent computation does not wait
for background tasks to complete. This means that if the parent finishes its execution it will cause
the cancellation of the background functions. See also `disown` for launching tasks that continue independently
even after parent cancellation.
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c528e64387c29337fdb204a0909960095b6a0d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Selectable.one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fd2a81334f99d1cd5d56153ee6e2791275c9156881a224a4cc9a34220c809661",
  "kind": "def",
  "lexical_name": "Selectable.one",
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
  "slug": "selectable-one--d15f9de0d02b2a5343f6c6ef",
  "source": {
    "blob": "c02725c6443ad041e4ccc045b0a5ef5ab7270e9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d15f9de0d02b2a5343f6c6ef25b7b562299489d10386fb271e97f8b34a25f59f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fd2a81334f99d1cd5d56153ee6e2791275c9156881a224a4cc9a34220c809661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def Selectable.one (selectables : Array (Selectable α)) : Async α := do
  if selectables.isEmpty then
    throw <| .userError "Selectable.one requires at least one Selectable"

  /-
  It might happen that two `Selectable.one` calls race this access to `IO.stdGenRef` and generate
  the same random numbers for this shuffle. We believe this is okay as the job of this shuffle is
  to introduce some basic fairness to the event sources across multiple sequential calls so
  concurrent calls should not matter too much.
  -/
  let gen ← IO.stdGenRef.get
  let (selectables, gen) := shuffleIt selectables gen
  IO.stdGenRef.set gen

  let gate ← IO.Promise.new

  for selectable in selectables do
    if let some val ← selectable.selector.tryFn then
      let result ← selectable.cont val
      return result

  let finished ← IO.mkRef false
  let promise ← IO.Promise.new

  for selectable in selectables do
    if ← finished.get then
      break

    let waiterPromise ← IO.Promise.new
    let waiter := Waiter.mk finished waiterPromise
    selectable.selector.registerFn waiter

    discard <| IO.bindTask (t := waiterPromise.result?) fun res? => do
      match res? with
      | none =>
        /-
        If we get `none` that means the waiterPromise was dropped, usually due to cancellation. In
        this situation just do nothing.
        -/
        return (Task.pure (.ok ()))
      | some res =>
        let async : Async _ :=
          try
            let res ← IO.ofExcept res
            discard <| await gate.result?

            for selectable in selectables do
              selectable.selector.unregisterFn

            promise.resolve (.ok (← selectable.cont res))
          catch e =>
            promise.resolve (.error e)

        async.toBaseIO

  gate.resolve ()
  let result ← Async.ofPromise (pure promise)
  return result

/--
Performs fair and data-loss free non-blocking multiplexing on the `Selectable`s in `selectables`.

This function only tries the non-blocking `tryFn` for each `Selectable` without registering
waiters or blocking. It returns `some result` if any `Selectable` is immediately available,
or `none` if all would block.

The protocol for this is as follows:
1. The `selectables` are shuffled randomly for fairness.
2. Run `Selector.tryFn` for each element in `selectables`. If any succeed, the corresponding
   `Selectable.cont` is executed and its result is returned as `some result`.
3. If none succeed, `none` is returned immediately without blocking.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variant23c2e3904ef9f8137ad54c23952dc2f7b65aaf7e30da8d23e0e60a634fce580f.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c02725c6443ad041e4ccc045b0a5ef5ab7270e9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

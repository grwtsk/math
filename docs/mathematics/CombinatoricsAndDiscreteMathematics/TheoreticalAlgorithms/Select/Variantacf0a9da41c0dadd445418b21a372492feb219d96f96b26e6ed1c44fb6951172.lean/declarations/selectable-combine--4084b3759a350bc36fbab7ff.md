# Selectable.combine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f133933fac7d27e020cf304a6e82847e380a66352b7f2838855cc3f0a39c892",
  "kind": "def",
  "lexical_name": "Selectable.combine",
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
  "slug": "selectable-combine--4084b3759a350bc36fbab7ff",
  "source": {
    "blob": "6df08531afd99e4812084fd87637e3e820cf9ce5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 217,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4084b3759a350bc36fbab7ffffc3e0678859f9893bf20be22290f8e8873e1e4e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f133933fac7d27e020cf304a6e82847e380a66352b7f2838855cc3f0a39c892`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Selectable.combine (selectables : Array (Selectable α)) : IO (Selector α) := do
  return {
    tryFn := do
      -- See note at Selectable.one
      let gen ← IO.stdGenRef.get
      let (selectables, gen) := shuffleIt selectables gen
      IO.stdGenRef.set gen

      for selectable in selectables do
        if let some val ← selectable.selector.tryFn then
          let result ← selectable.cont val
          return some result
      return none

    registerFn := fun waiter => do
      let gate ← IO.Promise.new

      -- See note at Selectable.one
      let gen ← IO.stdGenRef.get
      let (selectables, gen) := shuffleIt selectables gen
      IO.stdGenRef.set gen

      for selectable in selectables do
        let waiterPromise ← IO.Promise.new
        let derivedWaiter := Waiter.mk waiter.finished waiterPromise
        selectable.selector.registerFn derivedWaiter

        discard <| IO.bindTask (t := waiterPromise.result?) fun res? => do
          match res? with
          | none => return (Task.pure (.ok ()))
          | some res =>
            let async : Async _ := do
              let mainPromise := waiter.promise

              await gate
              for selectable in selectables do
                selectable.selector.unregisterFn

              try
                let val ← IO.ofExcept res
                let result ← selectable.cont val
                mainPromise.resolve (.ok result)
              catch e =>
                mainPromise.resolve (.error e)
            async.toBaseIO

      gate.resolve ()

    unregisterFn := do
      for selectable in selectables do
        selectable.selector.unregisterFn
  }

end Async
end Std
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Select/Variantacf0a9da41c0dadd445418b21a372492feb219d96f96b26e6ed1c44fb6951172.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6df08531afd99e4812084fd87637e3e820cf9ce5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# getMatchWithExtra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c61138ab5378c2ac6cf496500da33b804d18418a626865163632d6a73f0fa334",
  "kind": "def",
  "lexical_name": "getMatchWithExtra",
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
  "slug": "getmatchwithextra--84f33325cc4acb192b3228b7",
  "source": {
    "blob": "bdfbcdff9d7ae3dcc369b2d637a4dec8cfe1f14a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 489,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb75802b76196a6af439b2be370b3cccc41e71c94b5aadc49304fce7692d2889d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84f33325cc4acb192b3228b729ab09512c45d8c6cbd755d87af94ec8a6d9fb51",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb75802b76196a6af439b2be370b3cccc41e71c94b5aadc49304fce7692d2889d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c61138ab5378c2ac6cf496500da33b804d18418a626865163632d6a73f0fa334`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def getMatchWithExtra (d : DiscrTree α) (e : Expr) : MetaM (Array (α × Nat)) := do
  let (k, result) ← getMatchCore d e
  let result := result.map (·, 0)
  if !e.isApp then
    return result
  else if !(← mayMatchPrefix k) then
    return result
  else
    go e.appFn! 1 result
where
  mayMatchPrefix (k : Key) : MetaM Bool :=
    let cont (k : Key) : MetaM Bool :=
      if d.root.find? k |>.isSome then
        return true
      else
        mayMatchPrefix k
    match k with
    | .const f (n+1)  => cont (.const f n)
    | .fvar f (n+1)   => cont (.fvar f n)
    | .proj s i (n+1) => cont (.proj s i n)
    | _               => return false

  go (e : Expr) (numExtra : Nat) (result : Array (α × Nat)) : MetaM (Array (α × Nat)) := do
    let result := result ++ (← getMatchCore d e).2.map (., numExtra)
    if e.isApp then
      go e.appFn! (numExtra + 1) result
    else
      return result

/--
Return the root symbol for `e`, and the number of arguments after `reduceDT`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb75802b76196a6af439b2be370b3cccc41e71c94b5aadc49304fce7692d2889d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantb75802b76196a6af439b2be370b3cccc41e71c94b5aadc49304fce7692d2889d.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdfbcdff9d7ae3dcc369b2d637a4dec8cfe1f14a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

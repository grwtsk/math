# recArgHasLooseBVarsAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:246d33a410432567a9c0cad29d7b0d01be848488e5d1446ccbe900d7b4895813",
  "kind": "def",
  "lexical_name": "recArgHasLooseBVarsAt",
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
  "slug": "recarghasloosebvarsat--5a76e42392783a4d58143505",
  "source": {
    "blob": "4a5f6f193d3d12faf87bc1a1f04bf86c95b4d76b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante73a2c5c4e60ca0f4094308b51a3b8fd26f7b6c4c2f3b633ae0aeb7cf8dc5ce4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a76e42392783a4d58143505c68d14806f178afcb88b886336c05b4d43a7a26f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante73a2c5c4e60ca0f4094308b51a3b8fd26f7b6c4c2f3b633ae0aeb7cf8dc5ce4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:246d33a410432567a9c0cad29d7b0d01be848488e5d1446ccbe900d7b4895813`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recArgHasLooseBVarsAt (recFnName : Name) (recArgPos : Nat) (e : Expr) : Bool :=
  let app?   := e.find? fun e =>
     e.isAppOf recFnName && e.getAppNumArgs > recArgPos && (e.getArg! recArgPos).hasLooseBVars
  app?.isSome


/--
Lets say we have `n` mutually recursive functions whose recursive arguments are from a group
of `m` mutually inductive data types. This mapping does not have to be one-to-one: for one type
there can be zero, one or more functions. We use the logic in the `FunPacker` modules to combine
the bodies (and motives) of multiple such functions.

Therefore we have to take the `n` functions, group them by their recursive argument's type,
and for each such type, keep track of the order of the functions.

We represent these positions as an `Array (Array Nat)`. We have that

* `positions.size = indInfo.numTypeFormers`
* `positions.flatten` is a permutation of `[0:n]`, so each of the `n` functions has exactly one
  position, and each position refers to one of the `n` functions.
* if `k ∈ positions[i]` then the recursive argument of function `k` is has type `indInfo.all[i]`
  (or corresponding nested inductive type)

-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante73a2c5c4e60ca0f4094308b51a3b8fd26f7b6c4c2f3b633ae0aeb7cf8dc5ce4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variante73a2c5c4e60ca0f4094308b51a3b8fd26f7b6c4c2f3b633ae0aeb7cf8dc5ce4.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a5f6f193d3d12faf87bc1a1f04bf86c95b4d76b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

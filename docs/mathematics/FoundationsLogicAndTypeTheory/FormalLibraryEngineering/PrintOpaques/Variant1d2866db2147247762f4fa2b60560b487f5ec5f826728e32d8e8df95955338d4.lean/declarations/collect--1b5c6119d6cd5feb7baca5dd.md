# collect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76745a87f49dff863c1209f63cbde3ad0643a392f10cf07fcb5d728c4e990c8c",
  "kind": "def",
  "lexical_name": "collect",
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
  "slug": "collect--1b5c6119d6cd5feb7baca5dd",
  "source": {
    "blob": "b31a8df98be082ac8ff34876debbed2df10e5c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintOpaques/Variant1d2866db2147247762f4fa2b60560b487f5ec5f826728e32d8e8df95955338d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b5c6119d6cd5feb7baca5dd207d95a89803d50627c529ef4d38d85e4a800019",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintOpaques/Variant1d2866db2147247762f4fa2b60560b487f5ec5f826728e32d8e8df95955338d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76745a87f49dff863c1209f63cbde3ad0643a392f10cf07fcb5d728c4e990c8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collect (c : Name) : M Unit := do
  let collectExpr (e : Expr) : M Unit := e.getUsedConstants.forM collect
  let s ← get
  unless s.visited.contains c do
    modify fun s => { s with visited := s.visited.insert c }
    let env ← read
    match env.find? c with
    | some (ConstantInfo.ctorInfo _)
    | some (ConstantInfo.recInfo _)
    | some (ConstantInfo.inductInfo _)
    | some (ConstantInfo.quotInfo _)   =>
      pure ()
    | some (ConstantInfo.defnInfo v)
    | some (ConstantInfo.thmInfo v)    =>
      unless ← Meta.isProp v.type do collectExpr v.value
    | some (ConstantInfo.axiomInfo v)
    | some (ConstantInfo.opaqueInfo v) =>
      unless ← Meta.isProp v.type do
        modify fun s => { s with opaques := s.opaques.push c }
    | none                             =>
      throwUnknownConstant c

end CollectOpaques

/--
The command `#print opaques X` prints all opaque definitions that `X` depends on.

Opaque definitions include partial definitions and axioms. Only dependencies that occur in a
computationally relevant context are listed, occurrences within proof terms are omitted. This is
useful to determine whether and how a definition is possibly platform dependent, possibly partial,
or possibly noncomputable.

The command `#print opaques Std.HashMap.insert` shows that `Std.HashMap.insert` depends on the
opaque definitions: `System.Platform.getNumBits` and `UInt64.toUSize`. Thus `Std.HashMap.insert`
may have different behavior when compiled on a 32 bit or 64 bit platform.

The command `#print opaques Stream.forIn` shows that `Stream.forIn` is possibly partial since it
depends on the partial definition `Stream.forIn.visit`. Indeed, `Stream.forIn` may not terminate
when the input stream is unbounded.

The command `#print opaques Classical.choice` shows that `Classical.choice` is itself an opaque
definition: it is an axiom. However, `#print opaques Classical.axiomOfChoice` returns nothing
since it is a proposition, hence not computationally relevant. (The command `#print axioms` does
reveal that `Classical.axiomOfChoice` depends on the `Classical.choice` axiom.)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintOpaques/Variant1d2866db2147247762f4fa2b60560b487f5ec5f826728e32d8e8df95955338d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PrintOpaques/Variant1d2866db2147247762f4fa2b60560b487f5ec5f826728e32d8e8df95955338d4.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b31a8df98be082ac8ff34876debbed2df10e5c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

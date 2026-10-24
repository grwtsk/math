# getNonCommSemiringId?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70bf8d88c6398ff59d73a7031dfece01f401376fdc43e56f83df5f52a71c7c63",
  "kind": "def",
  "lexical_name": "getNonCommSemiringId?",
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
  "slug": "getnoncommsemiringid--9ace21dafe2381faa3e4dd81",
  "source": {
    "blob": "2c27403ce66e22e760d6388fb2699c4a9a8cec5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 173,
    "path": "GRWTSK/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ace21dafe2381faa3e4dd81cbca7bc497369884498d2340fee8e645a9503a1a",
  "verification": {
    "reference": "docs/verification/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70bf8d88c6398ff59d73a7031dfece01f401376fdc43e56f83df5f52a71c7c63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getNonCommSemiringId? (type : Expr) : GoalM (Option Nat) := do
  if let some id? := (← get').ncstypeIdOf.find? { expr := type } then
    return id?
  else
    let id? ← go?
    modify' fun s => { s with ncstypeIdOf := s.ncstypeIdOf.insert { expr := type } id? }
    return id?
where
  go? : GoalM (Option Nat) := do
    let u ← getDecLevel type
    let semiring := mkApp (mkConst ``Grind.Semiring [u]) type
    let some semiringInst ← synthInstance? semiring | return none
    let id := (← get').ncSemirings.size
    let semiring : Semiring := { id, type, u, semiringInst }
    modify' fun s => { s with ncSemirings := s.ncSemirings.push semiring }
    return some id

end Lean.Meta.Grind.Arith.CommRing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingId/Variant96860039213e81b62b3ff8f91227d3c38499126d0ffa0e9c7952296b78fc7d36.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c27403ce66e22e760d6388fb2699c4a9a8cec5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

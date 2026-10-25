# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34a577d7f87bdd9459de7d0f41863715fa5a178375cf6d3e1a6d7711c9d8ec73",
  "kind": "example",
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
  "slug": "example--3f9a63ffbbbfa309f093fa61",
  "source": {
    "blob": "a32d282f8922bac46561588b4d0a6b520287f730",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f9a63ffbbbfa309f093fa61110c8d9bfd4c898b4dbb40333f887b3c16692d16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34a577d7f87bdd9459de7d0f41863715fa5a178375cf6d3e1a6d7711c9d8ec73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (h : ¬ 0 < 1) : False := by
  test_forallNot_of_notExists h

/-! ### `Lean.Meta.mkRel` -/

/-- info: true -/
#guard_msgs in
#eval do return (← mkRel ``Eq eNatZero eNatOne) == (← mkAppM ``Eq #[eNatZero, eNatOne])

/-- info: true -/
#guard_msgs in
#eval do return (← mkRel ``Iff eTrue eFalse) == (← mkAppM ``Iff #[eTrue, eFalse])

/-- info: true -/
#guard_msgs in
#eval do return (← mkRel ``HEq eTrue eFalse) == (← mkAppM ``HEq #[eTrue, eFalse])

/-- info: true -/
#guard_msgs in
#eval do return (← mkRel ``LT.lt eNatZero eNatOne) == (← mkAppM ``LT.lt #[eNatZero, eNatOne])

/-! ### `Lean.Expr.relSidesIfRefl?` -/

/--
info: some (`Eq, Lean.Expr.const `Nat.zero [],
Lean.Expr.app (Lean.Expr.const `Nat.succ []) (Lean.Expr.const `Nat.zero []))
-/
#guard_msgs in #eval do Expr.relSidesIfRefl? (← mkRel ``Eq eNatZero eNatOne)

/-- info: some (`Iff, Lean.Expr.const `True [], Lean.Expr.const `False []) -/
#guard_msgs in #eval do Expr.relSidesIfRefl? (← mkRel ``Iff eTrue eFalse)

/-- info: some (`HEq, Lean.Expr.const `True [], Lean.Expr.const `False []) -/
#guard_msgs in #eval do Expr.relSidesIfRefl? (← mkRel ``HEq eTrue eFalse)

/-- info: none -/
#guard_msgs in #eval do Expr.relSidesIfRefl? (← mkRel ``LT.lt eNatZero eNatOne)

attribute [refl] Nat.le_refl

/--
info: some (`LE.le, Lean.Expr.const `Nat.zero [],
Lean.Expr.app (Lean.Expr.const `Nat.succ []) (Lean.Expr.const `Nat.zero []))
-/
#guard_msgs in #eval do Expr.relSidesIfRefl? (← mkRel ``LE.le eNatZero eNatOne)

end Tests
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a32d282f8922bac46561588b4d0a6b520287f730` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

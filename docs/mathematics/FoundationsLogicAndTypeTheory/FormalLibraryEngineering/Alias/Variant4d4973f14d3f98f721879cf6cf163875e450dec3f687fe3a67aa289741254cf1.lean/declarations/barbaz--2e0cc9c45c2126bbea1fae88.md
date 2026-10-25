# barbaz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae02e30ddd5ac21db111d357ca00fe95c6741ccc25765088d7213cb61460f57d",
  "kind": "def",
  "lexical_name": "barbaz",
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
  "slug": "barbaz--2e0cc9c45c2126bbea1fae88",
  "source": {
    "blob": "f8d05910dab89c89ab8c912550005ca68d341504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4d4973f14d3f98f721879cf6cf163875e450dec3f687fe3a67aa289741254cf1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e0cc9c45c2126bbea1fae88a02a99bafe5b58e4b790aea910cc45b6d375beed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4d4973f14d3f98f721879cf6cf163875e450dec3f687fe3a67aa289741254cf1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae02e30ddd5ac21db111d357ca00fe95c6741ccc25765088d7213cb61460f57d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def barbaz : Nat → Nat := id
alias barbaz1 := barbaz
/-- error: (kernel) invalid declaration, it uses unsafe declaration 'A.barbaz1' -/
#guard_msgs in def barbaz2 (n : Nat) := barbaz1 n

unsafe alias barbaz3 := id
/-- error: (kernel) invalid declaration, it uses unsafe declaration 'A.barbaz3' -/
#guard_msgs in def barbaz4 (n : Nat) := barbaz3 n

/- iff version -/

@[deprecated (since := "2038-01-20")] alias ⟨mpId, mprId⟩ := Iff.rfl

/-- info: A.mpId {a : Prop} : a → a -/
#guard_msgs in #check mpId
/-- info: A.mprId {a : Prop} : a → a -/
#guard_msgs in #check mprId

/--
warning: `A.mpId` has been deprecated: Use `Iff.rfl` instead

Note: The updated constant has a different type:
  ∀ {a : Prop}, a ↔ a
instead of
  ∀ {a : Prop}, a → a

Note: The updated constant is in a different namespace. Dot notation may need to be changed (e.g., from `x.mpId` to `Iff.rfl x`).
---
warning: `A.mprId` has been deprecated: Use `Iff.rfl` instead

Note: The updated constant has a different type:
  ∀ {a : Prop}, a ↔ a
instead of
  ∀ {a : Prop}, a → a

Note: The updated constant is in a different namespace. Dot notation may need to be changed (e.g., from `x.mprId` to `Iff.rfl x`).
-/
#guard_msgs in example := And.intro @mpId @mprId

/- Test environment extension -/

/-- info: **Alias** of `A.foo`. -/
#guard_msgs in
#eval show MetaM _ from do
  match ← Batteries.Tactic.Alias.getAliasInfo? `A.foo1 with
  | some i => IO.println i.toString
  | none => IO.println "alias not found"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4d4973f14d3f98f721879cf6cf163875e450dec3f687fe3a67aa289741254cf1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant4d4973f14d3f98f721879cf6cf163875e450dec3f687fe3a67aa289741254cf1.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8d05910dab89c89ab8c912550005ca68d341504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

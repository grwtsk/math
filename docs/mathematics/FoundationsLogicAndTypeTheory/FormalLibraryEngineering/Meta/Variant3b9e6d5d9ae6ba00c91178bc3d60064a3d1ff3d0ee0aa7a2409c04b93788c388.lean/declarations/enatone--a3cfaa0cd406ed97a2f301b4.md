# eNatOne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eac9dc09ec53a5f00278da607c23806acd6918d5c55bf2cbe4f2bb99698d7f6f",
  "kind": "def",
  "lexical_name": "eNatOne",
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
  "slug": "enatone--a3cfaa0cd406ed97a2f301b4",
  "source": {
    "blob": "a32d282f8922bac46561588b4d0a6b520287f730",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3cfaa0cd406ed97a2f301b46870fb73605d45e36af7c88193aac8b84c2cbb88",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eac9dc09ec53a5f00278da607c23806acd6918d5c55bf2cbe4f2bb99698d7f6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eNatOne := mkApp (Expr.const ``Nat.succ []) eNatZero

/-! ### `Lean.Expr.getAppApps` -/

#guard Expr.getAppApps (.const `f []) == #[]
#guard Expr.getAppApps (mkAppN (.const `f []) #[eTrue]) == #[.app (.const `f []) eTrue]
#guard Expr.getAppApps (mkAppN (.const `f []) #[eTrue, eFalse]) ==
        #[.app (.const `f []) eTrue, .app (.app (.const `f []) eTrue) eFalse]

/-! ### `Lean.Expr.reduceProjStruct?` -/

/-- info: none -/
#guard_msgs in #eval Expr.reduceProjStruct? eTrue
/-- info: none -/
#guard_msgs in #eval Expr.reduceProjStruct? (.const ``Prod.fst [levelOne, levelOne])
/-- info: some (Lean.Expr.app (Lean.Expr.const `Nat.succ []) (Lean.Expr.const `Nat.zero [])) -/
#guard_msgs in #eval Expr.reduceProjStruct? <|
  mkAppN (.const ``Prod.fst [levelOne, levelOne])
    #[eNat, eNat, mkAppN (.const ``Prod.mk [levelOne, levelOne]) #[eNat, eNat, eNatOne, eNatZero]]
/-- info: some (Lean.Expr.const `Nat.zero []) -/
#guard_msgs in #eval Expr.reduceProjStruct? <|
  mkAppN (.const ``Prod.snd [levelOne, levelOne])
    #[eNat, eNat, mkAppN (.const ``Prod.mk [levelOne, levelOne]) #[eNat, eNat, eNatOne, eNatZero]]
/--
error: ill-formed expression, Prod.fst is the 1-th projection function
but Prod.mk does not have enough arguments
-/
#guard_msgs (error, drop info) in #eval Expr.reduceProjStruct? <|
  mkAppN (.const ``Prod.fst [levelOne, levelOne])
    #[eNat, eNat, mkAppN (.const ``Prod.mk [levelOne, levelOne]) #[eNat, eNat]]

/-! ### `Lean.Expr.forallNot_of_notExists` -/

open Elab Tactic in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Variant3b9e6d5d9ae6ba00c91178bc3d60064a3d1ff3d0ee0aa7a2409c04b93788c388.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a32d282f8922bac46561588b4d0a6b520287f730` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

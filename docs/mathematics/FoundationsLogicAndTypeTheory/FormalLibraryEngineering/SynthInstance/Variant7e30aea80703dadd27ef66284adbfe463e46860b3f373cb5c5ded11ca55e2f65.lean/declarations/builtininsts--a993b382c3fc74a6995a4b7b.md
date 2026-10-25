# builtinInsts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb82d8e8503421fcda37acdec5d3a7a0695a8ac5627ae2b0b206aaf6731717d5",
  "kind": "def",
  "lexical_name": "builtinInsts",
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
  "slug": "builtininsts--a993b382c3fc74a6995a4b7b",
  "source": {
    "blob": "ce7c02d7aa6aeb00fd4f58fcb82ab73b6fdb42de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a993b382c3fc74a6995a4b7bea39cbcb6fb45d7f335920e46d0d31c15e7a73d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb82d8e8503421fcda37acdec5d3a7a0695a8ac5627ae2b0b206aaf6731717d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def builtinInsts : Std.HashMap Expr Expr :=
  let nat := Nat.mkType
  let int := Int.mkType
  let us  := [Level.zero, Level.zero, Level.zero]
  Std.HashMap.ofList [
    (mkApp3 (mkConst ``HAdd us) nat nat nat, Nat.mkInstHAdd),
    (mkApp3 (mkConst ``HSub us) nat nat nat, Nat.mkInstHSub),
    (mkApp3 (mkConst ``HMul us) nat nat nat, Nat.mkInstHMul),
    (mkApp3 (mkConst ``HDiv us) nat nat nat, Nat.mkInstHDiv),
    (mkApp3 (mkConst ``HMod us) nat nat nat, Nat.mkInstHMod),
    (mkApp3 (mkConst ``HPow us) nat nat nat, Nat.mkInstHPow),
    (mkApp  (mkConst ``LT [0]) nat, Nat.mkInstLT),
    (mkApp  (mkConst ``LE [0]) nat, Nat.mkInstLE),

    (mkApp3 (mkConst ``HAdd us) int int int, Int.mkInstHAdd),
    (mkApp3 (mkConst ``HSub us) int int int, Int.mkInstHSub),
    (mkApp3 (mkConst ``HMul us) int int int, Int.mkInstHMul),
    (mkApp3 (mkConst ``HDiv us) int int int, Int.mkInstHDiv),
    (mkApp3 (mkConst ``HMod us) int int int, Int.mkInstHMod),
    (mkApp3 (mkConst ``HPow us) int nat int, Int.mkInstHPow),
    (mkApp  (mkConst ``LT [0]) int, Int.mkInstLT),
    (mkApp  (mkConst ``LE [0]) int, Int.mkInstLE),
  ]

/--
Some modules in grind use builtin instances defined directly in core (e.g., `lia`).
Users may provide nonstandard instances that are definitionally equal to the ones in core.
Given a type, such as `HAdd Int Int Int`, this function returns the instance defined in
core.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SynthInstance/Variant7e30aea80703dadd27ef66284adbfe463e46860b3f373cb5c5ded11ca55e2f65.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce7c02d7aa6aeb00fd4f58fcb82ab73b6fdb42de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

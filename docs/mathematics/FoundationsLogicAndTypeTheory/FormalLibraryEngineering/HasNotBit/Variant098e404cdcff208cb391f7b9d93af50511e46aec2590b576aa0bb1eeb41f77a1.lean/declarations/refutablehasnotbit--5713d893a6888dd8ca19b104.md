# refutableHasNotBit?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16b56aa63de4ecfcfdc08ece0e1935e3e75a96e96340bd5111f794aa93cccdfa",
  "kind": "def",
  "lexical_name": "refutableHasNotBit?",
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
  "slug": "refutablehasnotbit--5713d893a6888dd8ca19b104",
  "source": {
    "blob": "e13710ea1975c997e3a087e38735a3e2d946bde1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 49,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasNotBit/Variant098e404cdcff208cb391f7b9d93af50511e46aec2590b576aa0bb1eeb41f77a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5713d893a6888dd8ca19b104bd1881be0b00bbe6f95d453dda10538d4d04f2ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasNotBit/Variant098e404cdcff208cb391f7b9d93af50511e46aec2590b576aa0bb1eeb41f77a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16b56aa63de4ecfcfdc08ece0e1935e3e75a96e96340bd5111f794aa93cccdfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def refutableHasNotBit? (e : Expr) : MetaM (Option Expr) := do
  match_expr e with
  | Nat.hasNotBit mask bit =>
    let bit' ← whnf bit -- reduce ctorIdxApp, to get closed terms
    if bit'.hasFVar then return none
    -- Reduce to get equalities
    let some (_, lhs, rhs) ← matchNe? (mkApp2 (mkConst `Nat.hasNotBit) mask bit') | unreachable!
    if (← isDefEq lhs rhs) then
      return some <| mkApp3 (mkConst ``Nat.eq_of_beq_eq_true) lhs rhs reflBoolTrue
    else
      return none
  | _ => return none

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasNotBit/Variant098e404cdcff208cb391f7b9d93af50511e46aec2590b576aa0bb1eeb41f77a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasNotBit/Variant098e404cdcff208cb391f7b9d93af50511e46aec2590b576aa0bb1eeb41f77a1.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e13710ea1975c997e3a087e38735a3e2d946bde1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# refutableHasNotBit?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:765e319c202f7da2670869f43b15d962eb9b5da84657a5646612f8099565e566",
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
  "slug": "refutablehasnotbit--e591bd53f262b541e9a006b2",
  "source": {
    "blob": "f7e4bf9a69bbd700091c7cde0a9a1ef05e78445d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasNotBit/Variant92db38e21251cfbce16b035c02991beb81d45e5c850d5f1b721b7dd0b3e8f510.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e591bd53f262b541e9a006b2b5266919ebb796f98fe870faae43296a3d66e4e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasNotBit/Variant92db38e21251cfbce16b035c02991beb81d45e5c850d5f1b721b7dd0b3e8f510.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:765e319c202f7da2670869f43b15d962eb9b5da84657a5646612f8099565e566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–70.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasNotBit/Variant92db38e21251cfbce16b035c02991beb81d45e5c850d5f1b721b7dd0b3e8f510.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasNotBit/Variant92db38e21251cfbce16b035c02991beb81d45e5c850d5f1b721b7dd0b3e8f510.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7e4bf9a69bbd700091c7cde0a9a1ef05e78445d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

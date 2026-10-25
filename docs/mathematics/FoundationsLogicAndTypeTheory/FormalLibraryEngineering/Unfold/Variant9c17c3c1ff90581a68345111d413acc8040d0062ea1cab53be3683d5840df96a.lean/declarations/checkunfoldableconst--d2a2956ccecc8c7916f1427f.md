# checkUnfoldableConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:163baec92265bd70d7f3b4b20602ee76d52189b904be64d273955f6ce56278b9",
  "kind": "def",
  "lexical_name": "checkUnfoldableConst",
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
  "slug": "checkunfoldableconst--d2a2956ccecc8c7916f1427f",
  "source": {
    "blob": "7d599a3b94860d11ef581ed04d31ae5a77912513",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant9c17c3c1ff90581a68345111d413acc8040d0062ea1cab53be3683d5840df96a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2a2956ccecc8c7916f1427f5613cbc38429672ba6492a3e751df878d819a12a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant9c17c3c1ff90581a68345111d413acc8040d0062ea1cab53be3683d5840df96a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:163baec92265bd70d7f3b4b20602ee76d52189b904be64d273955f6ce56278b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkUnfoldableConst (decl : Name) : MetaM (Option Name) :=
  withoutModifyingState do
    let e ← mkConstWithFreshMVarLevels decl
    let t := (← getConstInfo decl).type
    let unfoldThm? ← getUnfoldEqnFor? decl
    forallTelescope t λ args _ => do
      let testExpr := mkAppN e args
      let unfoldResult ←
        unfoldMany (if · == decl then some unfoldThm? else none) testExpr
      match unfoldResult with
      | none =>
        throwError "Declaration '{decl}' cannot be unfolded."
      | some (e', _) =>
        if hasConst decl e' then
          throwError "Recursive definition '{decl}' cannot be used as an unfold rule (it would be unfolded infinitely often). Try adding a simp rule for it."
    return unfoldThm?

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant9c17c3c1ff90581a68345111d413acc8040d0062ea1cab53be3683d5840df96a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Unfold/Variant9c17c3c1ff90581a68345111d413acc8040d0062ea1cab53be3683d5840df96a.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d599a3b94860d11ef581ed04d31ae5a77912513` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

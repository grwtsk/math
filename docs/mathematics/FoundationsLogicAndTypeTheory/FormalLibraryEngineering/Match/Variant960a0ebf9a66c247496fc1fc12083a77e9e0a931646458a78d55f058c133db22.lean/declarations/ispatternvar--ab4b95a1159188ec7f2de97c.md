# isPatternVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63d91865d457113d6795cd3b77443015918c916e2a76722104b03ab83130130f",
  "kind": "def",
  "lexical_name": "isPatternVar",
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
  "slug": "ispatternvar--ab4b95a1159188ec7f2de97c",
  "source": {
    "blob": "ab2b4b57363560ab4a981fdcc553128bf077e7d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1287,
    "line": 1274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab4b95a1159188ec7f2de97c246861c033e19cb19c7030d2a21e7cf81d0562f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63d91865d457113d6795cd3b77443015918c916e2a76722104b03ab83130130f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1274–1287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isPatternVar (stx : Syntax) : TermElabM Bool := do
  match (← resolveId? stx "pattern") with
  | none   => return isAtomicIdent stx
  | some f => match f with
    | Expr.const fName _ =>
      match (← getEnv).find? fName with
      | some (ConstantInfo.ctorInfo _) => return false
      | some _                         => return !hasMatchPatternAttribute (← getEnv) fName
      | _                              => return isAtomicIdent stx
    | _ => return isAtomicIdent stx
where
  isAtomicIdent (stx : Syntax) : Bool :=
    stx.isIdent && stx.getId.eraseMacroScopes.isAtomic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Match/Variant960a0ebf9a66c247496fc1fc12083a77e9e0a931646458a78d55f058c133db22.lean#L1274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab2b4b57363560ab4a981fdcc553128bf077e7d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

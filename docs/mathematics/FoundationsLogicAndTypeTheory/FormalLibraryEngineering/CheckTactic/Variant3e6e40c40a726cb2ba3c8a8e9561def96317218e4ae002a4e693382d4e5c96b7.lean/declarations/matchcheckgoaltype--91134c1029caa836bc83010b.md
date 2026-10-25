# matchCheckGoalType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:94b6c32401d0898c1bb09864eccff8725736c3191a8d6ea67f955b00dd1a7ea9",
  "kind": "def",
  "lexical_name": "matchCheckGoalType",
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
  "slug": "matchcheckgoaltype--91134c1029caa836bc83010b",
  "source": {
    "blob": "fbda16ade0b5a018f9d61b78d3250bdae13848ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91134c1029caa836bc83010b7f223faa1da15bebe3502c1a44475a5a6d1d331e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:94b6c32401d0898c1bb09864eccff8725736c3191a8d6ea67f955b00dd1a7ea9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def matchCheckGoalType (stx : Syntax) (goalType : Expr) : MetaM (Expr × Expr × Level) := do
  let u ← mkFreshLevelMVar
  let type ← mkFreshExprMVar (some (.sort u))
  let val  ← mkFreshExprMVar (some type)
  let extType := mkAppN (.const ``CheckGoalType [u]) #[type, val]
  if !(← isDefEq goalType extType) then
    throwErrorAt stx "Goal{indentExpr goalType}\nis expected to match {indentExpr extType}"
  pure (val, type, u)

end Lean.Meta.CheckTactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CheckTactic/Variant3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbda16ade0b5a018f9d61b78d3250bdae13848ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# getIsCharInst?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45b9192c5b47dd785650e4c59dda6987c467f229b938e46a0e45fc5c23921942",
  "kind": "def",
  "lexical_name": "getIsCharInst?",
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
  "slug": "getischarinst--d08db0c77cf8785d0526321e",
  "source": {
    "blob": "1ea4ac8649f51e05c5a95192299cfe569ee9c54e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 21,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Insts/Variant15f89b1eb850dd3e800c53ca800e77d890934f543eff8ce2bc26077d40474278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d08db0c77cf8785d0526321e2b8bcf7993e17ca5fae73445dbdfdf9ff642c895",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Insts/Variant15f89b1eb850dd3e800c53ca800e77d890934f543eff8ce2bc26077d40474278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45b9192c5b47dd785650e4c59dda6987c467f229b938e46a0e45fc5c23921942`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–21.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getIsCharInst? (u : Level) (type : Expr) (semiringInst : Expr) : GoalM (Option (Expr × Nat)) := do withNewMCtxDepth do
  let n ← mkFreshExprMVar (mkConst ``Nat)
  let charType := mkApp3 (mkConst ``Grind.IsCharP [u]) type semiringInst n
  let some charInst ← synthInstance? charType | return none
  let n ← instantiateMVars n
  let some n ← evalNat? n | return none
  return some (charInst, n)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Insts/Variant15f89b1eb850dd3e800c53ca800e77d890934f543eff8ce2bc26077d40474278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Insts/Variant15f89b1eb850dd3e800c53ca800e77d890934f543eff8ce2bc26077d40474278.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ea4ac8649f51e05c5a95192299cfe569ee9c54e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

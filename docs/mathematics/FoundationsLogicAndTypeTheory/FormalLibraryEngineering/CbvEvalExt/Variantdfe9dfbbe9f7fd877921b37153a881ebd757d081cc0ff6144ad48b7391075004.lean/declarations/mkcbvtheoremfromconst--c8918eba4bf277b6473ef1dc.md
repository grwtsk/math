# mkCbvTheoremFromConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47f57d06833ae889e3fb557f2181b542c54c5dce54749820c1756c0ff13b2db3",
  "kind": "def",
  "lexical_name": "mkCbvTheoremFromConst",
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
  "slug": "mkcbvtheoremfromconst--c8918eba4bf277b6473ef1dc",
  "source": {
    "blob": "8eab48d4d296b61fbd0a654fa039acf08ad5e9e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 57,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8918eba4bf277b6473ef1dc01ee4ae59bd7e19f5d16b199ce50d680185e9399",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47f57d06833ae889e3fb557f2181b542c54c5dce54749820c1756c0ff13b2db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCbvTheoremFromConst (declName : Name) (inv : Bool := false) : MetaM CbvEvalEntry := do
  let cinfo ← getConstVal declName
  let us := cinfo.levelParams.map mkLevelParam
  let val := mkConst declName us
  let type ← inferType val
  unless (← isProp type) do throwError "{val} is not a theorem and thus cannot be marked with `cbv_eval` attribute"
  let (fnName, thmDeclName) ← forallTelescope type fun xs body => do
    let some (_, lhs, rhs) := body.eq? | throwError "The conclusion {type} of theorem {val} is not an equality"
    let matchSide := if inv then rhs else lhs
    let some constName := matchSide.getAppFn.constName?
      | throwError "The rewrite side of theorem {val} is not an application of a constant"
    let mut thmDeclName := declName
    if inv then
      let invType ← mkForallFVars xs (← mkEq rhs lhs)
      let invVal ← mkLambdaFVars xs (← mkEqSymm (mkAppN val xs))
      thmDeclName ← mkAuxLemma (kind? := `_cbv_eval) cinfo.levelParams invType invVal
    return (constName, thmDeclName)
  let thm ← mkTheoremFromDecl thmDeclName
  return ⟨declName, fnName, thm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CbvEvalExt/Variantdfe9dfbbe9f7fd877921b37153a881ebd757d081cc0ff6144ad48b7391075004.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eab48d4d296b61fbd0a654fa039acf08ad5e9e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

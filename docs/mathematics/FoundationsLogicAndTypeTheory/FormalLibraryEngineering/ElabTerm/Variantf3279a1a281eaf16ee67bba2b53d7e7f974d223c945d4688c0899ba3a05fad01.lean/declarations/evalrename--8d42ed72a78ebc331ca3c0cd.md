# evalRename

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb34ccdfa69ab7e2d0ae68bfd89853e8390ac1baa2a95848a4a19cb14544647c",
  "kind": "def",
  "lexical_name": "evalRename",
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
  "slug": "evalrename--8d42ed72a78ebc331ca3c0cd",
  "source": {
    "blob": "50169e2c8356c5fdf3ce285786d4c8efcb85f718",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 355,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d42ed72a78ebc331ca3c0cdd355d06e494d2a9654cb40dccae5cb83818ed976",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb34ccdfa69ab7e2d0ae68bfd89853e8390ac1baa2a95848a4a19cb14544647c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.rename] def evalRename : Tactic := fun stx =>
  match stx with
  | `(tactic| rename $typeStx:term => $h:ident) => do
    withMainContext do
      /- Remark: we also use `withoutRecover` to make sure `elabTerm` does not succeed
         using `sorryAx`, and we get `"failed to find ..."` which will not be logged because
         it contains synthetic sorry's -/
      let fvarId ← withoutModifyingState <| withNewMCtxDepth <| withoutRecover do
        let type ← elabTerm typeStx none (mayPostpone := true)
        let fvarId? ← (← getLCtx).findDeclRevM? fun localDecl => do
          if !localDecl.isImplementationDetail && (← isDefEq type localDecl.type) then return localDecl.fvarId else return none
        match fvarId? with
        | none => throwError "Failed to find a hypothesis with type{indentExpr type}"
        | some fvarId => return fvarId
      replaceMainGoal [← (← getMainGoal).rename fvarId h.getId]
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElabTerm/Variantf3279a1a281eaf16ee67bba2b53d7e7f974d223c945d4688c0899ba3a05fad01.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50169e2c8356c5fdf3ce285786d4c8efcb85f718` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

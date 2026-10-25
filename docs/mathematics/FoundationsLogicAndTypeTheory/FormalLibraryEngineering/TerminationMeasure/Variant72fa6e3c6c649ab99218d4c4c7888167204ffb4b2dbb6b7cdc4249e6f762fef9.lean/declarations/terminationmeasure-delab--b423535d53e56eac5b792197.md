# TerminationMeasure.delab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e1c846d467e7a9094194b965c95b4c55b67fe8bc0d6f61c62503046d7ab6514",
  "kind": "def",
  "lexical_name": "TerminationMeasure.delab",
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
  "slug": "terminationmeasure-delab--b423535d53e56eac5b792197",
  "source": {
    "blob": "dc1af642e40df11c9fd800aef65914851e877af7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 113,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b423535d53e56eac5b792197332785dc5aa8bbd535c2c8be0583c3acb1b4183b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e1c846d467e7a9094194b965c95b4c55b67fe8bc0d6f61c62503046d7ab6514`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TerminationMeasure.delab (arity : Nat) (extraParams : Nat) (measure : TerminationMeasure) : MetaM (TSyntax ``terminationBy) := do
  lambdaBoundedTelescope measure.fn (arity - extraParams) fun _ys e => do
    pure (← delabCore e (delab := go extraParams #[])).1
  where
    go : Nat → TSyntaxArray `ident → DelabM (TSyntax ``terminationBy)
    | 0, vars => do
      let stxBody ← Delaborator.delab
      let hole : TSyntax `Lean.Parser.Term.hole ← `(hole|_)

      -- any variable not mentioned syntactically (it may appear in the `Expr`, so do not just use
      -- `e.bindingBody!.hasLooseBVar`) should be delaborated as a hole.
      let vars  : TSyntaxArray [`ident, `Lean.Parser.Term.hole] :=
        Array.map (fun (i : Ident) => if stxBody.raw.hasIdent i.getId then i else hole) vars
      -- drop trailing underscores
      let mut vars := vars
      while ! vars.isEmpty && vars.back!.raw.isOfKind ``hole do vars := vars.pop
      if measure.structural then
        if vars.isEmpty then
          `(terminationBy|termination_by structural $stxBody)
        else
          `(terminationBy|termination_by structural $vars* => $stxBody)
      else
        if vars.isEmpty then
          `(terminationBy|termination_by $stxBody)
        else
          `(terminationBy|termination_by $vars* => $stxBody)
    | i+1, vars => do
      let e ← getExpr
      unless e.isLambda do return ← go 0 vars -- should not happen
      withBindingBodyUnusedName fun n => go i (vars.push ⟨n⟩)

end Lean.Elab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variant72fa6e3c6c649ab99218d4c4c7888167204ffb4b2dbb6b7cdc4249e6f762fef9.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc1af642e40df11c9fd800aef65914851e877af7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

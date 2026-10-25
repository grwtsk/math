# TerminationMeasure.delab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1b3fabc302b58f535a5040f55db25e12d575bcca1c170b893803c77a7cbda3ca",
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
  "slug": "terminationmeasure-delab--58f65b0b84f8ac59493604d7",
  "source": {
    "blob": "bd9b520513d877501adeae20d62fcc4f3cea7498",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 105,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:58f65b0b84f8ac59493604d72bc66bc1947de04d13f057b5c3247dc7fbf26505",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1b3fabc302b58f535a5040f55db25e12d575bcca1c170b893803c77a7cbda3ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–136.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TerminationMeasure/Variantc660467d2dce26bffab94ac5009625abacd7ff0b7d1e121a70bcfc7a35d60c87.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd9b520513d877501adeae20d62fcc4f3cea7498` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

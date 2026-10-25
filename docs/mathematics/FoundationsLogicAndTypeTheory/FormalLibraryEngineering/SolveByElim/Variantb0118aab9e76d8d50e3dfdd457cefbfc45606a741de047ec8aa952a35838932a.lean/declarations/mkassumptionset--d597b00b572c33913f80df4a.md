# mkAssumptionSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e2729dea703ca73b519141aec678951dce83222f4e3d4b76ce0345ec8089595",
  "kind": "def",
  "lexical_name": "mkAssumptionSet",
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
  "slug": "mkassumptionset--d597b00b572c33913f80df4a",
  "source": {
    "blob": "c5b3589c48a07965b5a4d3be497d2d1a935f4d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d597b00b572c33913f80df4a27567c441bfa00944049821d396e856fec2ddbaa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e2729dea703ca73b519141aec678951dce83222f4e3d4b76ce0345ec8089595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkAssumptionSet (noDefaults star : Bool) (add remove : List Term) (use : Array Ident) :
    MetaM (List (TermElabM Expr) × TermElabM (List Expr)) := do
  if star && !noDefaults then
    throwError "It doesn't make sense to use `*` without `only`."

  let defaults : List (TermElabM Expr) :=
    [← `(rfl), ← `(trivial), ← `(congrFun), ← `(congrArg)].map elab'
  let labelledLemmas := (← use.mapM (labelled ·.raw.getId)).flatten.toList
    |>.map (liftM <| mkConstWithFreshMVarLevels ·)
  let lemmas := if noDefaults then
    add.map elab' ++ labelledLemmas
  else
    add.map elab' ++ labelledLemmas ++ defaults

  if !remove.isEmpty && noDefaults && !star then
    throwError "It doesn't make sense to remove local hypotheses when using `only` without `*`."
  let locals : TermElabM (List Expr) := if noDefaults && !star then do
    pure []
  else do
    pure <| (← getLocalHyps).toList.removeAll (← remove.mapM elab')

  return (lemmas, locals)
  where
  /-- Run `elabTerm`. -/
  elab' (t : Term) : TermElabM Expr := Elab.Term.elabTerm t.raw none

/-- Syntax for omitting a local hypothesis in `solve_by_elim`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SolveByElim/Variantb0118aab9e76d8d50e3dfdd457cefbfc45606a741de047ec8aa952a35838932a.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5b3589c48a07965b5a4d3be497d2d1a935f4d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

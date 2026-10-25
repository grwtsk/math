# elabLinearCombination

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42961f8d78c295f06897194bceb65589cb933741d4afd4f88eed4f040a13a9fc",
  "kind": "def",
  "lexical_name": "elabLinearCombination",
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
  "slug": "elablinearcombination--f8bbe2b76060c0cbcf1e083a",
  "source": {
    "blob": "88ba7708252df5e7c1b5636afa68a0bea180546c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f8bbe2b76060c0cbcf1e083aeead02dfa8ab1a0c33395d5256d8bbd1b7fb8d8f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42961f8d78c295f06897194bceb65589cb933741d4afd4f88eed4f040a13a9fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabLinearCombination (tk : Syntax)
    (norm? : Option Syntax.Tactic) (exp? : Option Syntax.NumLit) (input : Option Syntax.Term) :
    Tactic.TacticM Unit := Tactic.withMainContext <| Tactic.focus do
  let eType ← withReducible <| (← Tactic.getMainGoal).getType'
  let (goalRel, ty, _) ← eType.ineq?
  -- build the specified linear combination of the hypotheses
  let (hypRel, p) ← match input with
  | none => Prod.mk eq <$>  `(Eq.refl 0)
  | some e =>
    match ← expandLinearCombo ty e with
    | .const c =>
      logWarningAt c "this constant has no effect on the linear combination; it can be dropped \
        from the term"
      Prod.mk eq <$> `(Eq.refl 0)
    | .proof hypRel p => pure (hypRel, p)
  -- look up the lemma for the central `refine` in `linear_combination`
  let (reduceLem, newGoalRel) : Name × Ineq := ← do
    match Ineq.relImpRelData hypRel goalRel with
    | none => throwError "cannot prove an equality from inequality hypotheses"
    | some n => pure n
  -- build the term for the central `refine` in `linear_combination`
  let p' ← do
    match exp? with
    | some n =>
      if n.getNat = 1 then
        `($(mkIdent reduceLem) $p ?a)
      else
        match hypRel with
        | eq => `(eq_of_add_pow $n $p ?a)
        | _ => throwError
          "linear_combination tactic not implemented for exponentiation of inequality goals"
    | _ => `($(mkIdent reduceLem) $p ?a)
  -- run the central `refine` in `linear_combination`
  Term.withoutErrToSorry <| Tactic.refineCore p' `refine false
  -- if we are in a "true" ring, with well-behaved negation, we rearrange from the form
  -- `[stuff] = [stuff]` (or `≤` or `<`) to the form `[stuff] = 0` (or `≤` or `<`), because this
  -- gives more useful error messages on failure
  let _ ← Tactic.tryTactic <| Tactic.liftMetaTactic fun g ↦ g.applyConst newGoalRel.rearrangeData
  match norm? with
  -- now run the normalization tactic provided
  | some norm => Tactic.evalTactic norm
  -- or the default normalization tactic if none is provided
  | none => withRef tk <| Tactic.liftMetaFinishingTactic <|
    match newGoalRel with
    -- for an equality task the default normalization tactic is (the internals of) `ring1` (but we
    -- use `.instances` transparency, which is arguably more robust in algebraic settings than the
    -- choice `.reducible` made in `ring1`)
    | eq => fun g ↦ AtomM.run .instances <| Ring.proveEq g
    | le => Ring.proveLE
    | lt => Ring.proveLT

/--
The `(norm := $tac)` syntax says to use `tac` as a normalization postprocessor for
`linear_combination`. The default normalizer is `ring1`, but you can override it with `ring_nf`
to get subgoals from `linear_combination` or with `skip` to disable normalization.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LinearCombination/Variant80b4c85b4c03a812568c9b0669e3e565977e13963672be1078895de05726417b.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88ba7708252df5e7c1b5636afa68a0bea180546c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

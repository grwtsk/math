# withBelowDict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de97c3160f58b235c43f22e6f2b9354f9fe4133847ce74ea3c135a922fb16664",
  "kind": "def",
  "lexical_name": "withBelowDict",
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
  "slug": "withbelowdict--23e04fb97bead06c53d54daa",
  "source": {
    "blob": "dc394837112c226eb56a74fa2977fa6eb6134a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 75,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23e04fb97bead06c53d54daaba81199beed5ec2ad34595aa3790bb1f91487489",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de97c3160f58b235c43f22e6f2b9354f9fe4133847ce74ea3c135a922fb16664`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def withBelowDict [Inhabited α] (below : Expr) (numIndParams : Nat)
    (positions : Positions) (k : Array Expr → Expr → MetaM α) : MetaM α := do
  let numTypeFormers := positions.size
  let belowType ← inferType below
  trace[Elab.definition.structural] "belowType: {belowType}"
  unless (← isTypeCorrect below) do
    trace[Elab.definition.structural] "not type correct!"
  belowType.withApp fun f args => do
    unless numIndParams + numTypeFormers < args.size do
      trace[Elab.definition.structural] "unexpected 'below' type{indentExpr belowType}"
      throwToBelowFailed
    let params := args[*...numIndParams]
    let finalArgs := args[(numIndParams+numTypeFormers)...*]
    let pre := mkAppN f params
    let motiveTypes ← inferArgumentTypesN numTypeFormers pre
    let numMotives : Nat := positions.numIndices
    trace[Elab.definition.structural] "numMotives: {numMotives}"
    let mut CTypes := Array.replicate numMotives (.sort 37) -- dummy value
    for poss in positions, motiveType in motiveTypes do
      for pos in poss do
        CTypes := CTypes.set! pos motiveType
    let CDecls : Array (Name × (Array Expr → MetaM Expr)) ← CTypes.mapM fun t => do
        return ((← mkFreshUserName `C), fun _ => pure t)
    withLocalDeclsD CDecls fun Cs => do
      -- We have to pack these canary motives like we packed the real motives
      let packedCs ← positions.mapMwith PProdN.packLambdas motiveTypes Cs
      let belowDict := mkAppN pre packedCs
      let belowDict := mkAppN belowDict finalArgs
      trace[Elab.definition.structural] "initial belowDict for {Cs}:{indentExpr belowDict}"
      unless (← isTypeCorrect belowDict) do
        trace[Elab.definition.structural] "not type correct!"
      k Cs belowDict

/--
  `below` is a free variable with type of the form `I.below indParams motive indices major`,
  where `I` is the name of an inductive datatype.

  For example, when trying to show that the following function terminates using structural recursion
  ```lean
  def addAdjacent : List Nat → List Nat
  | []       => []
  | [a]      => [a]
  | a::b::as => (a+b) :: addAdjacent as
  ```
  when we are visiting `addAdjacent as` at `replaceRecApps`, `below` has type
  `@List.below Nat (fun (x : List Nat) => List Nat) (a::b::as)`
  The motive `fun (x : List Nat) => List Nat` depends on the actual function we are trying to compute.
  So, we first replace it with a fresh variable `C` at `withBelowDict`.
  Recall that `brecOn` implements course-of-values recursion, and `below` can be viewed as a dictionary
  of the "previous values".
  We search this dictionary using the auxiliary function `toBelowAux`.
  The dictionary is built using the `PProd` (`And` for inductive predicates).
  We keep searching it until we find `C recArg`, where `C` is the auxiliary fresh variable created at `withBelowDict`.  -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc394837112c226eb56a74fa2977fa6eb6134a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# mkBody

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b6615652cf6fdb80ceecffd530c70346c34c5632f6b5a21b18dd7699d7f6482",
  "kind": "def",
  "lexical_name": "mkBody",
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
  "slug": "mkbody--ae44f5f91f1df06d8a99e257",
  "source": {
    "blob": "1fe444d412c8e9c16973008d5f25354b084ccfa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae44f5f91f1df06d8a99e257a9b7e04eb1ac5f106d4b806a7c727f0dd8daaa06",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b6615652cf6fdb80ceecffd530c70346c34c5632f6b5a21b18dd7699d7f6482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mkBody (header : Header) (inductiveVal : InductiveVal) (generatorType : TSyntax `term) : TermElabM Term := do
  -- Fetch the name of the target type (the type for which we are deriving a generator)
  let targetTypeName := inductiveVal.name

  -- Produce `Ident`s for the `fuel` argument for the lambda
  -- at the end of the generator function, as well as the `aux_arb` inner helper function
  let freshFuel := Lean.mkIdent (← Core.mkFreshUserName `fuel)
  let freshFuel' := Lean.mkIdent (← Core.mkFreshUserName `fuel')
  let auxArb := mkIdent `aux_arb

  -- Maintain two arrays which will be populated with pairs
  -- where the first component is a sub-generator (non-recursive / recursive)
  -- and the 2nd component is the generator's associated weight
  let mut weightedNonRecursiveGenerators := #[]
  let mut weightedRecursiveGenerators := #[]

  -- We also need to keep track of non-recursive generators without their weights,
  -- since some of Plausible's `Gen` combinators operate on generator functions
  let mut nonRecursiveGeneratorsNoWeights := #[]

  for ctorName in inductiveVal.ctors do
    let ctorIdent := mkIdent ctorName

    let ctorArgNamesTypes ← getCtorArgsNamesAndTypes header inductiveVal ctorName
    let (ctorArgNames, ctorArgTypes) := Array.unzip ctorArgNamesTypes

    /- Produce fresh names for each of the constructor's arguments.
      Producing fresh names is necessary in order to handle
      constructors expressed using the following syntax:
      ```
      inductive Foo
        | C : T1 → ... → Tn
      ```
      in which all the arguments to the constructor `C` don't have explicit names.
    -/
    let ctorArgIdents := Lean.mkIdent <$> ctorArgNames
    let ctorArgIdentsTypes := Array.zip ctorArgIdents ctorArgTypes

    if ctorArgNamesTypes.isEmpty then
      -- Constructor is nullary, we can just use an generator of the form `pure ...` with weight 1,
      -- following the QuickChick convention.
      -- (For clarity, this generator is parenthesized in the code produced.)
      let pureGen ← `(($(Lean.mkIdent `pure) $ctorIdent))
      weightedNonRecursiveGenerators := weightedNonRecursiveGenerators.push (← `((1, $pureGen)))
      nonRecursiveGeneratorsNoWeights := nonRecursiveGeneratorsNoWeights.push pureGen
    else
      -- Add all the constructor's argument names + types to the local context,
      -- then produce the body of the sub-generator (& a flag indicating if the constructor is recursive)
      let (generatorBody, ctorIsRecursive) ←
        withLocalDeclsDND ctorArgNamesTypes (fun _ => do
          let mut doElems := #[]

          -- Flag to indicate whether the constructor is recursive (initialized to `false`)
          let mut ctorIsRecursive := false

          -- Examine each argument to see which of them require recursive calls to the generator
          for (freshIdent, argType) in ctorArgIdentsTypes do
            -- If the argument's type is the same as the target type,
            -- produce a recursive call to the generator using `aux_arb`,
            -- otherwise generate a value using `arbitrary`
            let bindExpr ←
              if argType.isAppOf targetTypeName then
                -- We've detected that the constructor has a recursive argument, so we update the flag
                ctorIsRecursive := true
                `(doElem| let $freshIdent ← $(mkIdent `aux_arb):term $(freshFuel'):term)
              else
                `(doElem| let $freshIdent ← $(mkIdent ``Arbitrary.arbitrary):term)
            doElems := doElems.push bindExpr

          -- Create an expression `return C x1 ... xn` at the end of the generator, where
          -- `C` is the constructor name and the `xi` are the generated values for the args
          let pureExpr ← `(doElem| return $ctorIdent $ctorArgIdents*)
          doElems := doElems.push pureExpr

          -- Put the body of the generator together in an explicitly-parenthesized `do`-block
          let generatorBody ← `((do $[$doElems:doElem]*))
          pure (generatorBody, ctorIsRecursive))

      if !ctorIsRecursive then
        -- Non-recursive generators have weight 1, following the QuickChick convention
        weightedNonRecursiveGenerators := weightedNonRecursiveGenerators.push (← `((1, $generatorBody)))
        nonRecursiveGeneratorsNoWeights := nonRecursiveGeneratorsNoWeights.push generatorBody
      else
        -- Recursive generators have an associated weight of `fuel' + 1`, following the QuickChick convention
        weightedRecursiveGenerators := weightedRecursiveGenerators.push (← ``(($freshFuel' + 1, $generatorBody)))

  -- Use the first non-recursive generator (without its weight) as the default generator
  -- If the target type has no non-recursive constructors, we emit an error message
  -- saying that we cannot derive a generator for that type
  let defaultGenerator ← Option.getDM (nonRecursiveGeneratorsNoWeights[0]?)
    (throwError m!"derive Arbitrary failed, {targetTypeName} has no non-recursive constructors")

  -- Create the cases for the pattern-match on the fuel argument
  -- If `fuel = 0`, pick one of the non-recursive generators
  let mut caseExprs := #[]
  let zeroCase ← `(Term.matchAltExpr| | $(mkIdent ``Nat.zero) => $(mkIdent ``Gen.oneOfWithDefault) $defaultGenerator [$nonRecursiveGeneratorsNoWeights,*])
  caseExprs := caseExprs.push zeroCase

  -- If `fuel = fuel' + 1`, pick a generator (it can be non-recursive or recursive)
  let mut allWeightedGenerators ← `([$weightedNonRecursiveGenerators,*, $weightedRecursiveGenerators,*])
  let succCase ← `(Term.matchAltExpr| | $freshFuel' + 1 => $(mkIdent ``Gen.frequency) $defaultGenerator $allWeightedGenerators)
  caseExprs := caseExprs.push succCase

  -- Create function argument for the generator fuel
  let fuelParam ← `(Term.letIdBinder| ($freshFuel : $(mkIdent `Nat)))
  let matchExpr ← `(match $freshFuel:ident with $caseExprs:matchAlt*)

  -- Create an instance of the `ArbitraryFueled` typeclass
  `(let rec $auxArb:ident $fuelParam : $generatorType :=
      $matchExpr
    fun $freshFuel => $auxArb $freshFuel)


/-- Creates the function definition for the derived generator -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeriveArbitrary/Variant597d0663a5a6692600fb5a1f6958d878c29090e422d794732ad404fa0cbf610b.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fe444d412c8e9c16973008d5f25354b084ccfa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

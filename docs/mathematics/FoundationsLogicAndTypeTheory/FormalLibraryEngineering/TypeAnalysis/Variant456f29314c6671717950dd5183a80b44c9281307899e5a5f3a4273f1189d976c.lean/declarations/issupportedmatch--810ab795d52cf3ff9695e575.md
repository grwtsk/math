# isSupportedMatch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cc32de76f5e1e015d9a4c371f8aa8dc1ec529721be507c415eaa414c63699d6",
  "kind": "def",
  "lexical_name": "isSupportedMatch",
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
  "slug": "issupportedmatch--810ab795d52cf3ff9695e575",
  "source": {
    "blob": "3bd163b5fdd2183e21a6d8594d3dc7bcfb13679c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:810ab795d52cf3ff9695e575aeab48f9d401e37e76d4b7e2a86e2982616c45f8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cc32de76f5e1e015d9a4c371f8aa8dc1ec529721be507c415eaa414c63699d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public def isSupportedMatch (declName : Name) : MetaM (Option MatchKind) := do
  let some info ← getMatcherInfo? declName | return none
  if info.discrInfos.size ≠ 1 then return none
  if info.discrInfos[0]!.hName?.isSome then return none
  let .defnInfo defnInfo ← getConstInfo declName | return none
  forallTelescope defnInfo.type fun xs a => do
    if xs.size < 2 then return none
    -- Check that discriminator is `EnumInductive`
    let discr := xs[1]!
    let some discrTypeName := (← inferType discr).constName? | return none
    if !(← isEnumType discrTypeName) then return none
    let .inductInfo inductiveInfo ← getConstInfo discrTypeName | unreachable!

    -- Check that motive is `EnumInductive → Sort u`
    let motive := xs[0]!
    let motiveType ← inferType motive
    let some (.const domTypeName .., (.sort (.param ..))) := motiveType.arrow? | return none
    if domTypeName != discrTypeName then return none

    -- Check that resulting type is `motive discr`
    let retTypeOk ← a.withApp fun fn arg =>
      return fn == motive && arg.size == 1 && arg[0]! == discr
    if !retTypeOk then return none
    let numCtors := inductiveInfo.numCtors

    /-
    At this point the control flow splits and tries to establish that the match is one of the kinds
    that we support.
    -/
    if xs.size == numCtors + 2 then
      /-
      This situation is most likely a full match but it could also be a match like:
      ```
      inductive Foo where
      | a
      | b

      def isA (f : Foo) : Bool :=
        match f with
        | .a => true
        | _ => false
      ```
      Where we have as many arms as constructors but the last arm is a default.
      -/

      if let some kind ← trySimpleEnum inductiveInfo xs numCtors motive then
        return kind

    if xs.size > 2 then
      -- Probably a match with default case

      -- Check that all parameters except the last are `h_n EnumInductive.ctor`
      let numConcreteCases := xs.size - 3 -- minus motive, discr and default case
      let mut handledCtors := Array.mkEmpty (xs.size - 3)
      for i in *...numConcreteCases do
        let argType ← inferType xs[i + 2]!
        let some (.const ``Unit [], (.app m (.const c ..))) := argType.arrow? | return none
        if m != motive then return none
        let .ctorInfo ctorInfo ← getConstInfo c | return none
        handledCtors := handledCtors.push ctorInfo

      -- Check that the last parameter looks like a default case one
      let defaultArgType ← inferType xs[xs.size - 1]!
      let defaultOk ← forallTelescope defaultArgType fun args dom => do
        if args.size != 1 then return false
        let input := args[0]!
        if !(← inferType input).isConstOf discrTypeName then return false
        return dom.withApp fun fn arg => fn == motive && arg.size == 1 && arg[0]! == input

      if !defaultOk then return none

      return some <| .enumWithDefault inductiveInfo handledCtors
    else
      return none
where
  trySimpleEnum (inductiveInfo : InductiveVal) (xs : Array Expr)
      (numCtors : Nat) (motive : Expr) : MetaM (Option MatchKind) := do
    -- Check that all parameters are `h_n EnumInductive.ctor`
    let mut handledCtors := Array.mkEmpty numCtors
    for i in *...numCtors do
      let argType ← inferType xs[i + 2]!
      let some (.const ``Unit [], (.app m (.const c ..))) := argType.arrow? | return none
      if m != motive then return none
      let .ctorInfo ctorInfo ← getConstInfo c | return none
      handledCtors := handledCtors.push ctorInfo

    return some <| .simpleEnum inductiveInfo handledCtors

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TypeAnalysis/Variant456f29314c6671717950dd5183a80b44c9281307899e5a5f3a4273f1189d976c.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bd163b5fdd2183e21a6d8594d3dc7bcfb13679c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

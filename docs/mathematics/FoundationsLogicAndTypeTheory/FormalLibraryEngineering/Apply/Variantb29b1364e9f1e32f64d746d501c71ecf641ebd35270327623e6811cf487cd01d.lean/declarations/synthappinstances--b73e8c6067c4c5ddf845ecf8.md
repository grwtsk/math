# synthAppInstances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b911703a25b3260ca59b1c55068fd77d9c54737420d220eafb78f4a0367dfe36",
  "kind": "def",
  "lexical_name": "synthAppInstances",
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
  "slug": "synthappinstances--b73e8c6067c4c5ddf845ecf8",
  "source": {
    "blob": "0b1ce93f4b13e0507ca333baf895d38dd0cc77a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b73e8c6067c4c5ddf845ecf826a5b4a90610ef1c69afd6a8ffaebe476d4f9129",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b911703a25b3260ca59b1c55068fd77d9c54737420d220eafb78f4a0367dfe36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def synthAppInstances (tacticName : Name) (mvarId : MVarId) (mvarsNew : Array Expr) (binderInfos : Array BinderInfo)
    (synthAssignedInstances : Bool) (allowSynthFailures : Bool) : MetaM Unit := do
  let mut todo := #[]
  -- Collect metavariables to synthesize
  for mvar in mvarsNew, binderInfo in binderInfos do
    if binderInfo.isInstImplicit then
      if synthAssignedInstances || !(← mvar.mvarId!.isAssigned) then
        todo := todo.push mvar
  while !todo.isEmpty do
    todo ← step todo
where
  /--
  Try to synthesize instances for the metavariables `mvars`.
  Returns metavariables that still need to be synthesized.
  We can view the resulting array as the set of metavariables that we should try again.
  This is needed when applying or rewriting with functions with complex instances.
  For example, consider `rw [@map_smul]` where `map_smul` is
  ```
  map_smul {F : Type u_1} {M : Type u_2} {N : Type u_3} {φ : M → N}
           {X : Type u_4} {Y : Type u_5}
           [SMul M X] [SMul N Y] [FunLike F X Y] [MulActionSemiHomClass F φ X Y]
           (f : F) (c : M) (x : X) : DFunLike.coe f (c • x) = φ c • DFunLike.coe f x
  ```
  and `MulActionSemiHomClass` is defined as
  ```
  class MulActionSemiHomClass (F : Type _)
     {M N : outParam (Type _)} (φ : outParam (M → N))
     (X Y : outParam (Type _)) [SMul M X] [SMul N Y] [FunLike F X Y] : Prop where
  ```
  The left-hand-side of the equation does not bind `N`. Thus, `SMul N Y` cannot
  be synthesized until we synthesize `MulActionSemiHomClass F φ X Y`. Note that
  `N` is an output parameter for `MulActionSemiHomClass`.
  -/
  step (mvars : Array Expr) : MetaM (Array Expr) := do
    -- `ex?` stores the exception for this first synthesis failure in this step.
    let mut ex? := none
    -- `true` if we managed to synthesize an instance after we hit a failure.
    -- That is, there is a chance we may succeed if we try again.
    let mut progressAfterEx := false
    -- Metavariables that we failed to synthesize.
    let mut postponed := #[]
    for mvar in mvars do
      let mvarType ← inferType mvar
      let mvarVal? ← try
        let mvarVal ← synthInstance mvarType
        unless postponed.isEmpty do
          progressAfterEx := true
        pure (some mvarVal)
      catch ex =>
        ex? := some ex
        postponed := postponed.push mvar
        pure none
      if let some mvarVal := mvarVal? then
        unless (← isDefEq mvar mvarVal) do
          -- There is no point in trying again for this kind of failure
          unless allowSynthFailures do
            throwTacticEx tacticName mvarId "failed to assign synthesized instance"
    if let some ex := ex? then
      if progressAfterEx then
        return postponed
      else
        -- There is no point in running `step` again. We should give up (`allowSynthFailures`),
        -- or throw the first exception we found in this `step`.
        if allowSynthFailures then return #[] else throw ex
    else
      -- Done. We successfully synthesized all metavariables.
      return #[]

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b1ce93f4b13e0507ca333baf895d38dd0cc77a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# propagateExpectedType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:881d8ca0cdfa59ef05ba8ec5a65b6d63b148535af4eb676503e48045c7b8bdd0",
  "kind": "def",
  "lexical_name": "propagateExpectedType",
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
  "slug": "propagateexpectedtype--cac60ce9a9f22483abe19312",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 571,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cac60ce9a9f22483abe19312cfc3ae3199285aad7d2b9d92ec2515ec277052cc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:881d8ca0cdfa59ef05ba8ec5a65b6d63b148535af4eb676503e48045c7b8bdd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def propagateExpectedType (arg : Arg) : M Unit := do
  if shouldPropagateExpectedTypeFor arg then
    let s ← get
    -- TODO: handle s.etaArgs.size > 0
    unless !s.etaArgs.isEmpty || !s.propagateExpected do
      match s.expectedType? with
      | none              => pure ()
      | some expectedType =>
        /- We don't propagate `Prop` because we often use `Prop` as a more general "Bool" (e.g., `if-then-else`).
           If we propagate `expectedType == Prop` in the following examples, the elaborator would fail
           ```
           def f1 (s : Nat × Bool) : Bool := if s.2 then false else true

           def f2 (s : List Bool) : Bool := if s.head! then false else true

           def f3 (s : List Bool) : Bool := if List.head! (s.map not) then false else true
           ```
           They would all fail for the same reason. So, let's focus on the first one.
           We would elaborate `s.2` with `expectedType == Prop`.
           Before we elaborate `s`, this method would be invoked, and `fType` is `?α × ?β → ?β` and after
           propagation we would have `?α × Prop → Prop`. Then, when we would try to elaborate `s`, and
           get a type error because `?α × Prop` cannot be unified with `Nat × Bool`.
           Most users would have a hard time trying to understand why these examples failed.

           Here is a possible alternative workaround. We give up the idea of using `Prop` at `if-then-else`.
           Drawback: users use `if-then-else` with conditions that are not Decidable.
           So, users would have to embrace `propDecidable` and `choice`.
           This may not be that bad since the developers and users don't seem to care about constructivism.

           We currently use a different workaround, we just don't propagate the expected type when it is `Prop`. -/
        let expectedType ← instantiateMVars expectedType
        if expectedType.isProp then
          modify fun s => { s with propagateExpected := false }
          trace[Elab.app.propagateExpectedType] "expected type is Prop, propagation disabled"
        else if let some fTypeBody ← getResultingType? then
          trySynthesizeAppInstMVars
          discard <| withTraceNodeBefore `Elab.app.propagateExpectedType (fun _ => return m!"{expectedType} =?= {fTypeBody}") do
            if (← isDefEq expectedType fTypeBody) then
              /- Note that we only set `propagateExpected := false` when propagation has succeeded. -/
              modify fun s => { s with propagateExpected := false }
              trace[Elab.app.propagateExpectedType] "propagated: {expectedType} =?= {fTypeBody}"
              return true
            else
              trace[Elab.app.propagateExpectedType] "propagation pending, unification of expected type and resulting type failed"
              return false

/-- This method executes after all application arguments have been processed. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

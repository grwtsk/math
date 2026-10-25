# refinedArguments

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f51d8314d1669f47edb44b315e05fa546dabfb3efc40df647817fb2b0a133180",
  "kind": "def",
  "lexical_name": "refinedArguments",
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
  "slug": "refinedarguments--10c626fc7f4a0f06eb4c8943",
  "source": {
    "blob": "2efba24e4a0d0db446c1275dccf439a3b903c7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1391,
    "line": 1341,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10c626fc7f4a0f06eb4c894367ca031bd3bcef1101a565abaa67e27f684a6238",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f51d8314d1669f47edb44b315e05fa546dabfb3efc40df647817fb2b0a133180`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1341–1391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def refinedArguments (e : Expr) : MetaM (Array Bool) := do
  let (_, mask) ← lambdaTelescope e fun xs body =>
    let mask0 := Array.replicate xs.size false
    go xs body |>.run mask0
  let mut mask := mask
  let revDeps ← getParamRevDeps e
  assert! revDeps.size = mask.size
  for i in *...mask.size do
    if mask[i]! then
      for j in revDeps[i]! do
          mask := mask.set! j true
  pure mask
where
  -- NB: we process open terms here.
  go (xs : Array Expr) (e : Expr) : StateT (Array Bool) MetaM Unit := do
    let e := e.consumeMData

    if e.isLambda then
      -- Not strictly tail position, but simplifies the code below and should not make
      -- a difference in practice
      go xs e.bindingBody!
    else if e.isLet then
      go xs e.letBody!
    else
      e.withApp fun f args => do
        if f.isConst then
          if let some matchInfo ← getMatcherInfo? f.constName! then
            for scrut in args[matchInfo.getFirstDiscrPos...matchInfo.getFirstAltPos] do
              if let some i := xs.idxOf? scrut then
                modify (·.set! i true)
            for alt in args[matchInfo.getFirstAltPos...matchInfo.arity] do
              go xs alt
        if f.isConstOf ``ite || f.isConstOf ``dite then
          for arg in args[3...5] do
            go xs arg
        if f.isConstOf ``cond then
          for arg in args[2...4] do
            go xs arg

/--
For non-recursive (and recursive functions) functions we derive a “functional case splitting theorem”. This is very similar
than the functional induction theorem. It splits the goal, but does not give you inductive hypotheses.

For these, it is not really clear which parameters should be “targets” of the motive, as there is
no “fixed prefix” to guide this decision. All? None? Some?

We tried none, but that did not work well. Right now it's all parameters, and it seems to work well.
In the future, we might post-process the theorem (or run the code below iteratively) and remove
targets that are unchanged in each case, so simplify applying the lemma when these “fixed” parameters
are not variables, to avoid having to generalize them.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean#L1341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2efba24e4a0d0db446c1275dccf439a3b903c7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

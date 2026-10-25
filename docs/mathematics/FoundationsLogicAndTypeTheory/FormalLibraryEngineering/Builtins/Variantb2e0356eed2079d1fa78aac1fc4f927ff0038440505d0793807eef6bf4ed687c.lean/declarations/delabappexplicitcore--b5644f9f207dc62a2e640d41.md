# delabAppExplicitCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3e0a2798564beb9b3607477cb90fa25bfaa8b51e593469608565ec12b92cda6",
  "kind": "def",
  "lexical_name": "delabAppExplicitCore",
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
  "slug": "delabappexplicitcore--b5644f9f207dc62a2e640d41",
  "source": {
    "blob": "b0a25944216f1812aa0ff7d4d4685bb89f89dde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 298,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5644f9f207dc62a2e640d41ba2dd6b79870f0609467fc2ac0ff6faf3de45eb6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3e0a2798564beb9b3607477cb90fa25bfaa8b51e593469608565ec12b92cda6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabAppExplicitCore (fieldNotation : Bool) (numArgs : Nat) (delabHead : (insertExplicit : Bool) → Delab) (paramKinds : Array ParamKind) : Delab := do
  let insertExplicit := needsExplicit ((← getExpr).getBoundedAppFn numArgs) numArgs paramKinds
  let fieldNotation ← pure (fieldNotation && !insertExplicit) <&&> getPPOption getPPFieldNotation
    <&&> not <$> getPPOption getPPAnalysisNoDot
    <&&> withBoundedAppFn numArgs do
            let some (_, us) := (← getExpr).consumeMData.const? | pure false
            not <$> (pure (← getExpr).isMData <&&> getPPOption getPPMData)
            <&&> not <$> withMDatasOptions (getPPOption getPPAnalysisBlockImplicit <|> (pure !us.isEmpty <&&> getPPOption getPPUniverses))
  let field? ← if fieldNotation then appFieldNotationCandidate? else pure none
  let (fnStx, _, argStxs) ← withBoundedAppFnArgs numArgs
    (do return (← delabHead insertExplicit, paramKinds.toList, Array.mkEmpty numArgs))
    (fun ⟨fnStx, paramKinds, argStxs⟩ => do
      let isInstImplicit := paramKinds.head? |>.map (·.bInfo == .instImplicit) |>.getD false
      let argStx ← if some argStxs.size = field?.map Prod.fst then
                     -- With field notation, we can erase parent projections for the object
                     withoutParentProjections (explicit := true) delab
                   else if ← getPPOption getPPAnalysisHole then `(_)
                   else if isInstImplicit == true then
                     withTypeAscription (cond := ← getPPOption getPPInstanceTypes) do
                       if ← getPPOption getPPInstances then delab else `(_)
                   else delab
      pure (fnStx, paramKinds.tailD [], argStxs.push argStx))
  if let some (idx, field) := field? then
    -- Delaborate using field notation
    let obj := argStxs[idx]!
    let mut head : Term ← `($obj.$(mkIdent field))
    if idx == 0 then
      -- If it's the first argument, then we can tag `obj.field` with the first app.
      head ← withBoundedAppFn (numArgs - 1) <| annotateTermInfo head
    return Syntax.mkApp head (argStxs.eraseIdxIfInBounds idx)
  else
    return Syntax.mkApp fnStx argStxs

/-- Records how a particular argument to a function is delaborated, in non-explicit mode. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a25944216f1812aa0ff7d4d4685bb89f89dde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

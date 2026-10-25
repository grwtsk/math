# delabStructureInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f6be5cbc13095f30bf8d4a81c0049798d421212f5c5cd856d9f2e49949c2096",
  "kind": "def",
  "lexical_name": "delabStructureInstance",
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
  "slug": "delabstructureinstance--c67babfb3b0988ba070664c8",
  "source": {
    "blob": "b0a25944216f1812aa0ff7d4d4685bb89f89dde9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 692,
    "line": 639,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c67babfb3b0988ba070664c87416b2713f3015d53d935b5d6159ef4b75b01c45",
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

Occurrence: `declaration:5f6be5cbc13095f30bf8d4a81c0049798d421212f5c5cd856d9f2e49949c2096`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–692.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabStructureInstance : Delab := do
  let env ← getEnv
  let e ← getExpr
  let some s ← isConstructorApp? e | failure
  guard <| isStructure env s.induct
  guard <| ← getPPOption getPPStructureInstances
  -- Don't use structure instance notation if an unexpander exists
  guard <| (appUnexpanderAttribute.getValues env s.name).isEmpty
  unless s.levelParams.isEmpty do
    guard <| ← withAppFn <| not <$> getPPOption getPPUniverses
  let explicit ← getPPOption getPPExplicit
  if explicit then guard <| s.numParams == 0
  withAppFnArgs
    (pure ())
    (fun _ => do guard <| ← not <$> getPPOption getPPAnalysisNamedArg)
  if hasPPUsingAnonymousConstructorAttribute env s.induct then
    /-
    The type has opted-in to anonymous constructor notation.
    - If a type opts in, then it's either this or application notation. Structure instance notation is never used.
    - In explicit mode, we require every field be explicit.
    - We don't flatten anonymous constructor notation. Only a complete such notation receives TermInfo,
      and flattening would cause the flattened-in notation to lose its TermInfo.
      Potentially it would be justified to flatten anonymous constructor notation when the terms are
      from the same type family (think `Sigma`), but for now users can write a custom delaborator in such instances.
    -/
    let bis ← forallTelescope s.type fun xs _ => xs.mapM (·.fvarId!.getBinderInfo)
    if explicit then guard <| bis[s.numParams...*].all (·.isExplicit)
    let (_, args) ← withBoundedAppFnArgs s.numFields
      (do return (0, #[]))
      (fun (i, args) => do
        if ← getPPOption getPPAnalysisHole then
          return (i + 1, args.push (← `(_)))
        else if bis[s.numParams + i]!.isExplicit then
          return (i + 1, args.push (← delab))
        else
          return (i + 1, args))
    withTypeAscription (cond := (← withType <| getPPOption getPPStructureInstanceType)) do
      withFnRefWhenTagAppFns `(⟨$[$args],*⟩)
  else
    /-
    Otherwise, we use structure instance notation.
    If `pp.structureInstances.flatten` is true (and `pp.explicit` is false or the subobject has no parameters)
    then subobjects are flattened.
    -/
    let .const _ levels := (← getExpr).getAppFn | failure
    let args := (← getExpr).getAppArgs
    let params := args[*...s.numParams]
    let (_, fields) ← collectStructFields s.induct levels params #[] {} s
    let tyStx? : Option Term ← withType do
      if ← getPPOption getPPStructureInstanceType then delab else pure none
    withFnRefWhenTagAppFns `({ $fields,* $[: $tyStx?]? })


/-- State for `delabAppMatch` and helpers. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Builtins/Variantb2e0356eed2079d1fa78aac1fc4f927ff0038440505d0793807eef6bf4ed687c.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a25944216f1812aa0ff7d4d4685bb89f89dde9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

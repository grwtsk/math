# mkSizeOfInstances

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5db93158a8ffef1df31f0a721a2f9b9e367f0026df102f0df10a475ff8dcfef",
  "kind": "def",
  "lexical_name": "mkSizeOfInstances",
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
  "slug": "mksizeofinstances--77b00898e79098659ea6c870",
  "source": {
    "blob": "983fb719306e794879b87770a5ea6ec52b5a212d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 539,
    "line": 500,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:77b00898e79098659ea6c87011bc2b675a1228322ad5e02a191567604d036cfa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5db93158a8ffef1df31f0a721a2f9b9e367f0026df102f0df10a475ff8dcfef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–539.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSizeOfInstances (typeName : Name) : MetaM Unit := do
  prependError m!"failed to generate `SizeOf` instance for `{.ofConstName typeName}`:" do
    let indInfo ← withoutExporting <| getConstInfoInduct typeName
    withExporting (isExporting := !isPrivateName typeName && !indInfo.ctors.any isPrivateName) do
    if (← getEnv).contains ``SizeOf && genSizeOf.get (← getOptions) && !(← isInductivePredicate typeName) then
      withTraceNode `Meta.sizeOf (fun _ => return m!"{typeName}") do
        unless indInfo.isUnsafe do
          let (fns, recMap) ← mkSizeOfFns typeName
          for indTypeName in indInfo.all, fn in fns do
            let indInfo ← getConstInfoInduct indTypeName
            forallTelescopeReducing indInfo.type fun xs _ =>
              let params := xs[*...indInfo.numParams]
              withInstImplicitAsImplicit params do
                let indices := xs[indInfo.numParams...*]
                mkLocalInstances params fun localInsts => do
                  let us := indInfo.levelParams.map mkLevelParam
                  let indType := mkAppN (mkConst indTypeName us) xs
                  let sizeOfIndType ← mkAppM ``SizeOf #[indType]
                  withLocalDeclD `m indType fun m => do
                    let v ← mkLambdaFVars #[m] <| mkAppN (mkConst fn us) (params ++ localInsts ++ indices ++ #[m])
                    let sizeOfMk ← mkAppM ``SizeOf.mk #[v]
                    let instDeclName := indTypeName ++ `_sizeOf_inst
                    let instDeclType ← mkForallFVars (xs ++ localInsts) sizeOfIndType
                    let instDeclValue ← mkLambdaFVars (xs ++ localInsts) sizeOfMk
                    trace[Meta.sizeOf] ">> {instDeclName} : {instDeclType}"
                    -- We expose the `sizeOf` instance so that the `spec` theorems can be publicly `defeq`
                    withExporting do
                      addDecl <| Declaration.defnDecl {
                        name        := instDeclName
                        levelParams := indInfo.levelParams
                        type        := instDeclType
                        value       := instDeclValue
                        safety      := .safe
                        hints       := .abbrev
                      }
                    registerInstance instDeclName AttributeKind.global (eval_prio default)
                    enableRealizationsForConst instDeclName
          if genSizeOfSpec.get (← getOptions) then
            mkSizeOfSpecTheorems indInfo.all.toArray fns recMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `983fb719306e794879b87770a5ea6ec52b5a212d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

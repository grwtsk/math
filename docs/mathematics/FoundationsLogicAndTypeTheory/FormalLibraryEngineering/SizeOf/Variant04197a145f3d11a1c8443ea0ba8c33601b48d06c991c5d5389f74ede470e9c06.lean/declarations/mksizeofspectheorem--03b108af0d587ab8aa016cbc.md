# mkSizeOfSpecTheorem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c29670e020076982ae58e7a0809de299ae6051eeb7fdf644dd69321628c7abbe",
  "kind": "def",
  "lexical_name": "mkSizeOfSpecTheorem",
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
  "slug": "mksizeofspectheorem--03b108af0d587ab8aa016cbc",
  "source": {
    "blob": "983fb719306e794879b87770a5ea6ec52b5a212d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 482,
    "line": 432,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03b108af0d587ab8aa016cbc2f26ff72b6ecbad1632357ef41b0a5ac39e79867",
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

Occurrence: `declaration:c29670e020076982ae58e7a0809de299ae6051eeb7fdf644dd69321628c7abbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–482.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkSizeOfSpecTheorem (indInfo : InductiveVal) (sizeOfFns : Array Name) (recMap : NameMap Name) (ctorName : Name) : MetaM Unit := do
  withExporting (isExporting := !isPrivateName ctorName) do
  let ctorInfo ← getConstInfoCtor ctorName
  let us := ctorInfo.levelParams.map mkLevelParam
  let simpAttr ← ofExcept <| getAttributeImpl (← getEnv) `simp
  let grindAttr ← ofExcept <| getAttributeImpl (← getEnv) `grind
  let grindAttrStx ← `(attr| grind =)
  forallTelescopeReducing ctorInfo.type fun xs _ => do
    let params := xs[*...ctorInfo.numParams]
    let fields := xs[ctorInfo.numParams...*]
    let ctorApp := mkAppN (mkConst ctorName us) xs
    mkLocalInstances params fun localInsts => do
      let ctorAppType ← inferType ctorApp
      let ctorAppTypeArgs := ctorAppType.getAppArgs
      let indicesFromType := ctorAppTypeArgs[indInfo.numParams...*]
      let instDeclName := indInfo.name ++ `_sizeOf_inst
      let inst := mkAppN (mkConst instDeclName us) (params ++ indicesFromType ++ localInsts)
      let u ← getLevel ctorAppType
      let lhs := mkApp3 (mkConst ``SizeOf.sizeOf [u]) ctorAppType inst ctorApp
      let mut rhs ← mkNumeral (mkConst ``Nat) 1
      for field in fields do
        unless (← ignoreField field) do
          rhs ← mkAdd rhs (← mkAppM ``SizeOf.sizeOf #[field])
      let target ← mkEq lhs rhs
      trace[Meta.sizeOf] "ctor: {ctorInfo.name}, target: {target}"
      let thmName   := mkSizeOfSpecLemmaName ctorName
      let thmParams := params ++ localInsts ++ fields
      let thmType ← mkForallFVars thmParams target
      trace[Meta.sizeOf] "sizeOf spec theorem name: {thmName}"
      trace[Meta.sizeOf] "sizeOf spec theorem type: {thmType}"
      let thmValue ← withoutExporting do
        let thmValue ← if indInfo.isNested then
          SizeOfSpecNested.main lhs rhs |>.run {
            indInfo, sizeOfFns, ctorName, params, localInsts, recMap
          }
        else
          mkEqRefl rhs
        let thmValue ← mkLambdaFVars thmParams thmValue
        trace[Meta.sizeOf] "sizeOf spec theorem value: {thmValue}"
        unless (← isDefEq (← inferType thmValue) thmType) do
          throwError "type mismatch"
        pure thmValue
      addDecl <| Declaration.thmDecl {
        name        := thmName
        levelParams := ctorInfo.levelParams
        type        := thmType
        value       := thmValue
      }
      simpAttr.add thmName default .global
      grindAttr.add thmName grindAttrStx .global

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant04197a145f3d11a1c8443ea0ba8c33601b48d06c991c5d5389f74ede470e9c06.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `983fb719306e794879b87770a5ea6ec52b5a212d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

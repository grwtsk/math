# declarationRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ec126e1cd65f352cd4e53aa7cc8de87e49c8d31d67f6be8e4748065a5986c8d0",
  "kind": "def",
  "lexical_name": "declarationRecord",
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
  "slug": "declarationrecord--64fc4941a70946bfa7484ca0",
  "source": {
    "blob": "488b94ca640a7e8956f9cfdaf2788d506cc128b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:64fc4941a70946bfa7484ca04219a4ce84f3cfa2d384de6ca31ed404c0ccecb3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ec126e1cd65f352cd4e53aa7cc8de87e49c8d31d67f6be8e4748065a5986c8d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def declarationRecord
    (env : Environment) (ownerModule : Name) (info : ConstantInfo) : IO RawDeclarationRecord := do
  let params := info.levelParams
  let value? := constantValue? info
  let (reducibility, regularityHeight) := reducibilityEncoding info
  let inductiveData := match info with
    | .inductInfo value => some {
        numParams := value.numParams
        numIndices := value.numIndices
        mutualMembers := value.all.toArray.map Name.toString
        constructors := value.ctors.toArray.map Name.toString
        numNested := value.numNested
        isRecursive := value.isRec
        isUnsafe := value.isUnsafe
        isReflexive := value.isReflexive
      }
    | _ => none
  let constructorData := match info with
    | .ctorInfo value => some {
        inductiveType := value.induct.toString
        constructorIndex := value.cidx
        numParams := value.numParams
        numFields := value.numFields
        isUnsafe := value.isUnsafe
      }
    | _ => none
  let recursorData := match info with
    | .recInfo value => some {
        mutualInductives := value.all.toArray.map Name.toString
        numParams := value.numParams
        numIndices := value.numIndices
        numMotives := value.numMotives
        numMinors := value.numMinors
        supportsK := value.k
        isUnsafe := value.isUnsafe
        rules := value.rules.toArray.map fun rule => {
          constructor := rule.ctor.toString
          numFields := rule.nfields
          rhs := rawExpression params rule.rhs
        }
      }
    | _ => none
  let quotientData := match info with
    | .quotInfo value => some { kind := quotientKindEncoding value.kind }
    | _ => none
  let origin := match info with
    | .ctorInfo _ | .recInfo _ => "kernelGenerated"
    | _ => "unknown"
  let diagnostics :=
    let typeRaw := rawExpression params info.type
    let valueRaw? := value?.map (rawExpression params)
    let result := if typeRaw.hasFreeVariables || valueRaw?.any (·.hasFreeVariables) then
      #["closed compiled declaration unexpectedly contains a free variable"]
    else
      #[]
    if typeRaw.hasMetavariables || valueRaw?.any (·.hasMetavariables) then
      result.push "closed compiled declaration unexpectedly contains a metavariable"
    else
      result
  return {
    name := info.name.toString
    ownerModule := ownerModule.toString
    kind := constantKind info
    authority := "kernel"
    isPrivateName := isPrivateName info.name
    isInternalDetail := info.name.isInternalDetail
    visibility := if isPrivateName info.name then "privateName" else "public"
    origin := origin
    levelParams := params.toArray.map Name.toString
    typeExpr := rawExpression params info.type
    valueExpr := value?.map (rawExpression params)
    valueRole := valueRole info
    hasStoredValue := value?.isSome
    isUnsafe := info.isUnsafe
    isPartial := info.isPartial
    safety := safetyEncoding info
    reducibility := reducibility
    regularityHeight := regularityHeight
    mutualBlock := info.all.toArray.map Name.toString
    inductiveData := inductiveData
    constructorData := constructorData
    recursorData := recursorData
    quotientData := quotientData
    observedAxioms := ← observedAxioms env info.name
    diagnostics := diagnostics
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanEnvironmentExtract/Variante746c61ea33d9fb24d246041110422dae4e07254dc7363ef553cb5e3c309813a.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `488b94ca640a7e8956f9cfdaf2788d506cc128b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

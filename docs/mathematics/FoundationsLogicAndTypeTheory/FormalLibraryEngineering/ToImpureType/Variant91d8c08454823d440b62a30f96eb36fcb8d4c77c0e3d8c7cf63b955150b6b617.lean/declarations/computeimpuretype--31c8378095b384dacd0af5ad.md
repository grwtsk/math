# computeImpureType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d04b07113ead34b0d750a149081fe7b106ae93a915801e1dabbd115db8f72af",
  "kind": "def",
  "lexical_name": "computeImpureType",
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
  "slug": "computeimpuretype--31c8378095b384dacd0af5ad",
  "source": {
    "blob": "e65d6617852afb6d4338305e33c2a3497b035ec4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variant91d8c08454823d440b62a30f96eb36fcb8d4c77c0e3d8c7cf63b955150b6b617.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31c8378095b384dacd0af5ad48df52da8ba52e6f1be0abb2706806b56506784c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variant91d8c08454823d440b62a30f96eb36fcb8d4c77c0e3d8c7cf63b955150b6b617.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d04b07113ead34b0d750a149081fe7b106ae93a915801e1dabbd115db8f72af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def computeImpureType (name : Name) : CoreM Expr := do
  if let some type := builtinImpureType? name then return type
  let env ← Lean.getEnv
  let some (.inductInfo inductiveVal) := env.find? name | return ImpureType.tobject
  let ctorNames := inductiveVal.ctors
  let numCtors := ctorNames.length
  let mut numScalarCtors := 0
  for ctorName in ctorNames do
    let some (.ctorInfo ctorInfo) := env.find? ctorName | unreachable!
    let hasRelevantField ← Meta.MetaM.run' <|
                           Meta.forallTelescope ctorInfo.type fun params _ => do
      for field in params[ctorInfo.numParams...*] do
        let fieldType ← field.fvarId!.getType
        let lcnfFieldType ← toLCNFType fieldType
        let monoFieldType ← toMonoType lcnfFieldType
        if !monoFieldType.isErased then return true
      return false
    if !hasRelevantField then
      numScalarCtors := numScalarCtors + 1
  if numScalarCtors == numCtors then
    return impureTypeForEnum numCtors
  else if numScalarCtors == 0 then
    return ImpureType.object
  else
    return ImpureType.tobject

/-- Eagerly computes and persists the IR type of inductive `name`; see `compileDecls`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variant91d8c08454823d440b62a30f96eb36fcb8d4c77c0e3d8c7cf63b955150b6b617.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpureType/Variant91d8c08454823d440b62a30f96eb36fcb8d4c77c0e3d8c7cf63b955150b6b617.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e65d6617852afb6d4338305e33c2a3497b035ec4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

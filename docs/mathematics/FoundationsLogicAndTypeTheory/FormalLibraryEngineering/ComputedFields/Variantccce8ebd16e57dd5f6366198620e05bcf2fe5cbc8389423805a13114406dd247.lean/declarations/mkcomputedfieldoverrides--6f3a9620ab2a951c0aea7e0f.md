# mkComputedFieldOverrides

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c2feeb1f4651162ddc1d9dca0d876151ffb98660f2263ec52b35f3015793d76",
  "kind": "def",
  "lexical_name": "mkComputedFieldOverrides",
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
  "slug": "mkcomputedfieldoverrides--6f3a9620ab2a951c0aea7e0f",
  "source": {
    "blob": "269de3413c74e36b9cc164a669cacf90898f635e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputedFields/Variantccce8ebd16e57dd5f6366198620e05bcf2fe5cbc8389423805a13114406dd247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f3a9620ab2a951c0aea7e0f8a0cecc11040a17adc8fa905c49dc0169e2ea101",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputedFields/Variantccce8ebd16e57dd5f6366198620e05bcf2fe5cbc8389423805a13114406dd247.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c2feeb1f4651162ddc1d9dca0d876151ffb98660f2263ec52b35f3015793d76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkComputedFieldOverrides (declName : Name) (compFields : Array Name) : MetaM Unit := do
  let ind ← getConstInfoInduct declName
  if ind.ctors.length < 2 then
    throwError "computed fields require at least two constructors"
  let lparams := ind.levelParams.map mkLevelParam
  forallTelescope ind.type fun paramsIndices _ => do
  withLocalDeclD `x (mkAppN (mkConst ind.name lparams) paramsIndices) fun val => do
    let params := paramsIndices[*...ind.numParams].toArray
    let indices := paramsIndices[ind.numParams...*].toArray
    let compFieldVars := compFields.map fun fieldDeclName =>
      (fieldDeclName.updatePrefix .anonymous,
        fun _ => do inferType (← mkAppM fieldDeclName (params ++ indices ++ #[val])))
    withLocalDeclsD compFieldVars fun compFieldVars => do
      let ctx := { ind with lparams, params, compFields, compFieldVars, indices, val }
      ReaderT.run (r := ctx) do
        validateComputedFields
        let ty ← mkImplType
        Lean.compileDecls #[ty]
        overrideCasesOn
        overrideConstructors
        overrideComputedFields

/--
Sets the computed fields for a block of mutual inductives,
adding the implementation via `implemented_by`.

The `computedFields` argument contains a pair
for every inductive in the mutual block,
consisting of the name of the inductive
and the names of the associated computed fields.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputedFields/Variantccce8ebd16e57dd5f6366198620e05bcf2fe5cbc8389423805a13114406dd247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputedFields/Variantccce8ebd16e57dd5f6366198620e05bcf2fe5cbc8389423805a13114406dd247.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `269de3413c74e36b9cc164a669cacf90898f635e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

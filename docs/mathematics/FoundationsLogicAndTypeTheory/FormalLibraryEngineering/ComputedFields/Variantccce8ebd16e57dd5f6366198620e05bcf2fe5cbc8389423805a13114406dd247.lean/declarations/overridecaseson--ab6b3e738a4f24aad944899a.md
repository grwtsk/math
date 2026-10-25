# overrideCasesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6035fed03f472718ea27501dce555c13fb00797f145701e65665dceda8a2304e",
  "kind": "def",
  "lexical_name": "overrideCasesOn",
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
  "slug": "overridecaseson--ab6b3e738a4f24aad944899a",
  "source": {
    "blob": "269de3413c74e36b9cc164a669cacf90898f635e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputedFields/Variantccce8ebd16e57dd5f6366198620e05bcf2fe5cbc8389423805a13114406dd247.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab6b3e738a4f24aad944899a0f1494de7b0dc8be48704f0d0068b1b1e457e61c",
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

Occurrence: `declaration:6035fed03f472718ea27501dce555c13fb00797f145701e65665dceda8a2304e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def overrideCasesOn : M Unit := do
  let {name, numIndices, ctors, lparams, params, compFieldVars, ..} ← read
  let casesOn ← getConstInfoDefn (mkCasesOnName name)
  mkCasesOn (name ++ `_impl)
  let value ←
    forallTelescope (← instantiateForall casesOn.type params) fun xs constMotive => do
      let (indices, major, minors) := (xs[1...=numIndices].toArray,
        xs[numIndices+1]!, xs[(numIndices+2)...*].toArray)
      let majorImplTy := mkAppN (mkConst (name ++ `_impl) lparams) (params ++ indices)
      mkLambdaFVars (params ++ xs) <|
        mkAppN (mkConst (mkCasesOnName (name ++ `_impl))
            (casesOn.levelParams.map mkLevelParam)) <|
        params ++
        #[← withLocalDeclD `a majorImplTy fun majorImpl => do
          withLetDecl `m (← inferType constMotive) constMotive fun m => do
          mkLambdaFVars (#[m] ++ indices ++ #[majorImpl]) m] ++
        indices ++ #[← mkUnsafeCastTo majorImplTy major] ++
        (← minors.zipWithM (bs:=ctors.toArray) fun minor ctor => do
          forallTelescope (← inferType minor) fun args _ => do
            mkLambdaFVars ((if ← isScalarField ctor then #[] else compFieldVars) ++ args)
              (← mkUnsafeCastTo constMotive (mkAppN minor args)))
  let nameOverride := mkCasesOnName name ++ `_override
  addDecl <| .defnDecl { casesOn with
    name := nameOverride
    all  := [nameOverride]
    value
    hints  := .opaque
    safety := .unsafe
  }
  setInlineAttribute (mkCasesOnName name ++ `_override)
  setImplementedBy (mkCasesOnName name) (mkCasesOnName name ++ `_override)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputedFields/Variantccce8ebd16e57dd5f6366198620e05bcf2fe5cbc8389423805a13114406dd247.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ComputedFields/Variantccce8ebd16e57dd5f6366198620e05bcf2fe5cbc8389423805a13114406dd247.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `269de3413c74e36b9cc164a669cacf90898f635e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

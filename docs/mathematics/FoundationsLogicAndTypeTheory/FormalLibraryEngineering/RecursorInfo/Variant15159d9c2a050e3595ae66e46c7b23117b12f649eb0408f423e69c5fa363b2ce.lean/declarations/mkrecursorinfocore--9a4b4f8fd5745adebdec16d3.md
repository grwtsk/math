# mkRecursorInfoCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:51ad6af16b1a7636caba64d64ec3e0ae08ea2c608af4f81923b76e0220161d4d",
  "kind": "def",
  "lexical_name": "mkRecursorInfoCore",
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
  "slug": "mkrecursorinfocore--9a4b4f8fd5745adebdec16d3",
  "source": {
    "blob": "d1e4f1e2e8a91b29d9deeeada48dfa00d0362f91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 192,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a4b4f8fd5745adebdec16d33b5b9a84518a0fdfcda309a68343bcfa036d1c32",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:51ad6af16b1a7636caba64d64ec3e0ae08ea2c608af4f81923b76e0220161d4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkRecursorInfoCore (declName : Name) (majorPos? : Option Nat) : MetaM RecursorInfo := do
  let cinfo ← getConstInfo declName
  let majorPos? ← getMajorPosIfAuxRecursor? declName majorPos?
  forallTelescopeReducing cinfo.type fun xs type => type.withApp fun motive motiveArgs => do
    checkMotive declName motive motiveArgs
    let numParams := getNumParams xs motive 0
    let (major, majorPos, depElim) ← getMajorPosDepElim declName majorPos? xs motiveArgs
    let numIndices := if depElim then motiveArgs.size - 1 else motiveArgs.size
    if majorPos < numIndices then
      throwError "invalid user defined recursor `{.ofConstName declName}`, indices must occur before major premise"
    let majorType ← inferType major
    majorType.withApp fun I Iargs =>
    match I with
    | Expr.const Iname Ilevels => do
      let paramsPos ← getParamsPos declName xs numParams Iargs
      let indicesPos ← getIndicesPos declName xs majorPos numIndices Iargs
      let motiveType ← inferType motive
      forallTelescopeReducing motiveType fun motiveTypeParams motiveResultType => do
        checkMotiveResultType declName motiveArgs motiveResultType motiveTypeParams
        let motiveLvl ← getMotiveLevel declName motiveResultType
        let univLevelPos ← getUnivLevelPos declName cinfo.levelParams motiveLvl Ilevels
        let (produceMotive, recursive) ← getProduceMotiveAndRecursive xs numParams numIndices majorPos motive
        pure {
          recursorName  := declName,
          typeName      := Iname,
          univLevelPos  := univLevelPos,
          majorPos      := majorPos,
          depElim       := depElim,
          recursive     := recursive,
          produceMotive := produceMotive,
          paramsPos     := paramsPos,
          indicesPos    := indicesPos,
          numArgs       := xs.size
        }
    | _ => throwError "invalid user defined recursor `{.ofConstName declName}`, type of the major premise must be of the form (I ...), where I is a constant"

/-
@[builtin_attr_parser] def «recursor» := leading_parser "recursor " >> numLit
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecursorInfo/Variant15159d9c2a050e3595ae66e46c7b23117b12f649eb0408f423e69c5fa363b2ce.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1e4f1e2e8a91b29d9deeeada48dfa00d0362f91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# mkBRecOnConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70e4a9c84f6f1b7d0c6c1fb0d1ea07be7d4157157b1a9a126c7666f71ea7ca67",
  "kind": "def",
  "lexical_name": "mkBRecOnConst",
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
  "slug": "mkbreconconst--ca7a79f3e2dc5d9d25735a9a",
  "source": {
    "blob": "dc394837112c226eb56a74fa2977fa6eb6134a9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 251,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca7a79f3e2dc5d9d25735a9adc79edc052bef60c3e7ffb53099b9596e8324616",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70e4a9c84f6f1b7d0c6c1fb0d1ea07be7d4157157b1a9a126c7666f71ea7ca67`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkBRecOnConst (recArgInfos : Array RecArgInfo) (positions : Positions)
    (motives : Array Expr) (isIndPred : Bool) : MetaM (Nat → Expr) := do
  let indGroup := recArgInfos[0]!.indGroupInst
  let motive := motives[0]!
  let brecOnUniv ← if isIndPred then pure 0 else lambdaTelescope motive fun _ type => getLevel type
  let brecOnCons := fun idx =>
    let n := indGroup.brecOnName idx
    let us := if isIndPred then indGroup.levels else brecOnUniv :: indGroup.levels
    mkAppN (.const n us) indGroup.params
  -- Pick one as a prototype
  let brecOnAux := brecOnCons 0
  -- Infer the type of the packed motive arguments
  let packedMotiveTypes ← inferArgumentTypesN indGroup.numMotives brecOnAux
  let packedMotives ← positions.mapMwith PProdN.packLambdas packedMotiveTypes motives

  return fun n => mkAppN (brecOnCons n) packedMotives

/--
Given the `recArgInfos` and the `motives`, infer the types of the `F` arguments to the `.brecOn`
combinators. This assumes that all `.brecOn` functions of a mutual inductive have the same structure.

It also undoes the permutation and packing done by `packMotives`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3eb2f211a9ef7d5e7ed176ae1b7e396e57aa45910dae46e19e4ed8747411f09a.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc394837112c226eb56a74fa2977fa6eb6134a9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# mkBRecOnConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4ca9a05af78f72e7134a26b6e43f381703cb9ee4b949fdfbf304ce5c034485d",
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
  "slug": "mkbreconconst--256e3009679b9c85e9cf6c07",
  "source": {
    "blob": "24e63dca8a6878e21221fb6336a724e08d99bb46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 243,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:256e3009679b9c85e9cf6c075d6921e23b761ff00d6c09c6d8b3190792a2afcf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4ca9a05af78f72e7134a26b6e43f381703cb9ee4b949fdfbf304ce5c034485d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–265.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BRecOn/Variant3f5060d6746d18f460bd0ecfe91f7e58d3abb788860625d2c2292159f36bcf0e.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24e63dca8a6878e21221fb6336a724e08d99bb46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

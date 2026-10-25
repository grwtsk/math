# projectMutualInduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fd8979a8f0390743dcbb2ef010b749c380d610a6a9fa85679a4c9e752b42af0",
  "kind": "def",
  "lexical_name": "projectMutualInduct",
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
  "slug": "projectmutualinduct--5e63ee66bee324d684fbdeeb",
  "source": {
    "blob": "2efba24e4a0d0db446c1275dccf439a3b903c7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 930,
    "line": 910,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e63ee66bee324d684fbdeeb0d75317a12fc1595acaee7dd4f413f11bcec8768",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fd8979a8f0390743dcbb2ef010b749c380d610a6a9fa85679a4c9e752b42af0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 910–930.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def projectMutualInduct (unfolding : Bool) (names : Array Name) (mutualInduct : MetaM Name) (finalizeFirstInd : MetaM Unit) : MetaM Unit := do
  for name in names, idx in *...names.size do
    let inductName := getFunInductName (unfolding := unfolding) name
    realizeConst names[0]! inductName do
      let ci ← getConstInfo (← mutualInduct)
      let levelParams := ci.levelParams
      let value ← forallTelescope ci.type fun xs _body => do
        let value := .const ci.name (levelParams.map mkLevelParam)
        let value := mkAppN value xs
        let value ← PProdN.projM names.size idx value
        mkLambdaFVars xs value
      let type ← inferType value
      let type ← letToHave type
      addDecl <| Declaration.thmDecl { name := inductName, levelParams, type, value }

      if idx == 0 then finalizeFirstInd

/--
For a (non-mutual!) definition of `name`, uses the `FunIndInfo` associated with the `unaryInduct` and
derives the one for the n-ary function.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean#L910).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2efba24e4a0d0db446c1275dccf439a3b903c7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

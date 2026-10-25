# getInclusionOpInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fad96db91bfdf1b66a81a53c0f5d22b938a136e8d3df66c207e15ec616efca42",
  "kind": "def",
  "lexical_name": "getInclusionOpInfo",
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
  "slug": "getinclusionopinfo--1bcb94fab72a13361e44405b",
  "source": {
    "blob": "a18d476099d762f60a45c052bcc98b7a1ecd440f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 233,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaea5df8a1070b66ecf4f0cd1ca3f92baeb96f4bcb397ab981a5252b2b599e3f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bcb94fab72a13361e44405b690fd1672a781a7bf6d3efc7c0886bb44f65c3a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaea5df8a1070b66ecf4f0cd1ca3f92baeb96f4bcb397ab981a5252b2b599e3f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fad96db91bfdf1b66a81a53c0f5d22b938a136e8d3df66c207e15ec616efca42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getInclusionOpInfo (declName : Name) :
    MetaM (Array DiscrTree.Key × Array HypArg × Array ParamArg) := do
  let theoremExpr ← mkConstWithFreshMVarLevels declName
  let (args, _, conclusion) ← forallMetaTelescopeReducing (← inferType theoremExpr)
  let some (e, _, _) := toSetMem? conclusion
    | throwError "The conclusion of `{.ofConstName declName}` is not an inclusion using a `ToSet` \
        instance"
  let (hypArgs, params) ← getOpArgInfo declName e args
  return (← DiscrTree.mkPath e, hypArgs, params)

/-- Generate and register an inclusion extension from `theoremName` in `familyName`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaea5df8a1070b66ecf4f0cd1ca3f92baeb96f4bcb397ab981a5252b2b599e3f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaea5df8a1070b66ecf4f0cd1ca3f92baeb96f4bcb397ab981a5252b2b599e3f6.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a18d476099d762f60a45c052bcc98b7a1ecd440f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

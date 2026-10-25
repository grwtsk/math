# mutualName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:055c768716b9097f5ff556af0436dc7a8e2869f27ee6a2c83c44dc7853838bd9",
  "kind": "def",
  "lexical_name": "mutualName",
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
  "slug": "mutualname--c83a924063f32824c1dfdde3",
  "source": {
    "blob": "f4e2c9f92076cb8f31efcf7dd9dde526049fdcf4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 74,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c83a924063f32824c1dfdde39fee50988b19db82f85a2f3e53dd7c6485542ac3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:055c768716b9097f5ff556af0436dc7a8e2869f27ee6a2c83c44dc7853838bd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mutualName (fixedParamPerms : FixedParamPerms) (argsPacker : ArgsPacker) (preDefs : Array PreDefinition) : Name :=
  if fixedParamPerms.fixedArePrefix && argsPacker.onlyOneUnary then
    preDefs[0]!.declName
  else
    if argsPacker.numFuncs > 1 then
      preDefs[0]!.declName ++ `_mutual
    else
      preDefs[0]!.declName ++ `_unary

/--
Creates a single unary function from the given `preDefs`, using the machinery in the `ArgPacker`
module.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PackMutual/Variant8baa99ff0dcf870e25eddc8f4aeba7c81d4b6992d6422fdc4a4f0851f546fc5b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4e2c9f92076cb8f31efcf7dd9dde526049fdcf4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

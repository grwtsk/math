# RecArgInfo.pickIndicesMajor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10c591355abf797f0dd81dfa16212e7126255cc2f2e5fbfbe5eb74c367930388",
  "kind": "def",
  "lexical_name": "RecArgInfo.pickIndicesMajor",
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
  "slug": "recarginfo-pickindicesmajor--1608e879be9b36e81578860a",
  "source": {
    "blob": "e184bc05f92a65e632dd5f27bf623e26fdc41c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecArgInfo/Variant5564e7940716a44a9e5d8f64187ebd99004be868cfefd4a11dc27b8088001418.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1608e879be9b36e81578860ab6ca4684d1f8942bd9ccbb4d6a6d9c944538eb18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecArgInfo/Variant5564e7940716a44a9e5d8f64187ebd99004be868cfefd4a11dc27b8088001418.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10c591355abf797f0dd81dfa16212e7126255cc2f2e5fbfbe5eb74c367930388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RecArgInfo.pickIndicesMajor (info : RecArgInfo) (xs : Array Expr) : (Array Expr × Array Expr) := Id.run do
  -- To simplify the index calculation, pad xs with dummy values where fixed parameters are
  let xs := info.fixedParamPerm.buildArgs (.replicate info.fixedParamPerm.numFixed (mkSort 0)) xs
  -- First indices and major arg, using the order they appear in `info.indicesPos`
  let mut indexMajorArgs := #[]
  let indexMajorPos := info.indicesPos.push info.recArgPos
  for j in indexMajorPos do
    indexMajorArgs := indexMajorArgs.push xs[j]!
  -- Then the other arguments, in the order they appear in `xs`
  let mut otherVaryingArgs := #[]
  for h : i in *...xs.size do
    unless indexMajorPos.contains i do
      unless info.fixedParamPerm.isFixed i do
        otherVaryingArgs := otherVaryingArgs.push xs[i]
  return (indexMajorArgs, otherVaryingArgs)

/--
Name of the recursive data type. Assumes that it is not one of the auxiliary ones.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecArgInfo/Variant5564e7940716a44a9e5d8f64187ebd99004be868cfefd4a11dc27b8088001418.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecArgInfo/Variant5564e7940716a44a9e5d8f64187ebd99004be868cfefd4a11dc27b8088001418.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e184bc05f92a65e632dd5f27bf623e26fdc41c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

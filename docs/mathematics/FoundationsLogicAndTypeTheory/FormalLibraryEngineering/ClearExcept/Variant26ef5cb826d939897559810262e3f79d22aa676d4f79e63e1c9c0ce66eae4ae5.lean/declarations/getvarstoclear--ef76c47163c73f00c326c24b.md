# getVarsToClear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cc40561fa4b905f35fc9597328b2c024d1cda87eb7f28d3419d7a397d1aa05c0",
  "kind": "def",
  "lexical_name": "getVarsToClear",
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
  "slug": "getvarstoclear--ef76c47163c73f00c326c24b",
  "source": {
    "blob": "4f873bdadd7b8b4b1c66c8f812822dd41b74bb77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 34,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClearExcept/Variant26ef5cb826d939897559810262e3f79d22aa676d4f79e63e1c9c0ce66eae4ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef76c47163c73f00c326c24bfbc5cf6e9cec205e704b240d02f3e54c0ae25530",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClearExcept/Variant26ef5cb826d939897559810262e3f79d22aa676d4f79e63e1c9c0ce66eae4ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cc40561fa4b905f35fc9597328b2c024d1cda87eb7f28d3419d7a397d1aa05c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getVarsToClear (preserve : Array FVarId) : MetaM (Array FVarId) := do
  let mut toClear : Array FVarId := #[]
  for decl in ← getLCtx do
    unless preserve.contains decl.fvarId || decl.isAuxDecl do
      if let none ← isClass? decl.type then
        toClear := toClear.push decl.fvarId
  return toClear

/-- Clears all hypotheses from a goal except those in the preserve list, class instances, and
auxiliary declarations (e.g. recursive hypotheses). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClearExcept/Variant26ef5cb826d939897559810262e3f79d22aa676d4f79e63e1c9c0ce66eae4ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClearExcept/Variant26ef5cb826d939897559810262e3f79d22aa676d4f79e63e1c9c0ce66eae4ae5.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f873bdadd7b8b4b1c66c8f812822dd41b74bb77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

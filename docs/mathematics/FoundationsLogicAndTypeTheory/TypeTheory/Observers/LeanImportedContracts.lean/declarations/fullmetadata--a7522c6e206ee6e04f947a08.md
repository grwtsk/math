# fullMetadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb30e54ee6f7ef01a96327e29225a00862023bc03584b0c25e89c6bc028ff8de",
  "kind": "def",
  "lexical_name": "fullMetadata",
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
  "slug": "fullmetadata--a7522c6e206ee6e04f947a08",
  "source": {
    "blob": "58dc0f955389c99dd078d054c30fe601f5faee62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanImportedContracts.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7522c6e206ee6e04f947a08fa51858ab45a4e9c6dd4fa621be8b2ea2ef89218",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanImportedContracts.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb30e54ee6f7ef01a96327e29225a00862023bc03584b0c25e89c6bc028ff8de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fullMetadata (ci : ConstantInfo) (ti bi : String) : Except String Json := do
  let base := [("name", nameJson ci.name), ("levelParams", toJson (ci.levelParams.map nameJson)), ("type", str ti)]
  match ci with
  | .inductInfo v => return obj (base ++ [("numParams", nat v.numParams), ("numIndices", nat v.numIndices),
      ("all", toJson (v.all.map nameJson)), ("ctors", toJson (v.ctors.map nameJson)), ("numNested", nat v.numNested),
      ("isRec", toJson v.isRec), ("isUnsafe", toJson v.isUnsafe), ("isReflexive", toJson v.isReflexive)])
  | .ctorInfo v => return obj (base ++ [("induct", nameJson v.induct), ("cidx", nat v.cidx),
      ("numParams", nat v.numParams), ("numFields", nat v.numFields), ("isUnsafe", toJson v.isUnsafe)])
  | .defnInfo v => return obj (base ++ [("value", str bi), ("hints", hintJson v.hints),
      ("safety", safetyJson v.safety), ("all", toJson (v.all.map nameJson))])
  | _ => throw "UNSUPPORTED_IMPORTED_CONSTANTINFO_VARIANT"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanImportedContracts.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanImportedContracts.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58dc0f955389c99dd078d054c30fe601f5faee62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

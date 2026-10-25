# metadataJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b203d7fc31f5680f662834594529f59b89e6af34c9a5508fef838d7cc79c01d",
  "kind": "def",
  "lexical_name": "metadataJson",
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
  "slug": "metadatajson--3a2f6124613060dcb87c4a7c",
  "source": {
    "blob": "cccf28fcd944636127f300448a7b41b18aee1c61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 156,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variant9847bf19cb85ca5985a17ba4c7fda394bc27a6acf1f24cd7e916c54e29f36e34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3a2f6124613060dcb87c4a7cf4ad014a51dc636e7866ffe31460ece6aea03a7b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variant9847bf19cb85ca5985a17ba4c7fda394bc27a6acf1f24cd7e916c54e29f36e34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b203d7fc31f5680f662834594529f59b89e6af34c9a5508fef838d7cc79c01d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def metadataJson (ci : ConstantInfo) : M (String × Json × Json) := do
  match ci with
  | .axiomInfo v => return ("axiom", Json.null, jo [("is_unsafe", jb v.isUnsafe)])
  | .defnInfo v =>
    v.all.forM ref
    return ("definition", ← exprJson v.value, jo [("safety", safetyJson v.safety),
      ("reducibility_hints", reducibilityJson v.hints), ("all", namesJson v.all)])
  | .thmInfo v =>
    v.all.forM ref
    return ("theorem", ← exprJson v.value, jo [("all", namesJson v.all)])
  | .opaqueInfo v =>
    v.all.forM ref
    return ("opaque", ← exprJson v.value, jo [("is_unsafe", jb v.isUnsafe), ("all", namesJson v.all)])
  | .quotInfo v => return ("quotient", Json.null, jo [("quot_kind", quotKindJson v.kind)])
  | .inductInfo v =>
    v.all.forM ref
    v.ctors.forM ref
    return ("inductive", Json.null, jo [("num_params", jn v.numParams), ("num_indices", jn v.numIndices),
      ("all", namesJson v.all), ("constructors", namesJson v.ctors), ("num_nested", jn v.numNested),
      ("is_recursive", jb v.isRec), ("is_unsafe", jb v.isUnsafe), ("is_reflexive", jb v.isReflexive)])
  | .ctorInfo v =>
    ref v.induct
    return ("constructor", Json.null, jo [("inductive", js v.induct.toString), ("constructor_index", jn v.cidx),
      ("num_params", jn v.numParams), ("num_fields", jn v.numFields), ("is_unsafe", jb v.isUnsafe)])
  | .recInfo v =>
    v.all.forM ref
    let rules ← v.rules.toArray.mapM fun r => do
      ref r.ctor
      return jo [("constructor", js r.ctor.toString), ("num_fields", jn r.nfields), ("rhs", ← exprJson r.rhs)]
    return ("recursor", Json.null, jo [("all", namesJson v.all), ("num_params", jn v.numParams),
      ("num_indices", jn v.numIndices), ("num_motives", jn v.numMotives), ("num_minors", jn v.numMinors),
      ("rules", ja rules), ("k", jb v.k), ("is_unsafe", jb v.isUnsafe)])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variant9847bf19cb85ca5985a17ba4c7fda394bc27a6acf1f24cd7e916c54e29f36e34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variant9847bf19cb85ca5985a17ba4c7fda394bc27a6acf1f24cd7e916c54e29f36e34.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cccf28fcd944636127f300448a7b41b18aee1c61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# metadataJson

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a4d2c1b3b92c43979a06fbe75c51e8cd19eb7bb108344a4903dcf90a7fe1be13",
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
  "slug": "metadatajson--68fcbf189dfe27b56842534e",
  "source": {
    "blob": "df93042f6586dd3c3bff7352f8e2a722f18de945",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 148,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68fcbf189dfe27b56842534e12b54025614ad3a3a49196220facd7b925d48b6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a4d2c1b3b92c43979a06fbe75c51e8cd19eb7bb108344a4903dcf90a7fe1be13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–180.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Export/Variantc99fd38c4ce8f9bc0f3b7dc3510a24708f3fd80d8deac29d17be268af340c5b3.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df93042f6586dd3c3bff7352f8e2a722f18de945` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

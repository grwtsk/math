# ofRuntime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b1c91a10d3e38a8bc15371d382be4b8bb85509fe7bb72bd9c28fcddf3655d10",
  "kind": "def",
  "lexical_name": "ofRuntime",
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
  "slug": "ofruntime--227192fc985f686cc6eb49cf",
  "source": {
    "blob": "625cefbc584fe38de324638e1ab73c4e885882a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 159,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/TypeIndexedReducerModels/Variant98ad3f70657c2f43/ShapeIndexedStructuralReducers.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:227192fc985f686cc6eb49cf8b23387687849c80a62ac4592007d6291e7c96b8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/TypeIndexedReducerModels/Variant98ad3f70657c2f43/ShapeIndexedStructuralReducers.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b1c91a10d3e38a8bc15371d382be4b8bb85509fe7bb72bd9c28fcddf3655d10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofRuntime :
    {A B : DAF.Runtime.Rep} →
      DAF.Runtime.ReducerIR A B →
      ReducerIR (Rep.ofRuntime A) (Rep.ofRuntime B)
  | _, _, .identity => .identity
  | _, _, .compose first second =>
      .compose (ofRuntime first) (ofRuntime second)
  | _, _, .pair left right => .pair (ofRuntime left) (ofRuntime right)
  | _, _, .projectLeft => .projectLeft
  | _, _, .projectRight => .projectRight
  | _, _, .boolNot => .booleanNot
  | _, _, .sequenceModulo modulus => .sequenceModulo modulus


end ReducerIR

end BitMatrix.Runtime

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.TypeIndexedReducerModels.Variant98ad3f70657c2f43
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/TypeIndexedReducerModels/Variant98ad3f70657c2f43/ShapeIndexedStructuralReducers.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/TypeIndexedReducerModels/Variant98ad3f70657c2f43/ShapeIndexedStructuralReducers.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `625cefbc584fe38de324638e1ab73c4e885882a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

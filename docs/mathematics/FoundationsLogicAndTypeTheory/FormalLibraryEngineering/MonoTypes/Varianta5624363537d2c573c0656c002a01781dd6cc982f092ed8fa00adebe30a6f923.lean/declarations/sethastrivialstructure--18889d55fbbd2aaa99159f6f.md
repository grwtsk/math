# setHasTrivialStructure?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30d945763ed4800bd6bd70c2934b974fcc8ac94f5bc94dd5f38aad747f2f1eb0",
  "kind": "def",
  "lexical_name": "setHasTrivialStructure?",
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
  "slug": "sethastrivialstructure--18889d55fbbd2aaa99159f6f",
  "source": {
    "blob": "cbaba56f90b2358ef05aedd9de93a0fe3a5d8cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonoTypes/Varianta5624363537d2c573c0656c002a01781dd6cc982f092ed8fa00adebe30a6f923.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18889d55fbbd2aaa99159f6f212784621608149aab2de146bd757a0d7abcc78a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonoTypes/Varianta5624363537d2c573c0656c002a01781dd6cc982f092ed8fa00adebe30a6f923.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30d945763ed4800bd6bd70c2934b974fcc8ac94f5bc94dd5f38aad747f2f1eb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setHasTrivialStructure? (declName : Name) : CoreM Unit :=
  Irrelevant.setHasTrivialStructure? trivialStructureInfoExt
    (fun type => Meta.isProp type <||> Meta.isTypeFormerType type) declName

/--
Return `some fieldIdx` if `declName` is the name of an inductive datatype s.t.
- It does not have builtin support in the runtime.
- It has only one constructor.
- This constructor has only one computationally relevant field.

Requires `compileDecls` to have been run for inductive `declName`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonoTypes/Varianta5624363537d2c573c0656c002a01781dd6cc982f092ed8fa00adebe30a6f923.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MonoTypes/Varianta5624363537d2c573c0656c002a01781dd6cc982f092ed8fa00adebe30a6f923.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbaba56f90b2358ef05aedd9de93a0fe3a5d8cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:026880ed48f6b9fcb0b597e1550377dbd069a7968924f8d50c35096637726160",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f4eb29655041de0b51f57ebc",
  "source": {
    "blob": "73196f4532178f77ef56bc3320303f1b78ace99c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 426,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant6a320eeb193ee74adbd2fed6b7bae2bc1e4f6903317082afa9eee91c55109d8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4eb29655041de0b51f57ebcb7e10195f51aedbf735408d1646f18d99216120b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant6a320eeb193ee74adbd2fed6b7bae2bc1e4f6903317082afa9eee91c55109d8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:026880ed48f6b9fcb0b597e1550377dbd069a7968924f8d50c35096637726160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : MkEvalHorizontalComp BicategoryM where
  mkEvalHorizontalCompAuxOf _ _ := do
    throwError "not implemented"
  mkEvalHorizontalCompAuxCons _ _ _ _ _ _ _ _ _ _ _ := do
    throwError "not implemented"
  mkEvalHorizontalCompAux'Whisker _ _ _ _ _ _ _ _ _ _ _ := do
    throwError "not implemented"
  mkEvalHorizontalCompAux'OfWhisker _ _ _ _ _ _ _ _ _ _ _ := do
    throwError "not implemented"
  mkEvalHorizontalCompNilNil _ _ := do
    throwError "not implemented"
  mkEvalHorizontalCompNilCons _ _ _ _ _ _ _ _ _ _ _ _ := do
    throwError "not implemented"
  mkEvalHorizontalCompConsNil _ _ _ _ _ _ _ _ _ _ _ _ := do
    throwError "not implemented"
  mkEvalHorizontalCompConsCons _ _ _ _ _ _ _ _ _ _ _ _ _ _ := do
    throwError "not implemented"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant6a320eeb193ee74adbd2fed6b7bae2bc1e4f6903317082afa9eee91c55109d8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Normalize/Variant6a320eeb193ee74adbd2fed6b7bae2bc1e4f6903317082afa9eee91c55109d8e.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73196f4532178f77ef56bc3320303f1b78ace99c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

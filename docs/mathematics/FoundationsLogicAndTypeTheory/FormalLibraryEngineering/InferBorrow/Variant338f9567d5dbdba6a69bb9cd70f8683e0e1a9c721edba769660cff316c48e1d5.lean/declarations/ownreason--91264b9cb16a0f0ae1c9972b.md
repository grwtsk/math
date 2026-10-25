# OwnReason

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:036e669765a6fc4e8746ed4feebde11973df10adbf15a5706736b90dddc9e877",
  "kind": "inductive",
  "lexical_name": "OwnReason",
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
  "slug": "ownreason--91264b9cb16a0f0ae1c9972b",
  "source": {
    "blob": "54d168312e46c2066e4d93430d36c1f0c0353cec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91264b9cb16a0f0ae1c9972bec55d88ec075b6aea496f1467925e3f4c4f812b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:036e669765a6fc4e8746ed4feebde11973df10adbf15a5706736b90dddc9e877`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive OwnReason where
  /-- Target or source of a reset/reuse operation. -/
  | resetReuse (resultFVar : FVarId)
  /-- Result of a constructor allocation. -/
  | constructorResult (resultFVar : FVarId)
  /-- Parameter packed into a constructor. -/
  | constructorArg (resultFVar : FVarId)
  /-- Forward ownership propagation through `oproj`. -/
  | forwardProjectionProp (resultFVar : FVarId)
  /-- Backward ownership propagation through `oproj`. -/
  | backwardProjectionProp (resultFVar : FVarId)
  /-- Result of a function application. -/
  | functionCallResult (resultFVar : FVarId)
  /-- Argument to a function whose corresponding parameter is owned. -/
  | functionCallArg (resultFVar : FVarId)
  /-- Argument or callee in a call to a free variable. -/
  | fvarCall (resultFVar : FVarId)
  /-- Argument in a partial application. -/
  | partialApplication (resultFVar : FVarId)
  /-- Tail call preservation for a self-recursive function call. -/
  | tailCallPreservation (funcName : Name)
  /-- Argument propagation at a join point jump. -/
  | jpArgPropagation (jpFVar : FVarId)
  /-- Tail call preservation at a join point jump. -/
  | jpTailCallPreservation (jpFVar : FVarId)
  /-- Annotated as an owned parameter (currently only triggerable through `@[export]`)-/
  | ownedAnnotation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54d168312e46c2066e4d93430d36c1f0c0353cec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

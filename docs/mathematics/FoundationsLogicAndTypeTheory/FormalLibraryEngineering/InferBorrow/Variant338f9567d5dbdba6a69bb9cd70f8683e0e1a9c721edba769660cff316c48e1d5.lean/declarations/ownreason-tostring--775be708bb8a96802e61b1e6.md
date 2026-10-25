# OwnReason.toString

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6252585869a52913fdeeab4e2a9efdb44d8daab8a0a3333093704dca9ee15f2b",
  "kind": "def",
  "lexical_name": "OwnReason.toString",
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
  "slug": "ownreason-tostring--775be708bb8a96802e61b1e6",
  "source": {
    "blob": "54d168312e46c2066e4d93430d36c1f0c0353cec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:775be708bb8a96802e61b1e650f002d8ffc22c2bc5f7fb3925967a7b50a83916",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6252585869a52913fdeeab4e2a9efdb44d8daab8a0a3333093704dca9ee15f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def OwnReason.toString (reason : OwnReason) : CompilerM String := do
  PP.run do
    match reason with
    | .resetReuse resultFVar => return s!"used in reset reuse {← PP.ppFVar resultFVar}"
    | .constructorResult resultFVar => return s!"result of ctor call {← PP.ppFVar resultFVar}"
    | .constructorArg resultFVar => return s!"argument to constructor call {← PP.ppFVar resultFVar}"
    | .forwardProjectionProp resultFVar => return s!"fwd projection propagation {← PP.ppFVar resultFVar}"
    | .backwardProjectionProp resultFVar => return s!"bkwd projection propagation {← PP.ppFVar resultFVar}"
    | .functionCallResult resultFVar => return s!"result of function call {← PP.ppFVar resultFVar}"
    | .functionCallArg resultFVar => return s!"owned function argument {← PP.ppFVar resultFVar}"
    | .fvarCall resultFVar => return s!"argument to closure call {← PP.ppFVar resultFVar}"
    | .partialApplication resultFVar => return s!"argument to pap {← PP.ppFVar resultFVar}"
    | .tailCallPreservation funcName => return s!"tail call preservation of {funcName}"
    | .jpArgPropagation jpFVar => return s!"backward propagation from JP {← PP.ppFVar jpFVar}"
    | .jpTailCallPreservation jpFVar => return s!"JP tail call preservation {← PP.ppFVar jpFVar}"
    | .ownedAnnotation => return s!"Annotated as owned"

/--
Determine whether an `OwnReason` is necessary for correctness (forced) or just an optimization
(not-forced). If we attempt to own a variable that has been previously annotated as borrow for a
non-forced reason we ignore it.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InferBorrow/Variant338f9567d5dbdba6a69bb9cd70f8683e0e1a9c721edba769660cff316c48e1d5.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54d168312e46c2066e4d93430d36c1f0c0353cec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

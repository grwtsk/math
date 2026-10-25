# elimTypeAnnotations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:823a81db4d81ab3b2011f8b01c5e5b4b03dd4a38b8e4721c3cb143e72e3262ce",
  "kind": "def",
  "lexical_name": "elimTypeAnnotations",
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
  "slug": "elimtypeannotations--9c78b3abbf20db70eec6f2e0",
  "source": {
    "blob": "2efba24e4a0d0db446c1275dccf439a3b903c7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 215,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c78b3abbf20db70eec6f2e003210258efba4a42c94db33e49e79aa6a419512f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:823a81db4d81ab3b2011f8b01c5e5b4b03dd4a38b8e4721c3cb143e72e3262ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elimTypeAnnotations (type : Expr) : CoreM Expr := do
  Core.transform type fun e =>
    if e.isOptParam || e.isAutoParam then
      return .visit e.appFn!.appArg!
    else if e.isOutParam || e.isSemiOutParam then
      return .visit e.appArg!
    else
      return .continue

/--
A monad to help collecting inductive hypothesis.

In `foldAndCollect` it's a writer monad (with variants of the `local` combinator),
and in `buildInductionBody` it is more of a reader monad, with inductive hypotheses
being passed down (hence the `ask` and `branch` combinator).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FunInd/Variantaff91a9598fce5c12723ce893ecdba3a22f4653a94f5137b8e6e82f7934e31e7.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2efba24e4a0d0db446c1275dccf439a3b903c7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

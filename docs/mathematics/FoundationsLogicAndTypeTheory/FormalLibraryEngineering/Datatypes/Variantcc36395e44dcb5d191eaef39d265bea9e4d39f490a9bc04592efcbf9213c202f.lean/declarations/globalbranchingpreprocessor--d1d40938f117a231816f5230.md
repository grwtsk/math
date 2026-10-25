# GlobalBranchingPreprocessor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df6bdcb82c249d4734f8883c0df6b7ba6ccfae5f545269434885fe77d70602a5",
  "kind": "structure",
  "lexical_name": "GlobalBranchingPreprocessor",
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
  "slug": "globalbranchingpreprocessor--d1d40938f117a231816f5230",
  "source": {
    "blob": "0cd8d465e4edf2a512056fa860592d7f57edc3bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 224,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantcc36395e44dcb5d191eaef39d265bea9e4d39f490a9bc04592efcbf9213c202f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1d40938f117a231816f5230dfad0c37d01747919bbe7a34bc81849edd70a0b5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantcc36395e44dcb5d191eaef39d265bea9e4d39f490a9bc04592efcbf9213c202f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df6bdcb82c249d4734f8883c0df6b7ba6ccfae5f545269434885fe77d70602a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GlobalBranchingPreprocessor : Type extends PreprocessorBase where
  /-- Given a goal, and a list of hypotheses,
  produce a list of pairs (consisting of a goal and list of hypotheses). -/
  transform : MVarId → List Expr → MetaM (List Branch)

/--
A `Preprocessor` lifts to a `GlobalPreprocessor` by folding it over the input list.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantcc36395e44dcb5d191eaef39d265bea9e4d39f490a9bc04592efcbf9213c202f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantcc36395e44dcb5d191eaef39d265bea9e4d39f490a9bc04592efcbf9213c202f.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cd8d465e4edf2a512056fa860592d7f57edc3bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

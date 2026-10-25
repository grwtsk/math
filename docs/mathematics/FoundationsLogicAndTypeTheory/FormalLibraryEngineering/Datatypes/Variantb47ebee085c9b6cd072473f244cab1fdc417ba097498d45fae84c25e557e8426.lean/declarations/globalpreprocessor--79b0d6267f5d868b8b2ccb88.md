# GlobalPreprocessor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8951a2d873c2240e808e29c99712e494cde9a92ea457e675944b36433e10b07c",
  "kind": "structure",
  "lexical_name": "GlobalPreprocessor",
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
  "slug": "globalpreprocessor--79b0d6267f5d868b8b2ccb88",
  "source": {
    "blob": "e5670b5a4b79e66cb3d429c37b6b9bad5219c8ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 244,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79b0d6267f5d868b8b2ccb88801c0b21de29e594c7d11e0b68fe33553570c657",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8951a2d873c2240e808e29c99712e494cde9a92ea457e675944b36433e10b07c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GlobalPreprocessor : Type where
  /-- The name of the global preprocessor, used in trace output. -/
  name : String
  /-- Replace the collection of all hypotheses with new hypotheses.
  These expressions are proof terms. -/
  transform : List Expr → MetaM (List Expr)

/--
Some preprocessors perform branching case splits. A `Branch` is used to track one of these case
splits. The first component, an `MVarId`, is the goal corresponding to this branch of the split,
given as a metavariable. The `List Expr` component is the list of hypotheses for `linarith`
in this branch.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantb47ebee085c9b6cd072473f244cab1fdc417ba097498d45fae84c25e557e8426.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5670b5a4b79e66cb3d429c37b6b9bad5219c8ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

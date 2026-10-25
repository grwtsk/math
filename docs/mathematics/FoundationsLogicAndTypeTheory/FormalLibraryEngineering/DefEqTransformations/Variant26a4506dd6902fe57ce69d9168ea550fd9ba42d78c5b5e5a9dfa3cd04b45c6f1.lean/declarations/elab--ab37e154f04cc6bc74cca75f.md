# Anonymous elab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2aa6cf696c9d3213fa144eefc287861d1e8cc198430cd637c2aeb7b0d12797b",
  "kind": "elab",
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
  "slug": "elab--ab37e154f04cc6bc74cca75f",
  "source": {
    "blob": "b3eee29846a19de8e7282b94550f76b79f5a98e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 92,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab37e154f04cc6bc74cca75f6af58f46a0a5bb592c2605b2db0c59d4157d2175",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2aa6cf696c9d3213fa144eefc287861d1e8cc198430cd637c2aeb7b0d12797b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
elab "whnf" loc?:(ppSpace Parser.Tactic.location)? : tactic =>
  runDefEqTactic (checkDefEq := false) (fun _ => whnf) loc? "whnf"


/-! ### `beta_reduce` -/

/--
`beta_reduce at loc` completely beta reduces the given location.
This also exists as a `conv`-mode tactic.

This means that whenever there is an applied lambda expression such as
`(fun x => f x) y` then the argument is substituted into the lambda expression
yielding an expression such as `f y`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqTransformations/Variant26a4506dd6902fe57ce69d9168ea550fd9ba42d78c5b5e5a9dfa3cd04b45c6f1.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3eee29846a19de8e7282b94550f76b79f5a98e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

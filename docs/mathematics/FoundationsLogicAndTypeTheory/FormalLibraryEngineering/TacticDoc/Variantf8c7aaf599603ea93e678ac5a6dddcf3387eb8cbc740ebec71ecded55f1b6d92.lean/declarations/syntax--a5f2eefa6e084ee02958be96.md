# Anonymous syntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4985ac67250ff9f0a1cb0ff28e9dd803b1f82d3addc7f7d8f024fd9415b5ca4",
  "kind": "syntax",
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
  "slug": "syntax--a5f2eefa6e084ee02958be96",
  "source": {
    "blob": "ba4d4d66af06c4e7b29f60c133ba88dd9e82ea97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticDoc/Variantf8c7aaf599603ea93e678ac5a6dddcf3387eb8cbc740ebec71ecded55f1b6d92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5f2eefa6e084ee02958be96be1280e2b771f20952d2f6e805844c94538fd9df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticDoc/Variantf8c7aaf599603ea93e678ac5a6dddcf3387eb8cbc740ebec71ecded55f1b6d92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `syntax` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4985ac67250ff9f0a1cb0ff28e9dd803b1f82d3addc7f7d8f024fd9415b5ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
syntax (name := change2) "change" "too" : tactic

/--
error: -- Found 4 errors in 7 declarations (plus 0 automatically generated ones) in the current file with 2 linters

/- The `tacticAlt` linter reports:
TACTICS ARE MISSING `@[tactic_alt]` ATTRIBUTES:
This linter can be disabled with `@[nolint tacticAlt]`. -/
#check duplicate1 /- tactic `duplicate` has multiple declarations [duplicate2,
 duplicate1] one of which should be marked as `@[tactic_alt]` of the other(s).
Hint: you can use the `tactic_extension` command to extend the documentation. -/
#check duplicate2 /- tactic `duplicate` has multiple declarations [duplicate2,
 duplicate1] one of which should be marked as `@[tactic_alt]` of the other(s).
Hint: you can use the `tactic_extension` command to extend the documentation. -/
#check rfl2 /- tactic `rfl` has multiple declarations [Lean.Parser.Tactic.tacticRfl,
 rfl2] one of which should be marked as `@[tactic_alt]` of the other(s).
Hint: you can use the `tactic_extension` command to extend the documentation. -/

/- The `tacticDocs` linter reports:
TACTICS ARE MISSING DOCUMENTATION STRINGS:
This linter can be disabled with `@[nolint tacticDocs]`. -/
#check tacticNoDocs /- tactic `noDocs` missing documentation string -/
-/
#guard_msgs in
#lint
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticDoc/Variantf8c7aaf599603ea93e678ac5a6dddcf3387eb8cbc740ebec71ecded55f1b6d92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticDoc/Variantf8c7aaf599603ea93e678ac5a6dddcf3387eb8cbc740ebec71ecded55f1b6d92.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba4d4d66af06c4e7b29f60c133ba88dd9e82ea97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

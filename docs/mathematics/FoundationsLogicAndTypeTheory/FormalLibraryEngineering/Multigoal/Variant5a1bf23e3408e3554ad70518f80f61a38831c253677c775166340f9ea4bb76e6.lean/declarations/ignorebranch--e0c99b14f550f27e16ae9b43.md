# ignoreBranch

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c13dd06e3a439d21563cc7bce9af4d78f9a7c2c9d54fb068a83ad79ceea08c7a",
  "kind": "abbrev",
  "lexical_name": "ignoreBranch",
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
  "slug": "ignorebranch--e0c99b14f550f27e16ae9b43",
  "source": {
    "blob": "010879b9e55d20ec7d13038e813b633621514186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0c99b14f550f27e16ae9b4305620fd9ea2919b9d5bb6b86c8a66712e1ff6b93",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c13dd06e3a439d21563cc7bce9af4d78f9a7c2c9d54fb068a83ad79ceea08c7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ignoreBranch : Std.HashSet SyntaxNodeKind := .ofArray #[
    ``Lean.Parser.Tactic.Conv.conv,
    `Mathlib.Tactic.Conv.convLHS,
    `Mathlib.Tactic.Conv.convRHS,
    ``Lean.Parser.Tactic.first,
    ``Lean.Parser.Tactic.repeat',
    ``Lean.Parser.Tactic.tacticIterate____,
    ``Lean.Parser.Tactic.anyGoals,
    ``Lean.Parser.Tactic.allGoals,
    ``Lean.Parser.Tactic.focus,
    ``Lean.Parser.Tactic.failIfSuccess,
    `Mathlib.Tactic.successIfFailWithMsg
  ]

/-- `getManyGoals t` returns the syntax nodes of the `InfoTree` `t` corresponding to tactic calls
which
* leave at least one goal that was present before it ran
  (with the exception of tactics that leave the sole goal unchanged);
* are not excluded through `exclusions` or `ignoreBranch`;

together with the number of goals before the tactic,
the number of goals after the tactic, and the number of unaffected goals.
-/
partial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variant5a1bf23e3408e3554ad70518f80f61a38831c253677c775166340f9ea4bb76e6.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `010879b9e55d20ec7d13038e813b633621514186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

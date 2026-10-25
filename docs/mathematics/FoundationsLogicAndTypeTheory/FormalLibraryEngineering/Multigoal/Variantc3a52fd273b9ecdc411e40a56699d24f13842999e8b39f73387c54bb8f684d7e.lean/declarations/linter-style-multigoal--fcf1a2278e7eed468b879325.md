# linter.style.multiGoal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4e287b9a4e7a7b2f0e46a430c16f4878c3d80d054d6765c3a4372306171731d",
  "kind": "register_option",
  "lexical_name": "linter.style.multiGoal",
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
  "slug": "linter-style-multigoal--fcf1a2278e7eed468b879325",
  "source": {
    "blob": "0794f39753e4f2e8731a437289dd9bc1df0314b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variantc3a52fd273b9ecdc411e40a56699d24f13842999e8b39f73387c54bb8f684d7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcf1a2278e7eed468b87932519b7597e4bce3281d84442a7341042df9bec174d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variantc3a52fd273b9ecdc411e40a56699d24f13842999e8b39f73387c54bb8f684d7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `register_option` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d4e287b9a4e7a7b2f0e46a430c16f4878c3d80d054d6765c3a4372306171731d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
register_option linter.style.multiGoal : Bool := {
  defValue := false
  descr := "enable the multiGoal linter"
}

namespace Style.multiGoal

/-- The `SyntaxNodeKind`s in `exclusions` correspond to tactics that the linter allows,
even though there are multiple active goals.
Reasons for admitting a kind in `exclusions` include
* the tactic focuses on one goal, e.g. `·`, `focus`, `on_goal i =>`, ...;
* the tactic is reordering the goals, e.g. `swap`, `rotate_left`, ...;
* the tactic is structuring a proof, e.g. `skip`, `<;>`, ...;
* the tactic is creating new goals, e.g. `constructor`, `cases`, `induction`, ....

There is some overlap in scope between `ignoreBranch` and `exclusions`.

Tactic combinators like `repeat` or `try` are a mix of both.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variantc3a52fd273b9ecdc411e40a56699d24f13842999e8b39f73387c54bb8f684d7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Multigoal/Variantc3a52fd273b9ecdc411e40a56699d24f13842999e8b39f73387c54bb8f684d7e.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0794f39753e4f2e8731a437289dd9bc1df0314b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

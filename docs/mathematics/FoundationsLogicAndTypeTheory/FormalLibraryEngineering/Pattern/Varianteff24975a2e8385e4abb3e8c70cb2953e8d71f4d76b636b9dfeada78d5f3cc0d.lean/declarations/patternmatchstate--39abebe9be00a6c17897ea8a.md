# PatternMatchState

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaee2be71b38e4cf16f72af024beeaf5dd9ef97f63d443175978fcc9b2b2ae78",
  "kind": "inductive",
  "lexical_name": "PatternMatchState",
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
  "slug": "patternmatchstate--39abebe9be00a6c17897ea8a",
  "source": {
    "blob": "9483e23ed39e9f38648067c5def621c6bfcefaa8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Varianteff24975a2e8385e4abb3e8c70cb2953e8d71f4d76b636b9dfeada78d5f3cc0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:39abebe9be00a6c17897ea8a22d2702d2739b6942b5ff0aa550c5fbedebdfa55",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Varianteff24975a2e8385e4abb3e8c70cb2953e8d71f4d76b636b9dfeada78d5f3cc0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaee2be71b38e4cf16f72af024beeaf5dd9ef97f63d443175978fcc9b2b2ae78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive PatternMatchState where
  /--
  The state corresponding to a `(occs := *)` pattern, which acts like `occs := 1 2 ... n` where
  `n` is the total number of pattern matches.
  * `subgoals` is the list of subgoals for patterns already matched
  -/
  | all (subgoals : Array MVarId)
  /--
  The state corresponding to a partially consumed `(occs := a₁ a₂ ...)` pattern.
  * `subgoals` is the list of subgoals for patterns already matched,
    along with their index in the original occs list
  * `idx` is the number of matches that have occurred so far
  * `remaining` is a list of `(i, orig)` pairs representing matches we have not yet reached.
    We maintain the invariant that `idx :: remaining.map (·.1)` is sorted.
    The number `i` is the value in the `occs` list and `orig` is its index in the list.
  -/
  | occs (subgoals : Array (Nat × MVarId)) (idx : Nat) (remaining : List (Nat × Nat))

namespace PatternMatchState

/-- Is this pattern no longer interested in accepting matches? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Varianteff24975a2e8385e4abb3e8c70cb2953e8d71f4d76b636b9dfeada78d5f3cc0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Varianteff24975a2e8385e4abb3e8c70cb2953e8d71f4d76b636b9dfeada78d5f3cc0d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9483e23ed39e9f38648067c5def621c6bfcefaa8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

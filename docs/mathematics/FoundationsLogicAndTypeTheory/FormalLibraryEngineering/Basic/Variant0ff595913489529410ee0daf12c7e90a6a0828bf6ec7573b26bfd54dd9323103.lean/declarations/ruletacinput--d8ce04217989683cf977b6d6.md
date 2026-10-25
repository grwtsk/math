# RuleTacInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2cbc3f5ecdcbc4e8a8a0fcf86fa7b988c5b2ec4b9eba09783aae8f73218f981b",
  "kind": "structure",
  "lexical_name": "RuleTacInput",
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
  "slug": "ruletacinput--d8ce04217989683cf977b6d6",
  "source": {
    "blob": "062efad88852821fcc96e923734b97b4a7e89dd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 33,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0ff595913489529410ee0daf12c7e90a6a0828bf6ec7573b26bfd54dd9323103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8ce04217989683cf977b6d62c08531ae049a3763ae7dcb2f83e0f167437263b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0ff595913489529410ee0daf12c7e90a6a0828bf6ec7573b26bfd54dd9323103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2cbc3f5ecdcbc4e8a8a0fcf86fa7b988c5b2ec4b9eba09783aae8f73218f981b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RuleTacInput where
  /-- The goal on which the rule is run. -/
  goal : MVarId
  /-- The set of mvars that `goal` depends on. -/
  mvars : UnorderedArraySet MVarId
  /-- If the rule is indexed, the locations (i.e. hyps or the target) matched by
  the rule's index entries. Otherwise an empty set. The array contains no
  duplicates. -/
  indexMatchLocations : Array IndexMatchLocation
  /-- If the rule has a pattern, the pattern substitutions that were found in
  the goal. Each substitution is a list of expressions which were found by
  matching the pattern against expressions in the goal. For example, if `h : max
  a b = max a c` appears in the goal and the rule has pattern `max x y`, there
  will be two substitutions `{x ↦ a, y ↦ b}`) and `{x ↦ a, y ↦ c}`.

  If the rule does not have a pattern, this is `none`. Otherwise it is
  guaranteed to be `some xs` with `xs` non-empty and duplicate-free. -/
  patternSubsts? : Option (Array Substitution)
  /-- The options given to Aesop. -/
  options : Options'
  deriving Inhabited

/-- A subgoal produced by a rule. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0ff595913489529410ee0daf12c7e90a6a0828bf6ec7573b26bfd54dd9323103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant0ff595913489529410ee0daf12c7e90a6a0828bf6ec7573b26bfd54dd9323103.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `062efad88852821fcc96e923734b97b4a7e89dd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Strategy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e0f16450ad7bb3565b8e98eaa34642fac02b59055460438032a68e563d96652",
  "kind": "inductive",
  "lexical_name": "Strategy",
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
  "slug": "strategy--546f6a471c80e11ba5bb5b0f",
  "source": {
    "blob": "f4102a5a296a16f6376ec0ba049b20ff737d0957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 24,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Public/Variantfa5a961eb023fda3d7f669a77bb14043659fd9612269c147a79e2ed1a0acd7b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:546f6a471c80e11ba5bb5b0fa2bbe984b25b3c1a8d69983440be31a9ecaa4240",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Public/Variantfa5a961eb023fda3d7f669a77bb14043659fd9612269c147a79e2ed1a0acd7b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e0f16450ad7bb3565b8e98eaa34642fac02b59055460438032a68e563d96652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Strategy
  /--
  Best-first search. This is the default strategy.
  -/
  | bestFirst
  /--
  Depth-first search. Whenever a rule is applied, Aesop immediately tries to
  solve each of its subgoals (from left to right), up to the maximum rule
  application depth. Goal and rule priorities are ignored, except to decide
  which rule is applied first.
  -/
  | depthFirst
  /--
  Breadth-first search. Aesop always works on the oldest unsolved goal. Goal and
  rule priorities are ignored, except to decide which rule is applied first.
  -/
  | breadthFirst
  deriving Inhabited, BEq, Repr

/--
Options which modify the behaviour of the `aesop` tactic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Public/Variantfa5a961eb023fda3d7f669a77bb14043659fd9612269c147a79e2ed1a0acd7b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Public/Variantfa5a961eb023fda3d7f669a77bb14043659fd9612269c147a79e2ed1a0acd7b0.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4102a5a296a16f6376ec0ba049b20ff737d0957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

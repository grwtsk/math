# BackwardRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5a0379ace3a20601b9371578e6c9c195335735f2cb8bb1e981478a8a87e30df",
  "kind": "structure",
  "lexical_name": "BackwardRule",
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
  "slug": "backwardrule--19bf0b429181d9540bf91c0c",
  "source": {
    "blob": "6e4977e3c94688ae798172bd31419464d7a324d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19bf0b429181d9540bf91c0ced315d82cdbfa8e2d78d08bb78b779075e14e417",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5a0379ace3a20601b9371578e6c9c195335735f2cb8bb1e981478a8a87e30df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public structure BackwardRule where
  /-- The theorem used to create the rule. It is often of the form `Expr.const declName`. -/
  expr      : Expr
  /-- Precomputed pattern for efficient unification. -/
  pattern   : Pattern
  /--
  Indices of arguments that become new subgoals, ordered with
  non-dependent goals first. -/
  resultPos : List Nat


/--
Computes which argument positions become new subgoals after applying a backward rule.

Arguments are excluded from `resultPos` if:
- They appear in the conclusion (will be determined by unification)
- They are instance arguments (will be synthesized)

The result is ordered with non-dependent arguments first, then dependent ones.
This ordering is the same one used for the `MetaM` `apply` tactic.
It improves the user experience: non-dependent goals can be solved in
any order, while dependent goals are often resolved by solving the non-dependent ones first.
Example: `Exists.intro` produces two subgoal `?h : ?p ?w` and `?w : ?α`. The goal `?h` appears
first because solving it often solves `?w`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variant172c2aabd12b263b7e0d0fcb5bbecacb9a3b4d1cb55d592b64d9a679ea53eb13.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e4977e3c94688ae798172bd31419464d7a324d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

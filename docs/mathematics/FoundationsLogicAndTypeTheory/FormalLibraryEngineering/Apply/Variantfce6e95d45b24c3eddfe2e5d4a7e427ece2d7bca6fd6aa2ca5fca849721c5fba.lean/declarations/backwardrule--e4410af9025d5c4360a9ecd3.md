# BackwardRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7eabe551398dea6288a5a07ac685cc2b0779782298a53bf928e8002a451c7396",
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
  "slug": "backwardrule--e4410af9025d5c4360a9ecd3",
  "source": {
    "blob": "39e7d57810b3b8d923cd17d6be76c9a3b25165e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4410af9025d5c4360a9ecd312fa8c12894b0927f9328907fbdf26e394fb1c0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7eabe551398dea6288a5a07ac685cc2b0779782298a53bf928e8002a451c7396`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–44.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantfce6e95d45b24c3eddfe2e5d4a7e427ece2d7bca6fd6aa2ca5fca849721c5fba.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39e7d57810b3b8d923cd17d6be76c9a3b25165e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

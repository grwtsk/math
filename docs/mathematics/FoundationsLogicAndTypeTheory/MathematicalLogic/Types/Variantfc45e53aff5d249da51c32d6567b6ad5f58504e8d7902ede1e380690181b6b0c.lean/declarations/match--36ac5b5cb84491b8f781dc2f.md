# Match

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9d5c5a69c6aa2d7d3b085cc97cb82299c70fff8609ca8204a9083ecc03a64b5",
  "kind": "structure",
  "lexical_name": "Match",
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
  "slug": "match--36ac5b5cb84491b8f781dc2f",
  "source": {
    "blob": "35b5d36d59c21c9cd98861e728b64145c1070d18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Types/Variantfc45e53aff5d249da51c32d6567b6ad5f58504e8d7902ede1e380690181b6b0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36ac5b5cb84491b8f781dc2fe739e7b67f0cd658b6c30a375839fdc122d8778b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Types/Variantfc45e53aff5d249da51c32d6567b6ad5f58504e8d7902ede1e380690181b6b0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9d5c5a69c6aa2d7d3b085cc97cb82299c70fff8609ca8204a9083ecc03a64b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Match where
  /-- The substitution induced by the hyps or pattern substitutions added to
  the slots. -/
  subst : Substitution
  /-- The pattern substitutions that have been added to the match. -/
  patInstSubsts : Array Substitution
  /-- The match's level is the index of the maximal slot for which a hyp or
  pattern substitution has been added to the match. -/
  level : SlotIndex
  /-- Premises that appear in slots which are as yet unassigned in this match
  (i.e., in slots with index greater than `level`). This is a property of the
  rule, but we include it here because it's used to check whether two matches
  are equivalent. -/
  forwardDeps : Array PremiseIndex
  /-- Premises that appear in the rule's conclusion. This is a property of the
  rule, but we include it here because it's used to check whether two matches
  are equivalent. -/
  conclusionDeps : Array PremiseIndex
  deriving Inhabited

namespace Match

/-- Two matches are equivalent if (a) they have the same level; (b) for each
premise that appears in a slot greater than the matches' level, their
substitution assigns the same value; (c) for each premise that appears in the
rule's conclusion, their substitution assigns the same value.

If we already have a match `m₁` and we obtain an equivalent match `m₂`, then
`m₂` is redundant. This is because if the matches are partial, then `m₂` can be
completed by exactly the hypotheses that complete `m₁`, since they agree on the
premise instantiations that are relevant for the possible completions. And if
the matches are complete, then they assign the same instantiations to the
variables that appear in the rule's conclusion, and these are the only ones that
ultimately matter. -/
-- TODO I believe we could be even more aggressive when forwardDeps and
-- conclusionDeps contain proofs of propositions and consider any such proofs
-- equal.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Types/Variantfc45e53aff5d249da51c32d6567b6ad5f58504e8d7902ede1e380690181b6b0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Types/Variantfc45e53aff5d249da51c32d6567b6ad5f58504e8d7902ede1e380690181b6b0c.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35b5d36d59c21c9cd98861e728b64145c1070d18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

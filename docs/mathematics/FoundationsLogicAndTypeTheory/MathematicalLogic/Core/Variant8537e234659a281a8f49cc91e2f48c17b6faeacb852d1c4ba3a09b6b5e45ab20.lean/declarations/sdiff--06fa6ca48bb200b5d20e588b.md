# SDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1110a214a5c9b0f1fe51b056a6149cb731275a4ac2d1614c1d4a2b112e109f89",
  "kind": "class",
  "lexical_name": "SDiff",
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
  "slug": "sdiff--06fa6ca48bb200b5d20e588b",
  "source": {
    "blob": "c00f44d589c186526ee811958ab745a2b1078de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 574,
    "line": 531,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06fa6ca48bb200b5d20e588b7daec7b5c020bf15a0cd860af5f11cbb2239152e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1110a214a5c9b0f1fe51b056a6149cb731275a4ac2d1614c1d4a2b112e109f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–574.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class SDiff (α : Type u) where
  /--
  `a \ b` is the set difference of `a` and `b`,
  consisting of all elements in `a` that are not in `b`.
  -/
  sdiff : α → α → α

/-- Subset relation: `a ⊆ b`  -/
infix:50 " ⊆ " => Subset

/-- Strict subset relation: `a ⊂ b`  -/
infix:50 " ⊂ " => SSubset

/-- Superset relation: `a ⊇ b`  -/
infix:50 " ⊇ " => Superset

/-- Strict superset relation: `a ⊃ b`  -/
infix:50 " ⊃ " => SSuperset

/-- `a ∪ b` is the union of `a` and `b`. -/
infixl:65 " ∪ " => Union.union

/-- `a ∩ b` is the intersection of `a` and `b`. -/
infixl:70 " ∩ " => Inter.inter

/--
`a \ b` is the set difference of `a` and `b`,
consisting of all elements in `a` that are not in `b`.
-/
infix:70 " \\ " => SDiff.sdiff

recommended_spelling "subset" for "⊆" in [Subset, «term_⊆_»]
recommended_spelling "ssubset" for "⊂" in [SSubset, «term_⊂_»]
/-- prefer `⊆` over `⊇` -/
recommended_spelling "superset" for "⊇" in [Superset, «term_⊇_»]
/-- prefer `⊂` over `⊃` -/
recommended_spelling "ssuperset" for "⊃" in [SSuperset, «term_⊃_»]
recommended_spelling "union" for "∪" in [Union.union, «term_∪_»]
recommended_spelling "inter" for "∩" in [Inter.inter, «term_∩_»]
recommended_spelling "sdiff" for "\\" in [SDiff.sdiff, «term_\_»]

/-! # collections  -/

/-- `EmptyCollection α` is the typeclass which supports the notation `∅`, also written as `{}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant8537e234659a281a8f49cc91e2f48c17b6faeacb852d1c4ba3a09b6b5e45ab20.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c00f44d589c186526ee811958ab745a2b1078de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

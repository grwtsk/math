# WithTop.LT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40af6497b7fd20c4d2110f3f5cc87006eef489f2d7d545d8ed3c6e0c27b7a558",
  "kind": "inductive",
  "lexical_name": "WithTop.LT",
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
  "slug": "withtop-lt--fc6f051e7491a870ae9f6259",
  "source": {
    "blob": "de15ef9e9d7f0b373aece021cd5ff3df999cf5e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 360,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant04888dc906f21616c8fde024aa9ee2b6ac6431ae6fc071a74f7d686aad670c12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc6f051e7491a870ae9f6259689147b7bbd13f61100e63abd48bfed951b0b55a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant04888dc906f21616c8fde024aa9ee2b6ac6431ae6fc071a74f7d686aad670c12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40af6497b7fd20c4d2110f3f5cc87006eef489f2d7d545d8ed3c6e0c27b7a558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected inductive WithTop.LT [LT α] : WithTop α → WithTop α → Prop
  | protected lt_top (a : α) : WithTop.LT a ⊤
  | protected coe_lt_coe {a b : α} : a < b → WithTop.LT a b

attribute [to_dual existing (reorder := motive (1 2), 4 5, coe_lt_coe (1 2))] WithBot.LT.casesOn

/-- The order on `WithBot α`, defined by `⊥ < ↑a` and `a < b → ↑a < ↑b`.

Equivalently, `x < y` can be defined as `∃ b : α, y = ↑b ∧ ∀ a : α, x = ↑a → a < b`,
see `lt_iff_exists`. The definition as an inductive predicate is preferred since it
cannot be accidentally unfolded too far. -/
@[to_dual
/-- The order on `WithTop α`, defined by `↑a < ⊤` and `a < b → ↑a < ↑b`.

Equivalently, `x < y` can be defined as `∃ a : α, x = ↑a ∧ ∀ b : α, y = ↑b → a < b`,
see `le_if_forall`. The definition as an inductive predicate is preferred since it
cannot be accidentally unfolded too far. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant04888dc906f21616c8fde024aa9ee2b6ac6431ae6fc071a74f7d686aad670c12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WithBot/Variant04888dc906f21616c8fde024aa9ee2b6ac6431ae6fc071a74f7d686aad670c12.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de15ef9e9d7f0b373aece021cd5ff3df999cf5e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

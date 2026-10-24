# isNNRat_lt_false

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c6e574f-2b28-6cd5-dfc0-94609afb0524",
  "kind": "theorem",
  "lexical_name": "isNNRat_lt_false",
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
  "slug": "isnnrat-lt-false--e83ca88170999edb17dbdebb",
  "source": {
    "blob": "d7156ab2d7a45aa8fbeef3594a27a9500abc982e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 118,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant48079fbc64808a7226f4bbb3e91dca9cda9d3f47c7c9e7b8781722919dae0823.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e83ca88170999edb17dbdebb0f6ff42f67dc5c6897f3ebe672351ec347fe325f",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ineq/Variant48079fbc64808a7226f4bbb3e91dca9cda9d3f47c7c9e7b8781722919dae0823.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c6e574f-2b28-6cd5-dfc0-94609afb0524`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNNRat_lt_false [Semiring α] [LinearOrder α] [IsStrictOrderedRing α]
    {a b : α} {na nb : ℕ} {da db : ℕ}
    (ha : IsNNRat a na da) (hb : IsNNRat b nb db) (h : decide (nb * da ≤ na * db)) : ¬a < b :=
  not_lt_of_ge (isNNRat_le_true hb ha h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ineq/Variant48079fbc64808a7226f4bbb3e91dca9cda9d3f47c7c9e7b8781722919dae0823.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ineq/Variant48079fbc64808a7226f4bbb3e91dca9cda9d3f47c7c9e7b8781722919dae0823.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7156ab2d7a45aa8fbeef3594a27a9500abc982e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

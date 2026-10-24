# ConditionallyCompleteLinearOrder.toLinearOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e4b96183bfd13ba86d18b4ff2603ce0846e25ac7c70bede65efd547d7f703ac",
  "kind": "instance",
  "lexical_name": "ConditionallyCompleteLinearOrder.toLinearOrder",
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
  "slug": "conditionallycompletelinearorder-tolinearorder--1e02fae2ef2f66afc578ce3c",
  "source": {
    "blob": "c1d0a08e804bfaa5c10a3f9d8561ecf285c40318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf3ccc930eeef8bd3cdd245cd88e9941a3b226f0baf0e83029b7c86897fa2a224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e02fae2ef2f66afc578ce3c05ea53c0f457006e57ffe35aee1350713516a1ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf3ccc930eeef8bd3cdd245cd88e9941a3b226f0baf0e83029b7c86897fa2a224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e4b96183bfd13ba86d18b4ff2603ce0846e25ac7c70bede65efd547d7f703ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ConditionallyCompleteLinearOrder.toLinearOrder [h : ConditionallyCompleteLinearOrder α] :
    LinearOrder α where
  min_def a b := by
    by_cases hab : a = b
    · simp [hab]
    · rcases ConditionallyCompleteLinearOrder.le_total a b with (h₁ | h₂)
      · simp [h₁]
      · simp [show ¬(a ≤ b) from fun h => hab (le_antisymm h h₂), h₂]
  max_def a b := by
    by_cases hab : a = b
    · simp [hab]
    · rcases ConditionallyCompleteLinearOrder.le_total a b with (h₁ | h₂)
      · simp [h₁]
      · simp [show ¬(a ≤ b) from fun h => hab (le_antisymm h h₂), h₂]
  __ := h

-- see Note [lower instance priority]
attribute [instance 100] ConditionallyCompleteLinearOrderBot.toOrderBot

-- see Note [lower instance priority]
/-- A complete lattice is a conditionally complete lattice, as there are no restrictions
on the properties of sInf and sSup in a complete lattice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf3ccc930eeef8bd3cdd245cd88e9941a3b226f0baf0e83029b7c86897fa2a224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantf3ccc930eeef8bd3cdd245cd88e9941a3b226f0baf0e83029b7c86897fa2a224.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1d0a08e804bfaa5c10a3f9d8561ecf285c40318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

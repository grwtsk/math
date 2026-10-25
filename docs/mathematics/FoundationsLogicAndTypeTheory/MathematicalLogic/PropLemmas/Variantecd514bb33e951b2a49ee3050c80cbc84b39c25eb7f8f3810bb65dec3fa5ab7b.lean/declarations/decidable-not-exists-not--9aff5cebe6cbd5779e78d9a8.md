# Decidable.not_exists_not

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a89ecccb-9a6b-b9da-4380-0ee34d5fd563",
  "kind": "theorem",
  "lexical_name": "Decidable.not_exists_not",
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
  "slug": "decidable-not-exists-not--9aff5cebe6cbd5779e78d9a8",
  "source": {
    "blob": "9c01128745f1f5c1e8aa741b3027a2ab624a2cb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 690,
    "line": 671,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantecd514bb33e951b2a49ee3050c80cbc84b39c25eb7f8f3810bb65dec3fa5ab7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aff5cebe6cbd5779e78d9a8c4a452f029336eb8170a6cd42afbf9ba36b52acc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantecd514bb33e951b2a49ee3050c80cbc84b39c25eb7f8f3810bb65dec3fa5ab7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a89ecccb-9a6b-b9da-4380-0ee34d5fd563`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 671–690.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Decidable.not_exists_not {p : α → Prop} [∀ x, Decidable (p x)] :
    (¬∃ x, ¬p x) ↔ ∀ x, p x := by
  simp only [not_exists, Decidable.not_not]

export Decidable (not_imp_self)

/-
`decide_implies` simp justification.

We have a critical pair from `decide (¬(p ∧ q))`:

 1. `decide (p → ¬q)` via `not_and`
 2. `!decide (p ∧ q)` via `decide_not` This further refines to
    `!(decide p) || !(decide q)` via `Bool.decide_and` (in Mathlib) and
    `Bool.not_and` (made simp in Mathlib).

We introduce `decide_implies` below and then both normalize to
`!(decide p) || !(decide q)`.
-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantecd514bb33e951b2a49ee3050c80cbc84b39c25eb7f8f3810bb65dec3fa5ab7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PropLemmas/Variantecd514bb33e951b2a49ee3050c80cbc84b39c25eb7f8f3810bb65dec3fa5ab7b.lean#L671).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c01128745f1f5c1e8aa741b3027a2ab624a2cb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

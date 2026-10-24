# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:67547aedec81509d700431e011d8dcc7d97547f2c06ac43b445f63acb6a63788",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d886cf1f99beb027e23061e6",
  "source": {
    "blob": "6a61553b1647d62ed3851ec8a2143a7af262ac4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 74,
    "path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d886cf1f99beb027e23061e6992b1a424335c8449236d6ddc7f6346581b34d68",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:67547aedec81509d700431e011d8dcc7d97547f2c06ac43b445f63acb6a63788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) ConditionallyCompleteLinearOrderedField.to_archimedean
    [ConditionallyCompleteLinearOrderedField α] : Archimedean α :=
  archimedean_iff_nat_lt.2
    (by
      by_contra! h
      obtain ⟨x, h⟩ := h
      have := csSup_le (range_nonempty Nat.cast)
        (forall_mem_range.2 fun m =>
          le_sub_iff_add_le.2 <| le_csSup ⟨x, forall_mem_range.2 h⟩ ⟨m+1, Nat.cast_succ m⟩)
      linarith)

namespace LinearOrderedField

/-!
### Rational cut map

The idea is that a conditionally complete linear ordered field is fully characterized by its copy of
the rationals. Hence we define `LinearOrderedField.cutMap β : α → Set β` which sends `a : α` to the
"rationals in `β`" that are less than `a`.
-/


section CutMap

variable [Field α] [LinearOrder α]

section DivisionRing

variable (β) [DivisionRing β] {a a₁ a₂ : α} {b : β} {q : ℚ}

/-- The lower cut of rationals inside a linear ordered field that are less than a given element of
another linear ordered field. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantb0b081cb24e7385f258a53db0dd75ba0bd7a692eebbf6d955cc9a058a87d961d.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a61553b1647d62ed3851ec8a2143a7af262ac4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

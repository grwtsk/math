# Sep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7115512dd66a47b6686c04f203f8c36d42bb5190a8aab869b64d6bfd0350063",
  "kind": "class",
  "lexical_name": "Sep",
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
  "slug": "sep--6d785a3f9512cfb1a86c2cec",
  "source": {
    "blob": "e9765075db1c60576cc88ec591a41159901d32e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotation/Variantecf8b277e5eeac03ce41b4fd430bee63db3ce87478d3e3f04686819f7fbf259b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d785a3f9512cfb1a86c2ceccdbc625c6b7b67973561e9e8edee022ea78f9f94",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotation/Variantecf8b277e5eeac03ce41b4fd430bee63db3ce87478d3e3f04686819f7fbf259b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7115512dd66a47b6686c04f203f8c36d42bb5190a8aab869b64d6bfd0350063`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Sep (α : outParam <| Type u) (γ : Type v) where
  /-- Computes `{ a ∈ c | p a }`. -/
  sep : (α → Prop) → γ → γ

/-- Declare `∀ x ∈ y, ...` as syntax for `∀ x, x ∈ y → ...` and `∃ x ∈ y, ...` as syntax for
`∃ x, x ∈ y ∧ ...` -/
binder_predicate x " ∈ " y:term => `($x ∈ $y)

/-- Declare `∀ x ∉ y, ...` as syntax for `∀ x, x ∉ y → ...` and `∃ x ∉ y, ...` as syntax for
`∃ x, x ∉ y ∧ ...` -/
binder_predicate x " ∉ " y:term => `($x ∉ $y)

/-- Declare `∀ x ⊆ y, ...` as syntax for `∀ x, x ⊆ y → ...` and `∃ x ⊆ y, ...` as syntax for
`∃ x, x ⊆ y ∧ ...` -/
binder_predicate x " ⊆ " y:term => `($x ⊆ $y)

/-- Declare `∀ x ⊂ y, ...` as syntax for `∀ x, x ⊂ y → ...` and `∃ x ⊂ y, ...` as syntax for
`∃ x, x ⊂ y ∧ ...` -/
binder_predicate x " ⊂ " y:term => `($x ⊂ $y)

/-- Declare `∀ x ⊇ y, ...` as syntax for `∀ x, x ⊇ y → ...` and `∃ x ⊇ y, ...` as syntax for
`∃ x, x ⊇ y ∧ ...` -/
binder_predicate x " ⊇ " y:term => `($x ⊇ $y)

/-- Declare `∀ x ⊃ y, ...` as syntax for `∀ x, x ⊃ y → ...` and `∃ x ⊃ y, ...` as syntax for
`∃ x, x ⊃ y ∧ ...` -/
binder_predicate x " ⊃ " y:term => `($x ⊃ $y)

/--
`{ a, b, c }` is a set with elements `a`, `b`, and `c`.

This notation works for all types that implement `Insert` and `Singleton`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotation/Variantecf8b277e5eeac03ce41b4fd430bee63db3ce87478d3e3f04686819f7fbf259b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SetNotation/Variantecf8b277e5eeac03ce41b4fd430bee63db3ce87478d3e3f04686819f7fbf259b.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9765075db1c60576cc88ec591a41159901d32e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

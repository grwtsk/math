# Equiv.decidable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20a88d2ac36a748ed1e92f8baee049a9a38c15175a375cbdbdd9a6052dda69a8",
  "kind": "def",
  "lexical_name": "Equiv.decidable",
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
  "slug": "equiv-decidable--83fed9bb1c68a65df3ae8142",
  "source": {
    "blob": "14758f1ff276b38974f4974f3c19c5fe426581a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 333,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83fed9bb1c68a65df3ae814271dd18f23abf465e63b3a39212136b36e9b3ca21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20a88d2ac36a748ed1e92f8baee049a9a38c15175a375cbdbdd9a6052dda69a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def Equiv.decidable : ∀ l₁ l₂ : Lists α, Decidable (l₁ ~ l₂)
    | ⟨false, l₁⟩, ⟨false, l₂⟩ =>
      decidable_of_iff' (l₁ = l₂) <| by
        cases l₁
        apply equiv_atom.trans
        simp only [atom]
        constructor <;> (rintro ⟨rfl⟩; rfl)
    | ⟨false, l₁⟩, ⟨true, l₂⟩ => isFalse <| by rintro ⟨⟩
    | ⟨true, l₁⟩, ⟨false, l₂⟩ => isFalse <| by rintro ⟨⟩
    | ⟨true, l₁⟩, ⟨true, l₂⟩ => by
      haveI : Decidable (l₁ ⊆ l₂) :=
        have : SizeOf.sizeOf l₁ + SizeOf.sizeOf l₂ <
            SizeOf.sizeOf (⟨true, l₁⟩ : Lists α) + SizeOf.sizeOf (⟨true, l₂⟩ : Lists α) := by
          decreasing_tactic
        Subset.decidable l₁ l₂
      haveI : Decidable (l₂ ⊆ l₁) :=
        have : SizeOf.sizeOf l₂ + SizeOf.sizeOf l₁ <
            SizeOf.sizeOf (⟨true, l₁⟩ : Lists α) + SizeOf.sizeOf (⟨true, l₂⟩ : Lists α) := by
          decreasing_tactic
        Subset.decidable l₂ l₁
      exact decidable_of_iff' _ Equiv.antisymm_iff
  termination_by x y => sizeOf x + sizeOf y
  @[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14758f1ff276b38974f4974f3c19c5fe426581a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

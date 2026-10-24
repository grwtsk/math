# cyclicSubgroup_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8bf083e-a446-814d-6a95-ccc31a864b3a",
  "kind": "theorem",
  "lexical_name": "cyclicSubgroup_surjective",
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
  "slug": "cyclicsubgroup-surjective--9f470fda76df129ea45b5b8f",
  "source": {
    "blob": "287f8bc0df446c46dd459d6c0412390bcc4ef4e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 74,
    "path": "GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f470fda76df129ea45b5b8faf484110fc84bf0a8b708f71cc25bccaad00943d",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8bf083e-a446-814d-6a95-ccc31a864b3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicSubgroup_surjective : Function.Surjective (cyclicSubgroup (M := M)) := by
  intro H
  let d : Divisor M := ⟨Nat.card H, by
    simpa only [AddSubgroup.card_top, Nat.card_eq_fintype_card, ZMod.card] using
      (AddSubgroup.card_dvd_of_le (show H ≤ ⊤ from le_top))⟩
  have hle : H ≤ cyclicSubgroup d := by
    intro x hx
    rw [mem_cyclicSubgroup]
    have h := addOrderOf_dvd_natCard (⟨x, hx⟩ : H)
    rw [← addOrderOf_injective H.subtype Subtype.coe_injective (⟨x, hx⟩ : H)] at h
    exact h
  refine ⟨d, (AddSubgroup.eq_of_le_of_card_ge hle ?_).symm⟩
  simp only [cyclicSubgroup_card, d]
  exact le_rfl

/-- Positive divisor coordinates exhaust the subgroup lattice of the additive cyclic group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant6c301469d320b733ad4ca502ba039ca21ab0f17f366c723a3bc0642cc9b1e262.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `287f8bc0df446c46dd459d6c0412390bcc4ef4e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

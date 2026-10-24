# IsInitSeg.shadow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f8fe3293e6b636baf85a98304145dd1d087b0604",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e302c7a-ea76-d73d-a35f-d24b891df982",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05356688-3b13-a998-c9e2-26dbb66baffd",
  "kind": "lemma",
  "lexical_name": "IsInitSeg.shadow",
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
  "slug": "isinitseg-shadow--15b63ed7436300da9c538525",
  "source": {
    "blob": "f8fe3293e6b636baf85a98304145dd1d087b0604",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15b63ed7436300da9c5385258d6981519ceaaf2bc8c9563ecb89207a823d6f8f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05356688-3b13-a998-c9e2-26dbb66baffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsInitSeg.shadow [Finite α] (h₁ : IsInitSeg 𝒜 r) : IsInitSeg (∂ 𝒜) (r - 1) := by
  cases nonempty_fintype α
  obtain rfl | hr := Nat.eq_zero_or_pos r
  · have : 𝒜 ⊆ {∅} := fun s hs ↦ by rw [mem_singleton, ← Finset.card_eq_zero]; exact h₁.1 hs
    have := shadow_monotone this
    simp only [subset_empty, shadow_singleton_empty] at this
    simp [this]
  obtain rfl | h𝒜 := 𝒜.eq_empty_or_nonempty
  · simp
  obtain ⟨s, rfl, rfl⟩ := h₁.exists_initSeg h𝒜
  rw [shadow_initSeg (card_pos.1 hr), ← card_erase_of_mem (min'_mem _ _)]
  exact isInitSeg_initSeg

end Colex

open Finset.Colex UV
open scoped FinsetFamily

variable {α : Type*} [LinearOrder α] {s U V : Finset α} {n : ℕ}

namespace UV

/-- Applying the compression makes the set smaller in colex. This is intuitive since a portion of
the set is being "shifted down" as `max U < max V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Variant8004580802286778607446fec3ffd4c9476e350e5c5185539470294df0ba26e0.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8fe3293e6b636baf85a98304145dd1d087b0604` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

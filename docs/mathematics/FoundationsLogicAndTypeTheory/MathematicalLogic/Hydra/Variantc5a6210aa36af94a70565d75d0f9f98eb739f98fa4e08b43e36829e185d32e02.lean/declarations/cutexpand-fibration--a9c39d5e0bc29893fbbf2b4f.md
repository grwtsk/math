# cutExpand_fibration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6cc118d0-ad47-0f3a-216e-408c8e9f4c57",
  "kind": "theorem",
  "lexical_name": "cutExpand_fibration",
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
  "slug": "cutexpand-fibration--a9c39d5e0bc29893fbbf2b4f",
  "source": {
    "blob": "168288a4cfe065cccb1c35970bce184536efff87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9c39d5e0bc29893fbbf2b4f3ee1e8cadb35a3c24b212688bfe2b65717a93378",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6cc118d0-ad47-0f3a-216e-408c8e9f4c57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cutExpand_fibration (r : α → α → Prop) :
    Fibration (GameAdd (CutExpand r) (CutExpand r)) (CutExpand r) fun s ↦ s.1 + s.2 := by
  rintro ⟨s₁, s₂⟩ s ⟨t, a, hr, he⟩; dsimp at he ⊢
  classical
  -- Porting note: Originally `obtain ⟨ha, rfl⟩`
  -- This is https://github.com/leanprover/std4/issues/62
  obtain ⟨ha, hb⟩ := add_singleton_eq_iff.1 he
  rw [hb]
  rw [add_assoc, mem_add] at ha
  obtain h | h := ha
  · refine' ⟨(s₁.erase a + t, s₂), GameAdd.fst ⟨t, a, hr, _⟩, _⟩
    · rw [add_comm, ← add_assoc, singleton_add, cons_erase h]
    · rw [add_assoc s₁, erase_add_left_pos _ h, add_right_comm, add_assoc]
  · refine' ⟨(s₁, (s₂ + t).erase a), GameAdd.snd ⟨t, a, hr, _⟩, _⟩
    · rw [add_comm, singleton_add, cons_erase h]
    · rw [add_assoc, erase_add_right_pos _ h]
#align relation.cut_expand_fibration Relation.cutExpand_fibration

/-- A multiset is accessible under `CutExpand` if all its singleton subsets are,
  assuming `r` is irreflexive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantc5a6210aa36af94a70565d75d0f9f98eb739f98fa4e08b43e36829e185d32e02.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168288a4cfe065cccb1c35970bce184536efff87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

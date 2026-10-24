# atomistic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4340b1c-b8e3-2c6f-bcc6-a1765d8868a2",
  "kind": "lemma",
  "lexical_name": "atomistic",
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
  "slug": "atomistic--de376e3b059b3b40a140ccc4",
  "source": {
    "blob": "911acfb805f698202739ab7777a0d734c0c3062e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 80,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de376e3b059b3b40a140ccc44925593c90c3cb2c93751c9287261f2004cb2620",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4340b1c-b8e3-2c6f-bcc6-a1765d8868a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma atomistic (hS : BooleanGenerators S) (a : α) (ha : a ≤ sSup S) : ∃ T ⊆ S, a = sSup T := by
  obtain ⟨C, hC, rfl⟩ := IsCompactlyGenerated.exists_sSup_eq a
  have aux : ∀ b : α, IsCompactElement b → b ≤ sSup S → ∃ T ⊆ S, b = sSup T := by
    intro b hb hbS
    obtain ⟨s, hs₁, hs₂⟩ := hb S hbS
    obtain ⟨t, ht, rfl⟩ := hS.finitelyAtomistic s b hs₁ hb hs₂
    refine ⟨t, ?_, Finset.sup_id_eq_sSup t⟩
    refine Set.Subset.trans ?_ hs₁
    simpa only [Finset.coe_subset] using ht
  choose T hT₁ hT₂ using aux
  use sSup {T c h₁ h₂ | (c ∈ C) (h₁ : IsCompactElement c) (h₂ : c ≤ sSup S)}
  constructor
  · apply _root_.sSup_le
    rintro _ ⟨c, -, h₁, h₂, rfl⟩
    apply hT₁
  · apply le_antisymm
    · apply _root_.sSup_le
      intro c hc
      rw [hT₂ c (hC _ hc) ((le_sSup hc).trans ha)]
      apply sSup_le_sSup
      apply _root_.le_sSup
      use c, hc, hC _ hc, (le_sSup hc).trans ha
    · simp only [Set.sSup_eq_sUnion, sSup_le_iff, Set.mem_sUnion, Set.mem_setOf_eq,
        forall_exists_index, and_imp]
      rintro a T b hbC hb hbS rfl haT
      apply (le_sSup haT).trans
      rw [← hT₂]
      exact le_sSup hbC

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanGenerators/Variant57a8dbeefec6a4243513147f16392d51be70701d12ae14a3ca8bd0397aef8918.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `911acfb805f698202739ab7777a0d734c0c3062e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

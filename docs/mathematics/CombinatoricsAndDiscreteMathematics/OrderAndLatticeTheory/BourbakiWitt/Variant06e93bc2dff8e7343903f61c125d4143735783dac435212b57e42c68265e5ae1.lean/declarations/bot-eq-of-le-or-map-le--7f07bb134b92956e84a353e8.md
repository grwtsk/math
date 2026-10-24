# bot_eq_of_le_or_map_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c750e41c-dbb6-2df9-e783-970c6b723105",
  "kind": "lemma",
  "lexical_name": "bot_eq_of_le_or_map_le",
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
  "slug": "bot-eq-of-le-or-map-le--7f07bb134b92956e84a353e8",
  "source": {
    "blob": "efae4e51caaa7a1e74362942deb9ef0c78d826e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 137,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f07bb134b92956e84a353e8aad824ee04e8b4ef7b18a1a15fbb7994bcfdc0fa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c750e41c-dbb6-2df9-e783-970c6b723105`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bot_eq_of_le_or_map_le {y : α} (le_map : ∀ x, x ≤ f x) (hy : IsExtremePt x f y) :
    {z ∈ bot x f | z ≤ y ∨ f y ≤ z} = bot x f := by
  rw [← subset_bot_iff]
  · apply sep_subset
  · apply IsAdmissible.mk
    · constructor
      · constructor
        · exact (bot_isAdmissible le_map).base_isLeast.1
        · exact Or.inl ((bot_isAdmissible le_map).base_isLeast.2 hy.mem_bot)
      · exact fun y h ↦ (bot_isAdmissible le_map).base_isLeast.2 h.1
    · rintro _ ⟨z, ⟨hz, (hzy | hyz)⟩, rfl⟩ <;>
        refine ⟨map_mem_bot le_map hz, ?_⟩
      · rcases le_iff_lt_or_eq.1 hzy with (hzy | rfl)
        · left; exact hy.map_le_of_mem_of_lt hz hzy
        · right; exact le_refl _
      · right; exact le_trans hyz (le_map z)
    · intro c hc
      refine ⟨(bot_isAdmissible le_map).cSup_mem _ (subset_trans hc (sep_subset _ _)), ?_⟩
      · by_cases! h : ∀ z ∈ c, z ≤ y
        · left; apply cSup_le c y h
        · rcases h with ⟨z, hz, hzy⟩
          have h' := Or.resolve_left (hc hz).2 hzy
          right
          apply le_trans h' (le_cSup _ _ hz)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant06e93bc2dff8e7343903f61c125d4143735783dac435212b57e42c68265e5ae1.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efae4e51caaa7a1e74362942deb9ef0c78d826e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

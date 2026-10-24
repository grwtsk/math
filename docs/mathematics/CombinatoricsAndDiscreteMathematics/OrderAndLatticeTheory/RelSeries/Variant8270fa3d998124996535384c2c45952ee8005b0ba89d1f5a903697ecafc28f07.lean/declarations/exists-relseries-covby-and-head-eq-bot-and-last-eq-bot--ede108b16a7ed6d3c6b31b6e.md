# exists_relSeries_covBy_and_head_eq_bot_and_last_eq_bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8896971211c230ef2e4e80551ee4ee3f216674b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1010,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/82/8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11124b2d-f954-6a16-ffd5-bc948851b821",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a36fefad-3516-9654-9365-8a3883202cd9",
  "kind": "theorem",
  "lexical_name": "exists_relSeries_covBy_and_head_eq_bot_and_last_eq_bot",
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
  "slug": "exists-relseries-covby-and-head-eq-bot-and-last-eq-bot--ede108b16a7ed6d3c6b31b6e",
  "source": {
    "blob": "8896971211c230ef2e4e80551ee4ee3f216674b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1030,
    "line": 1010,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede108b16a7ed6d3c6b31b6e73504fe0913c51bd39f26153d10a4065ed4a169c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a36fefad-3516-9654-9365-8a3883202cd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1010–1030.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_relSeries_covBy_and_head_eq_bot_and_last_eq_bot
    {α} [PartialOrder α] [BoundedOrder α] [WellFoundedLT α] [WellFoundedGT α] (s : LTSeries α) :
    ∃ (t : RelSeries (α := α) (· ⋖ ·)) (i : Fin (s.length + 1) ↪ Fin (t.length + 1)),
      t ∘ i = s ∧ t.head = ⊥ ∧ t.last = ⊤ := by
  wlog h₁ : s.head = ⊥
  · obtain ⟨t, i, hi, ht⟩ := this (s.cons ⊥ (bot_lt_iff_ne_bot.mpr h₁)) rfl
    exact ⟨t, ⟨fun j ↦ i (j.succ.cast (by simp)), fun _ _ ↦ by simp⟩,
      funext fun j ↦ (congr_fun hi _).trans (RelSeries.cons_cast_succ _ _ _ _), ht⟩
  wlog h₂ : s.last = ⊤
  · obtain ⟨t, i, hi, ht⟩ := this (s.snoc ⊤ (lt_top_iff_ne_top.mpr h₂)) (by simp [h₁]) (by simp)
    exact ⟨t, ⟨fun j ↦ i (.cast (by simp) j.castSucc), fun _ _ ↦ by simp⟩,
      funext fun j ↦ (congr_fun hi _).trans (RelSeries.snoc_cast_castSucc _ _ _ _), ht⟩
  obtain ⟨t, i, hit, hi₁, hi₂⟩ := s.exists_relSeries_covBy
  refine ⟨t, i, hit, ?_, ?_⟩
  · rw [← h₁, RelSeries.head, RelSeries.head, ← hi₁, ← hit, Function.comp]
  · rw [← h₂, RelSeries.last, RelSeries.last, ← hi₂, ← hit, Function.comp]

/--
In ℕ, two entries in an `LTSeries` differ by at least the difference of their indices.
(Expressed in a way that avoids subtraction).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/RelSeries/Variant8270fa3d998124996535384c2c45952ee8005b0ba89d1f5a903697ecafc28f07.lean#L1010).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8896971211c230ef2e4e80551ee4ee3f216674b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

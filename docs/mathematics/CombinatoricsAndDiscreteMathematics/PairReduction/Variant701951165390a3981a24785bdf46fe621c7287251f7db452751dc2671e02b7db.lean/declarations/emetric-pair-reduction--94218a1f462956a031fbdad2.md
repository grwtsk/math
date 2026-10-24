# EMetric.pair_reduction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa9a0345e8f8bb40ece9f794eeb8fc539879f458",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 478,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8e51d97-6b92-ac18-e0ff-f55db6ee56d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:729f2f90-2fc8-0c48-bce7-5f718c516d98",
  "kind": "theorem",
  "lexical_name": "EMetric.pair_reduction",
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
  "slug": "emetric-pair-reduction--94218a1f462956a031fbdad2",
  "source": {
    "blob": "aa9a0345e8f8bb40ece9f794eeb8fc539879f458",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 501,
    "line": 478,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94218a1f462956a031fbdad235115f615dd4018ff93432bccd234108a94eb067",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:729f2f90-2fc8-0c48-bce7-5f718c516d98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–501.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EMetric.pair_reduction (hJ_card : #J ≤ a ^ n) (c : ℝ≥0∞) (E : Type*) [TopologicalSpace E]
      [WeakPseudoEMetricSpace E] :
    ∃ K : Finset (T × T), K ⊆ J ×ˢ J
      ∧ #K ≤ a * #J
      ∧ (∀ s t, (s, t) ∈ K → edist s t ≤ n * c)
      ∧ (∀ f : T → E,
        ⨆ (s : J) (t : { t : J // edist s t ≤ c}), edist (f s) (f t)
        ≤ 2 * ⨆ p : K, edist (f p.1.1) (f p.1.2)) := by
  classical
  rcases le_or_gt a 1 with ha1 | ha1
  · rcases isEmpty_or_nonempty J with hJ | hJ
    · simp only [Finset.isEmpty_coe_sort] at hJ
      simp [hJ]
    obtain ⟨x₀, rfl⟩ : ∃ x₀, J = {x₀} := by
      rw [← Finset.card_eq_one]
      refine le_antisymm ?_ ?_
      · suffices (#J : ENNReal) ≤ 1 by norm_cast at this
        refine hJ_card.trans ?_
        conv_rhs => rw [← one_pow n]
        exact ENNReal.pow_le_pow_left ha1
      · rwa [Finset.one_le_card, ← Finset.nonempty_coe_sort]
    simp_all
  · exact ⟨pairSet J a c, pairSet_subset, card_pairSet_le ha1,
      fun _ _ ↦ edist_le_of_mem_pairSet ha1 hJ_card, iSup_edist_pairSet ha1⟩
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PairReduction/Variant701951165390a3981a24785bdf46fe621c7287251f7db452751dc2671e02b7db.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa9a0345e8f8bb40ece9f794eeb8fc539879f458` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

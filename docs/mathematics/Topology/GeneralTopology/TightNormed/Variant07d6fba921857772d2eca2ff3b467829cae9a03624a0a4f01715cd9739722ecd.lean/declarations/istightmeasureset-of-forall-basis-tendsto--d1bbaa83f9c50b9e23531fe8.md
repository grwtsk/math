# isTightMeasureSet_of_forall_basis_tendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "85e5f4b4604428c3b375f9784f22b954abfe81d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f807646-7764-0084-3fbe-82b574eb649b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:191499a0-4385-26af-99db-8fe2e1e9d223",
  "kind": "lemma",
  "lexical_name": "isTightMeasureSet_of_forall_basis_tendsto",
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
  "slug": "istightmeasureset-of-forall-basis-tendsto--d1bbaa83f9c50b9e23531fe8",
  "source": {
    "blob": "85e5f4b4604428c3b375f9784f22b954abfe81d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 91,
    "path": "GRWTSK/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d1bbaa83f9c50b9e23531fe8ffeef93626417361cbe9ac64a93667f096db3965",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:191499a0-4385-26af-99db-8fe2e1e9d223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isTightMeasureSet_of_forall_basis_tendsto (b : OrthonormalBasis ι 𝕜 E)
    (h : ∀ i, Tendsto (fun r : ℝ ↦ ⨆ μ ∈ S, μ {x | r < ‖⟪b i, x⟫_𝕜‖}) atTop (𝓝 0)) :
    IsTightMeasureSet S := by
  rcases subsingleton_or_nontrivial E with hE | hE
  · simp only [IsTightMeasureSet, cocompact_eq_bot, smallSets_bot]
    convert tendsto_pure_nhds (a := ∅) _
    simp
  have h_rank : (0 : ℝ) < Fintype.card ι := by
    simpa [← Module.finrank_eq_card_basis b.toBasis, Module.finrank_pos_iff]
  have : Nonempty ι := by simpa [Fintype.card_pos_iff] using h_rank
  have : ProperSpace E := FiniteDimensional.proper 𝕜 E
  refine isTightMeasureSet_of_tendsto_measure_norm_gt ?_
  have h_le : (fun r ↦ ⨆ μ ∈ S, μ {x | r < ‖x‖})
      ≤ fun r ↦ ∑ i, ⨆ μ ∈ S, μ {x | r / √(Fintype.card ι) < ‖⟪b i, x⟫_𝕜‖} := by
    intro r
    calc ⨆ μ ∈ S, μ {x | r < ‖x‖}
    _ ≤ ⨆ μ ∈ S, μ (⋃ i, {x : E | r / √(Fintype.card ι) < ‖⟪b i, x⟫_𝕜‖}) := by
      gcongr with μ hμS
      intro x hx
      simp only [Set.mem_setOf_eq, Set.mem_iUnion] at hx ⊢
      have hx' : r < √(Fintype.card ι) * ⨆ i, ‖⟪b i, x⟫_𝕜‖ :=
        hx.trans_le (b.norm_le_card_mul_iSup_norm_inner x)
      rw [← div_lt_iff₀' (by positivity)] at hx'
      by_contra! h_le
      exact lt_irrefl (r / √(Fintype.card ι)) (hx'.trans_le (ciSup_le h_le))
    _ ≤ ⨆ μ ∈ S, ∑ i, μ {x : E | r / √(Fintype.card ι) < ‖⟪b i, x⟫_𝕜‖} := by
      gcongr with μ hμS
      exact measure_iUnion_fintype_le μ _
    _ ≤ ∑ i, ⨆ μ ∈ S, μ {x | r / √(Fintype.card ι) < ‖⟪b i, x⟫_𝕜‖} := by
      refine iSup_le fun μ ↦ (iSup_le fun hμS ↦ ?_)
      gcongr with i
      exact le_biSup (fun μ ↦ μ {x | r / √(Fintype.card ι) < ‖⟪b i, x⟫_𝕜‖}) hμS
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds ?_ (fun _ ↦ zero_le') h_le
  rw [← Finset.sum_const_zero]
  refine tendsto_finset_sum Finset.univ fun i _ ↦ (h i).comp ?_
  exact tendsto_id.atTop_div_const (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TightNormed/Variant07d6fba921857772d2eca2ff3b467829cae9a03624a0a4f01715cd9739722ecd.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85e5f4b4604428c3b375f9784f22b954abfe81d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

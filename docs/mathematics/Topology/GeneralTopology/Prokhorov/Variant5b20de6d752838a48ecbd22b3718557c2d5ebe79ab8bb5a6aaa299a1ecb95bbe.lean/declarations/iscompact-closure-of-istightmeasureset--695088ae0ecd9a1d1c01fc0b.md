# isCompact_closure_of_isTightMeasureSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32e107a6-061f-abe9-eb84-b3492672a49a",
  "kind": "lemma",
  "lexical_name": "isCompact_closure_of_isTightMeasureSet",
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
  "slug": "iscompact-closure-of-istightmeasureset--695088ae0ecd9a1d1c01fc0b",
  "source": {
    "blob": "caeefca8ede961defa13ae3cd7890c0e421d203e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 538,
    "path": "GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:695088ae0ecd9a1d1c01fc0bcf21112284495d2024c295d44ea41930f6281c20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32e107a6-061f-abe9-eb84-b3492672a49a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 538–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCompact_closure_of_isTightMeasureSet {S : Set (ProbabilityMeasure E)}
    (hS : IsTightMeasureSet {((μ : ProbabilityMeasure E) : Measure E) | μ ∈ S}) :
    IsCompact (closure S) := by
  obtain ⟨u, -, u_pos, u_lim⟩ :
      ∃ u : ℕ → ℝ≥0, StrictAnti u ∧ (∀ n, 0 < u n) ∧ Tendsto u atTop (𝓝 0) :=
    exists_seq_strictAnti_tendsto 0
  have A n : ∃ (K : Set E), IsCompact K ∧ ∀ μ ∈ S, μ Kᶜ ≤ u n := by
    rcases isTightMeasureSet_iff_exists_isCompact_measure_compl_le.1 hS (u n)
      (by norm_cast; exact u_pos n) with ⟨K, K_comp, hK⟩
    refine ⟨K, K_comp, fun μ hμ ↦ ?_⟩
    have : (μ : Measure E) Kᶜ ≤ u n := hK _ ⟨μ, hμ, rfl⟩
    exact ENNReal.coe_le_coe.1 (by simpa using this)
  choose K K_comp hK using A
  let K' n := ⋃ i ∈ Iic n, K i
  have h'K : IsCompact {μ : ProbabilityMeasure E | ∀ n, μ (K' n)ᶜ ≤ u n} := by
    apply isCompact_setOfPred_probabilityMeasure_mass_eq_compl_isCompact_le u_lim
    · exact fun n ↦ (finite_Iic n).isCompact_biUnion (fun i hi ↦ K_comp i)
    · right
      simp only [Monotone, mem_Iic, iUnion_subset_iff, K']
      intro a b hab i hi
      apply subset_biUnion_of_mem
      exact hi.trans hab
  apply IsCompact.closure_of_subset h'K
  intro μ hμ n
  calc μ (K' n)ᶜ
  _ ≤ μ (K n)ᶜ := by
    gcongr
    simp only [mem_Iic, K']
    apply subset_biUnion_of_mem
    exact le_rfl (a := n)
  _ ≤ u n := by grind

end Forward

section Backward

open ProbabilityMeasure

namespace MeasureTheory

variable {𝓧 : Type*} {m𝓧 : MeasurableSpace 𝓧} {μ : Measure 𝓧} [PseudoMetricSpace 𝓧]
  [OpensMeasurableSpace 𝓧] [SecondCountableTopology 𝓧] {S : Set (ProbabilityMeasure 𝓧)}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prokhorov/Variant5b20de6d752838a48ecbd22b3718557c2d5ebe79ab8bb5a6aaa299a1ecb95bbe.lean#L538).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `caeefca8ede961defa13ae3cd7890c0e421d203e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

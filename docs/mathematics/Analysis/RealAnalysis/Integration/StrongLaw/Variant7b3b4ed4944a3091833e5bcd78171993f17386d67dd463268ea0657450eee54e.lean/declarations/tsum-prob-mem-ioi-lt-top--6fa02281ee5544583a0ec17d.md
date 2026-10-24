# tsum_prob_mem_Ioi_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3001a022-5692-e88c-accf-7ecca6ec3612",
  "kind": "theorem",
  "lexical_name": "tsum_prob_mem_Ioi_lt_top",
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
  "slug": "tsum-prob-mem-ioi-lt-top--6fa02281ee5544583a0ec17d",
  "source": {
    "blob": "bbf3a64c371d7e3f4c818827c1555abf63483c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 317,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fa02281ee5544583a0ec17d76eb1711264eb1416a326ab9c0b34b5c96333e33",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3001a022-5692-e88c-accf-7ecca6ec3612`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tsum_prob_mem_Ioi_lt_top {X : Ω → ℝ} (hint : Integrable X) (hnonneg : 0 ≤ X) :
    (∑' j : ℕ, ℙ {ω | X ω ∈ Set.Ioi (j : ℝ)}) < ∞ := by
  suffices : ∀ K : ℕ, ∑ j in range K, ℙ {ω | X ω ∈ Set.Ioi (j : ℝ)} ≤ ENNReal.ofReal (𝔼[X] + 1)
  exact (le_of_tendsto_of_tendsto (ENNReal.tendsto_nat_tsum _) tendsto_const_nhds
    (eventually_of_forall this)).trans_lt ENNReal.ofReal_lt_top
  intro K
  have A : Tendsto (fun N : ℕ => ∑ j in range K, ℙ {ω | X ω ∈ Set.Ioc (j : ℝ) N}) atTop
      (𝓝 (∑ j in range K, ℙ {ω | X ω ∈ Set.Ioi (j : ℝ)})) := by
    refine' tendsto_finset_sum _ fun i _ => _
    have : {ω | X ω ∈ Set.Ioi (i : ℝ)} = ⋃ N : ℕ, {ω | X ω ∈ Set.Ioc (i : ℝ) N} := by
      apply Set.Subset.antisymm _ _
      · intro ω hω
        obtain ⟨N, hN⟩ : ∃ N : ℕ, X ω ≤ N := exists_nat_ge (X ω)
        exact Set.mem_iUnion.2 ⟨N, hω, hN⟩
      · simp (config := {contextual := true}) only [Set.mem_Ioc, Set.mem_Ioi,
          Set.iUnion_subset_iff, Set.setOf_subset_setOf, imp_true_iff]
    rw [this]
    apply tendsto_measure_iUnion
    intro m n hmn x hx
    exact ⟨hx.1, hx.2.trans (Nat.cast_le.2 hmn)⟩
  apply le_of_tendsto_of_tendsto A tendsto_const_nhds
  filter_upwards [Ici_mem_atTop K] with N hN
  exact sum_prob_mem_Ioc_le hint hnonneg hN
#align probability_theory.tsum_prob_mem_Ioi_lt_top ProbabilityTheory.tsum_prob_mem_Ioi_lt_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf3a64c371d7e3f4c818827c1555abf63483c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

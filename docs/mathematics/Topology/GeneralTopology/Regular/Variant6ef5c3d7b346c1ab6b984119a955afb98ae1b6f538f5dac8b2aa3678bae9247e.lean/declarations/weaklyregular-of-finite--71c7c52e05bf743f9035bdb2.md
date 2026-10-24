# weaklyRegular_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72cd954e-1f3c-6f37-04bf-05584d186e22",
  "kind": "theorem",
  "lexical_name": "weaklyRegular_of_finite",
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
  "slug": "weaklyregular-of-finite--71c7c52e05bf743f9035bdb2",
  "source": {
    "blob": "1c1fb563dfba3d4dcf3211f8f280380297a69d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 446,
    "line": 382,
    "path": "GRWTSK/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71c7c52e05bf743f9035bdb2f80f4f5bb056a3ab95f5bd491369c6ed0ede91f8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72cd954e-1f3c-6f37-04bf-05584d186e22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 382–446.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weaklyRegular_of_finite [BorelSpace α] (μ : Measure α) [IsFiniteMeasure μ]
    (H : InnerRegular μ IsClosed IsOpen) : WeaklyRegular μ := by
  have hfin : ∀ {s}, μ s ≠ ⊤ := @(measure_ne_top μ)
  suffices ∀ s, MeasurableSet s → ∀ ε, ε ≠ 0 → ∃ F, F ⊆ s ∧ ∃ U, U ⊇ s ∧
      IsClosed F ∧ IsOpen U ∧ μ s ≤ μ F + ε ∧ μ U ≤ μ s + ε by
    refine'
      { outerRegular := fun s hs r hr => _
        innerRegular := H }
    rcases exists_between hr with ⟨r', hsr', hr'r⟩
    rcases this s hs _ (tsub_pos_iff_lt.2 hsr').ne' with ⟨-, -, U, hsU, -, hUo, -, H⟩
    refine' ⟨U, hsU, hUo, _⟩
    rw [add_tsub_cancel_of_le hsr'.le] at H
    exact H.trans_lt hr'r
  refine' MeasurableSet.induction_on_open _ _ _
  /- The proof is by measurable induction: we should check that the property is true for the empty
    set, for open sets, and is stable by taking the complement and by taking countable disjoint
    unions. The point of the property we are proving is that it is stable by taking complements
    (exchanging the roles of closed and open sets and thanks to the finiteness of the measure). -/
  -- check for open set
  · intro U hU ε hε
    rcases H.exists_subset_lt_add isClosed_empty hU hfin hε with ⟨F, hsF, hFc, hF⟩
    exact ⟨F, hsF, U, Subset.rfl, hFc, hU, hF.le, le_self_add⟩
  -- check for complements
  · rintro s hs H ε hε
    rcases H ε hε with ⟨F, hFs, U, hsU, hFc, hUo, hF, hU⟩
    refine'
      ⟨Uᶜ, compl_subset_compl.2 hsU, Fᶜ, compl_subset_compl.2 hFs, hUo.isClosed_compl,
        hFc.isOpen_compl, _⟩
    simp only [measure_compl_le_add_iff, *, hUo.measurableSet, hFc.measurableSet, true_and_iff]
  -- check for disjoint unions
  · intro s hsd hsm H ε ε0
    have ε0' : ε / 2 ≠ 0 := (ENNReal.half_pos ε0).ne'
    rcases ENNReal.exists_pos_sum_of_countable' ε0' ℕ with ⟨δ, δ0, hδε⟩
    choose F hFs U hsU hFc hUo hF hU using fun n => H n (δ n) (δ0 n).ne'
    -- the approximating closed set is constructed by considering finitely many sets `s i`, which
    -- cover all the measure up to `ε/2`, approximating each of these by a closed set `F i`, and
    -- taking the union of these (finitely many) `F i`.
    have : Tendsto (fun t => (∑ k in t, μ (s k)) + ε / 2) atTop (𝓝 <| μ (⋃ n, s n) + ε / 2) := by
      rw [measure_iUnion hsd hsm]
      exact Tendsto.add ENNReal.summable.hasSum tendsto_const_nhds
    rcases(this.eventually <| lt_mem_nhds <| ENNReal.lt_add_right hfin ε0').exists with ⟨t, ht⟩
    -- the approximating open set is constructed by taking for each `s n` an approximating open set
    -- `U n` with measure at most `μ (s n) + δ n` for a summable `δ`, and taking the union of these.
    refine'
      ⟨⋃ k ∈ t, F k, iUnion_mono fun k => iUnion_subset fun _ => hFs _, ⋃ n, U n, iUnion_mono hsU,
        isClosed_biUnion t.finite_toSet fun k _ => hFc k, isOpen_iUnion hUo, ht.le.trans _, _⟩
    · calc
        (∑ k in t, μ (s k)) + ε / 2 ≤ ((∑ k in t, μ (F k)) + ∑ k in t, δ k) + ε / 2 := by
          rw [← sum_add_distrib]
          exact add_le_add_right (sum_le_sum fun k _ => hF k) _
        _ ≤ (∑ k in t, μ (F k)) + ε / 2 + ε / 2 :=
          (add_le_add_right (add_le_add_left ((ENNReal.sum_le_tsum _).trans hδε.le) _) _)
        _ = μ (⋃ k ∈ t, F k) + ε := by
          rw [measure_biUnion_finset, add_assoc, ENNReal.add_halves]
          exacts [fun k _ n _ hkn => (hsd hkn).mono (hFs k) (hFs n),
            fun k _ => (hFc k).measurableSet]
    · calc
        μ (⋃ n, U n) ≤ ∑' n, μ (U n) := measure_iUnion_le _
        _ ≤ ∑' n, (μ (s n) + δ n) := (ENNReal.tsum_le_tsum hU)
        _ = μ (⋃ n, s n) + ∑' n, δ n := by rw [measure_iUnion hsd hsm, ENNReal.tsum_add]
        _ ≤ μ (⋃ n, s n) + ε := add_le_add_left (hδε.le.trans ENNReal.half_le_self) _
#align measure_theory.measure.inner_regular.weakly_regular_of_finite MeasureTheory.Measure.InnerRegular.weaklyRegular_of_finite

/-- In a metric space (or even a pseudo emetric space), an open set can be approximated from inside
by closed sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Regular/Variant6ef5c3d7b346c1ab6b984119a955afb98ae1b6f538f5dac8b2aa3678bae9247e.lean#L382).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c1fb563dfba3d4dcf3211f8f280380297a69d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

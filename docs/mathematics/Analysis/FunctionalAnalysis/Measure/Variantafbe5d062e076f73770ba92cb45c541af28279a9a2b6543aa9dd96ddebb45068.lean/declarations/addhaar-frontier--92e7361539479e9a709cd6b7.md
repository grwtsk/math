# addHaar_frontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6abe60e1437671565e94b1d934d652d9456e681",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afbe5d062e076f73770ba92cb45c541af28279a9a2b6543aa9dd96ddebb45068.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd5865fa-e393-7e02-e5bb-547a9091becd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8fcc198-d018-a6c4-c329-87e0b3f6b3b2",
  "kind": "theorem",
  "lexical_name": "addHaar_frontier",
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
  "slug": "addhaar-frontier--92e7361539479e9a709cd6b7",
  "source": {
    "blob": "a6abe60e1437671565e94b1d934d652d9456e681",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 33,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Measure/Variantafbe5d062e076f73770ba92cb45c541af28279a9a2b6543aa9dd96ddebb45068.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92e7361539479e9a709cd6b7bc4de5d7e66b7ad61273d2af88df8eebf5e35bdd",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Measure/Variantafbe5d062e076f73770ba92cb45c541af28279a9a2b6543aa9dd96ddebb45068.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8fcc198-d018-a6c4-c329-87e0b3f6b3b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addHaar_frontier (hs : Convex ℝ s) : μ (frontier s) = 0 := by
  /- If `s` is included in a hyperplane, then `frontier s ⊆ closure s` is included in the same
    hyperplane, hence it has measure zero. -/
  cases' ne_or_eq (affineSpan ℝ s) ⊤ with hspan hspan
  · refine' measure_mono_null _ (addHaar_affineSubspace _ _ hspan)
    exact frontier_subset_closure.trans
      (closure_minimal (subset_affineSpan _ _) (affineSpan ℝ s).closed_of_finiteDimensional)
  rw [← hs.interior_nonempty_iff_affineSpan_eq_top] at hspan
  rcases hspan with ⟨x, hx⟩
  /- Without loss of generality, `s` is bounded. Indeed, `∂s ⊆ ⋃ n, ∂(s ∩ ball x (n + 1))`, hence it
    suffices to prove that `∀ n, μ (s ∩ ball x (n + 1)) = 0`; the latter set is bounded.
    -/
  suffices H : ∀ t : Set E, Convex ℝ t → x ∈ interior t → Bounded t → μ (frontier t) = 0
  · let B : ℕ → Set E := fun n => ball x (n + 1)
    have : μ (⋃ n : ℕ, frontier (s ∩ B n)) = 0 := by
      refine' measure_iUnion_null fun n =>
        H _ (hs.inter (convex_ball _ _)) _ (bounded_ball.mono (inter_subset_right _ _))
      rw [interior_inter, isOpen_ball.interior_eq]
      exact ⟨hx, mem_ball_self (add_pos_of_nonneg_of_pos n.cast_nonneg zero_lt_one)⟩
    refine' measure_mono_null (fun y hy => _) this; clear this
    set N : ℕ := ⌊dist y x⌋₊
    refine' mem_iUnion.2 ⟨N, _⟩
    have hN : y ∈ B N := by simp [Nat.lt_floor_add_one]
    suffices : y ∈ frontier (s ∩ B N) ∩ B N; exact this.1
    rw [frontier_inter_open_inter isOpen_ball]
    exact ⟨hy, hN⟩
  intro s hs hx hb
  /- Since `s` is bounded, we have `μ (interior s) ≠ ∞`, hence it suffices to prove
    `μ (closure s) ≤ μ (interior s)`. -/
  replace hb : μ (interior s) ≠ ∞
  exact (hb.mono interior_subset).measure_lt_top.ne
  suffices μ (closure s) ≤ μ (interior s) by
    rwa [frontier, measure_diff interior_subset_closure isOpen_interior.measurableSet hb,
      tsub_eq_zero_iff_le]
  /- Due to `Convex.closure_subset_image_homothety_interior_of_one_lt`, for any `r > 1` we have
    `closure s ⊆ homothety x r '' interior s`, hence `μ (closure s) ≤ r ^ d * μ (interior s)`,
    where `d = finrank ℝ E`. -/
  set d : ℕ := FiniteDimensional.finrank ℝ E
  have : ∀ r : ℝ≥0, 1 < r → μ (closure s) ≤ ↑(r ^ d) * μ (interior s) := by
    intro r hr
    refine' (measure_mono <|
      hs.closure_subset_image_homothety_interior_of_one_lt hx r hr).trans_eq _
    rw [addHaar_image_homothety, ← NNReal.coe_pow, NNReal.abs_eq, ENNReal.ofReal_coe_nnreal]
  have : ∀ᶠ (r : ℝ≥0) in 𝓝[>] 1, μ (closure s) ≤ ↑(r ^ d) * μ (interior s) :=
    mem_of_superset self_mem_nhdsWithin this
  -- Taking the limit as `r → 1`, we get `μ (closure s) ≤ μ (interior s)`.
  refine' ge_of_tendsto _ this
  refine' (((ENNReal.continuous_mul_const hb).comp
    (ENNReal.continuous_coe.comp (continuous_pow d))).tendsto' _ _ _).mono_left nhdsWithin_le_nhds
  simp
#align convex.add_haar_frontier Convex.addHaar_frontier

/-- A convex set in a finite dimensional real vector space is null measurable with respect to an
additive Haar measure on this space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Measure/Variantafbe5d062e076f73770ba92cb45c541af28279a9a2b6543aa9dd96ddebb45068.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Measure/Variantafbe5d062e076f73770ba92cb45c541af28279a9a2b6543aa9dd96ddebb45068.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6abe60e1437671565e94b1d934d652d9456e681` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

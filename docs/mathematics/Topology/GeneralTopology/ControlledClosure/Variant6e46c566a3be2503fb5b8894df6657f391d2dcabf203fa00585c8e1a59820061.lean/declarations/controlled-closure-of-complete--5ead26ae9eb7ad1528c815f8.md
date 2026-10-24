# controlled_closure_of_complete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6d348609-d121-03ec-424c-bd3f8d9d0151",
  "kind": "theorem",
  "lexical_name": "controlled_closure_of_complete",
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
  "slug": "controlled-closure-of-complete--5ead26ae9eb7ad1528c815f8",
  "source": {
    "blob": "686d9672a06585ca9e52b43a8847e4a2cef1358d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/ControlledClosure/Variant6e46c566a3be2503fb5b8894df6657f391d2dcabf203fa00585c8e1a59820061.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ead26ae9eb7ad1528c815f8701ef2438549a443bf92fd301860ef3e1b129536",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ControlledClosure/Variant6e46c566a3be2503fb5b8894df6657f391d2dcabf203fa00585c8e1a59820061.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d348609-d121-03ec-424c-bd3f8d9d0151`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem controlled_closure_of_complete {f : NormedAddGroupHom G H} {K : AddSubgroup H} {C ε : ℝ}
    (hC : 0 < C) (hε : 0 < ε) (hyp : f.SurjectiveOnWith K C) :
    f.SurjectiveOnWith K.topologicalClosure (C + ε) := by
  rintro (h : H) (h_in : h ∈ K.topologicalClosure)
  -- We first get rid of the easy case where `h = 0`.
  by_cases hyp_h : h = 0
  · rw [hyp_h]
    use 0
    simp
  /- The desired preimage will be constructed as the sum of a series. Convergence of
    the series will be guaranteed by completeness of `G`. We first write `h` as the sum
    of a sequence `v` of elements of `K` which starts close to `h` and then quickly goes to zero.
    The sequence `b` below quantifies this. -/
  set b : ℕ → ℝ := fun i => (1 / 2) ^ i * (ε * ‖h‖ / 2) / C
  have b_pos (i) : 0 < b i := by positivity
  obtain
    ⟨v : ℕ → H, lim_v : Tendsto (fun n : ℕ => ∑ k ∈ range (n + 1), v k) atTop (𝓝 h), v_in :
      ∀ n, v n ∈ K, hv₀ : ‖-v 0 + h‖ < b 0, hv : ∀ n > 0, ‖v n‖ < b n⟩ :=
    controlled_sum_of_mem_closure h_in b_pos
  /- The controlled surjectivity assumption on `f` allows to build preimages `u n` for all
    elements `v n` of the `v` sequence. -/
  have : ∀ n, ∃ m' : G, f m' = v n ∧ ‖m'‖ ≤ C * ‖v n‖ := fun n : ℕ => hyp (v n) (v_in n)
  choose u hu hnorm_u using this
  /- The desired series `s` is then obtained by summing `u`. We then check our choice of
    `b` ensures `s` is Cauchy. -/
  set s : ℕ → G := fun n => ∑ k ∈ range (n + 1), u k
  have : CauchySeq s := by
    apply NormedAddCommGroup.cauchy_series_of_le_geometric'' (by simp) one_half_lt_one
    · rintro n (hn : n ≥ 1)
      calc
        ‖u n‖ ≤ C * ‖v n‖ := hnorm_u n
        _ ≤ C * b n := by gcongr; exact (hv _ <| Nat.succ_le_iff.mp hn).le
        _ = (1 / 2) ^ n * (ε * ‖h‖ / 2) := by simp [b, mul_div_cancel₀ _ hC.ne.symm]
        _ = ε * ‖h‖ / 2 * (1 / 2) ^ n := mul_comm _ _
  -- We now show that the limit `g` of `s` is the desired preimage.
  obtain ⟨g : G, hg⟩ := cauchySeq_tendsto_of_complete this
  refine ⟨g, ?_, ?_⟩
  · -- We indeed get a preimage. First note:
    have : f ∘ s = fun n => ∑ k ∈ range (n + 1), v k := by
      ext n
      simp [s, map_sum, hu]
    /- In the above equality, the left-hand-side converges to `f g` by continuity of `f` and
      definition of `g` while the right-hand-side converges to `h` by construction of `v` so
      `g` is indeed a preimage of `h`. -/
    rw [← this] at lim_v
    exact tendsto_nhds_unique ((f.continuous.tendsto g).comp hg) lim_v
  · -- Then we need to estimate the norm of `g`, using our careful choice of `b`.
    suffices ∀ n, ‖s n‖ ≤ (C + ε) * ‖h‖ from
      le_of_tendsto' (continuous_norm.continuousAt.tendsto.comp hg) this
    intro n
    have hnorm₀ : ‖u 0‖ ≤ C * b 0 + C * ‖h‖ := by
      have :=
        calc
          ‖v 0‖ ≤ ‖h‖ + ‖v 0 - h‖ := norm_le_insert' _ _
          _ ≤ ‖h‖ + b 0 := by rw [← norm_neg_add]; gcongr
      calc
        ‖u 0‖ ≤ C * ‖v 0‖ := hnorm_u 0
        _ ≤ C * (‖h‖ + b 0) := by gcongr
        _ = C * b 0 + C * ‖h‖ := by rw [add_comm, mul_add]
    have : (∑ k ∈ range (n + 1), C * b k) ≤ ε * ‖h‖ :=
      calc (∑ k ∈ range (n + 1), C * b k)
        _ = (∑ k ∈ range (n + 1), (1 / 2 : ℝ) ^ k) * (ε * ‖h‖ / 2) := by
          simp only [b, mul_div_cancel₀ _ hC.ne.symm, ← sum_mul]
        _ ≤ 2 * (ε * ‖h‖ / 2) := by gcongr; apply sum_geometric_two_le
        _ = ε * ‖h‖ := mul_div_cancel₀ _ two_ne_zero
    calc
      ‖s n‖ ≤ ∑ k ∈ range (n + 1), ‖u k‖ := norm_sum_le _ _
      _ = (∑ k ∈ range n, ‖u (k + 1)‖) + ‖u 0‖ := sum_range_succ' _ _
      _ ≤ (∑ k ∈ range n, C * ‖v (k + 1)‖) + ‖u 0‖ := by gcongr; apply hnorm_u
      _ ≤ (∑ k ∈ range n, C * b (k + 1)) + (C * b 0 + C * ‖h‖) := by
        gcongr with k; exact (hv _ k.succ_pos).le
      _ = (∑ k ∈ range (n + 1), C * b k) + C * ‖h‖ := by rw [← add_assoc, sum_range_succ']
      _ ≤ (C + ε) * ‖h‖ := by
        rw [add_comm, add_mul]
        gcongr

/-- Given `f : NormedAddGroupHom G H` for some complete `G`, if every element `x` of the image of
an isometric immersion `j : NormedAddGroupHom K H` has a preimage under `f` whose norm is at most
`C*‖x‖` then the same holds for elements of the (topological) closure of this image with constant
`C+ε` instead of `C`, for any positive `ε`.
This is useful in particular if `j` is the inclusion of a normed group into its completion
(in this case the closure is the full target group).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ControlledClosure/Variant6e46c566a3be2503fb5b8894df6657f391d2dcabf203fa00585c8e1a59820061.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ControlledClosure/Variant6e46c566a3be2503fb5b8894df6657f391d2dcabf203fa00585c8e1a59820061.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `686d9672a06585ca9e52b43a8847e4a2cef1358d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

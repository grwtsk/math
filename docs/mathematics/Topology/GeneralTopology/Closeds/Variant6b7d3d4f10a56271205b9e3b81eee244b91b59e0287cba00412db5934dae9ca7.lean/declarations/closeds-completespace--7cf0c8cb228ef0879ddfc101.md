# Closeds.completeSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ad5183a500cef5df946f608a69171bed253e3c4f95ade66e93f5594ed2373a7",
  "kind": "instance",
  "lexical_name": "Closeds.completeSpace",
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
  "slug": "closeds-completespace--7cf0c8cb228ef0879ddfc101",
  "source": {
    "blob": "7994cce4e7da61c05119b1266e0fd9ed6f629fcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cf0c8cb228ef0879ddfc101f4703e215051a924bfd4ccb703d862cfc81d8dd1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ad5183a500cef5df946f608a69171bed253e3c4f95ade66e93f5594ed2373a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Closeds.completeSpace [CompleteSpace α] : CompleteSpace (Closeds α) := by
  /- We will show that, if a sequence of sets `s n` satisfies
    `edist (s n) (s (n+1)) < 2^{-n}`, then it converges. This is enough to guarantee
    completeness, by a standard completeness criterion.
    We use the shorthand `B n = 2^{-n}` in ennreal. -/
  let B : ℕ → ℝ≥0∞ := fun n => 2⁻¹ ^ n
  have B_pos : ∀ n, (0 : ℝ≥0∞) < B n := by simp [ENNReal.pow_pos]
  have B_ne_top : ∀ n, B n ≠ ⊤ := by simp [ENNReal.pow_ne_top]
  /- Consider a sequence of closed sets `s n` with `edist (s n) (s (n+1)) < B n`.
    We will show that it converges. The limit set is `t0 = ⋂n, closure (⋃m≥n, s m)`.
    We will have to show that a point in `s n` is close to a point in `t0`, and a point
    in `t0` is close to a point in `s n`. The completeness then follows from a
    standard criterion. -/
  refine' complete_of_convergent_controlled_sequences B B_pos fun s hs => _
  let t0 := ⋂ n, closure (⋃ m ≥ n, s m : Set α)
  let t : Closeds α := ⟨t0, isClosed_iInter fun _ => isClosed_closure⟩
  use t
  -- The inequality is written this way to agree with `edist_le_of_edist_le_geometric_of_tendsto₀`
  have I1 : ∀ n, ∀ x ∈ s n, ∃ y ∈ t0, edist x y ≤ 2 * B n := by
    /- This is the main difficulty of the proof. Starting from `x ∈ s n`, we want
           to find a point in `t0` which is close to `x`. Define inductively a sequence of
           points `z m` with `z n = x` and `z m ∈ s m` and `edist (z m) (z (m+1)) ≤ B m`. This is
           possible since the Hausdorff distance between `s m` and `s (m+1)` is at most `B m`.
           This sequence is a Cauchy sequence, therefore converging as the space is complete, to
           a limit which satisfies the required properties. -/
    intro n x hx
    obtain ⟨z, hz₀, hz⟩ :
      ∃ z : ∀ l, s (n + l), (z 0 : α) = x ∧ ∀ k, edist (z k : α) (z (k + 1) : α) ≤ B n / 2 ^ k := by
      -- We prove existence of the sequence by induction.
      have : ∀ (l) (z : s (n + l)), ∃ z' : s (n + l + 1), edist (z : α) z' ≤ B n / 2 ^ l := by
        intro l z
        obtain ⟨z', z'_mem, hz'⟩ : ∃ z' ∈ s (n + l + 1), edist (z : α) z' < B n / 2 ^ l := by
          refine' exists_edist_lt_of_hausdorffEdist_lt _ _
          · exact (s (n + l) : Set α)
          · exact z.2
          simp only [ENNReal.inv_pow, div_eq_mul_inv]
          rw [← pow_add]
          apply hs <;> simp
        exact ⟨⟨z', z'_mem⟩, le_of_lt hz'⟩
      use fun k => Nat.recOn k ⟨x, hx⟩ fun l z => choose (this l z)
      simp only [Nat.add_zero, Nat.zero_eq, Nat.rec_zero, Nat.rec_add_one, true_and]
      exact fun k => choose_spec (this k _)
    -- it follows from the previous bound that `z` is a Cauchy sequence
    have : CauchySeq fun k => (z k : α) := cauchySeq_of_edist_le_geometric_two (B n) (B_ne_top n) hz
    -- therefore, it converges
    rcases cauchySeq_tendsto_of_complete this with ⟨y, y_lim⟩
    use y
    -- the limit point `y` will be the desired point, in `t0` and close to our initial point `x`.
    -- First, we check it belongs to `t0`.
    have : y ∈ t0 :=
      mem_iInter.2 fun k =>
        mem_closure_of_tendsto y_lim
          (by
            simp only [exists_prop, Set.mem_iUnion, Filter.eventually_atTop, Set.mem_preimage,
              Set.preimage_iUnion]
            exact ⟨k, fun m hm => ⟨n + m, zero_add k ▸ add_le_add (zero_le n) hm, (z m).2⟩⟩)
    use this
    -- Then, we check that `y` is close to `x = z n`. This follows from the fact that `y`
    -- is the limit of `z k`, and the distance between `z n` and `z k` has already been estimated.
    rw [← hz₀]
    exact edist_le_of_edist_le_geometric_two_of_tendsto₀ (B n) hz y_lim
  have I2 : ∀ n, ∀ x ∈ t0, ∃ y ∈ s n, edist x y ≤ 2 * B n := by
    /- For the (much easier) reverse inequality, we start from a point `x ∈ t0` and we want
            to find a point `y ∈ s n` which is close to `x`.
            `x` belongs to `t0`, the intersection of the closures. In particular, it is well
            approximated by a point `z` in `⋃m≥n, s m`, say in `s m`. Since `s m` and
            `s n` are close, this point is itself well approximated by a point `y` in `s n`,
            as required. -/
    intro n x xt0
    have : x ∈ closure (⋃ m ≥ n, s m : Set α) := by apply mem_iInter.1 xt0 n
    rcases mem_closure_iff.1 this (B n) (B_pos n) with ⟨z, hz, Dxz⟩
    -- z : α, Dxz : edist x z < B n,
    simp only [exists_prop, Set.mem_iUnion] at hz
    rcases hz with ⟨m, ⟨m_ge_n, hm⟩⟩
    -- m : ℕ, m_ge_n : m ≥ n, hm : z ∈ s m
    have : hausdorffEdist (s m : Set α) (s n) < B n := hs n m n m_ge_n (le_refl n)
    rcases exists_edist_lt_of_hausdorffEdist_lt hm this with ⟨y, hy, Dzy⟩
    -- y : α, hy : y ∈ s n, Dzy : edist z y < B n
    exact
      ⟨y, hy,
        calc
          edist x y ≤ edist x z + edist z y := edist_triangle _ _ _
          _ ≤ B n + B n := (add_le_add (le_of_lt Dxz) (le_of_lt Dzy))
          _ = 2 * B n := (two_mul _).symm
          ⟩
  -- Deduce from the above inequalities that the distance between `s n` and `t0` is at most `2 B n`.
  have main : ∀ n : ℕ, edist (s n) t ≤ 2 * B n := fun n =>
    hausdorffEdist_le_of_mem_edist (I1 n) (I2 n)
  -- from this, the convergence of `s n` to `t0` follows.
  refine' tendsto_atTop.2 fun ε εpos => _
  have : Tendsto (fun n => 2 * B n) atTop (𝓝 (2 * 0)) :=
    ENNReal.Tendsto.const_mul
      (ENNReal.tendsto_pow_atTop_nhds_0_of_lt_1 <| by simp [ENNReal.one_lt_two]) (Or.inr <| by simp)
  rw [mul_zero] at this
  obtain ⟨N, hN⟩ : ∃ N, ∀ b ≥ N, ε > 2 * B b :=
    ((tendsto_order.1 this).2 ε εpos).exists_forall_of_atTop
  exact ⟨N, fun n hn => lt_of_le_of_lt (main n) (hN n hn)⟩
#align emetric.closeds.complete_space EMetric.Closeds.completeSpace

/-- In a compact space, the type of closed subsets is compact. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closeds/Variant6b7d3d4f10a56271205b9e3b81eee244b91b59e0287cba00412db5934dae9ca7.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7994cce4e7da61c05119b1266e0fd9ed6f629fcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

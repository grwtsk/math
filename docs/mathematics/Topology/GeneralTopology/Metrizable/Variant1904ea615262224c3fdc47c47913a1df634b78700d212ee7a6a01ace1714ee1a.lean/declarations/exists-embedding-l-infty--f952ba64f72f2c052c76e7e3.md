# exists_embedding_l_infty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d441aa8-362a-9fed-4f0b-b3ef22395dad",
  "kind": "theorem",
  "lexical_name": "exists_embedding_l_infty",
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
  "slug": "exists-embedding-l-infty--f952ba64f72f2c052c76e7e3",
  "source": {
    "blob": "4d34a4fcff057d5ed1bc832673334b7aa3888523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f952ba64f72f2c052c76e7e31620d30eb676cf2a774acc2bb200733c1c7a4c07",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d441aa8-362a-9fed-4f0b-b3ef22395dad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_embedding_l_infty : ∃ f : X → ℕ →ᵇ ℝ, Embedding f := by
  haveI : NormalSpace X := normalSpaceOfT3SecondCountable X
  -- Choose a countable basis, and consider the set `s` of pairs of set `(U, V)` such that `U ∈ B`,
  -- `V ∈ B`, and `closure U ⊆ V`.
  rcases exists_countable_basis X with ⟨B, hBc, -, hB⟩
  let s : Set (Set X × Set X) := { UV ∈ B ×ˢ B | closure UV.1 ⊆ UV.2 }
  -- `s` is a countable set.
  haveI : Encodable s := ((hBc.prod hBc).mono (inter_subset_left _ _)).toEncodable
  -- We don't have the space of bounded (possibly discontinuous) functions, so we equip `s`
  -- with the discrete topology and deal with `s →ᵇ ℝ` instead.
  letI : TopologicalSpace s := ⊥
  haveI : DiscreteTopology s := ⟨rfl⟩
  rsuffices ⟨f, hf⟩ : ∃ f : X → s →ᵇ ℝ, Embedding f
  · exact ⟨fun x => (f x).extend (Encodable.encode' s) 0,
      (BoundedContinuousFunction.isometry_extend (Encodable.encode' s) (0 : ℕ →ᵇ ℝ)).embedding.comp
        hf⟩
  have hd : ∀ UV : s, Disjoint (closure UV.1.1) UV.1.2ᶜ :=
    fun UV => disjoint_compl_right.mono_right (compl_subset_compl.2 UV.2.2)
  -- Choose a sequence of `εₙ > 0`, `n : s`, that is bounded above by `1` and tends to zero
  -- along the `cofinite` filter.
  obtain ⟨ε, ε01, hε⟩ : ∃ ε : s → ℝ, (∀ UV, ε UV ∈ Ioc (0 : ℝ) 1) ∧ Tendsto ε cofinite (𝓝 0) := by
    rcases posSumOfEncodable zero_lt_one s with ⟨ε, ε0, c, hεc, hc1⟩
    refine' ⟨ε, fun UV => ⟨ε0 UV, _⟩, hεc.summable.tendsto_cofinite_zero⟩
    exact (le_hasSum hεc UV fun _ _ => (ε0 _).le).trans hc1
  /- For each `UV = (U, V) ∈ s` we use Urysohn's lemma to choose a function `f UV` that is equal to
    zero on `U` and is equal to `ε UV` on the complement to `V`. -/
  have : ∀ UV : s, ∃ f : C(X, ℝ),
      EqOn f 0 UV.1.1 ∧ EqOn f (fun _ => ε UV) UV.1.2ᶜ ∧ ∀ x, f x ∈ Icc 0 (ε UV) := by
    intro UV
    rcases exists_continuous_zero_one_of_closed isClosed_closure
        (hB.isOpen UV.2.1.2).isClosed_compl (hd UV) with
      ⟨f, hf₀, hf₁, hf01⟩
    exact ⟨ε UV • f, fun x hx => by simp [hf₀ (subset_closure hx)], fun x hx => by simp [hf₁ hx],
      fun x => ⟨mul_nonneg (ε01 _).1.le (hf01 _).1, mul_le_of_le_one_right (ε01 _).1.le (hf01 _).2⟩⟩
  choose f hf0 hfε hf0ε using this
  have hf01 : ∀ UV x, f UV x ∈ Icc (0 : ℝ) 1 :=
    fun UV x => Icc_subset_Icc_right (ε01 _).2 (hf0ε _ _)
  -- The embedding is given by `F x UV = f UV x`.
  set F : X → s →ᵇ ℝ := fun x =>
    ⟨⟨fun UV => f UV x, continuous_of_discreteTopology⟩, 1,
      fun UV₁ UV₂ => Real.dist_le_of_mem_Icc_01 (hf01 _ _) (hf01 _ _)⟩
  have hF : ∀ x UV, F x UV = f UV x := fun _ _ => rfl
  refine' ⟨F, Embedding.mk' _ (fun x y hxy => _) fun x => le_antisymm _ _⟩
  · /- First we prove that `F` is injective. Indeed, if `F x = F y` and `x ≠ y`, then we can find
    `(U, V) ∈ s` such that `x ∈ U` and `y ∉ V`, hence `F x UV = 0 ≠ ε UV = F y UV`. -/
    by_contra Hne
    rcases hB.mem_nhds_iff.1 (isOpen_ne.mem_nhds Hne) with ⟨V, hVB, hxV, hVy⟩
    rcases hB.exists_closure_subset (hB.mem_nhds hVB hxV) with ⟨U, hUB, hxU, hUV⟩
    set UV : ↥s := ⟨(U, V), ⟨hUB, hVB⟩, hUV⟩
    apply (ε01 UV).1.ne
    calc
      (0 : ℝ) = F x UV := (hf0 UV hxU).symm
      _ = F y UV := by rw [hxy]
      _ = ε UV := hfε UV fun h : y ∈ V => hVy h rfl
  · /- Now we prove that each neighborhood `V` of `x : X` include a preimage of a neighborhood of
    `F x` under `F`. Without loss of generality, `V` belongs to `B`. Choose `U ∈ B` such that
    `x ∈ V` and `closure V ⊆ U`. Then the preimage of the `(ε (U, V))`-neighborhood of `F x`
    is included by `V`. -/
    refine' ((nhds_basis_ball.comap _).le_basis_iff hB.nhds_hasBasis).2 _
    rintro V ⟨hVB, hxV⟩
    rcases hB.exists_closure_subset (hB.mem_nhds hVB hxV) with ⟨U, hUB, hxU, hUV⟩
    set UV : ↥s := ⟨(U, V), ⟨hUB, hVB⟩, hUV⟩
    refine' ⟨ε UV, (ε01 UV).1, fun y (hy : dist (F y) (F x) < ε UV) => _⟩
    replace hy : dist (F y UV) (F x UV) < ε UV
    exact (BoundedContinuousFunction.dist_coe_le_dist _).trans_lt hy
    contrapose! hy
    rw [hF, hF, hfε UV hy, hf0 UV hxU, Pi.zero_apply, dist_zero_right]
    exact le_abs_self _
  · /- Finally, we prove that `F` is continuous. Given `δ > 0`, consider the set `T` of `(U, V) ∈ s`
    such that `ε (U, V) ≥ δ`. Since `ε` tends to zero, `T` is finite. Since each `f` is continuous,
    we can choose a neighborhood such that `dist (F y (U, V)) (F x (U, V)) ≤ δ` for any
    `(U, V) ∈ T`. For `(U, V) ∉ T`, the same inequality is true because both `F y (U, V)` and
    `F x (U, V)` belong to the interval `[0, ε (U, V)]`. -/
    refine' (nhds_basis_closedBall.comap _).ge_iff.2 fun δ δ0 => _
    have h_fin : { UV : s | δ ≤ ε UV }.Finite := by simpa only [← not_lt] using hε (gt_mem_nhds δ0)
    have : ∀ᶠ y in 𝓝 x, ∀ UV, δ ≤ ε UV → dist (F y UV) (F x UV) ≤ δ := by
      refine' (eventually_all_finite h_fin).2 fun UV _ => _
      exact (f UV).continuous.tendsto x (closedBall_mem_nhds _ δ0)
    refine' this.mono fun y hy => (BoundedContinuousFunction.dist_le δ0.le).2 fun UV => _
    cases' le_total δ (ε UV) with hle hle
    exacts [hy _ hle, (Real.dist_le_of_mem_Icc (hf0ε _ _) (hf0ε _ _)).trans (by rwa [sub_zero])]
#align topological_space.exists_embedding_l_infty TopologicalSpace.exists_embedding_l_infty

/-- *Urysohn's metrization theorem* (Tychonoff's version): a T₃ topological space with second
countable topology `X` is metrizable, i.e., there exists a metric space structure that generates the
same topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Metrizable/Variant1904ea615262224c3fdc47c47913a1df634b78700d212ee7a6a01ace1714ee1a.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d34a4fcff057d5ed1bc832673334b7aa3888523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

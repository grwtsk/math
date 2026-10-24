# sublattice_closure_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b0a12de-ebb6-fbeb-adf4-ade28d09b6ae",
  "kind": "theorem",
  "lexical_name": "sublattice_closure_eq_top",
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
  "slug": "sublattice-closure-eq-top--f6fd1eedba15180cfac9b243",
  "source": {
    "blob": "cb7a95dc9e737bf23397389e3299604cea25a84e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 173,
    "path": "GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6fd1eedba15180cfac9b2437d47ae0f11cdf10aacc2d315c07fc8c1b262053e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b0a12de-ebb6-fbeb-adf4-ade28d09b6ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sublattice_closure_eq_top (L : Set C(X, ℝ)) (nA : L.Nonempty)
    (inf_mem : ∀ᵉ (f ∈ L) (g ∈ L), f ⊓ g ∈ L)
    (sup_mem : ∀ᵉ (f ∈ L) (g ∈ L), f ⊔ g ∈ L) (sep : L.SeparatesPointsStrongly) :
    closure L = ⊤ := by
  -- We start by boiling down to a statement about close approximation.
  rw [eq_top_iff]
  rintro f -
  refine
    Filter.Frequently.mem_closure
      ((Filter.HasBasis.frequently_iff Metric.nhds_basis_ball).mpr fun ε pos => ?_)
  simp only [Metric.mem_ball]
  -- It will be helpful to assume `X` is nonempty later,
  -- so we get that out of the way here.
  by_cases nX : Nonempty X
  swap
  · exact ⟨nA.some, (dist_lt_iff pos).mpr fun x => False.elim (nX ⟨x⟩), nA.choose_spec⟩
  /-
    The strategy now is to pick a family of continuous functions `g x y` in `A`
    with the property that `g x y x = f x` and `g x y y = f y`
    (this is immediate from `h : SeparatesPointsStrongly`)
    then use continuity to see that `g x y` is close to `f` near both `x` and `y`,
    and finally using compactness to produce the desired function `h`
    as a maximum over finitely many `x` of a minimum over finitely many `y` of the `g x y`.
    -/
  dsimp only [Set.SeparatesPointsStrongly] at sep
  choose g hg w₁ w₂ using sep f
  -- For each `x y`, we define `U x y` to be `{z | f z - ε < g x y z}`,
  -- and observe this is a neighbourhood of `y`.
  let U : X → X → Set X := fun x y => {z | f z - ε < g x y z}
  have U_nhds_y : ∀ x y, U x y ∈ 𝓝 y := by
    intro x y
    refine IsOpen.mem_nhds ?_ ?_
    · apply isOpen_lt <;> fun_prop
    · rw [Set.mem_ofPred_eq, w₂]
      exact sub_lt_self _ pos
  -- Fixing `x` for a moment, we have a family of functions `fun y ↦ g x y`
  -- which on different patches (the `U x y`) are greater than `f z - ε`.
  -- Taking the supremum of these functions
  -- indexed by a finite collection of patches which cover `X`
  -- will give us an element of `A` that is globally greater than `f z - ε`
  -- and still equal to `f x` at `x`.
  -- Since `X` is compact, for every `x` there is some finset `ys t`
  -- so the union of the `U x y` for `y ∈ ys x` still covers everything.
  let ys : X → Finset X := fun x => (CompactSpace.elim_nhds_subcover (U x) (U_nhds_y x)).choose
  let ys_w : ∀ x, ⋃ y ∈ ys x, U x y = ⊤ := fun x =>
    (CompactSpace.elim_nhds_subcover (U x) (U_nhds_y x)).choose_spec
  have ys_nonempty : ∀ x, (ys x).Nonempty := fun x =>
    Set.nonempty_of_union_eq_top_of_nonempty _ _ nX (ys_w x)
  -- Thus for each `x` we have the desired `h x : A` so `f z - ε < h x z` everywhere
  -- and `h x x = f x`.
  let h : X → L := fun x =>
    ⟨(ys x).sup' (ys_nonempty x) fun y => (g x y : C(X, ℝ)),
      Finset.sup'_mem _ sup_mem _ _ _ fun y _ => hg x y⟩
  have lt_h : ∀ x z, f z - ε < (h x : X → ℝ) z := by
    intro x z
    obtain ⟨y, ym, zm⟩ := Set.exists_set_mem_of_union_eq_top _ _ (ys_w x) z
    dsimp [h]
    simp only [coe_sup', Finset.sup'_apply, Finset.lt_sup'_iff]
    exact ⟨y, ym, zm⟩
  have h_eq : ∀ x, (h x : X → ℝ) x = f x := by intro x; simp [h, w₁]
  -- For each `x`, we define `W x` to be `{z | h x z < f z + ε}`,
  let W : X → Set X := fun x => {z | (h x : X → ℝ) z < f z + ε}
  -- This is still a neighbourhood of `x`.
  have W_nhds : ∀ x, W x ∈ 𝓝 x := by
    intro x
    refine IsOpen.mem_nhds ?_ ?_
    · apply isOpen_lt <;> fun_prop
    · dsimp only [W, Set.mem_ofPred_eq]
      rw [h_eq]
      exact lt_add_of_pos_right _ pos
  -- Since `X` is compact, there is some finset `ys t`
  -- so the union of the `W x` for `x ∈ xs` still covers everything.
  let xs : Finset X := (CompactSpace.elim_nhds_subcover W W_nhds).choose
  let xs_w : ⋃ x ∈ xs, W x = ⊤ := (CompactSpace.elim_nhds_subcover W W_nhds).choose_spec
  have xs_nonempty : xs.Nonempty := Set.nonempty_of_union_eq_top_of_nonempty _ _ nX xs_w
  -- Finally our candidate function is the infimum over `x ∈ xs` of the `h x`.
  -- This function is then globally less than `f z + ε`.
  let k : (L : Type _) :=
    ⟨xs.inf' xs_nonempty fun x => (h x : C(X, ℝ)),
      Finset.inf'_mem _ inf_mem _ _ _ fun x _ => (h x).2⟩
  refine ⟨k.1, ?_, k.2⟩
  -- We just need to verify the bound, which we do pointwise.
  rw [dist_lt_iff pos]
  intro z
  -- We rewrite into this particular form,
  -- so that simp lemmas about inequalities involving `Finset.inf'` can fire.
  rw [show ∀ a b ε : ℝ, dist a b < ε ↔ a < b + ε ∧ b - ε < a by
        intros; simp only [← Metric.mem_ball, Real.ball_eq_Ioo, Set.mem_Ioo, and_comm]]
  constructor
  · simp only [k, Finset.inf'_lt_iff, ContinuousMap.inf'_apply]
    exact Set.exists_set_mem_of_union_eq_top _ _ xs_w z
  · simp only [k, Finset.lt_inf'_iff, ContinuousMap.inf'_apply]
    rintro x -
    apply lt_h

/-- The **Stone-Weierstrass Approximation Theorem**,
that a subalgebra `A` of `C(X, ℝ)`, where `X` is a compact topological space,
is dense if it separates points.
-/
@[wikidata Q939927]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneWeierstrass/Variant1cf7cfad297eaa96b4361c6e07caf08d8be0bb3bbbc817fb2510e5a282c44e36.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb7a95dc9e737bf23397389e3299604cea25a84e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

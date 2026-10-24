# normalize_finite_fraction_representation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1dc442d3-7ce0-f5b5-27f0-7a0d79e9f16f",
  "kind": "theorem",
  "lexical_name": "normalize_finite_fraction_representation",
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
  "slug": "normalize-finite-fraction-representation--de57ba502384cc6d1b997c2c",
  "source": {
    "blob": "77c38c8ba20bb8be112e47215887715d2f05b8a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 830,
    "line": 735,
    "path": "GRWTSK/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de57ba502384cc6d1b997c2c6956029506cc636a849e1007a1640d4e12cab797",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1dc442d3-7ce0-f5b5-27f0-7a0d79e9f16f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–830.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalize_finite_fraction_representation (U : Opens (PrimeSpectrum.Top R))
    (s : (structureSheaf R).1.obj (op U)) {ι : Type*} (t : Finset ι) (a h : ι → R)
    (iDh : ∀ i : ι, PrimeSpectrum.basicOpen (h i) ⟶ U)
    (h_cover : U ≤ ⨆ i ∈ t, PrimeSpectrum.basicOpen (h i))
    (hs :
      ∀ i : ι,
        (const R (a i) (h i) (PrimeSpectrum.basicOpen (h i)) fun y hy => hy) =
          (structureSheaf R).1.map (iDh i).op s) :
    ∃ (a' h' : ι → R) (iDh' : ∀ i : ι, PrimeSpectrum.basicOpen (h' i) ⟶ U),
      (U ≤ ⨆ i ∈ t, PrimeSpectrum.basicOpen (h' i)) ∧
        (∀ (i) (_ : i ∈ t) (j) (_ : j ∈ t), a' i * h' j = h' i * a' j) ∧
          ∀ i ∈ t,
            (structureSheaf R).1.map (iDh' i).op s =
              const R (a' i) (h' i) (PrimeSpectrum.basicOpen (h' i)) fun y hy => hy := by
  -- First we show that the fractions `(a i * h j) / (h i * h j)` and `(h i * a j) / (h i * h j)`
  -- coincide in the localization of `R` at `h i * h j`
  have fractions_eq :
    ∀ i j : ι,
      IsLocalization.mk' (Localization.Away (h i * h j))
        (a i * h j) ⟨h i * h j, Submonoid.mem_powers _⟩ =
      IsLocalization.mk' _ (h i * a j) ⟨h i * h j, Submonoid.mem_powers _⟩ := by
    intro i j
    let D := PrimeSpectrum.basicOpen (h i * h j)
    let iDi : D ⟶ PrimeSpectrum.basicOpen (h i) := homOfLE (PrimeSpectrum.basicOpen_mul_le_left _ _)
    let iDj : D ⟶ PrimeSpectrum.basicOpen (h j) :=
      homOfLE (PrimeSpectrum.basicOpen_mul_le_right _ _)
    -- Crucially, we need injectivity of `toBasicOpen`
    apply toBasicOpen_injective R (h i * h j)
    rw [toBasicOpen_mk', toBasicOpen_mk']
    simp only []
    -- Here, both sides of the equation are equal to a restriction of `s`
    trans
    convert congr_arg ((structureSheaf R).1.map iDj.op) (hs j).symm using 1
    convert congr_arg ((structureSheaf R).1.map iDi.op) (hs i) using 1; swap
    all_goals rw [res_const]; apply const_ext; ring
    -- The remaining two goals were generated during the rewrite of `res_const`
    -- These can be solved immediately
    exacts [PrimeSpectrum.basicOpen_mul_le_right _ _, PrimeSpectrum.basicOpen_mul_le_left _ _]
  -- From the equality in the localization, we obtain for each `(i,j)` some power `(h i * h j) ^ n`
  -- which equalizes `a i * h j` and `h i * a j`
  have exists_power :
    ∀ i j : ι, ∃ n : ℕ, a i * h j * (h i * h j) ^ n = h i * a j * (h i * h j) ^ n := by
    intro i j
    obtain ⟨⟨c, n, rfl⟩, hc⟩ := IsLocalization.eq.mp (fractions_eq i j)
    use n + 1
    rw [pow_succ]
    dsimp at hc
    convert hc using 1 <;> ring
  let n := fun p : ι × ι => (exists_power p.1 p.2).choose
  have n_spec := fun p : ι × ι => (exists_power p.fst p.snd).choose_spec
  -- We need one power `(h i * h j) ^ N` that works for *all* pairs `(i,j)`
  -- Since there are only finitely many indices involved, we can pick the supremum.
  let N := (t ×ˢ t).sup n
  have basic_opens_eq : ∀ i : ι, PrimeSpectrum.basicOpen (h i ^ (N + 1)) =
    PrimeSpectrum.basicOpen (h i) := fun i => PrimeSpectrum.basicOpen_pow _ _ (by linarith)
  -- Expanding the fraction `a i / h i` by the power `(h i) ^ n` gives the desired normalization
  refine'
    ⟨fun i => a i * h i ^ N, fun i => h i ^ (N + 1), fun i => eqToHom (basic_opens_eq i) ≫ iDh i,
      _, _, _⟩
  · simpa only [basic_opens_eq] using h_cover
  · intro i hi j hj
    -- Here we need to show that our new fractions `a i / h i` satisfy the normalization condition
    -- Of course, the power `N` we used to expand the fractions might be bigger than the power
    -- `n (i, j)` which was originally chosen. We denote their difference by `k`
    have n_le_N : n (i, j) ≤ N := Finset.le_sup (Finset.mem_product.mpr ⟨hi, hj⟩)
    cases' Nat.le.dest n_le_N with k hk
    simp only [← hk, pow_add, pow_one]
    -- To accommodate for the difference `k`, we multiply both sides of the equation `n_spec (i, j)`
    -- by `(h i * h j) ^ k`
    convert congr_arg (fun z => z * (h i * h j) ^ k) (n_spec (i, j)) using 1 <;>
      · simp only [mul_pow]; ring
  -- Lastly, we need to show that the new fractions still represent our original `s`
  intro i _
  rw [op_comp, Functor.map_comp]
  -- Porting note : `comp_apply` can't be rewritten, so use a change
  change (structureSheaf R).1.map (eqToHom (basic_opens_eq _)).op
    ((structureSheaf R).1.map (iDh i).op s) = _
  rw [← hs, res_const]
  -- additional goal spit out by `res_const`
  swap
  · exact (basic_opens_eq i).le
  apply const_ext
  dsimp
  rw [pow_succ]
  ring
#align algebraic_geometry.structure_sheaf.normalize_finite_fraction_representation AlgebraicGeometry.StructureSheaf.normalize_finite_fraction_representation

open scoped Classical

open scoped BigOperators

-- Porting note : in the following proof there are two places where `⋃ i, ⋃ (hx : i ∈ _), ... `
-- though `hx` is not used in `...` part, it is still required to maintain the structure of
-- the original proof in mathlib3.
set_option linter.unusedVariables false in
-- The proof here follows the argument in Hartshorne's Algebraic Geometry, Proposition II.2.2.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variant1d3097dfba23d8ceb8dedebefc106768284ee42019c77ce1946e071568e6e37e.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77c38c8ba20bb8be112e47215887715d2f05b8a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

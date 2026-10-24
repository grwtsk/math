# piContent_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5e34896a-9878-9c38-3cfa-f7adfc2d18be",
  "kind": "theorem",
  "lexical_name": "piContent_tendsto_zero",
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
  "slug": "picontent-tendsto-zero--b67c3df6fff1e3c4dad2251e",
  "source": {
    "blob": "79215f8240d02ec79682931184a2179091e4727f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 268,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b67c3df6fff1e3c4dad2251e5257d797f70ba86f5a7f1cacb2ca3089f56fb668",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e34896a-9878-9c38-3cfa-f7adfc2d18be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piContent_tendsto_zero {A : ℕ → Set (Π i, X i)} (A_mem : ∀ n, A n ∈ measurableCylinders X)
    (A_anti : Antitone A) (A_inter : ⋂ n, A n = ∅) :
    Tendsto (fun n ↦ piContent μ (A n)) atTop (𝓝 0) := by
  have : ∀ i, Nonempty (X i) := fun i ↦ ProbabilityMeasure.nonempty ⟨μ i, hμ i⟩
  have A_cyl n : ∃ s S, MeasurableSet S ∧ A n = cylinder s S :=
    (mem_measurableCylinders _).1 (A_mem n)
  choose s S mS A_eq using A_cyl
  -- The family `(Aₙ)` only depends on a countable set of coordinates, called `u`. Therefore our
  -- goal is to see it as a family indexed by this countable set, because on the product indexed
  -- by this countable set we can build a measure. To do so we have to pull back our cylinders
  -- along the injection from `Π i : u, X i` to `Π i, X i`.
  let u := ⋃ n, (s n).toSet
  -- `tₙ` will be `sₙ` seen as a subset of `u`.
  let t n : Finset u := (s n).preimage Subtype.val Subtype.val_injective.injOn
  classical
  -- The map `f` allows to pull back `Aₙ`
  let f : (Π i : u, X i) → Π i, X i :=
    fun x i ↦ if hi : i ∈ u then x ⟨i, hi⟩ else Classical.ofNonempty
  -- `aux` is the obvious equivalence between `sₙ` and `tₙ`
  let aux n : t n ≃ s n :=
    { toFun := fun i ↦ ⟨i.1.1, mem_preimage.1 i.2⟩
      invFun := fun i ↦ ⟨⟨i.1, Set.mem_iUnion.2 ⟨n, i.2⟩⟩, mem_preimage.2 i.2⟩
      left_inv := fun i ↦ by simp
      right_inv := fun i ↦ by simp }
  -- Finally `gₙ` is the equivalence between the product indexed by `tₙ` and the one indexed by `sₙ`
  let g n := (aux n).piCongrLeft (fun i : s n ↦ X i)
  -- Mapping from the product indexed by `u` by `f` and then restricting to `sₙ` is the same as
  -- first restricting to `tₙ` and then mapping by `gₙ`
  have r_comp_f n : (s n).restrict ∘ f = (g n) ∘ (fun (x : Π i : u, X i) i ↦ x i) := by
    ext x i
    simp only [Function.comp_apply, Finset.restrict, subset_refl, Set.coe_inclusion,
      Equiv.piCongrLeft_apply, Equiv.coe_fn_symm_mk, f, aux, g, t]
    rw [dif_pos (Set.mem_iUnion.2 ⟨n, i.2⟩)]
  -- `Bₙ` is the same as `Aₙ` but in the product indexed by `u`
  let B n := f ⁻¹' (A n)
  -- `Tₙ` is the same as `Sₙ` but in the product indexed by `u`
  let T n := (g n) ⁻¹' (S n)
  -- We now transfer the properties of `Aₙ` and `Sₙ` to `Bₙ` and `Tₙ`
  have B_eq n : B n = cylinder (t n) (T n) := by
    simp_rw [B, A_eq, cylinder, ← Set.preimage_comp, r_comp_f]; rfl
  have mT n : MeasurableSet (T n) := (mS n).preimage (by fun_prop)
  have B_mem n : B n ∈ measurableCylinders (fun i : u ↦ X i) :=
    (mem_measurableCylinders (B n)).2 ⟨t n, T n, mT n, B_eq n⟩
  have mB n : MeasurableSet (B n) := .of_mem_measurableCylinders (B_mem n)
  have B_anti : Antitone B := fun m n hmn ↦ Set.preimage_mono <| A_anti hmn
  have B_inter : ⋂ n, B n = ∅ := by
    simp_rw [B, ← Set.preimage_iInter, A_inter, Set.preimage_empty]
  -- We now rewrite `piContent μ (A n)` as `piContent (fun i : u ↦ μ i) (B n)`. Then there are two
  -- cases: either `u` is finite and we rewrite it to the finite product measure, either
  -- it is countable and we rewrite it to the pushforward measure of `infinitePiNat`. In both cases
  -- we have an actual measure and we can conclude with `tendsto_measure_iInter_atTop`.
  conv =>
    enter [1]; ext n
    rw [A_eq, piContent_cylinder μ (mS n), ← pi_map_piCongrLeft (aux n),
      map_apply (by fun_prop) (mS n)]
    change (Measure.pi (fun i : t n ↦ μ i)) (T n)
    rw [← piContent_cylinder (fun i : u ↦ μ i) (mT n), ← B_eq n]
  obtain u_fin | u_inf := finite_or_infinite u
  · let _ := Fintype.ofFinite u
    simp_rw [fun n ↦ piContent_eq_measure_pi (fun i : u ↦ μ i) (mB n)]
    convert tendsto_measure_iInter_atTop (fun n ↦ (mB n).nullMeasurableSet) B_anti
      ⟨0, measure_ne_top _ _⟩
    · rw [B_inter, measure_empty]
    · infer_instance
  · -- If `u` is infinite, then we have an equivalence with `ℕ` so we can apply `secondLemma`.
    have count_u : Countable u := Set.countable_iUnion (fun n ↦ (s n).countable_toSet)
    obtain ⟨φ, -⟩ := Classical.exists_true_of_nonempty (α := ℕ ≃ u) nonempty_equiv_of_countable
    conv => enter [1]; ext n; rw [← infinitePiNat_map_piCongrLeft _ φ (B_mem n)]
    convert tendsto_measure_iInter_atTop (fun n ↦ (mB n).nullMeasurableSet) B_anti
      ⟨0, measure_ne_top _ _⟩
    · rw [B_inter, measure_empty]
    · infer_instance

/-- The `projectiveFamilyContent` associated to a family of probability measures is
σ-subadditive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variantc0c2989d42fca57b3df25bfd2ac9defa881824aba1cbd5f70e3bb8169e5fee9f.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79215f8240d02ec79682931184a2179091e4727f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

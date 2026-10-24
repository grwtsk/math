# hausdorffMeasure_pi_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1816dee-2715-90c3-9c83-9a4c52700c16",
  "kind": "theorem",
  "lexical_name": "hausdorffMeasure_pi_real",
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
  "slug": "hausdorffmeasure-pi-real--59f5262280c4674660e25804",
  "source": {
    "blob": "e83fe34bf6c8572092724fd8cf11f2c54e7b1080",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 985,
    "line": 896,
    "path": "GRWTSK/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59f5262280c4674660e2580495d0a8dd1c51d1d82924a28caada4660e0481353",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1816dee-2715-90c3-9c83-9a4c52700c16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 896–985.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hausdorffMeasure_pi_real {ι : Type*} [Fintype ι] :
    (μH[Fintype.card ι] : Measure (ι → ℝ)) = volume := by
  classical
  -- it suffices to check that the two measures coincide on products of rational intervals
  refine (pi_eq_generateFrom (fun _ => Real.borel_eq_generateFrom_Ioo_rat.symm)
    (fun _ => Real.isPiSystem_Ioo_rat) (fun _ => Real.finiteSpanningSetsInIooRat _) ?_).symm
  simp only [mem_iUnion, mem_singleton_iff]
  -- fix such a product `s` of rational intervals, of the form `Π (a i, b i)`.
  intro s hs
  choose a b H using hs
  obtain rfl : s = fun i => Ioo (α := ℝ) (a i) (b i) := funext fun i => (H i).2
  replace H := fun i => (H i).1
  apply le_antisymm _
  -- first check that `volume s ≤ μH s`
  · have Hle : volume ≤ (μH[Fintype.card ι] : Measure (ι → ℝ)) := by
      refine le_hausdorffMeasure _ _ ∞ ENNReal.coe_lt_top fun s _ => ?_
      rw [ENNReal.rpow_natCast]
      exact Real.volume_pi_le_diam_pow s
    rw [← volume_pi_pi fun i => Ioo (a i : ℝ) (b i)]
    exact Measure.le_iff'.1 Hle _
  /- For the other inequality `μH s ≤ volume s`, we use a covering of `s` by sets of small diameter
    `1/n`, namely cubes with left-most point of the form `a i + f i / n` with `f i` ranging between
    `0` and `⌈(b i - a i) * n⌉`. Their number is asymptotic to `n^d * Π (b i - a i)`. -/
  have I : ∀ i, 0 ≤ (b i : ℝ) - a i := fun i => by
    simpa only [sub_nonneg, Rat.cast_le] using (H i).le
  let γ := fun n : ℕ => ∀ i : ι, Fin ⌈((b i : ℝ) - a i) * n⌉₊
  let t : ∀ n : ℕ, γ n → Set (ι → ℝ) := fun n f =>
    Set.pi univ fun i => Icc (a i + f i / n) (a i + (f i + 1) / n)
  have A : Tendsto (fun n : ℕ => 1 / (n : ℝ≥0∞)) atTop (𝓝 0) := by
    simp only [one_div, ENNReal.tendsto_inv_nat_nhds_zero]
  have B : ∀ᶠ n in atTop, ∀ i : γ n, ediam (t n i) ≤ 1 / n := by
    refine eventually_atTop.2 ⟨1, fun n hn => ?_⟩
    intro f
    refine ediam_pi_le_of_le fun b => ?_
    simp only [Real.ediam_Icc, add_div, ENNReal.ofReal_div_of_pos (Nat.cast_pos.mpr hn), le_refl,
      add_sub_add_left_eq_sub, add_sub_cancel_left, ENNReal.ofReal_one, ENNReal.ofReal_natCast]
  have C : ∀ᶠ n in atTop, (Set.pi univ fun i : ι => Ioo (a i : ℝ) (b i)) ⊆ ⋃ i : γ n, t n i := by
    refine eventually_atTop.2 ⟨1, fun n hn => ?_⟩
    have npos : (0 : ℝ) < n := Nat.cast_pos.2 hn
    intro x hx
    simp only [mem_Ioo, mem_univ_pi] at hx
    simp only [t, mem_iUnion, mem_univ_pi]
    let f : γ n := fun i =>
      ⟨⌊(x i - a i) * n⌋₊, by
        apply Nat.floor_lt_ceil_of_lt_of_pos
        · gcongr
          exact (hx i).right
        · refine mul_pos ?_ npos
          simpa only [Rat.cast_lt, sub_pos] using H i⟩
    refine ⟨f, fun i => ⟨?_, ?_⟩⟩
    · calc
        (a i : ℝ) + ⌊(x i - a i) * n⌋₊ / n ≤ (a i : ℝ) + (x i - a i) * n / n := by
          gcongr
          exact Nat.floor_le (mul_nonneg (sub_nonneg.2 (hx i).1.le) npos.le)
        _ = x i := by field
    · calc
        x i = (a i : ℝ) + (x i - a i) * n / n := by field
        _ ≤ (a i : ℝ) + (⌊(x i - a i) * n⌋₊ + 1) / n := by
          gcongr
          exact (Nat.lt_floor_add_one _).le
  calc
    μH[Fintype.card ι] (Set.pi univ fun i : ι => Ioo (a i : ℝ) (b i)) ≤
        liminf (fun n : ℕ => ∑ i : γ n, ediam (t n i) ^ ((Fintype.card ι) : ℝ)) atTop :=
      hausdorffMeasure_le_liminf_sum _ (Set.pi univ fun i => Ioo (a i : ℝ) (b i))
        (fun n : ℕ => 1 / (n : ℝ≥0∞)) A t B C
    _ ≤ liminf (fun n : ℕ => ∑ i : γ n, (1 / (n : ℝ≥0∞)) ^ Fintype.card ι) atTop := by
      refine liminf_le_liminf ?_ ?_
      · filter_upwards [B] with _ hn
        apply Finset.sum_le_sum fun i _ => _
        simp only [ENNReal.rpow_natCast]
        intro i _
        exact pow_le_pow_left' (hn i) _
      · isBoundedDefault
    _ = liminf (fun n : ℕ => ∏ i : ι, (⌈((b i : ℝ) - a i) * n⌉₊ : ℝ≥0∞) / n) atTop := by
      simp only [γ, Finset.card_univ, Nat.cast_prod, one_mul, Fintype.card_fin, Finset.sum_const,
        nsmul_eq_mul, Fintype.card_pi, div_eq_mul_inv, Finset.prod_mul_distrib, Finset.prod_const]
    _ = ∏ i : ι, volume (Ioo (a i : ℝ) (b i)) := by
      simp only [Real.volume_Ioo]
      apply Tendsto.liminf_eq
      refine ENNReal.tendsto_finsetProd_of_ne_top _ (fun i _ => ?_) fun i _ => ?_
      · apply
          Tendsto.congr' _
            ((ENNReal.continuous_ofReal.tendsto _).comp
              ((tendsto_nat_ceil_mul_div_atTop (I i)).comp tendsto_natCast_atTop_atTop))
        apply eventually_atTop.2 ⟨1, fun n hn => _⟩
        intro n hn
        simp only [ENNReal.ofReal_div_of_pos (Nat.cast_pos.mpr hn), comp_apply,
          ENNReal.ofReal_natCast]
      · simp only [ENNReal.ofReal_ne_top, Ne, not_false_iff]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Hausdorff/Variant817fab7354d21dc7eb97de6eb79bcb0b94740a208da213697a21e1d51f2c99ab.lean#L896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e83fe34bf6c8572092724fd8cf11f2c54e7b1080` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

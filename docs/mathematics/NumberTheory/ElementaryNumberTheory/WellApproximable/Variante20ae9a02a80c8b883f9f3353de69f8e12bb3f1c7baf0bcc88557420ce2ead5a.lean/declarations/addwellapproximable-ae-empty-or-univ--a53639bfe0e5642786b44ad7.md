# addWellApproximable_ae_empty_or_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cae00d90-e9c9-9e83-7730-befd853b5939",
  "kind": "theorem",
  "lexical_name": "addWellApproximable_ae_empty_or_univ",
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
  "slug": "addwellapproximable-ae-empty-or-univ--a53639bfe0e5642786b44ad7",
  "source": {
    "blob": "6f3ce92fb4109c8122b70e344c82b1d35f3f4b18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 200,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a53639bfe0e5642786b44ad7ad271c5e56a56f585ee9575a0f3c852af7f85d28",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cae00d90-e9c9-9e83-7730-befd853b5939`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addWellApproximable_ae_empty_or_univ (δ : ℕ → ℝ) (hδ : Tendsto δ atTop (𝓝 0)) :
    (∀ᵐ x, x ∉ addWellApproximable 𝕊 δ) ∨ ∀ᵐ x, x ∈ addWellApproximable 𝕊 δ := by
  /- Sketch of proof:

    Let `E := addWellApproximable 𝕊 δ`. For each prime `p : ℕ`, we can partition `E` into three
    pieces `E = (A p) ∪ (B p) ∪ (C p)` where:
      `A p = blimsup (approxAddOrderOf 𝕊 n (δ n)) atTop (fun n => 0 < n ∧ (p ∤ n))`
      `B p = blimsup (approxAddOrderOf 𝕊 n (δ n)) atTop (fun n => 0 < n ∧ (p ∣∣ n))`
      `C p = blimsup (approxAddOrderOf 𝕊 n (δ n)) atTop (fun n => 0 < n ∧ (p*p ∣ n))`.
    In other words, `A p` is the set of points `x` for which there exist infinitely many `n` such
    that `x` is within a distance `δ n` of a point of order `n` and `p ∤ n`. Similarly for `B`, `C`.

    These sets have the following key properties:
      1. `A p` is almost invariant under the ergodic map `y ↦ p • y`
      2. `B p` is almost invariant under the ergodic map `y ↦ p • y + 1/p`
      3. `C p` is invariant under the map `y ↦ y + 1/p`
    To prove 1 and 2 we need the key result `blimsup_thickening_mul_ae_eq` but 3 is elementary.

    It follows from `AddCircle.ergodic_nsmul_add` and `Ergodic.ae_empty_or_univ_of_image_ae_le` that
    if either `A p` or `B p` is not almost empty for any `p`, then it is almost full and thus so is
    `E`. We may therefore assume that `A p` and `B p` are almost empty for all `p`. We thus have
    `E` is almost equal to `C p` for every prime. Combining this with 3 we find that `E` is almost
    invariant under the map `y ↦ y + 1/p` for every prime `p`. The required result then follows from
    `AddCircle.ae_empty_or_univ_of_forall_vadd_ae_eq_self`. -/
  let : SemilatticeSup Nat.Primes := Nat.Subtype.semilatticeSup _
  set μ : Measure 𝕊 := volume
  set u : Nat.Primes → 𝕊 := fun p => ↑((↑(1 : ℕ) : ℝ) / ((p : ℕ) : ℝ) * T)
  have hu₀ : ∀ p : Nat.Primes, addOrderOf (u p) = (p : ℕ) := by
    rintro ⟨p, hp⟩; exact addOrderOf_div_of_gcd_eq_one hp.pos (gcd_one_left p)
  have hu : Tendsto (addOrderOf ∘ u) atTop atTop := by
    rw [(funext hu₀ : addOrderOf ∘ u = (↑))]
    have h_mono : Monotone ((↑) : Nat.Primes → ℕ) := fun p q hpq => hpq
    refine h_mono.tendsto_atTop_atTop fun n => ?_
    obtain ⟨p, hp, hp'⟩ := n.exists_infinite_primes
    exact ⟨⟨p, hp'⟩, hp⟩
  set E := addWellApproximable 𝕊 δ
  set X : ℕ → Set 𝕊 := fun n => approxAddOrderOf 𝕊 n (δ n)
  set A : ℕ → Set 𝕊 := fun p => blimsup X atTop fun n => 0 < n ∧ p∤n
  set B : ℕ → Set 𝕊 := fun p => blimsup X atTop fun n => 0 < n ∧ p∣∣n
  set C : ℕ → Set 𝕊 := fun p => blimsup X atTop fun n => 0 < n ∧ p ^ 2 ∣ n
  have hA₀ : ∀ p, MeasurableSet (A p) := fun p =>
    MeasurableSet.measurableSet_blimsup fun n _ => isOpen_thickening.measurableSet
  have hB₀ : ∀ p, MeasurableSet (B p) := fun p =>
    MeasurableSet.measurableSet_blimsup fun n _ => isOpen_thickening.measurableSet
  have hE₀ : NullMeasurableSet E μ := by
    refine (MeasurableSet.measurableSet_blimsup fun n hn =>
      IsOpen.measurableSet ?_).nullMeasurableSet
    exact isOpen_thickening
  have hE₁ : ∀ p, E = A p ∪ B p ∪ C p := by
    intro p
    simp only [E, A, B, C, addWellApproximable, ← blimsup_or_eq_sup, ← and_or_left, ← sup_eq_union,
      sq]
    congr
    ext n
    tauto
  have hE₂ : ∀ p : Nat.Primes, A p =ᵐ[μ] ∅ ∧ B p =ᵐ[μ] ∅ → E =ᵐ[μ] C p := by
    rintro p ⟨hA, hB⟩
    rw [hE₁ p]
    exact union_ae_eq_right_of_ae_eq_empty ((union_ae_eq_right_of_ae_eq_empty hA).trans hB)
  have hA : ∀ p : Nat.Primes, A p =ᵐ[μ] ∅ ∨ A p =ᵐ[μ] univ := by
    rintro ⟨p, hp⟩
    let f : 𝕊 → 𝕊 := fun y => (p : ℕ) • y
    suffices
      f '' A p ⊆ blimsup (fun n => approxAddOrderOf 𝕊 n (p * δ n)) atTop fun n => 0 < n ∧ p∤n by
      apply (ergodic_nsmul hp.one_lt).ae_empty_or_univ_of_image_ae_le (hA₀ p).nullMeasurableSet
      apply this.eventuallySubset.congr .rfl
      exact blimsup_thickening_mul_ae_eq μ (fun n => 0 < n ∧ p∤n) (fun n => {y | addOrderOf y = n})
        (Nat.cast_pos.mpr hp.pos) _ hδ
    refine (sSupHom.setImage f).apply_blimsup_le.trans (mono_blimsup fun n hn => ?_)
    replace hn := Nat.coprime_comm.mp (hp.coprime_iff_not_dvd.2 hn.2)
    exact approxAddOrderOf.image_nsmul_subset_of_coprime (δ n) hp.pos hn
  have hB : ∀ p : Nat.Primes, B p =ᵐ[μ] ∅ ∨ B p =ᵐ[μ] univ := by
    rintro ⟨p, hp⟩
    let x := u ⟨p, hp⟩
    let f : 𝕊 → 𝕊 := fun y => p • y + x
    suffices
      f '' B p ⊆ blimsup (fun n => approxAddOrderOf 𝕊 n (p * δ n)) atTop fun n => 0 < n ∧ p∣∣n by
      apply (ergodic_nsmul_add x hp.one_lt).ae_empty_or_univ_of_image_ae_le
        (hB₀ p).nullMeasurableSet
      apply this.eventuallySubset.congr .rfl
      exact blimsup_thickening_mul_ae_eq μ (fun n => 0 < n ∧ p∣∣n) (fun n => {y | addOrderOf y = n})
        (Nat.cast_pos.mpr hp.pos) _ hδ
    refine (sSupHom.setImage f).apply_blimsup_le.trans (mono_blimsup ?_)
    rintro n ⟨hn, h_div, h_ndiv⟩
    have h_cop : (addOrderOf x).Coprime (n / p) := by
      obtain ⟨q, rfl⟩ := h_div
      rw [hu₀, Subtype.coe_mk, hp.coprime_iff_not_dvd, q.mul_div_cancel_left hp.pos]
      exact fun contra => h_ndiv (mul_dvd_mul_left p contra)
    replace h_div : n / p * p = n := Nat.div_mul_cancel h_div
    have hf : f = (fun y => x + y) ∘ fun y => p • y := by
      ext; simp [f, add_comm x]
    simp_rw [Function.comp_apply]
    rw [sSupHom.setImage_toFun, hf, image_comp]
    have := @monotone_image 𝕊 𝕊 fun y => x + y
    specialize this (approxAddOrderOf.image_nsmul_subset (δ n) (n / p) hp.pos)
    simp only [h_div] at this ⊢
    refine this.trans ?_
    convert! approxAddOrderOf.vadd_subset_of_coprime (p * δ n) h_cop
    rw [hu₀, Subtype.coe_mk, mul_comm p, h_div]
  change (∀ᵐ x, x ∉ E) ∨ E ∈ ae volume
  rw [← eventuallyEqSet_empty, ← eventuallyEqSet_univ]
  have hC : ∀ p : Nat.Primes, u p +ᵥ C p = C p := by
    intro p
    let e := (AddAction.toPerm (u p) : Equiv.Perm 𝕊).toOrderIsoSet
    change e (C p) = C p
    rw [OrderIso.apply_blimsup e, ← hu₀ p]
    exact blimsup_congr (Eventually.of_forall fun n hn =>
      approxAddOrderOf.vadd_eq_of_mul_dvd (δ n) hn.1 hn.2)
  by_cases! +distrib h : ∀ p : Nat.Primes, A p =ᵐ[μ] ∅ ∧ B p =ᵐ[μ] ∅
  · replace h : ∀ p : Nat.Primes, u p +ᵥ E =ᵐ[μ] E := by
      intro p
      replace hE₂ : E =ᵐ[μ] C p := hE₂ p (h p)
      have h_qmp : Measure.QuasiMeasurePreserving (-u p +ᵥ ·) μ μ :=
        (measurePreserving_vadd _ μ).quasiMeasurePreserving
      refine (h_qmp.vadd_ae_eq_of_ae_eq (u p) hE₂).trans (ae_eq_trans ?_ hE₂.symm)
      rw [hC]
    exact ae_empty_or_univ_of_forall_vadd_ae_eq_self hE₀ h hu
  · right
    obtain ⟨p, hp⟩ := h
    rw [hE₁ p]
    cases hp
    · rcases hA p with _ | h; · contradiction
      simp only [μ, h, union_ae_eq_univ_of_ae_eq_univ_left]
    · rcases hB p with _ | h; · contradiction
      simp only [μ, h, union_ae_eq_univ_of_ae_eq_univ_left,
        union_ae_eq_univ_of_ae_eq_univ_right]

/-- A general version of **Dirichlet's approximation theorem**.

See also `AddCircle.exists_norm_nsmul_le`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Variante20ae9a02a80c8b883f9f3353de69f8e12bb3f1c7baf0bcc88557420ce2ead5a.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f3ce92fb4109c8122b70e344c82b1d35f3f4b18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

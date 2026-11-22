/- Copyright (c) 2026 grwtsk contributors. MIT. -/
/-!
# Positive mass proof candidate: DualityAndTopologicalSeparation (09/15)

This is one ordered slice of the **unverified** user-supplied Lean source.
All original source lines inside the SOURCE_START/SOURCE_END delimiters
are preserved byte-for-byte, including source comments; see issue #1829.
Publication is not elaboration, kernel replay, axiom auditing, independent
review, or a positive mass theorem. Checks: NOT_RUN.
The opening comment of the supplied source calls the file a sorry-only
statement, although the uploaded text contains a long by-proof; it is stale.
-/
import GRWTSK.DifferentialGeometry.PositiveMassCandidate.EllipticEnergyAndDuality
set_option maxHeartbeats 4000000
noncomputable section
open Manifold Filter Topology MeasureTheory Metric
open scoped ContDiff
namespace PositiveMass
variable {M : Type*} [TopologicalSpace M] [ChartedSpace E3 M]

-- SOURCE_START: lines 160084..180201 from answer (1).lean
theorem int_class_normalise {X : Type*} [TopologicalSpace X] {N : ℕ} (H : Fin N → Set X)
    (Kv Z : Set X) (hH : ∀ k, IsOpen (H k)) (hKv : IsClosed Kv) (hcov : Kv ⊆ ⋃ k, H k)
    (hZ : ∀ U : Set X, IsOpen U → U.Nonempty → ¬ U ⊆ Z)
    (Ns : ℕ → X → ℤ) (hNs : ∀ i, ∀ x, x ∉ Kv → Ns i x = 0) (m : Fin N → ℕ → ℤ)
    (htame : ∀ k, (∃ c : ℤ, ∀ᶠ i in Filter.atTop, m k i = c) ∨
      Filter.Tendsto (fun i => |m k i|) Filter.atTop Filter.atTop)
    (hloc : ∀ k, ∀ x ∈ H k, x ∉ Z → ∃ j : ℤ, ∀ᶠ i in Filter.atTop, Ns i x - m k i = j) :
    ∃ (R : Finset (Fin N)) (P : Fin N → Set X),
      (∀ k ∈ R, IsOpen (P k) ∧ IsClosed (P k) ∧ P k ⊆ Kv ∧
        Filter.Tendsto (fun i => |m k i|) Filter.atTop Filter.atTop ∧
        ∀ x ∈ P k, x ∉ Z → ∃ j : ℤ, ∀ᶠ i in Filter.atTop, Ns i x - m k i = j) ∧
      (∀ k ∈ R, ∀ l ∈ R, k ≠ l → Disjoint (P k) (P l)) ∧
      ∀ x, x ∉ Z → ∃ j : ℤ, ∀ᶠ i in Filter.atTop,
        Ns i x - ∑ k ∈ R, (P k).indicator (fun _ => m k i) x = j :=
by
  classical
  obtain ⟨rel, hrel⟩ : ∃ rel : Fin N → Fin N → Prop, ∀ k l, rel k l ↔
      ∃ c : ℤ, ∀ᶠ i in Filter.atTop, m k i - m l i = c := ⟨_, fun _ _ => Iff.rfl⟩
  obtain ⟨bdd, hbdd⟩ : ∃ bdd : Fin N → Prop, ∀ k, bdd k ↔
      ∃ c : ℤ, ∀ᶠ i in Filter.atTop, m k i = c := ⟨_, fun _ => Iff.rfl⟩
  have rrefl : ∀ k, rel k k := fun k =>
    (hrel k k).2 ⟨0, Filter.Eventually.of_forall fun i => sub_self _⟩
  have rsymm : ∀ k l, rel k l → rel l k := by
    intro k l h
    obtain ⟨c, hc⟩ := (hrel k l).1 h
    exact (hrel l k).2 ⟨-c, hc.mono fun i hi => by omega⟩
  have rtrans : ∀ k l n, rel k l → rel l n → rel k n := by
    intro k l n h1 h2
    obtain ⟨c1, hc1⟩ := (hrel k l).1 h1
    obtain ⟨c2, hc2⟩ := (hrel l n).1 h2
    exact (hrel k n).2 ⟨c1 + c2, (hc1.and hc2).mono fun i hi => by omega⟩
  have rbdd : ∀ k l, rel k l → bdd l → bdd k := by
    intro k l h1 h2
    obtain ⟨c1, hc1⟩ := (hrel k l).1 h1
    obtain ⟨c2, hc2⟩ := (hbdd l).1 h2
    exact (hbdd k).2 ⟨c1 + c2, (hc1.and hc2).mono fun i hi => by omega⟩
  have roverlap : ∀ k l x, x ∈ H k → x ∈ H l → rel k l := by
    intro k l x hk hl
    obtain ⟨z, ⟨hzk, hzl⟩, hzZ⟩ :=
      Set.not_subset.1 (hZ _ ((hH k).inter (hH l)) ⟨x, hk, hl⟩)
    obtain ⟨j1, hj1⟩ := hloc k z hzk hzZ
    obtain ⟨j2, hj2⟩ := hloc l z hzl hzZ
    exact (hrel k l).2 ⟨j2 - j1, (hj1.and hj2).mono fun i hi => by omega⟩
  have anchor : ∀ k, ¬ bdd k → H k ⊆ Kv := by
    intro k hk
    by_contra hsub
    obtain ⟨w, hwk, hwK⟩ := Set.not_subset.1 hsub
    obtain ⟨z, ⟨hzk, hzK⟩, hzZ⟩ :=
      Set.not_subset.1 (hZ _ ((hH k).sdiff hKv) ⟨w, hwk, hwK⟩)
    obtain ⟨j, hj⟩ := hloc k z hzk hzZ
    exact hk ((hbdd k).2 ⟨-j, hj.mono fun i hi => by rw [hNs i z hzK] at hi; omega⟩)
  have hdiv : ∀ k, ¬ bdd k → Filter.Tendsto (fun i => |m k i|) Filter.atTop Filter.atTop := by
    intro k hk
    rcases htame k with h | h
    · exact absurd ((hbdd k).2 h) hk
    · exact h
  obtain ⟨P, memP⟩ : ∃ P : Fin N → Set X, ∀ k x, x ∈ P k ↔ ∃ l, rel l k ∧ x ∈ H l :=
    ⟨fun k => {x | ∃ l, rel l k ∧ x ∈ H l}, fun _ _ => Iff.rfl⟩
  have Popen : ∀ k, IsOpen (P k) := by
    intro k
    rw [isOpen_iff_forall_mem_open]
    intro x hx
    obtain ⟨l, hl, hxl⟩ := (memP k x).1 hx
    exact ⟨H l, fun y hy => (memP k y).2 ⟨l, hl, hy⟩, hH l, hxl⟩
  have PKv : ∀ k, ¬ bdd k → P k ⊆ Kv := by
    intro k hk x hx
    obtain ⟨l, hl, hxl⟩ := (memP k x).1 hx
    exact anchor l (fun hb => hk (rbdd k l (rsymm l k hl) hb)) hxl
  have Pclosed : ∀ k, ¬ bdd k → IsClosed (P k) := by
    intro k hk
    refine isClosed_of_closure_subset fun x hx => ?_
    have hxK : x ∈ Kv := hKv.closure_subset_iff.2 (PKv k hk) hx
    obtain ⟨n, hxn⟩ := Set.mem_iUnion.1 (hcov hxK)
    obtain ⟨y, hyn, hyP⟩ := mem_closure_iff.1 hx (H n) (hH n) hxn
    obtain ⟨l, hl, hyl⟩ := (memP k y).1 hyP
    exact (memP k x).2 ⟨n, rtrans n l k (roverlap n l y hyn hyl) hl, hxn⟩
  have Ploc : ∀ k, ∀ x ∈ P k, x ∉ Z → ∃ j : ℤ, ∀ᶠ i in Filter.atTop, Ns i x - m k i = j := by
    intro k x hx hxZ
    obtain ⟨l, hl, hxl⟩ := (memP k x).1 hx
    obtain ⟨c, hc⟩ := (hrel l k).1 hl
    obtain ⟨j, hj⟩ := hloc l x hxl hxZ
    exact ⟨j + c, (hc.and hj).mono fun i hi => by omega⟩
  obtain ⟨R, memR⟩ : ∃ R : Finset (Fin N), ∀ k, k ∈ R ↔ ¬ bdd k ∧ ∀ l, rel l k → k ≤ l :=
    ⟨Finset.univ.filter (fun k => ¬ bdd k ∧ ∀ l, rel l k → k ≤ l), fun k => by simp⟩
  have Pdisj : ∀ k ∈ R, ∀ l ∈ R, k ≠ l → Disjoint (P k) (P l) := by
    intro k hk l hl hkl
    rw [Set.disjoint_left]
    intro x hxk hxl
    obtain ⟨a, ha, hxa⟩ := (memP k x).1 hxk
    obtain ⟨b, hb, hxb⟩ := (memP l x).1 hxl
    have hab := roverlap a b x hxa hxb
    have hlk : rel l k := rtrans l a k (rtrans l b a (rsymm b l hb) (rsymm a b hab)) ha
    have h1 := ((memR k).1 hk).2 l hlk
    have h2 := ((memR l).1 hl).2 k (rsymm l k hlk)
    exact hkl (le_antisymm h1 h2)
  refine ⟨R, P, fun k hk => ?_, Pdisj, ?_⟩
  · have hb := ((memR k).1 hk).1
    exact ⟨Popen k, Pclosed k hb, PKv k hb, hdiv k hb, Ploc k⟩
  · intro x hxZ
    by_cases hxK : x ∈ Kv
    · obtain ⟨l, hxl⟩ := Set.mem_iUnion.1 (hcov hxK)
      obtain ⟨j₀, hj₀⟩ := hloc l x hxl hxZ
      by_cases hbl : bdd l
      · obtain ⟨c, hc⟩ := (hbdd l).1 hbl
        have hsum : ∀ i, ∑ k ∈ R, (P k).indicator (fun _ => m k i) x = 0 := by
          intro i
          refine Finset.sum_eq_zero fun k hk => Set.indicator_of_notMem (fun hxP => ?_) _
          obtain ⟨a, ha, hxa⟩ := (memP k x).1 hxP
          exact ((memR k).1 hk).1
            (rbdd k l (rtrans k a l (rsymm a k ha) (roverlap a l x hxa hxl)) hbl)
        exact ⟨j₀ + c, (hj₀.and hc).mono fun i hi => by rw [hsum i]; omega⟩
      · obtain ⟨T, memT⟩ : ∃ T : Finset (Fin N), ∀ l', l' ∈ T ↔ rel l' l :=
          ⟨Finset.univ.filter (fun l' => rel l' l), fun l' => by simp⟩
        have hT : T.Nonempty := ⟨l, (memT l).2 (rrefl l)⟩
        have hkmem := Finset.min'_mem T hT
        have hkle : ∀ y ∈ T, T.min' hT ≤ y := fun y hy => Finset.min'_le T y hy
        generalize T.min' hT = k at hkmem hkle
        have hkT : rel k l := (memT k).1 hkmem
        have hkR : k ∈ R := by
          rw [memR]
          refine ⟨fun hbk => hbl (rbdd l k (rsymm k l hkT) hbk), fun l' hl' => ?_⟩
          exact hkle l' ((memT l').2 (rtrans l' k l hl' hkT))
        have hxk : x ∈ P k := (memP k x).2 ⟨l, rsymm k l hkT, hxl⟩
        have hsum : ∀ i, ∑ k' ∈ R, (P k').indicator (fun _ => m k' i) x = m k i := by
          intro i
          rw [Finset.sum_eq_single k]
          · exact Set.indicator_of_mem hxk _
          · intro k' hk' hne
            exact Set.indicator_of_notMem
              (fun hx' => Set.disjoint_left.1 (Pdisj k' hk' k hkR hne) hx' hxk) _
          · intro h
            exact absurd hkR h
        obtain ⟨c, hc⟩ := (hrel k l).1 hkT
        exact ⟨j₀ - c, (hj₀.and hc).mono fun i hi => by rw [hsum i]; omega⟩
    · have hsum : ∀ i, ∑ k ∈ R, (P k).indicator (fun _ => m k i) x = 0 := by
        intro i
        exact Finset.sum_eq_zero fun k hk => Set.indicator_of_notMem
          (fun hxP => hxK (PKv k ((memR k).1 hk).1 hxP)) _
      exact ⟨0, Filter.Eventually.of_forall fun i => by rw [hsum i, hNs i x hxK]; simp⟩

theorem dual_shift_dichotomy [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : M → ℂ) (Ω Kc P : Set M) (hΩ : IsOpen Ω) (hP : IsOpen P)
    (hPcl : ∀ x ∈ Ω, x ∈ closure P → x ∈ P) :
    (∀ (φ : M → ℝ) (c : ℝ),
      dualRiemVar g Ψ (fun x => φ x + c * P.indicator (fun _ => (1 : ℝ)) x) Ω Kc =
        dualRiemVar g Ψ φ Ω Kc) ∨
    ∃ (p : M) (C : Set E3) (A b : ℝ), IsCompact C ∧
      C ⊆ chartAt E3 p '' (Ω ∩ P ∩ (chartAt E3 p).source) ∧ b ≠ 0 ∧
      ∀ (φ : M → ℝ) (c : ℝ), MeasureTheory.IntegrableOn (fun y => φ ((chartAt E3 p).symm y)) C →
        dualRiemVar g Ψ (fun x => φ x + c * P.indicator (fun _ => (1 : ℝ)) x) Ω Kc < ⊤ →
        |c * b| ≤ (dualRiemVar g Ψ (fun x => φ x + c * P.indicator (fun _ => (1 : ℝ)) x)
            Ω Kc).toReal + A * (1 + ∫ y in C, |φ ((chartAt E3 p).symm y)|) :=
by
  classical
  
  have hDmeas : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3),
      Measurable (sepDensDiv G X) := by
    intro G X
    unfold sepDensDiv partialDeriv
    exact Finset.measurable_sum _ (fun i _ => measurable_fderiv_apply_const ℝ _ _)
  have hDloc : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X Y : E3 → E3) (y : E3),
      X =ᶠ[𝓝 y] Y → sepDensDiv G X y = sepDensDiv G Y y := by
    intro G X Y y h
    unfold sepDensDiv partialDeriv
    refine Finset.sum_congr rfl (fun i _ => ?_)
    have h' : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y]
        (fun z => Real.sqrt (G z).det * Y z i) := h.mono fun z hz => by simp only [hz]
    rw [h'.fderiv_eq]
  have hD0 : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (y : E3),
      X =ᶠ[𝓝 y] 0 → sepDensDiv G X y = 0 := by
    intro G X y h
    rw [hDloc G X 0 y h]
    unfold sepDensDiv partialDeriv
    simp
  have hDneg : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (y : E3),
      sepDensDiv G (fun z => -X z) y = -sepDensDiv G X y := by
    intro G X y
    unfold sepDensDiv partialDeriv
    rw [← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    have e : (fun z => Real.sqrt (G z).det * (-X z) i) =
        -(fun z => Real.sqrt (G z).det * X z i) := by
      funext z
      simp
    rw [e, fderiv_neg, ContinuousLinearMap.neg_apply]
  
  have L2 : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ)
      (v w : E3 → ℝ) (U Kc O : Set E3) (c : ℝ), IsOpen U → MeasurableSet O →
      (∀ y ∈ U, w y = O.indicator (fun _ => (1 : ℝ)) y) →
      (∀ X : E3 → E3, ((∀ y, y ∉ Kc → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
          tsupport X ⊆ U ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) →
        Integrable (fun y => Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) →
        ∫ y, O.indicator (fun _ => (1 : ℝ)) y * sepDensDiv G X y = 0) →
      dualVarG G om (fun y => v y + c * w y) U Kc = dualVarG G om v U Kc := by
    intro G om v w U Kc O c hU hO hw hfree
    have hιm : Measurable (O.indicator (fun _ => (1 : ℝ))) := measurable_const.indicator hO
    have hιb : ∀ y, ‖O.indicator (fun _ => (1 : ℝ)) y‖ ≤ 1 := by
      intro y
      by_cases hy : y ∈ O <;> simp [hy]
    
    have hli : LocallyIntegrableOn (fun y => v y + c * w y) U ↔ LocallyIntegrableOn v U := by
      rw [locallyIntegrableOn_iff hU.isLocallyClosed, locallyIntegrableOn_iff hU.isLocallyClosed]
      have hcι : ∀ k ⊆ U, IsCompact k →
          IntegrableOn (fun y => c * O.indicator (fun _ => (1 : ℝ)) y) k := by
        intro k _ hk
        refine Measure.integrableOn_of_bounded (M := |c|) hk.measure_lt_top.ne
          ((measurable_const.mul hιm).aestronglyMeasurable) ?_
        refine Filter.Eventually.of_forall (fun y => ?_)
        rw [norm_mul, Real.norm_eq_abs]
        calc |c| * ‖O.indicator (fun _ => (1 : ℝ)) y‖ ≤ |c| * 1 :=
              mul_le_mul_of_nonneg_left (hιb y) (abs_nonneg c)
          _ = |c| := mul_one _
      constructor
      · intro h k hkU hk
        refine IntegrableOn.congr_fun ((h k hkU hk).sub (hcι k hkU hk)) (fun y hy => ?_)
          hk.measurableSet
        simp only [Pi.sub_apply, hw y (hkU hy)]
        ring
      · intro h k hkU hk
        refine IntegrableOn.congr_fun ((h k hkU hk).add (hcι k hkU hk)) (fun y hy => ?_)
          hk.measurableSet
        simp only [Pi.add_apply, hw y (hkU hy)]
    
    have hfield : LocallyIntegrableOn v U → ∀ X : E3 → E3,
        ((∀ y, y ∉ Kc → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
          tsupport X ⊆ U ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) →
        ∫ y, ((v y + c * w y) * sepDensDiv G X y +
            Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) =
          ∫ y, (v y * sepDensDiv G X y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) := by
      intro hv X hX
      obtain ⟨C, hC⟩ := hX.2.2.2.2
      have hT : IsCompact (tsupport X) := hX.2.1
      have hTU : tsupport X ⊆ U := hX.2.2.1
      have hDz : ∀ y, y ∉ tsupport X → sepDensDiv G X y = 0 :=
        fun y hy => hD0 G X y (notMem_tsupport_iff_eventuallyEq.mp hy)
      have hvT : IntegrableOn v (tsupport X) := hv.integrableOn_compact_subset hTU hT
      have hvD : Integrable (fun y => v y * sepDensDiv G X y) := by
        have h1 : IntegrableOn (fun y => sepDensDiv G X y * v y) (tsupport X) :=
          hvT.bdd_mul (hDmeas G X).aestronglyMeasurable
            (Filter.Eventually.of_forall (fun y => by rw [Real.norm_eq_abs]; exact hC y))
        refine (h1.integrable_of_forall_notMem_eq_zero
          (fun y hy => by rw [hDz y hy, zero_mul])).congr ?_
        exact Filter.Eventually.of_forall (fun y => mul_comm _ _)
      have hιD : Integrable (fun y => O.indicator (fun _ => (1 : ℝ)) y * sepDensDiv G X y) := by
        have h1 : IntegrableOn (fun y => O.indicator (fun _ => (1 : ℝ)) y * sepDensDiv G X y)
            (tsupport X) := by
          refine Measure.integrableOn_of_bounded (M := C) hT.measure_lt_top.ne
            ((hιm.mul (hDmeas G X)).aestronglyMeasurable)
            (Filter.Eventually.of_forall (fun y => ?_))
          rw [norm_mul, Real.norm_eq_abs]
          calc ‖O.indicator (fun _ => (1 : ℝ)) y‖ * |sepDensDiv G X y| ≤ 1 * C :=
                mul_le_mul (hιb y) (hC y) (abs_nonneg _) zero_le_one
            _ = C := one_mul C
        exact h1.integrable_of_forall_notMem_eq_zero (fun y hy => by rw [hDz y hy, mul_zero])
      have hpt : ∀ y, (v y + c * w y) * sepDensDiv G X y =
          v y * sepDensDiv G X y + c * (O.indicator (fun _ => (1 : ℝ)) y * sepDensDiv G X y) := by
        intro y
        by_cases hy : y ∈ tsupport X
        · rw [hw y (hTU hy)]; ring
        · rw [hDz y hy]; ring
      by_cases htw : Integrable (fun y => Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)
      · have e1 : (fun y => (v y + c * w y) * sepDensDiv G X y +
              Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) =
            fun y => (v y * sepDensDiv G X y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) +
              c * (O.indicator (fun _ => (1 : ℝ)) y * sepDensDiv G X y) := by
          funext y
          rw [hpt y]
          ring
        have hadd := integral_add (hvD.add htw) (hιD.const_mul c)
        simp only [Pi.add_apply] at hadd
        rw [e1, hadd, integral_const_mul, hfree X hX htw, mul_zero, add_zero]
      · have n1 : ¬ Integrable (fun y => v y * sepDensDiv G X y +
            Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) := by
          intro h
          apply htw
          refine (h.sub hvD).congr (Filter.Eventually.of_forall (fun y => ?_))
          simp only [Pi.sub_apply]
          ring
        have n2 : ¬ Integrable (fun y => (v y + c * w y) * sepDensDiv G X y +
            Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) := by
          intro h
          apply htw
          refine (h.sub (hvD.add (hιD.const_mul c))).congr
            (Filter.Eventually.of_forall (fun y => ?_))
          simp only [Pi.sub_apply, Pi.add_apply]
          rw [hpt y]
          ring
        rw [integral_undef n1, integral_undef n2]
    
    unfold dualVarG
    by_cases hv : LocallyIntegrableOn v U
    · have hv' : LocallyIntegrableOn (fun y => v y + c * w y) U := hli.mpr hv
      rw [iSup_neg (not_not.mpr hv), iSup_neg (not_not.mpr hv')]
      congr 1
      refine iSup_congr (fun X => iSup_congr (fun hX => ?_))
      exact congrArg ENNReal.ofReal (hfield hv X hX)
    · have hv' : ¬ LocallyIntegrableOn (fun y => v y + c * w y) U := fun h => hv (hli.mp h)
      rw [iSup_pos hv, iSup_pos hv', top_sup_eq, top_sup_eq]
  
  by_cases hFr : ∀ (p : M) (W : Set M), IsOpen W → W ⊆ Ω ∩ (chartAt E3 p).source →
      ∀ X : E3 → E3,
        ((∀ y, y ∉ chartAt E3 p '' (Kc ∩ (chartAt E3 p).source) → ContDiffAt ℝ ∞ X y) ∧
          HasCompactSupport X ∧ tsupport X ⊆ chartAt E3 p '' W ∧
          (∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
            g.coeff (chartAt E3 p).symm y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv (g.coeff (chartAt E3 p).symm) X y| ≤ C) →
        Integrable (fun y => Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
          ∑ i : Fin 3, dualOmega Ψ p y i * X y i) →
        ∫ y, (chartAt E3 p '' (P ∩ (chartAt E3 p).source)).indicator (fun _ => (1 : ℝ)) y *
          sepDensDiv (g.coeff (chartAt E3 p).symm) X y = 0
  · 
    left
    intro φ c
    unfold dualRiemVar
    refine iSup_congr (fun n => iSup_congr (fun p => iSup_congr (fun W =>
      iSup_congr (fun hfam => ?_))))
    refine Finset.sum_congr rfl (fun k _ => ?_)
    have hOo : IsOpen (chartAt E3 (p k) '' (P ∩ (chartAt E3 (p k)).source)) := by
      rw [Set.inter_comm]
      exact (chartAt E3 (p k)).isOpen_image_source_inter hP
    have hw : ∀ y ∈ chartAt E3 (p k) '' W k,
        P.indicator (fun _ => (1 : ℝ)) ((chartAt E3 (p k)).symm y) =
          (chartAt E3 (p k) '' (P ∩ (chartAt E3 (p k)).source)).indicator
            (fun _ => (1 : ℝ)) y := by
      rintro y ⟨x, hxW, rfl⟩
      have hxs : x ∈ (chartAt E3 (p k)).source := ((hfam.1 k).2 hxW).2
      rw [(chartAt E3 (p k)).left_inv hxs]
      by_cases hxP : x ∈ P
      · rw [Set.indicator_of_mem hxP, Set.indicator_of_mem
          (show chartAt E3 (p k) x ∈ chartAt E3 (p k) '' (P ∩ (chartAt E3 (p k)).source) from
            ⟨x, ⟨hxP, hxs⟩, rfl⟩)]
      · rw [Set.indicator_of_notMem hxP, Set.indicator_of_notMem]
        rintro ⟨x', ⟨hx'P, hx's⟩, hx'eq⟩
        apply hxP
        have := (chartAt E3 (p k)).injOn hx's hxs hx'eq
        rw [← this]
        exact hx'P
    exact L2 _ _ (fun y => φ ((chartAt E3 (p k)).symm y))
      (fun y => P.indicator (fun _ => (1 : ℝ)) ((chartAt E3 (p k)).symm y)) _ _ _ c
      ((chartAt E3 (p k)).isOpen_image_of_subset_source (hfam.1 k).1
        ((hfam.1 k).2.trans Set.inter_subset_right))
      hOo.measurableSet hw (hFr (p k) (W k) (hfam.1 k).1 (hfam.1 k).2)
  · 
    right
    simp only [not_forall] at hFr
    obtain ⟨p, W, hWo, hWsub, X, hX, htw, hb⟩ := hFr
    set κ := chartAt E3 p with hκ
    set G := g.coeff κ.symm with hG
    set O := κ '' (P ∩ κ.source) with hOdef
    have hOo : IsOpen O := by
      rw [hOdef, Set.inter_comm]
      exact κ.isOpen_image_source_inter hP
    have hOiff : ∀ y ∈ κ.target, y ∈ O ↔ κ.symm y ∈ P := by
      intro y hy
      constructor
      · rintro ⟨x, ⟨hxP, hxs⟩, rfl⟩
        rwa [κ.left_inv hxs]
      · intro h
        exact ⟨κ.symm y, ⟨h, κ.map_target hy⟩, κ.right_inv hy⟩
    have hTW : tsupport X ⊆ κ '' W := hX.2.2.1
    have hWpt : ∀ y ∈ κ '' W, y ∈ κ.target ∧ κ.symm y ∈ W := by
      rintro y ⟨x, hxW, rfl⟩
      have hxs := (hWsub hxW).2
      exact ⟨κ.map_source hxs, by rw [κ.left_inv hxs]; exact hxW⟩
    
    have hloc0 : ∀ y, y ∉ O → (O.indicator X) =ᶠ[𝓝 y] 0 := by
      intro y hyO
      by_cases hyT : y ∈ tsupport X
      · obtain ⟨hyt, hyW⟩ := hWpt y (hTW hyT)
        have hxΩ : κ.symm y ∈ Ω := (hWsub hyW).1
        have hxP : κ.symm y ∉ P := fun h => hyO ((hOiff y hyt).mpr h)
        have hxcl : κ.symm y ∉ closure P := fun h => hxP (hPcl _ hxΩ h)
        have hN : κ.target ∩ κ.symm ⁻¹' (closure P)ᶜ ∈ 𝓝 y :=
          (κ.isOpen_inter_preimage_symm isClosed_closure.isOpen_compl).mem_nhds ⟨hyt, hxcl⟩
        filter_upwards [hN] with z hz
        have hzO : z ∉ O := fun h => hz.2 (subset_closure ((hOiff z hz.1).mp h))
        rw [Set.indicator_of_notMem hzO, Pi.zero_apply]
      · filter_upwards [notMem_tsupport_iff_eventuallyEq.mp hyT] with z hz
        by_cases hzO : z ∈ O
        · rw [Set.indicator_of_mem hzO, hz]
        · rw [Set.indicator_of_notMem hzO, Pi.zero_apply]
    have hloc1 : ∀ y ∈ O, (O.indicator X) =ᶠ[𝓝 y] X := by
      intro y hy
      filter_upwards [hOo.mem_nhds hy] with z hz
      exact Set.indicator_of_mem hz X
    have hX'O : tsupport (O.indicator X) ⊆ O := by
      intro y hy
      by_contra hyO
      exact (notMem_tsupport_iff_eventuallyEq.mpr (hloc0 y hyO)) hy
    have hX'T : tsupport (O.indicator X) ⊆ tsupport X :=
      closure_mono (by rw [Set.support_indicator]; exact Set.inter_subset_right)
    have hDX' : ∀ y, sepDensDiv G (O.indicator X) y =
        O.indicator (fun _ => (1 : ℝ)) y * sepDensDiv G X y := by
      intro y
      by_cases hyO : y ∈ O
      · rw [hDloc G _ X y (hloc1 y hyO), Set.indicator_of_mem hyO, one_mul]
      · rw [hD0 G _ y (hloc0 y hyO), Set.indicator_of_notMem hyO, zero_mul]
    obtain ⟨C₀, hC₀⟩ := hX.2.2.2.2
    have hDX'b : ∀ y, |sepDensDiv G (O.indicator X) y| ≤ C₀ := by
      intro y
      rw [hDX' y, abs_mul]
      calc |O.indicator (fun _ => (1 : ℝ)) y| * |sepDensDiv G X y| ≤ 1 * C₀ :=
            mul_le_mul (by by_cases hyO : y ∈ O <;> simp [hyO]) (hC₀ y) (abs_nonneg _)
              zero_le_one
        _ = C₀ := one_mul _
    have hX'adm : (∀ y, y ∉ κ '' (Kc ∩ κ.source) → ContDiffAt ℝ ∞ (O.indicator X) y) ∧
        HasCompactSupport (O.indicator X) ∧ tsupport (O.indicator X) ⊆ κ '' W ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * O.indicator X y i * O.indicator X y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G (O.indicator X) y| ≤ C := by
      refine ⟨fun y hy => ?_, ?_, hX'T.trans hTW, fun y => ?_, C₀, hDX'b⟩
      · by_cases hyO : y ∈ O
        · exact (hX.1 y hy).congr_of_eventuallyEq (hloc1 y hyO)
        · exact (contDiffAt_const (c := (0 : E3))).congr_of_eventuallyEq (hloc0 y hyO)
      · exact IsCompact.of_isClosed_subset hX.2.1 (isClosed_tsupport _) hX'T
      · by_cases hyO : y ∈ O
        · rw [Set.indicator_of_mem hyO]
          exact hX.2.2.2.1 y
        · rw [Set.indicator_of_notMem hyO]
          simp
    have htw' : Integrable (fun y => Real.sqrt (G y).det *
        ∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i) := by
      refine (htw.indicator hOo.measurableSet).congr (Filter.Eventually.of_forall (fun y => ?_))
      by_cases hyO : y ∈ O
      · simp [Set.indicator_of_mem hyO]
      · simp [Set.indicator_of_notMem hyO]
    have hb' : (∫ y, sepDensDiv G (O.indicator X) y) ≠ 0 := by
      have e : (fun y => sepDensDiv G (O.indicator X) y) =
          fun y => O.indicator (fun _ => (1 : ℝ)) y * sepDensDiv G X y := funext hDX'
      rw [e]
      exact hb
    have hCsub : tsupport (O.indicator X) ⊆ κ '' (Ω ∩ P ∩ κ.source) := by
      intro y hy
      obtain ⟨hyt, hyW⟩ := hWpt y (hTW (hX'T hy))
      have hyP : κ.symm y ∈ P := (hOiff y hyt).mp (hX'O hy)
      exact ⟨κ.symm y, ⟨⟨(hWsub hyW).1, hyP⟩, κ.map_target hyt⟩, κ.right_inv hyt⟩
    have hCP : ∀ y ∈ tsupport (O.indicator X), κ.symm y ∈ P := by
      intro y hy
      obtain ⟨hyt, _⟩ := hWpt y (hTW (hX'T hy))
      exact (hOiff y hyt).mp (hX'O hy)
    
    have hTc : IsCompact (tsupport (O.indicator X)) := hX'adm.2.1
    have hD'm : Measurable (sepDensDiv G (O.indicator X)) := hDmeas G _
    have hD'z : ∀ y, y ∉ tsupport (O.indicator X) → sepDensDiv G (O.indicator X) y = 0 :=
      fun y hy => hD0 G _ y (notMem_tsupport_iff_eventuallyEq.mp hy)
    have hD'int : Integrable (sepDensDiv G (O.indicator X)) := by
      have h1 : IntegrableOn (sepDensDiv G (O.indicator X)) (tsupport (O.indicator X)) :=
        Measure.integrableOn_of_bounded (M := C₀) hTc.measure_lt_top.ne hD'm.aestronglyMeasurable
          (Filter.Eventually.of_forall (fun y => by rw [Real.norm_eq_abs]; exact hDX'b y))
      exact h1.integrable_of_forall_notMem_eq_zero hD'z
    have hnegadm : (∀ y, y ∉ κ '' (Kc ∩ κ.source) →
          ContDiffAt ℝ ∞ (fun z => -(O.indicator X z)) y) ∧
        HasCompactSupport (fun z => -(O.indicator X z)) ∧
        tsupport (fun z => -(O.indicator X z)) ⊆ κ '' W ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
          G y i j * (-(O.indicator X y)) i * (-(O.indicator X y)) j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G (fun z => -(O.indicator X z)) y| ≤ C := by
      refine ⟨fun y hy => (hX'adm.1 y hy).neg, hX'adm.2.1.neg, ?_, fun y => ?_, C₀, fun y => ?_⟩
      · exact (tsupport_neg (O.indicator X)).subset.trans hX'adm.2.2.1
      · simpa using hX'adm.2.2.2.1 y
      · rw [hDneg, abs_neg]
        exact hDX'b y
    refine ⟨p, tsupport (O.indicator X),
      max C₀ 0 + |∫ y, Real.sqrt (G y).det * ∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i|,
      ∫ y, sepDensDiv G (O.indicator X) y, hTc, hCsub, hb', fun φ c hint hfin => ?_⟩
    have hfam : (∀ k : Fin 1, IsOpen ((fun _ : Fin 1 => W) k) ∧
        (fun _ : Fin 1 => W) k ⊆ Ω ∩ (chartAt E3 ((fun _ : Fin 1 => p) k)).source) ∧
        Pairwise (fun k l : Fin 1 => Disjoint ((fun _ : Fin 1 => W) k) ((fun _ : Fin 1 => W) l)) := by
      refine ⟨fun k => ⟨hWo, hWsub⟩, ?_⟩
      intro k l hkl
      exact absurd (Subsingleton.elim k l) hkl
    have hle : dualVarG G (dualOmega Ψ p)
        (fun y => φ (κ.symm y) + c * P.indicator (fun _ => (1 : ℝ)) (κ.symm y)) (κ '' W)
        (κ '' (Kc ∩ κ.source)) ≤
        dualRiemVar g Ψ (fun x => φ x + c * P.indicator (fun _ => (1 : ℝ)) x) Ω Kc := by
      unfold dualRiemVar
      refine le_trans ?_ (le_iSup_of_le 1 (le_iSup_of_le (fun _ => p)
        (le_iSup_of_le (fun _ => W) (le_iSup_of_le hfam le_rfl))))
      rw [Fin.sum_univ_one]
    have hEne := hfin.ne
    have hS1 : ENNReal.ofReal (∫ y, ((φ (κ.symm y) + c * P.indicator (fun _ => (1 : ℝ)) (κ.symm y)) *
        sepDensDiv G (O.indicator X) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i)) ≤
        dualRiemVar g Ψ (fun x => φ x + c * P.indicator (fun _ => (1 : ℝ)) x) Ω Kc := by
      refine le_trans ?_ hle
      unfold dualVarG
      exact le_sup_of_le_right (le_iSup₂_of_le (O.indicator X) hX'adm le_rfl)
    have hS2 : ENNReal.ofReal (∫ y, ((φ (κ.symm y) + c * P.indicator (fun _ => (1 : ℝ)) (κ.symm y)) *
        sepDensDiv G (fun z => -(O.indicator X z)) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, dualOmega Ψ p y i * (-(O.indicator X y)) i)) ≤
        dualRiemVar g Ψ (fun x => φ x + c * P.indicator (fun _ => (1 : ℝ)) x) Ω Kc := by
      refine le_trans ?_ hle
      unfold dualVarG
      exact le_sup_of_le_right (le_iSup₂_of_le (fun z => -(O.indicator X z)) hnegadm le_rfl)
    have hneg_int : (∫ y, ((φ (κ.symm y) + c * P.indicator (fun _ => (1 : ℝ)) (κ.symm y)) *
        sepDensDiv G (fun z => -(O.indicator X z)) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, dualOmega Ψ p y i * (-(O.indicator X y)) i)) =
        -(∫ y, ((φ (κ.symm y) + c * P.indicator (fun _ => (1 : ℝ)) (κ.symm y)) *
        sepDensDiv G (O.indicator X) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i)) := by
      rw [← integral_neg]
      congr 1
      funext y
      rw [hDneg]
      have e : ∑ i : Fin 3, dualOmega Ψ p y i * (-(O.indicator X y)) i =
          -∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i := by
        rw [← Finset.sum_neg_distrib]
        refine Finset.sum_congr rfl (fun i _ => ?_)
        simp
      rw [e]
      ring
    have h1 := (ENNReal.ofReal_le_iff_le_toReal hEne).mp hS1
    have h2 := (ENNReal.ofReal_le_iff_le_toReal hEne).mp hS2
    rw [hneg_int] at h2
    
    have huD : Integrable (fun y => φ (κ.symm y) * sepDensDiv G (O.indicator X) y) := by
      have h1 : IntegrableOn (fun y => sepDensDiv G (O.indicator X) y * φ (κ.symm y))
          (tsupport (O.indicator X)) :=
        hint.bdd_mul hD'm.aestronglyMeasurable
          (Filter.Eventually.of_forall (fun y => by rw [Real.norm_eq_abs]; exact hDX'b y))
      refine (h1.integrable_of_forall_notMem_eq_zero
        (fun y hy => by rw [hD'z y hy, zero_mul])).congr ?_
      exact Filter.Eventually.of_forall (fun y => mul_comm _ _)
    have hpt : ∀ y, (φ (κ.symm y) + c * P.indicator (fun _ => (1 : ℝ)) (κ.symm y)) *
        sepDensDiv G (O.indicator X) y =
        φ (κ.symm y) * sepDensDiv G (O.indicator X) y + c * sepDensDiv G (O.indicator X) y := by
      intro y
      by_cases hy : y ∈ tsupport (O.indicator X)
      · rw [Set.indicator_of_mem (hCP y hy)]
        ring
      · rw [hD'z y hy]
        ring
    have hSeq : (∫ y, ((φ (κ.symm y) + c * P.indicator (fun _ => (1 : ℝ)) (κ.symm y)) *
        sepDensDiv G (O.indicator X) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i)) =
        (∫ y, φ (κ.symm y) * sepDensDiv G (O.indicator X) y) +
          c * (∫ y, sepDensDiv G (O.indicator X) y) +
          ∫ y, Real.sqrt (G y).det * ∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i := by
      have e : (fun y => (φ (κ.symm y) + c * P.indicator (fun _ => (1 : ℝ)) (κ.symm y)) *
          sepDensDiv G (O.indicator X) y +
          Real.sqrt (G y).det * ∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i) =
          fun y => (φ (κ.symm y) * sepDensDiv G (O.indicator X) y +
            c * sepDensDiv G (O.indicator X) y) +
            Real.sqrt (G y).det * ∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i := by
        funext y
        rw [hpt y]
      have hadd1 := integral_add (huD.add (hD'int.const_mul c)) htw'
      have hadd2 := integral_add huD (hD'int.const_mul c)
      simp only [Pi.add_apply] at hadd1 hadd2
      rw [e, hadd1, hadd2, integral_const_mul]
    have hI0 : 0 ≤ ∫ y in tsupport (O.indicator X), |φ (κ.symm y)| :=
      integral_nonneg (fun _ => abs_nonneg _)
    have hbound : |∫ y, φ (κ.symm y) * sepDensDiv G (O.indicator X) y| ≤
        max C₀ 0 * ∫ y in tsupport (O.indicator X), |φ (κ.symm y)| := by
      rw [← setIntegral_eq_integral_of_forall_compl_eq_zero (s := tsupport (O.indicator X))
        (fun y hy => by rw [hD'z y hy, mul_zero])]
      rw [← integral_const_mul, ← Real.norm_eq_abs]
      refine norm_integral_le_of_norm_le (hint.abs.const_mul _)
        (Filter.Eventually.of_forall (fun y => ?_))
      rw [norm_mul, Real.norm_eq_abs, Real.norm_eq_abs]
      exact (mul_comm _ _).le.trans (mul_le_mul_of_nonneg_right
        ((hDX'b y).trans (le_max_left _ _)) (abs_nonneg _))
    rw [hSeq] at h1 h2
    have hK0 : 0 ≤ max C₀ 0 := le_max_right _ _
    have hτ := abs_nonneg (∫ y, Real.sqrt (G y).det *
      ∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i)
    have hτI := mul_nonneg hτ hI0
    obtain ⟨hb1, hb2⟩ := abs_le.mp hbound
    have hτ1 := neg_abs_le (∫ y, Real.sqrt (G y).det *
      ∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i)
    have hτ2 := le_abs_self (∫ y, Real.sqrt (G y).det *
      ∑ i : Fin 3, dualOmega Ψ p y i * O.indicator X y i)
    rw [abs_le]
    constructor <;> linarith

theorem dual_chart_L1_eventually_bdd [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M)
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (Ω Kc : Set M) (hΩ : IsOpen Ω) (φ₀ : M → ℝ)
    (hfin₀ : dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc < ⊤)
    (Ns : ℕ → M → ℤ) (hNs : ∀ i (j : ℤ), sepChartMeas {x | Ns i x = j})
    (B : ENNReal) (hB : B < ⊤)
    (hbd : ∀ i, dualRiemVar g (fun x => (Ψ x : ℂ))
      (fun x => φ₀ x + 2 * Real.pi * (Ns i x : ℝ)) Ω Kc ≤ B)
    (c : ℕ → ℤ) (p : M) (O : Set E3) (hO : IsOpen O)
    (hOsub : O ⊆ chartAt E3 p '' (Ω ∩ (chartAt E3 p).source))
    (hae : ∀ᵐ y ∂(MeasureTheory.volume.restrict O), ∃ j : ℤ,
      ∀ᶠ i in Filter.atTop, Ns i ((chartAt E3 p).symm y) - c i = j)
    (C : Set E3) (hC : IsCompact C) (hCO : C ⊆ O) :
    ∃ K : ℝ, ∀ᶠ i in Filter.atTop,
      ∫⁻ y in C, ENNReal.ofReal |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)| ≤ ENNReal.ofReal K :=
by
  classical
  
  have hL5 : ∀ (S : Set E3), MeasurableSet S → volume S < ⊤ →
      ∀ (f : ℕ → E3 → ℝ), (∀ i, Measurable (f i)) → ∀ (a : ℕ → ℝ) (D : ℝ),
      (∀ i, ∫⁻ x in S, ENNReal.ofReal |f i x - a i| ≤ ENNReal.ofReal D) →
      (∀ᵐ x ∂(volume.restrict S), ∃ c : ℝ, ∀ᶠ i in Filter.atTop, f i x = c) →
      ∃ K : ℝ, ∀ᶠ i in Filter.atTop, ∫⁻ x in S, ENNReal.ofReal |f i x| ≤ ENNReal.ofReal K := by
    intro S hS hSf f hf a D hL1 hae'
    by_cases h0 : volume S = 0
    · refine ⟨0, Filter.Eventually.of_forall fun i => ?_⟩
      rw [Measure.restrict_eq_zero.mpr h0, lintegral_zero_measure]
      exact zero_le _
    set A : ℕ → Set E3 := fun n =>
      S ∩ (⋂ i, ⋂ (_ : n ≤ i), {x | f i x = f n x}) ∩ {x | |f n x| ≤ (n : ℝ)} with hAdef
    have hAm : ∀ n, MeasurableSet (A n) := by
      intro n
      exact (hS.inter (MeasurableSet.iInter fun i => MeasurableSet.iInter fun _ =>
        measurableSet_eq_fun (hf i) (hf n))).inter (measurableSet_le (hf n).abs measurable_const)
    have hAS : ∀ n, A n ⊆ S := fun n x hx => hx.1.1
    have hcov : volume (S \ ⋃ n, A n) = 0 := by
      rw [ae_restrict_iff' hS, ae_iff] at hae'
      refine measure_mono_null ?_ hae'
      intro x hx
      obtain ⟨hxS, hxA⟩ := hx
      show ¬ _
      intro h
      obtain ⟨c, hc⟩ := h hxS
      obtain ⟨I, hI⟩ := Filter.eventually_atTop.mp hc
      apply hxA
      refine Set.mem_iUnion.mpr ⟨max I ⌈|c|⌉₊, ⟨hxS, ?_⟩, ?_⟩
      · refine Set.mem_iInter.mpr fun i => Set.mem_iInter.mpr fun hi => ?_
        show f i x = f (max I ⌈|c|⌉₊) x
        rw [hI i (le_trans (le_max_left _ _) hi), hI _ (le_max_left _ _)]
      · show |f (max I ⌈|c|⌉₊) x| ≤ ((max I ⌈|c|⌉₊ : ℕ) : ℝ)
        rw [hI _ (le_max_left _ _)]
        exact (Nat.le_ceil _).trans (by exact_mod_cast le_max_right _ _)
    obtain ⟨n, hn⟩ : ∃ n, volume (A n) ≠ 0 := by
      by_contra hcon
      push_neg at hcon
      apply h0
      have h1 : volume (⋃ n, A n) = 0 := measure_iUnion_null hcon
      refine measure_mono_null (fun x hx => ?_) (measure_union_null h1 hcov)
      by_cases hx' : x ∈ ⋃ n, A n
      · exact Or.inl hx'
      · exact Or.inr ⟨hx, hx'⟩
    have hαtop : volume (A n) ≠ ⊤ := ne_top_of_le_ne_top hSf.ne (measure_mono (hAS n))
    have hαpos : 0 < (volume (A n)).toReal := ENNReal.toReal_pos hn hαtop
    have hab : ∃ Mb : ℝ, 0 ≤ Mb ∧ ∀ i, n ≤ i → |a i| ≤ Mb := by
      refine ⟨max D 0 / (volume (A n)).toReal + n,
        add_nonneg (div_nonneg (le_max_right _ _) hαpos.le) (Nat.cast_nonneg _), fun i hi => ?_⟩
      have hpt : ∀ x ∈ A n, ENNReal.ofReal |a i| ≤
          ENNReal.ofReal |f i x - a i| + ENNReal.ofReal (n : ℝ) := by
        intro x hx
        have hfx : f i x = f n x := Set.mem_iInter₂.mp hx.1.2 i hi
        have hb : |f n x| ≤ (n : ℝ) := hx.2
        have h3 : |f i x| ≤ (n : ℝ) := by rw [hfx]; exact hb
        rw [← ENNReal.ofReal_add (abs_nonneg _) (Nat.cast_nonneg _)]
        apply ENNReal.ofReal_le_ofReal
        have h2 := abs_sub_abs_le_abs_sub (a i) (f i x)
        rw [abs_sub_comm (a i)] at h2
        linarith
      have hmeas : Measurable (fun x => ENNReal.ofReal |f i x - a i|) :=
        ((hf i).sub_const _).abs.ennreal_ofReal
      have hchain : ENNReal.ofReal |a i| * volume (A n) ≤
          ENNReal.ofReal D + ENNReal.ofReal (n : ℝ) * volume (A n) := by
        calc ENNReal.ofReal |a i| * volume (A n)
            = ∫⁻ x in A n, ENNReal.ofReal |a i| := (setLIntegral_const _ _).symm
          _ ≤ ∫⁻ x in A n, (ENNReal.ofReal |f i x - a i| + ENNReal.ofReal (n : ℝ)) :=
              setLIntegral_mono' (hAm n) hpt
          _ = (∫⁻ x in A n, ENNReal.ofReal |f i x - a i|) + ENNReal.ofReal (n : ℝ) * volume (A n) := by
              rw [lintegral_add_left hmeas, setLIntegral_const]
          _ ≤ (∫⁻ x in S, ENNReal.ofReal |f i x - a i|) + ENNReal.ofReal (n : ℝ) * volume (A n) :=
              add_le_add (lintegral_mono_set (hAS n)) le_rfl
          _ ≤ ENNReal.ofReal D + ENNReal.ofReal (n : ℝ) * volume (A n) :=
              add_le_add (hL1 i) le_rfl
      have hfin : ENNReal.ofReal (n : ℝ) * volume (A n) ≠ ⊤ :=
        ENNReal.mul_ne_top ENNReal.ofReal_ne_top hαtop
      have h2 := ENNReal.toReal_mono (ENNReal.add_ne_top.mpr ⟨ENNReal.ofReal_ne_top, hfin⟩) hchain
      rw [ENNReal.toReal_add ENNReal.ofReal_ne_top hfin, ENNReal.toReal_mul, ENNReal.toReal_mul,
        ENNReal.toReal_ofReal (abs_nonneg _), ENNReal.toReal_ofReal', ENNReal.toReal_ofReal (Nat.cast_nonneg _)] at h2
      rw [div_add' _ _ _ hαpos.ne', le_div_iff₀ hαpos]
      linarith
    obtain ⟨Mb, hM0, hMb⟩ := hab
    refine ⟨max D 0 + Mb * (volume S).toReal, Filter.eventually_atTop.mpr ⟨n, fun i hi => ?_⟩⟩
    have hmeas : Measurable (fun x => ENNReal.ofReal |f i x - a i|) :=
      ((hf i).sub_const _).abs.ennreal_ofReal
    calc ∫⁻ x in S, ENNReal.ofReal |f i x|
        ≤ ∫⁻ x in S, (ENNReal.ofReal |f i x - a i| + ENNReal.ofReal |a i|) := by
          apply lintegral_mono
          intro x
          show ENNReal.ofReal |f i x| ≤ ENNReal.ofReal |f i x - a i| + ENNReal.ofReal |a i|
          rw [← ENNReal.ofReal_add (abs_nonneg _) (abs_nonneg _)]
          apply ENNReal.ofReal_le_ofReal
          have := abs_sub_abs_le_abs_sub (f i x) (a i)
          linarith
      _ = (∫⁻ x in S, ENNReal.ofReal |f i x - a i|) + ENNReal.ofReal |a i| * volume S := by
          rw [lintegral_add_left hmeas, setLIntegral_const]
      _ ≤ ENNReal.ofReal D + ENNReal.ofReal Mb * volume S :=
          add_le_add (hL1 i) (mul_le_mul_right' (ENNReal.ofReal_le_ofReal (hMb i hi)) _)
      _ ≤ ENNReal.ofReal (max D 0) + ENNReal.ofReal (Mb * (volume S).toReal) := by
          rw [ENNReal.ofReal_mul hM0, ENNReal.ofReal_toReal hSf.ne]
          exact add_le_add (ENNReal.ofReal_le_ofReal (le_max_left _ _)) le_rfl
      _ = ENNReal.ofReal (max D 0 + Mb * (volume S).toReal) := by
          rw [ENNReal.ofReal_add (le_max_right _ _) (mul_nonneg hM0 ENNReal.toReal_nonneg)]
  
  have hOt : O ⊆ (chartAt E3 p).target := by
    intro y hy
    obtain ⟨x, hx, rfl⟩ := hOsub hy
    exact (chartAt E3 p).map_source hx.2
  have hε : ∀ z ∈ O, ∃ ε > 0, Metric.ball z ε ⊆ O := Metric.isOpen_iff.mp hO
  choose! ε hεpos hεO using hε
  have hball : ∀ z ∈ O, ∃ Kz : ℝ, ∀ᶠ i in Filter.atTop,
      ∫⁻ y in Metric.ball z (ε z / 2 / 6),
        ENNReal.ofReal |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)| ≤ ENNReal.ofReal Kz := by
    intro z hz
    have hεz := hεpos z hz
    have hR : 0 < ε z / 2 := by linarith
    have hcb : Metric.closedBall z (ε z / 2) ⊆ chartAt E3 p '' (Ω ∩ (chartAt E3 p).source) :=
      ((Metric.closedBall_subset_ball (by linarith)).trans (hεO z hz)).trans hOsub
    have hSO : Metric.ball z (ε z / 2 / 6) ⊆ O :=
      (Metric.ball_subset_ball (by linarith)).trans (hεO z hz)
    obtain ⟨Λ, _, hL8⟩ := dual_ball_offset g Ψ hΨs Ω Kc hΩ φ₀ hfin₀ B hB p z (ε z / 2) hR hcb
    have h1 := fun i => hL8 (Ns i) (hNs i) (hbd i)
    choose hmeas _ a ha using h1
    obtain ⟨Kz, hKz⟩ := hL5 (Metric.ball z (ε z / 2 / 6)) Metric.isOpen_ball.measurableSet
      measure_ball_lt_top
      (fun i y => (((chartAt E3 p).target.indicator
        (fun y => Ns i ((chartAt E3 p).symm y)) y : ℤ) : ℝ) - (c i : ℝ))
      (fun i => (hmeas i).sub_const _) (fun i => (a i : ℝ) - (c i : ℝ)) (Λ * (ε z / 2))
      (fun i => by
        simp only [sub_sub_sub_cancel_right]
        exact ha i)
      (by
        have h2 := ae_restrict_of_ae_restrict_of_subset hSO hae
        filter_upwards [h2, ae_restrict_mem Metric.isOpen_ball.measurableSet] with y hy hyS
        obtain ⟨j, hj⟩ := hy
        refine ⟨(j : ℝ), hj.mono fun i hi => ?_⟩
        simp only [Set.indicator_of_mem (hOt (hSO hyS))]
        exact_mod_cast hi)
    refine ⟨Kz, hKz.mono fun i hi => ?_⟩
    refine le_trans (le_of_eq ?_) hi
    refine setLIntegral_congr_fun Metric.isOpen_ball.measurableSet (fun y hy => ?_)
    simp only [Set.indicator_of_mem (hOt (hSO hy))]
  obtain ⟨t, htC, hCt⟩ := hC.elim_nhds_subcover (fun z => Metric.ball z (ε z / 2 / 6))
    (fun z hz => Metric.ball_mem_nhds z (by linarith [hεpos z (hCO hz)]))
  have hbt : ∀ z ∈ t, ∃ Kz : ℝ, ∀ᶠ i in Filter.atTop,
      ∫⁻ y in Metric.ball z (ε z / 2 / 6),
        ENNReal.ofReal |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)| ≤ ENNReal.ofReal Kz :=
    fun z hz => hball z (hCO (htC z hz))
  choose! Kf hKf using hbt
  refine ⟨∑ z ∈ t, max (Kf z) 0, ?_⟩
  filter_upwards [(Filter.eventually_all_finset t).mpr hKf] with i hi
  have hunion : ∀ s : Finset E3,
      ∫⁻ y in ⋃ z ∈ s, Metric.ball z (ε z / 2 / 6),
        ENNReal.ofReal |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)| ≤
      ∑ z ∈ s, ∫⁻ y in Metric.ball z (ε z / 2 / 6),
        ENNReal.ofReal |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)| := by
    intro s
    refine Finset.induction_on s ?_ ?_
    · simp
    · intro w s hw ih
      rw [Finset.set_biUnion_insert, Finset.sum_insert hw]
      exact (lintegral_union_le _ _ _).trans (add_le_add le_rfl ih)
  calc ∫⁻ y in C, ENNReal.ofReal |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)|
      ≤ ∫⁻ y in ⋃ z ∈ t, Metric.ball z (ε z / 2 / 6),
          ENNReal.ofReal |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)| :=
        lintegral_mono_set hCt
    _ ≤ ∑ z ∈ t, ∫⁻ y in Metric.ball z (ε z / 2 / 6),
          ENNReal.ofReal |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)| := hunion t
    _ ≤ ∑ z ∈ t, ENNReal.ofReal (max (Kf z) 0) :=
        Finset.sum_le_sum fun z hz => (hi z hz).trans (ENNReal.ofReal_le_ofReal (le_max_left _ _))
    _ = ENNReal.ofReal (∑ z ∈ t, max (Kf z) 0) :=
        (ENNReal.ofReal_sum_of_nonneg fun _ _ => le_max_right _ _).symm

theorem dual_unbounded_piece_free [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (Ω Kc P Z : Set M) (hΩ : IsOpen Ω) (hP : IsOpen P)
    (hPcl : ∀ x ∈ Ω, x ∈ closure P → x ∈ P)
    (φ₀ : M → ℝ) (hfin₀ : dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc < ⊤)
    (Ns : ℕ → M → ℤ) (hNs : ∀ i (j : ℤ), sepChartMeas {x | Ns i x = j})
    (B : ENNReal) (hB : B < ⊤)
    (hbd : ∀ i, dualRiemVar g (fun x => (Ψ x : ℂ))
      (fun x => φ₀ x + 2 * Real.pi * (Ns i x : ℝ)) Ω Kc ≤ B)
    (hZ : sepChartNull Z) (c : ℕ → ℤ)
    (hc : Filter.Tendsto (fun i => |c i|) Filter.atTop Filter.atTop)
    (hloc : ∀ x ∈ P, x ∉ Z → ∃ j : ℤ, ∀ᶠ i in Filter.atTop, Ns i x - c i = j) :
    ∀ (φ : M → ℝ) (t : ℝ),
      dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ x + t * P.indicator (fun _ => (1 : ℝ)) x) Ω Kc =
        dualRiemVar g (fun x => (Ψ x : ℂ)) φ Ω Kc :=
by
  classical
  intro φ t
  
  rcases dual_shift_dichotomy g (fun x => (Ψ x : ℂ)) Ω Kc P hΩ hP hPcl with hfree | hcoer
  · exact hfree φ t
  exfalso
  obtain ⟨p, C, A, b, hCc, hCsub, hb, hco⟩ := hcoer
  
  have hguard : ∀ φ' : M → ℝ, dualRiemVar g (fun x => (Ψ x : ℂ)) φ' Ω Kc < ⊤ →
      LocallyIntegrableOn (fun y => φ' ((chartAt E3 p).symm y))
        (chartAt E3 p '' (Ω ∩ (chartAt E3 p).source)) := by
    intro φ' hfin
    by_contra hni
    have hW : (∀ k : Fin 1, IsOpen ((fun _ : Fin 1 => Ω ∩ (chartAt E3 p).source) k) ∧
        (fun _ : Fin 1 => Ω ∩ (chartAt E3 p).source) k ⊆
          Ω ∩ (chartAt E3 ((fun _ : Fin 1 => p) k)).source) ∧
        Pairwise (fun k l : Fin 1 => Disjoint ((fun _ : Fin 1 => Ω ∩ (chartAt E3 p).source) k)
          ((fun _ : Fin 1 => Ω ∩ (chartAt E3 p).source) l)) := by
      refine ⟨fun k => ⟨hΩ.inter (chartAt E3 p).open_source, subset_rfl⟩, ?_⟩
      intro k l hkl
      exact absurd (Subsingleton.elim k l) hkl
    have h1 : (⊤ : ENNReal) ≤ dualVarG (g.coeff (chartAt E3 p).symm)
        (dualOmega (fun x => (Ψ x : ℂ)) p) (fun y => φ' ((chartAt E3 p).symm y))
        (chartAt E3 p '' (Ω ∩ (chartAt E3 p).source))
        (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)) := by
      unfold dualVarG
      exact le_sup_of_le_left (le_iSup (fun _ : ¬ LocallyIntegrableOn
        (fun y => φ' ((chartAt E3 p).symm y)) (chartAt E3 p '' (Ω ∩ (chartAt E3 p).source)) =>
          (⊤ : ENNReal)) hni)
    have h2 : dualVarG (g.coeff (chartAt E3 p).symm)
        (dualOmega (fun x => (Ψ x : ℂ)) p) (fun y => φ' ((chartAt E3 p).symm y))
        (chartAt E3 p '' (Ω ∩ (chartAt E3 p).source))
        (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)) ≤
        dualRiemVar g (fun x => (Ψ x : ℂ)) φ' Ω Kc := by
      unfold dualRiemVar
      refine le_trans ?_ (le_iSup_of_le 1 (le_iSup_of_le (fun _ => p)
        (le_iSup_of_le (fun _ => Ω ∩ (chartAt E3 p).source) (le_iSup_of_le hW le_rfl))))
      rw [Fin.sum_univ_one]
    exact absurd (lt_of_le_of_lt (h1.trans h2) hfin) (lt_irrefl _)
  
  have hOo : IsOpen (chartAt E3 p '' (Ω ∩ P ∩ (chartAt E3 p).source)) := by
    rw [show Ω ∩ P ∩ (chartAt E3 p).source = (chartAt E3 p).source ∩ (Ω ∩ P) from
      Set.inter_comm _ _]
    exact (chartAt E3 p).isOpen_image_source_inter (hΩ.inter hP)
  have hOsub : chartAt E3 p '' (Ω ∩ P ∩ (chartAt E3 p).source) ⊆
      chartAt E3 p '' (Ω ∩ (chartAt E3 p).source) :=
    Set.image_mono (fun x hx => ⟨hx.1.1, hx.2⟩)
  
  have hae : ∀ᵐ y ∂(volume.restrict (chartAt E3 p '' (Ω ∩ P ∩ (chartAt E3 p).source))),
      ∃ j : ℤ, ∀ᶠ i in Filter.atTop, Ns i ((chartAt E3 p).symm y) - c i = j := by
    rw [ae_restrict_iff' hOo.measurableSet, ae_iff]
    refine measure_mono_null ?_ (hZ p)
    intro y hy
    simp only [Set.mem_setOf_eq, _root_.not_imp] at hy
    obtain ⟨⟨x, hx, rfl⟩, hno⟩ := hy
    rw [(chartAt E3 p).left_inv hx.2] at hno
    by_cases hxZ : x ∈ Z
    · exact ⟨x, ⟨hxZ, hx.2⟩, rfl⟩
    · exact absurd (hloc x hx.1.2 hxZ) hno
  
  obtain ⟨K, hK⟩ := dual_chart_L1_eventually_bdd g Ψ hΨs Ω Kc hΩ φ₀ hfin₀ Ns hNs B hB hbd c p
    (chartAt E3 p '' (Ω ∩ P ∩ (chartAt E3 p).source)) hOo hOsub hae C hCc hCsub
  
  have hCm : MeasurableSet C := hCc.measurableSet
  have hsub2 : C ⊆ chartAt E3 p '' (Ω ∩ (chartAt E3 p).source) := hCsub.trans hOsub
  have I₀ : IntegrableOn (fun y => φ₀ ((chartAt E3 p).symm y)) C :=
    (hguard φ₀ hfin₀).integrableOn_compact_subset hsub2 hCc
  have Ii : ∀ i, IntegrableOn (fun y => φ₀ ((chartAt E3 p).symm y) +
      2 * Real.pi * (Ns i ((chartAt E3 p).symm y) : ℝ)) C :=
    fun i => (hguard _ (lt_of_le_of_lt (hbd i) hB)).integrableOn_compact_subset hsub2 hCc
  have hCP : ∀ y ∈ C, (chartAt E3 p).symm y ∈ P := by
    intro y hy
    obtain ⟨x, hx, rfl⟩ := hCsub hy
    rw [(chartAt E3 p).left_inv hx.2]
    exact hx.1.2
  obtain ⟨φs, hφs⟩ : ∃ φs : ℕ → M → ℝ, ∀ i x, φs i x = φ₀ x + 2 * Real.pi * (Ns i x : ℝ) -
      2 * Real.pi * (c i : ℝ) * P.indicator (fun _ => (1 : ℝ)) x := ⟨_, fun _ _ => rfl⟩
  have hφC : ∀ i, ∀ y ∈ C, φs i ((chartAt E3 p).symm y) =
      (φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (Ns i ((chartAt E3 p).symm y) : ℝ)) -
        2 * Real.pi * (c i : ℝ) := by
    intro i y hy
    rw [hφs, Set.indicator_of_mem (hCP y hy), mul_one]
  have hpi : 0 < 2 * Real.pi := by positivity
  have hCfin : volume C ≠ ⊤ := hCc.measure_lt_top.ne
  have Iφ : ∀ i, IntegrableOn (fun y => φs i ((chartAt E3 p).symm y)) C := by
    intro i
    have h := Integrable.sub (Ii i)
      (integrableOn_const (C := 2 * Real.pi * (c i : ℝ)) hCfin)
    refine IntegrableOn.congr_fun h ?_ hCm
    intro y hy
    simp only [Pi.sub_apply]
    rw [hφC i y hy]
  have IG : ∀ i, IntegrableOn (fun y => |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)|) C := by
    intro i
    have h := Integrable.div_const (Integrable.abs (Integrable.sub (Iφ i) I₀)) (2 * Real.pi)
    refine IntegrableOn.congr_fun h ?_ hCm
    intro y hy
    simp only [Pi.sub_apply]
    rw [hφC i y hy]
    have e : φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (Ns i ((chartAt E3 p).symm y) : ℝ) -
        2 * Real.pi * (c i : ℝ) - φ₀ ((chartAt E3 p).symm y) =
        2 * Real.pi * ((Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)) := by ring
    rw [e, abs_mul, abs_of_pos hpi]
    field_simp
  
  have hfun : ∀ i, (fun x => φs i x + 2 * Real.pi * (c i : ℝ) * P.indicator (fun _ => (1 : ℝ)) x) =
      (fun x => φ₀ x + 2 * Real.pi * (Ns i x : ℝ)) := by
    intro i
    funext x
    rw [hφs]
    ring
  have hF₀ : 0 ≤ ∫ y in C, |φ₀ ((chartAt E3 p).symm y)| :=
    integral_nonneg (fun _ => abs_nonneg _)
  obtain ⟨F₀, hF₀d⟩ : ∃ F₀ : ℝ, F₀ = ∫ y in C, |φ₀ ((chartAt E3 p).symm y)| := ⟨_, rfl⟩
  rw [← hF₀d] at hF₀
  have hev : ∀ᶠ i in Filter.atTop, 2 * Real.pi * |b| * |(c i : ℝ)| ≤
      B.toReal + |A| * (1 + F₀ + 2 * Real.pi * max K 0) := by
    filter_upwards [hK] with i hi
    have hfin : dualRiemVar g (fun x => (Ψ x : ℂ))
        (fun x => φs i x + 2 * Real.pi * (c i : ℝ) * P.indicator (fun _ => (1 : ℝ)) x) Ω Kc < ⊤ := by
      rw [hfun i]
      exact lt_of_le_of_lt (hbd i) hB
    have h1 := hco (φs i) (2 * Real.pi * (c i : ℝ)) (Iφ i) hfin
    rw [hfun i] at h1
    have hE : (dualRiemVar g (fun x => (Ψ x : ℂ))
        (fun x => φ₀ x + 2 * Real.pi * (Ns i x : ℝ)) Ω Kc).toReal ≤ B.toReal :=
      ENNReal.toReal_mono hB.ne (hbd i)
    obtain ⟨Gi, hGid⟩ : ∃ Gi : ℝ,
        Gi = ∫ y in C, |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)| := ⟨_, rfl⟩
    obtain ⟨Xi, hXid⟩ : ∃ Xi : ℝ, Xi = ∫ y in C, |φs i ((chartAt E3 p).symm y)| := ⟨_, rfl⟩
    have hG : Gi ≤ max K 0 := by
      rw [hGid, integral_eq_lintegral_of_nonneg_ae
        (Filter.Eventually.of_forall (fun _ => abs_nonneg _)) (IG i).aestronglyMeasurable]
      calc (∫⁻ y in C, ENNReal.ofReal |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)|).toReal
          ≤ (ENNReal.ofReal K).toReal := ENNReal.toReal_mono ENNReal.ofReal_ne_top hi
        _ = max K 0 := ENNReal.toReal_ofReal'
    have hX : Xi ≤ F₀ + 2 * Real.pi * Gi := by
      rw [hXid, hF₀d, hGid]
      calc ∫ y in C, |φs i ((chartAt E3 p).symm y)|
          ≤ ∫ y in C, (|φ₀ ((chartAt E3 p).symm y)| +
              2 * Real.pi * |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)|) := by
            refine setIntegral_mono_on (Integrable.abs (Iφ i))
              (Integrable.add (Integrable.abs I₀) (Integrable.const_mul (IG i) _)) hCm ?_
            intro y hy
            rw [hφC i y hy]
            have e : φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (Ns i ((chartAt E3 p).symm y) : ℝ) -
                2 * Real.pi * (c i : ℝ) = φ₀ ((chartAt E3 p).symm y) +
                2 * Real.pi * ((Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)) := by ring
            rw [e]
            refine (abs_add_le _ _).trans ?_
            rw [abs_mul, abs_of_pos hpi]
        _ = (∫ y in C, |φ₀ ((chartAt E3 p).symm y)|) +
              2 * Real.pi * ∫ y in C, |(Ns i ((chartAt E3 p).symm y) : ℝ) - (c i : ℝ)| := by
            rw [integral_add (Integrable.abs I₀) (Integrable.const_mul (IG i) _),
              integral_const_mul]
    have hX0 : 0 ≤ Xi := by
      rw [hXid]
      exact integral_nonneg (fun _ => abs_nonneg _)
    rw [← hXid] at h1
    have hG' := mul_le_mul_of_nonneg_left hG hpi.le
    have hA1 : A * (1 + Xi) ≤ |A| * (1 + Xi) :=
      mul_le_mul_of_nonneg_right (le_abs_self A) (by linarith)
    have hA2 : |A| * (1 + Xi) ≤ |A| * (1 + F₀ + 2 * Real.pi * max K 0) :=
      mul_le_mul_of_nonneg_left (by linarith) (abs_nonneg A)
    have hL : |2 * Real.pi * (c i : ℝ) * b| = 2 * Real.pi * |b| * |(c i : ℝ)| := by
      rw [abs_mul, abs_mul, abs_of_pos hpi]
      ring
    rw [hL] at h1
    linarith
  
  have hb' : 0 < 2 * Real.pi * |b| := mul_pos hpi (abs_pos.mpr hb)
  have hc' : Filter.Tendsto (fun i => |(c i : ℝ)|) Filter.atTop Filter.atTop := by
    refine (tendsto_intCast_atTop_atTop.comp hc).congr ?_
    intro i
    simp [Function.comp, Int.cast_abs]
  obtain ⟨i, hi1, hi2⟩ := (hev.and (hc'.eventually_gt_atTop
    ((B.toReal + |A| * (1 + F₀ + 2 * Real.pi * max K 0)) / (2 * Real.pi * |b|)))).exists
  rw [div_lt_iff₀ hb'] at hi2
  nlinarith

theorem dual_normalised_subseq [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (Ω Kv Kc : Set M) (hΩ : IsOpen Ω) (hKv : IsCompact Kv) (hKvΩ : Kv ⊆ Ω)
    (φ₀ : M → ℝ) (hφ₀m : dualChartMeas φ₀)
    (hfin₀ : dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc < ⊤)
    (ns : ℕ → M → ℤ) (hnsK : ∀ i, ∀ x : M, x ∉ Kv → ns i x = 0)
    (hns : ∀ i (j : ℤ), sepChartMeas {x | ns i x = j})
    (B : ENNReal) (hB : B < ⊤)
    (hbd : ∀ i, dualRiemVar g (fun x => (Ψ x : ℂ))
      (fun x => φ₀ x + 2 * Real.pi * (ns i x : ℝ)) Ω Kc ≤ B) :
    ∃ (ψ : ℕ → ℕ) (ms : ℕ → M → ℤ), StrictMono ψ ∧
      (∀ i, ∀ x : M, x ∉ Kv → ms i x = 0) ∧ (∀ i (j : ℤ), sepChartMeas {x | ms i x = j}) ∧
      (∀ i, dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (ms i x : ℝ)) Ω Kc ≤
        dualRiemVar g (fun x => (Ψ x : ℂ))
          (fun x => φ₀ x + 2 * Real.pi * (ns (ψ i) x : ℝ)) Ω Kc) ∧
      sepChartNull {x | ¬ ∃ j : ℤ, ∀ᶠ i in Filter.atTop, ms i x = j} :=
by
  classical
  
  obtain ⟨N, H, ψ, m, Z, hψ, hHo, hcov, hZ, htame, hloc⟩ :=
    dual_local_offsets g Ψ hΨs Ω Kv Kc hΩ hKv hKvΩ φ₀ hfin₀ ns hns B hB hbd
  
  have hZo : ∀ U : Set M, IsOpen U → U.Nonempty → ¬ U ⊆ Z := by
    rintro U hUo ⟨x, hxU⟩ hUZ
    have hopen : IsOpen (chartAt E3 x '' ((chartAt E3 x).source ∩ U)) :=
      (chartAt E3 x).isOpen_image_source_inter hUo
    have hpos := hopen.measure_pos volume ⟨chartAt E3 x x, x, ⟨mem_chart_source E3 x, hxU⟩, rfl⟩
    refine hpos.ne' (measure_mono_null ?_ (hZ x))
    rintro _ ⟨y, ⟨hys, hyU⟩, rfl⟩
    exact ⟨y, ⟨hUZ hyU, hys⟩, rfl⟩
  
  obtain ⟨R, P, hRP, _hdisj, hlast⟩ := int_class_normalise H Kv Z hHo hKv.isClosed hcov hZo
    (fun i => ns (ψ i)) (fun i => hnsK (ψ i)) m htame hloc
  
  have hfree : ∀ k ∈ R, ∀ (φ : M → ℝ) (t : ℝ),
      dualRiemVar g (fun x => (Ψ x : ℂ))
        (fun x => φ x + t * (P k).indicator (fun _ => (1 : ℝ)) x) Ω Kc =
        dualRiemVar g (fun x => (Ψ x : ℂ)) φ Ω Kc := by
    intro k hk
    obtain ⟨hPo, hPc, _, hPt, hPl⟩ := hRP k hk
    exact dual_unbounded_piece_free g Ψ hΨs Ω Kc (P k) Z hΩ hPo
      (fun x _ hx => by rwa [hPc.closure_eq] at hx) φ₀ hfin₀ (fun i => ns (ψ i))
      (fun i => hns (ψ i)) B hB (fun i => hbd (ψ i)) hZ (m k) hPt hPl
  
  have hind : ∀ S : Finset (Fin N), S ⊆ R → ∀ (t : Fin N → ℝ) (φ : M → ℝ),
      dualRiemVar g (fun x => (Ψ x : ℂ))
        (fun x => φ x + ∑ k ∈ S, t k * (P k).indicator (fun _ => (1 : ℝ)) x) Ω Kc =
        dualRiemVar g (fun x => (Ψ x : ℂ)) φ Ω Kc := by
    intro S
    refine Finset.induction_on S ?_ ?_
    · intro _ t φ
      simp
    · intro a S ha ih hS t φ
      have haR : a ∈ R := hS (Finset.mem_insert_self a S)
      have hSR : S ⊆ R := fun x hx => hS (Finset.mem_insert_of_mem hx)
      have h1 : (fun x => φ x + ∑ k ∈ insert a S, t k * (P k).indicator (fun _ => (1 : ℝ)) x) =
          (fun x => (fun x => φ x + ∑ k ∈ S, t k * (P k).indicator (fun _ => (1 : ℝ)) x) x +
            t a * (P a).indicator (fun _ => (1 : ℝ)) x) := by
        funext x
        rw [Finset.sum_insert ha]
        ring
      rw [h1, hfree a haR, ih hSR]
  
  obtain ⟨ms, hms⟩ : ∃ ms : ℕ → M → ℤ, ∀ i x,
      ms i x = ns (ψ i) x - ∑ k ∈ R, (P k).indicator (fun _ => m k i) x := ⟨_, fun _ _ => rfl⟩
  
  have hPK : ∀ k ∈ R, P k ⊆ Kv := fun k hk => (hRP k hk).2.2.1
  have hmsK : ∀ i, ∀ x : M, x ∉ Kv → ms i x = 0 := by
    intro i x hx
    rw [hms, hnsK (ψ i) x hx, Finset.sum_eq_zero]
    · simp
    · intro k hk
      rw [Set.indicator_apply, if_neg (fun h => hx (hPK k hk h))]
  
  have hmsE : ∀ i, dualRiemVar g (fun x => (Ψ x : ℂ))
      (fun x => φ₀ x + 2 * Real.pi * (ms i x : ℝ)) Ω Kc ≤
      dualRiemVar g (fun x => (Ψ x : ℂ))
        (fun x => φ₀ x + 2 * Real.pi * (ns (ψ i) x : ℝ)) Ω Kc := by
    intro i
    have hfun : (fun x => φ₀ x + 2 * Real.pi * (ms i x : ℝ)) =
        (fun x => (fun x => φ₀ x + 2 * Real.pi * (ns (ψ i) x : ℝ)) x +
          ∑ k ∈ R, (fun k => -(2 * Real.pi * (m k i : ℝ))) k *
            (P k).indicator (fun _ => (1 : ℝ)) x) := by
      funext x
      have hterm : ∀ k, (((P k).indicator (fun _ => m k i) x : ℤ) : ℝ) =
          (m k i : ℝ) * (P k).indicator (fun _ => (1 : ℝ)) x := by
        intro k
        by_cases hx : x ∈ P k <;> simp [Set.indicator, hx]
      rw [hms, Int.cast_sub, Int.cast_sum, Finset.sum_congr rfl (fun k _ => hterm k)]
      have h2 : ∑ k ∈ R, (fun k => -(2 * Real.pi * (m k i : ℝ))) k *
            (P k).indicator (fun _ => (1 : ℝ)) x =
          -(2 * Real.pi * ∑ k ∈ R, (m k i : ℝ) * (P k).indicator (fun _ => (1 : ℝ)) x) := by
        rw [Finset.mul_sum, ← Finset.sum_neg_distrib]
        exact Finset.sum_congr rfl (fun k _ => by ring)
      rw [h2]
      ring
    rw [hfun, hind R (subset_refl R) (fun k => -(2 * Real.pi * (m k i : ℝ)))
      (fun x => φ₀ x + 2 * Real.pi * (ns (ψ i) x : ℝ))]
  
  have himg : ∀ (p : M) (S : Set M), chartAt E3 p '' (S ∩ (chartAt E3 p).source) =
      (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S := by
    intro p S
    rw [Set.inter_comm]
    exact (chartAt E3 p).image_source_inter_eq' S
  have hmeasIff : ∀ S : Set M, sepChartMeas S ↔
      ∀ p : M, MeasurableSet ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S) := by
    intro S
    simp only [sepChartMeas, himg]
  have hMU : ∀ {ι : Type} [Countable ι] (S : ι → Set M), (∀ i, sepChartMeas (S i)) →
      sepChartMeas (⋃ i, S i) := by
    intro ι _ S hS
    rw [hmeasIff]
    intro p
    rw [Set.preimage_iUnion, Set.inter_iUnion]
    exact MeasurableSet.iUnion fun i => (hmeasIff _).1 (hS i) p
  have hMC : ∀ S : Set M, sepChartMeas S → sepChartMeas Sᶜ := by
    intro S hS
    rw [hmeasIff]
    intro p
    have h1 : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' Sᶜ =
        (chartAt E3 p).target \ ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_compl_iff, Set.mem_diff]
      tauto
    rw [h1]
    exact (chartAt E3 p).open_target.measurableSet.diff ((hmeasIff S).1 hS p)
  have hMuniv : sepChartMeas (Set.univ : Set M) := by
    rw [hmeasIff]
    intro p
    simpa only [Set.preimage_univ, Set.inter_univ] using (chartAt E3 p).open_target.measurableSet
  have hMunion : ∀ S T : Set M, sepChartMeas S → sepChartMeas T → sepChartMeas (S ∪ T) := by
    intro S T hS hT
    rw [hmeasIff]
    intro p
    rw [Set.preimage_union, Set.inter_union_distrib_left]
    exact ((hmeasIff S).1 hS p).union ((hmeasIff T).1 hT p)
  have hMinter : ∀ S T : Set M, sepChartMeas S → sepChartMeas T → sepChartMeas (S ∩ T) := by
    intro S T hS hT
    have h1 : S ∩ T = (Sᶜ ∪ Tᶜ)ᶜ := by
      rw [Set.compl_union, compl_compl, compl_compl]
    rw [h1]
    exact hMC _ (hMunion _ _ (hMC _ hS) (hMC _ hT))
  have hconst : ∀ q : Prop, sepChartMeas {_x : M | q} := by
    intro q
    by_cases hq : q
    · have h1 : {_x : M | q} = Set.univ := by
        ext x
        simp [hq]
      rw [h1]
      exact hMuniv
    · have h1 : {_x : M | q} = (Set.univ : Set M)ᶜ := by
        ext x
        simp [hq]
      rw [h1]
      exact hMC _ hMuniv
  have hopenM : ∀ U : Set M, IsOpen U → sepChartMeas U := by
    intro U hU p
    rw [Set.inter_comm]
    exact ((chartAt E3 p).isOpen_image_source_inter hU).measurableSet
  have hindM : ∀ i, ∀ k ∈ R, ∀ c : ℤ,
      sepChartMeas {x : M | (P k).indicator (fun _ => m k i) x = c} := by
    intro i k hk c
    have h1 : {x : M | (P k).indicator (fun _ => m k i) x = c} =
        (P k ∩ {_x : M | m k i = c}) ∪ ((P k)ᶜ ∩ {_x : M | (0 : ℤ) = c}) := by
      ext x
      by_cases hx : x ∈ P k <;> simp [Set.indicator, hx]
    rw [h1]
    exact hMunion _ _ (hMinter _ _ (hopenM _ (hRP k hk).1) (hconst _))
      (hMinter _ _ (hMC _ (hopenM _ (hRP k hk).1)) (hconst _))
  have hsumM : ∀ i, ∀ S : Finset (Fin N), S ⊆ R → ∀ b : ℤ,
      sepChartMeas {x : M | ∑ k ∈ S, (P k).indicator (fun _ => m k i) x = b} := by
    intro i S
    refine Finset.induction_on S ?_ ?_
    · intro _ b
      simp only [Finset.sum_empty]
      exact hconst _
    · intro a S ha ih hS b
      have haR : a ∈ R := hS (Finset.mem_insert_self a S)
      have hSR : S ⊆ R := fun x hx => hS (Finset.mem_insert_of_mem hx)
      have h1 : {x : M | ∑ k ∈ insert a S, (P k).indicator (fun _ => m k i) x = b} =
          ⋃ c : ℤ, ({x : M | (P a).indicator (fun _ => m a i) x = c} ∩
            {x : M | ∑ k ∈ S, (P k).indicator (fun _ => m k i) x = b - c}) := by
        ext x
        simp only [Set.mem_setOf_eq, Set.mem_iUnion, Set.mem_inter_iff, Finset.sum_insert ha]
        constructor
        · intro h
          exact ⟨_, rfl, by omega⟩
        · rintro ⟨c, h1, h2⟩
          omega
      rw [h1]
      exact hMU _ fun c => hMinter _ _ (hindM i a haR c) (ih hSR (b - c))
  have hmsM : ∀ i (j : ℤ), sepChartMeas {x | ms i x = j} := by
    intro i j
    have h1 : {x | ms i x = j} = ⋃ a : ℤ, ({x : M | ns (ψ i) x = a} ∩
        {x : M | ∑ k ∈ R, (P k).indicator (fun _ => m k i) x = a - j}) := by
      ext x
      simp only [Set.mem_setOf_eq, Set.mem_iUnion, Set.mem_inter_iff, hms]
      constructor
      · intro h
        exact ⟨_, rfl, by omega⟩
      · rintro ⟨a, h1, h2⟩
        omega
    rw [h1]
    exact hMU _ fun a => hMinter _ _ (hns (ψ i) a) (hsumM i R (subset_refl R) (a - j))
  
  have hbadZ : {x | ¬ ∃ j : ℤ, ∀ᶠ i in Filter.atTop, ms i x = j} ⊆ Z := by
    intro x hx
    by_contra hxZ
    obtain ⟨j, hj⟩ := hlast x hxZ
    exact hx ⟨j, hj.mono fun i hi => by rw [hms]; exact hi⟩
  have hbad : sepChartNull {x | ¬ ∃ j : ℤ, ∀ᶠ i in Filter.atTop, ms i x = j} := by
    intro p
    exact measure_mono_null (Set.image_mono (Set.inter_subset_inter_left _ hbadZ)) (hZ p)
  
  exact ⟨ψ, ms, hψ, hmsK, hmsM, hmsE, hbad⟩

theorem ae_tendsto_L1_of_translate (u : ℕ → E3 → ℝ) (w : E3 → ℝ) (y : E3) (r C : ℝ)
    (hr : 0 < r) (hu : ∀ i, Measurable (u i))
    (hint : ∀ i, MeasureTheory.IntegrableOn (u i) (Metric.ball y (2 * r)))
    (hmod : ∀ (i : ℕ) (h : E3), ‖h‖ ≤ r →
      ∫⁻ x in Metric.ball y r, ENNReal.ofReal |u i (x + h) - u i x| ≤ ENNReal.ofReal (C * ‖h‖))
    (hae : ∀ᵐ x ∂(MeasureTheory.volume.restrict (Metric.ball y r)),
      Filter.Tendsto (fun i => u i x) Filter.atTop (𝓝 (w x))) :
    Filter.Tendsto (fun i => ∫⁻ x in Metric.ball y (r / 4), ENNReal.ofReal |u i x - w x|)
      Filter.atTop (𝓝 0) :=
by
  
  have t_s1 : ∀ (v : E3 → ℝ) (y : E3) (r C ρ : ℝ), Measurable v → ρ ≤ r →
      ∀ (S : Set E3), S ⊆ Metric.ball y r →
      (∀ h : E3, ‖h‖ ≤ r →
        ∫⁻ x in Metric.ball y r, ENNReal.ofReal |v (x + h) - v x| ≤ ENNReal.ofReal (C * ‖h‖)) →
      ∫⁻ x in S, ∫⁻ h in Metric.ball (0 : E3) ρ, ENNReal.ofReal |v (x + h) - v x| ≤
        ENNReal.ofReal (max C 0 * ρ) * MeasureTheory.volume (Metric.ball (0 : E3) ρ) := by
    intro v y r C ρ hv hρr S hSB hmod
    have hmeas : Measurable (Function.uncurry fun x h : E3 => ENNReal.ofReal |v (x + h) - v x|) :=
      ((hv.comp measurable_add).sub (hv.comp measurable_fst)).abs.ennreal_ofReal
    rw [lintegral_lintegral_swap hmeas.aemeasurable]
    calc ∫⁻ h in Metric.ball (0 : E3) ρ, ∫⁻ x in S, ENNReal.ofReal |v (x + h) - v x|
        ≤ ∫⁻ h in Metric.ball (0 : E3) ρ, ENNReal.ofReal (max C 0 * ρ) := by
          refine setLIntegral_mono' measurableSet_ball (fun h hh => ?_)
          have hh' : ‖h‖ < ρ := mem_ball_zero_iff.mp hh
          calc ∫⁻ x in S, ENNReal.ofReal |v (x + h) - v x|
              ≤ ∫⁻ x in Metric.ball y r, ENNReal.ofReal |v (x + h) - v x| :=
                lintegral_mono_set hSB
            _ ≤ ENNReal.ofReal (C * ‖h‖) := hmod h (by linarith)
            _ ≤ ENNReal.ofReal (max C 0 * ρ) := by
              apply ENNReal.ofReal_le_ofReal
              have h1 := mul_nonneg (sub_nonneg.2 (le_max_left C 0)) (norm_nonneg h)
              have h2 := mul_nonneg (le_max_right C 0) (sub_nonneg.2 hh'.le)
              nlinarith
      _ = ENNReal.ofReal (max C 0 * ρ) * MeasureTheory.volume (Metric.ball (0 : E3) ρ) :=
          setLIntegral_const _ _
  
  have t_s2 : ∀ (v : E3 → ℝ) (y : E3) (r M : ℝ) (Q : ENNReal), Measurable v →
      ∀ (G : Set E3), MeasurableSet G → G ⊆ Metric.ball y (r / 2) →
      0 < MeasureTheory.volume G → (∀ z ∈ G, |v z| ≤ M) →
      ∫⁻ x in Metric.ball y (r / 2), ∫⁻ h in Metric.ball (0 : E3) r,
        ENNReal.ofReal |v (x + h) - v x| ≤ Q →
      ∫⁻ x in Metric.ball y (r / 2), ENNReal.ofReal |v x| ≤
        Q / MeasureTheory.volume G +
          ENNReal.ofReal M * MeasureTheory.volume (Metric.ball y (r / 2)) := by
    intro v y r M Q hv G hG hGB hG0 hM hQ
    have hg0 : volume G ≠ 0 := hG0.ne'
    have hgt : volume G ≠ ⊤ := (lt_of_le_of_lt (measure_mono hGB) measure_ball_lt_top).ne
    have hpt : ∀ x ∈ Metric.ball y (r / 2), volume G * ENNReal.ofReal |v x| ≤
        ENNReal.ofReal M * volume G +
          ∫⁻ h in Metric.ball (0 : E3) r, ENNReal.ofReal |v (x + h) - v x| := by
      intro x hx
      calc volume G * ENNReal.ofReal |v x| = ∫⁻ z in G, ENNReal.ofReal |v x| := by
            rw [setLIntegral_const, mul_comm]
        _ ≤ ∫⁻ z in G, (ENNReal.ofReal |v z| + ENNReal.ofReal |v z - v x|) := by
            refine lintegral_mono fun z => ?_
            rw [← ENNReal.ofReal_add (abs_nonneg _) (abs_nonneg _)]
            apply ENNReal.ofReal_le_ofReal
            have := abs_sub_abs_le_abs_sub (v x) (v z)
            rw [abs_sub_comm (v x) (v z)] at this
            linarith
        _ = (∫⁻ z in G, ENNReal.ofReal |v z|) + ∫⁻ z in G, ENNReal.ofReal |v z - v x| :=
            lintegral_add_left hv.abs.ennreal_ofReal _
        _ ≤ ENNReal.ofReal M * volume G +
              ∫⁻ h in Metric.ball (0 : E3) r, ENNReal.ofReal |v (x + h) - v x| := by
            gcongr ?_ + ?_
            · calc ∫⁻ z in G, ENNReal.ofReal |v z| ≤ ∫⁻ z in G, ENNReal.ofReal M :=
                    setLIntegral_mono' hG fun z hz => ENNReal.ofReal_le_ofReal (hM z hz)
                _ = _ := setLIntegral_const _ _
            · calc ∫⁻ z in G, ENNReal.ofReal |v z - v x|
                  ≤ ∫⁻ z in Metric.ball y (r / 2), ENNReal.ofReal |v z - v x| :=
                    lintegral_mono_set hGB
                _ = ∫⁻ z, (Metric.ball y (r / 2)).indicator
                      (fun z => ENNReal.ofReal |v z - v x|) z :=
                    (lintegral_indicator measurableSet_ball _).symm
                _ = ∫⁻ h, (Metric.ball y (r / 2)).indicator
                      (fun z => ENNReal.ofReal |v z - v x|) (x + h) :=
                    (lintegral_add_left_eq_self _ x).symm
                _ ≤ ∫⁻ h, (Metric.ball (0 : E3) r).indicator
                      (fun h => ENNReal.ofReal |v (x + h) - v x|) h := by
                    refine lintegral_mono fun h => ?_
                    by_cases hh : x + h ∈ Metric.ball y (r / 2)
                    · rw [Set.indicator_of_mem hh, Set.indicator_of_mem]
                      rw [mem_ball_zero_iff, ← dist_self_add_left x h]
                      have h1 : dist (x + h) y < r / 2 := hh
                      have h2 : dist x y < r / 2 := hx
                      calc dist (x + h) x ≤ dist (x + h) y + dist y x := dist_triangle _ _ _
                        _ < r := by rw [dist_comm y x]; linarith
                    · rw [Set.indicator_of_notMem hh]; exact zero_le _
                _ = _ := lintegral_indicator measurableSet_ball _
    have h3 : volume G * ∫⁻ x in Metric.ball y (r / 2), ENNReal.ofReal |v x| ≤
        ENNReal.ofReal M * volume G * volume (Metric.ball y (r / 2)) + Q := by
      rw [← lintegral_const_mul' _ _ hgt]
      calc _ ≤ ∫⁻ x in Metric.ball y (r / 2), (ENNReal.ofReal M * volume G +
              ∫⁻ h in Metric.ball (0 : E3) r, ENNReal.ofReal |v (x + h) - v x|) :=
            setLIntegral_mono' measurableSet_ball hpt
        _ = ENNReal.ofReal M * volume G * volume (Metric.ball y (r / 2)) +
              ∫⁻ x in Metric.ball y (r / 2), ∫⁻ h in Metric.ball (0 : E3) r,
                ENNReal.ofReal |v (x + h) - v x| := by
            rw [lintegral_add_left measurable_const, setLIntegral_const]
        _ ≤ _ := by gcongr
    have h4 : volume G * ∫⁻ x in Metric.ball y (r / 2), ENNReal.ofReal |v x| ≤
        volume G * (Q / volume G + ENNReal.ofReal M * volume (Metric.ball y (r / 2))) := by
      rw [mul_add, ENNReal.mul_div_cancel hg0 hgt]
      calc _ ≤ _ := h3
        _ = _ := by ring
    exact (ENNReal.mul_le_mul_left hg0 hgt).1 h4
  
  have t_s3 : ∀ (u : ℕ → E3 → ℝ) (w : E3 → ℝ) (y : E3) (r : ℝ), 0 < r →
      (∀ i, Measurable (u i)) →
      (∀ᵐ x ∂(MeasureTheory.volume.restrict (Metric.ball y r)),
        Filter.Tendsto (fun i => u i x) Filter.atTop (𝓝 (w x))) →
      ∃ (N : ℕ) (G : Set E3), MeasurableSet G ∧ G ⊆ Metric.ball y (r / 2) ∧
        0 < MeasureTheory.volume G ∧ ∀ i : ℕ, N ≤ i → ∀ z ∈ G, |u i z| ≤ (N : ℝ) := by
    intro u w y r hr hu hae
    let s : ℕ → Set E3 := fun N =>
      Metric.ball y (r / 2) ∩ ⋂ j : ℕ, {z | |u (N + j) z| ≤ (N : ℝ)}
    have hsm : ∀ N, MeasurableSet (s N) := fun N =>
      measurableSet_ball.inter (MeasurableSet.iInter fun j =>
        measurableSet_le (hu _).abs measurable_const)
    by_contra hcon
    have h0 : ∀ N, volume (s N) = 0 := by
      intro N
      by_contra hne
      refine hcon ⟨N, s N, hsm N, Set.inter_subset_left, pos_iff_ne_zero.2 hne, ?_⟩
      intro i hi z hz
      have := Set.mem_iInter.1 hz.2 (i - N)
      simp only [Set.mem_setOf_eq] at this
      rwa [Nat.add_sub_cancel' hi] at this
    have hU : volume (⋃ N, s N) = 0 := measure_iUnion_null h0
    have hae' := (ae_restrict_iff' measurableSet_ball).1 hae
    have hB : volume (Metric.ball y (r / 2)) = 0 := by
      rw [measure_eq_zero_iff_ae_notMem]
      filter_upwards [hae', measure_eq_zero_iff_ae_notMem.1 hU] with z hz hzU hzB
      apply hzU
      have hzr : z ∈ Metric.ball y r := Metric.ball_subset_ball (by linarith) hzB
      obtain ⟨R, hR⟩ := isBounded_iff_forall_norm_le.1
        (Metric.isBounded_range_of_tendsto _ (hz hzr))
      refine Set.mem_iUnion.2 ⟨⌈R⌉₊, hzB, Set.mem_iInter.2 fun j => ?_⟩
      have := hR _ ⟨⌈R⌉₊ + j, rfl⟩
      simp only [Set.mem_setOf_eq]
      rw [Real.norm_eq_abs] at this
      exact this.trans (Nat.le_ceil R)
    exact (Metric.measure_ball_pos volume y (by linarith : 0 < r / 2)).ne' hB
  
  have t_s4 : ∀ (v : E3 → ℝ) (y : E3) (r δ : ℝ), Measurable v → δ ≤ r / 4 →
      ∀ (A : Set E3), MeasurableSet A → A ⊆ Metric.ball y (r / 4) →
      MeasureTheory.volume (Metric.ball (0 : E3) δ) * ∫⁻ x in A, ENNReal.ofReal |v x| ≤
        MeasureTheory.volume A * (∫⁻ z in Metric.ball y (r / 2), ENNReal.ofReal |v z|) +
        ∫⁻ x in A, ∫⁻ h in Metric.ball (0 : E3) δ, ENNReal.ofReal |v (x + h) - v x| := by
    intro v y r δ hv hδ A hA hAB
    have hpt : ∀ x ∈ A, volume (Metric.ball (0 : E3) δ) * ENNReal.ofReal |v x| ≤
        (∫⁻ z in Metric.ball y (r / 2), ENNReal.ofReal |v z|) +
          ∫⁻ h in Metric.ball (0 : E3) δ, ENNReal.ofReal |v (x + h) - v x| := by
      intro x hx
      calc volume (Metric.ball (0 : E3) δ) * ENNReal.ofReal |v x|
          = ∫⁻ h in Metric.ball (0 : E3) δ, ENNReal.ofReal |v x| := by
            rw [setLIntegral_const, mul_comm]
        _ ≤ ∫⁻ h in Metric.ball (0 : E3) δ,
              (ENNReal.ofReal |v (x + h)| + ENNReal.ofReal |v (x + h) - v x|) := by
            refine lintegral_mono fun h => ?_
            rw [← ENNReal.ofReal_add (abs_nonneg _) (abs_nonneg _)]
            apply ENNReal.ofReal_le_ofReal
            have := abs_sub_abs_le_abs_sub (v x) (v (x + h))
            rw [abs_sub_comm (v x) (v (x + h))] at this
            linarith
        _ = (∫⁻ h in Metric.ball (0 : E3) δ, ENNReal.ofReal |v (x + h)|) +
              ∫⁻ h in Metric.ball (0 : E3) δ, ENNReal.ofReal |v (x + h) - v x| :=
            lintegral_add_left ((hv.comp (measurable_const_add x)).abs.ennreal_ofReal) _
        _ ≤ _ := by
            gcongr ?_ + _
            calc ∫⁻ h in Metric.ball (0 : E3) δ, ENNReal.ofReal |v (x + h)|
                = ∫⁻ h, (Metric.ball (0 : E3) δ).indicator
                    (fun h => ENNReal.ofReal |v (x + h)|) h :=
                  (lintegral_indicator measurableSet_ball _).symm
              _ ≤ ∫⁻ h, (Metric.ball y (r / 2)).indicator
                    (fun z => ENNReal.ofReal |v z|) (x + h) := by
                  refine lintegral_mono fun h => ?_
                  by_cases hh : h ∈ Metric.ball (0 : E3) δ
                  · rw [Set.indicator_of_mem hh, Set.indicator_of_mem]
                    have h1 : ‖h‖ < δ := mem_ball_zero_iff.1 hh
                    have h2 : dist x y < r / 4 := hAB hx
                    rw [Metric.mem_ball]
                    calc dist (x + h) y ≤ dist (x + h) x + dist x y := dist_triangle _ _ _
                      _ < r / 2 := by rw [dist_self_add_left]; linarith
                  · rw [Set.indicator_of_notMem hh]; exact zero_le _
              _ = ∫⁻ z, (Metric.ball y (r / 2)).indicator (fun z => ENNReal.ofReal |v z|) z :=
                  lintegral_add_left_eq_self _ x
              _ = _ := lintegral_indicator measurableSet_ball _
    have hVt : volume (Metric.ball (0 : E3) δ) ≠ ⊤ := measure_ball_lt_top.ne
    rw [← lintegral_const_mul' _ _ hVt]
    calc _ ≤ ∫⁻ x in A, ((∫⁻ z in Metric.ball y (r / 2), ENNReal.ofReal |v z|) +
            ∫⁻ h in Metric.ball (0 : E3) δ, ENNReal.ofReal |v (x + h) - v x|) :=
          setLIntegral_mono' hA hpt
      _ = _ := by
          rw [lintegral_add_left measurable_const, setLIntegral_const, mul_comm]
  
  have t_s5 : ∀ (u : ℕ → E3 → ℝ) (T : Set E3) (D : ENNReal), D ≠ ⊤ → ∀ (c a : ℝ),
      0 < a → 0 ≤ c →
      (∀ (i : ℕ) (δ : ℝ), 0 < δ → δ ≤ a → ∀ s : Set E3, MeasurableSet s →
        MeasureTheory.volume (Metric.ball (0 : E3) δ) * ∫⁻ x in s ∩ T, ENNReal.ofReal |u i x| ≤
          MeasureTheory.volume (s ∩ T) * D +
            ENNReal.ofReal (c * δ) * MeasureTheory.volume (Metric.ball (0 : E3) δ)) →
      ∀ ε : ℝ, 0 < ε → ∃ η : ℝ, 0 < η ∧ ∀ (i : ℕ) (s : Set E3), MeasurableSet s →
        MeasureTheory.volume (s ∩ T) ≤ ENNReal.ofReal η →
          ∫⁻ x in s ∩ T, ENNReal.ofReal |u i x| ≤ ENNReal.ofReal ε := by
    intro u T D hD c a ha hc hmean ε hε
    obtain ⟨δ, hδdef⟩ : ∃ δ : ℝ, δ = min a (ε / (2 * (c + 1))) := ⟨_, rfl⟩
    have hδpos : 0 < δ := by rw [hδdef]; exact lt_min ha (by positivity)
    have hδa : δ ≤ a := by rw [hδdef]; exact min_le_left _ _
    have hcδ : c * δ ≤ ε / 2 := by
      have h1 : δ ≤ ε / (2 * (c + 1)) := by rw [hδdef]; exact min_le_right _ _
      have h2 : c * δ ≤ c * (ε / (2 * (c + 1))) := mul_le_mul_of_nonneg_left h1 hc
      have h3 : c * (ε / (2 * (c + 1))) ≤ ε / 2 := by
        rw [mul_div_assoc', div_le_div_iff₀ (by positivity) (by positivity)]
        nlinarith
      linarith
    have hV0 : volume (Metric.ball (0 : E3) δ) ≠ 0 :=
      (Metric.measure_ball_pos volume 0 hδpos).ne'
    have hVt : volume (Metric.ball (0 : E3) δ) ≠ ⊤ := measure_ball_lt_top.ne
    have hVr : 0 < (volume (Metric.ball (0 : E3) δ)).toReal := ENNReal.toReal_pos hV0 hVt
    have hDr : 0 ≤ D.toReal := ENNReal.toReal_nonneg
    refine ⟨ε * (volume (Metric.ball (0 : E3) δ)).toReal / (2 * (D.toReal + 1)), by positivity,
      fun i s hs hsT => ?_⟩
    have key := hmean i δ hδpos hδa s hs
    have hreal : ε * (volume (Metric.ball (0 : E3) δ)).toReal / (2 * (D.toReal + 1)) * D.toReal
        + ε / 2 * (volume (Metric.ball (0 : E3) δ)).toReal
        ≤ (volume (Metric.ball (0 : E3) δ)).toReal * ε := by
      have h1 : ε * (volume (Metric.ball (0 : E3) δ)).toReal / (2 * (D.toReal + 1)) * D.toReal
          ≤ ε * (volume (Metric.ball (0 : E3) δ)).toReal / 2 := by
        rw [div_mul_eq_mul_div, div_le_div_iff₀ (by positivity) (by positivity)]
        nlinarith [mul_pos hε hVr]
      linarith
    have h2 : volume (Metric.ball (0 : E3) δ) * ∫⁻ x in s ∩ T, ENNReal.ofReal |u i x| ≤
        volume (Metric.ball (0 : E3) δ) * ENNReal.ofReal ε := by
      calc _ ≤ _ := key
        _ ≤ ENNReal.ofReal (ε * (volume (Metric.ball (0 : E3) δ)).toReal /
                (2 * (D.toReal + 1))) * D
              + ENNReal.ofReal (ε / 2) * volume (Metric.ball (0 : E3) δ) := by
            gcongr
        _ = ENNReal.ofReal (ε * (volume (Metric.ball (0 : E3) δ)).toReal /
                (2 * (D.toReal + 1))) * ENNReal.ofReal D.toReal
              + ENNReal.ofReal (ε / 2) *
                ENNReal.ofReal (volume (Metric.ball (0 : E3) δ)).toReal := by
            rw [ENNReal.ofReal_toReal hD, ENNReal.ofReal_toReal hVt]
        _ = ENNReal.ofReal (ε * (volume (Metric.ball (0 : E3) δ)).toReal /
                (2 * (D.toReal + 1)) * D.toReal +
                ε / 2 * (volume (Metric.ball (0 : E3) δ)).toReal) := by
            rw [← ENNReal.ofReal_mul (by positivity), ← ENNReal.ofReal_mul (by positivity),
              ← ENNReal.ofReal_add (by positivity) (by positivity)]
        _ ≤ ENNReal.ofReal ((volume (Metric.ball (0 : E3) δ)).toReal * ε) :=
            ENNReal.ofReal_le_ofReal hreal
        _ = volume (Metric.ball (0 : E3) δ) * ENNReal.ofReal ε := by
            rw [ENNReal.ofReal_mul hVr.le, ENNReal.ofReal_toReal hVt]
    exact (ENNReal.mul_le_mul_left hV0 hVt).1 h2
  
  have t_s6 : ∀ (u : ℕ → E3 → ℝ) (w : E3 → ℝ) (T : Set E3),
      MeasureTheory.volume T ≠ ⊤ → (∀ i, Measurable (u i)) → ∀ (D : ENNReal), D ≠ ⊤ →
      (∀ i, ∫⁻ x in T, ENNReal.ofReal |u i x| ≤ D) →
      (∀ ε : ℝ, 0 < ε → ∃ η : ℝ, 0 < η ∧ ∀ (i : ℕ) (s : Set E3), MeasurableSet s →
        MeasureTheory.volume (s ∩ T) ≤ ENNReal.ofReal η →
          ∫⁻ x in s ∩ T, ENNReal.ofReal |u i x| ≤ ENNReal.ofReal ε) →
      (∀ᵐ x ∂(MeasureTheory.volume.restrict T),
        Filter.Tendsto (fun i => u i x) Filter.atTop (𝓝 (w x))) →
      Filter.Tendsto (fun i => ∫⁻ x in T, ENNReal.ofReal |u i x - w x|)
        Filter.atTop (𝓝 0) := by
    intro u w T hTf hu D hD hbd hui hae
    haveI : IsFiniteMeasure (volume.restrict T) := isFiniteMeasure_restrict.mpr hTf
    have hsm : ∀ i, AEStronglyMeasurable (u i) (volume.restrict T) :=
      fun i => (hu i).aestronglyMeasurable
    have hwm : AEStronglyMeasurable w (volume.restrict T) :=
      aestronglyMeasurable_of_tendsto_ae atTop hsm hae
    have hwL : MemLp w 1 (volume.restrict T) := by
      rw [memLp_one_iff_integrable]
      refine ⟨hwm, ?_⟩
      show ∫⁻ x, ‖w x‖ₑ ∂(volume.restrict T) < ⊤
      simp only [Real.enorm_eq_ofReal_abs]
      calc ∫⁻ x in T, ENNReal.ofReal |w x|
          = ∫⁻ x in T, liminf (fun n => ENNReal.ofReal |u n x|) atTop := by
            refine lintegral_congr_ae ?_
            filter_upwards [hae] with x hx
            exact ((ENNReal.tendsto_ofReal hx.abs).liminf_eq).symm
        _ ≤ liminf (fun n => ∫⁻ x in T, ENNReal.ofReal |u n x|) atTop :=
            lintegral_liminf_le' fun n => (hu n).abs.ennreal_ofReal.aemeasurable
        _ ≤ D := Filter.liminf_le_of_frequently_le' (Filter.Frequently.of_forall hbd)
        _ < ⊤ := hD.lt_top
    have hUI : UnifIntegrable u 1 (volume.restrict T) := by
      intro ε hε
      obtain ⟨η, hη, h⟩ := hui ε hε
      refine ⟨η, hη, fun i s hs hsη => ?_⟩
      rw [Measure.restrict_apply hs] at hsη
      rw [eLpNorm_one_eq_lintegral_enorm]
      simp_rw [enorm_indicator_eq_indicator_enorm]
      rw [lintegral_indicator hs, Measure.restrict_restrict hs]
      simp only [Real.enorm_eq_ofReal_abs]
      exact h i s hs hsη
    have := tendsto_Lp_finite_of_tendsto_ae (p := 1) le_rfl ENNReal.one_ne_top hsm hwL hUI hae
    refine this.congr fun n => ?_
    rw [eLpNorm_one_eq_lintegral_enorm]
    simp only [Pi.sub_apply, Real.enorm_eq_ofReal_abs]
  
  obtain ⟨N, G, hG, hGB, hG0, hGN⟩ := t_s3 u w y r hr hu hae
  obtain ⟨Q, hQdef⟩ : ∃ Q : ENNReal,
      Q = ENNReal.ofReal (max C 0 * r) * volume (Metric.ball (0 : E3) r) := ⟨_, rfl⟩
  have hQ : ∀ i, ∫⁻ x in Metric.ball y (r / 2), ∫⁻ h in Metric.ball (0 : E3) r,
      ENNReal.ofReal |u i (x + h) - u i x| ≤ Q := fun i => by
    rw [hQdef]
    exact t_s1 (u i) y r C r (hu i) le_rfl _ (Metric.ball_subset_ball (by linarith)) (hmod i)
  have hQt : Q ≠ ⊤ := by
    rw [hQdef]; exact ENNReal.mul_ne_top ENNReal.ofReal_ne_top measure_ball_lt_top.ne
  have hfin : ∀ j, ∫⁻ x in Metric.ball y (r / 2), ENNReal.ofReal |u j x| ≠ ⊤ := by
    intro j
    have h1 : ∫⁻ x in Metric.ball y (r / 2), ENNReal.ofReal |u j x| ≤
        ∫⁻ x in Metric.ball y (2 * r), ENNReal.ofReal |u j x| :=
      lintegral_mono_set (Metric.ball_subset_ball (by linarith))
    have h2 : ∫⁻ x in Metric.ball y (2 * r), ENNReal.ofReal |u j x| < ⊤ := by
      have := (hint j).hasFiniteIntegral
      simpa [HasFiniteIntegral, Real.enorm_eq_ofReal_abs] using this
    exact (lt_of_le_of_lt h1 h2).ne
  obtain ⟨D, hDdef⟩ : ∃ D : ENNReal,
      D = Q / volume G + ENNReal.ofReal (N : ℝ) * volume (Metric.ball y (r / 2)) +
        ∑ j ∈ Finset.range N, ∫⁻ x in Metric.ball y (r / 2), ENNReal.ofReal |u j x| :=
    ⟨_, rfl⟩
  have hD : D ≠ ⊤ := by
    rw [hDdef]
    refine ENNReal.add_ne_top.2 ⟨ENNReal.add_ne_top.2 ⟨(ENNReal.div_lt_top hQt hG0.ne').ne,
      ENNReal.mul_ne_top ENNReal.ofReal_ne_top measure_ball_lt_top.ne⟩, ?_⟩
    exact ENNReal.sum_ne_top.2 fun j _ => hfin j
  have hbd1 : ∀ i, ∫⁻ x in Metric.ball y (r / 2), ENNReal.ofReal |u i x| ≤ D := by
    intro i
    rw [hDdef]
    by_cases hi : N ≤ i
    · calc _ ≤ Q / volume G + ENNReal.ofReal (N : ℝ) * volume (Metric.ball y (r / 2)) :=
            t_s2 (u i) y r N Q (hu i) G hG hGB hG0 (hGN i hi) (hQ i)
        _ ≤ _ := le_add_right le_rfl
    · have hmem : i ∈ Finset.range N := Finset.mem_range.2 (lt_of_not_ge hi)
      calc _ ≤ ∑ j ∈ Finset.range N, ∫⁻ x in Metric.ball y (r / 2), ENNReal.ofReal |u j x| :=
            Finset.single_le_sum
              (f := fun j => ∫⁻ x in Metric.ball y (r / 2), ENNReal.ofReal |u j x|)
              (fun _ _ => zero_le _) hmem
        _ ≤ _ := le_add_left le_rfl
  
  have hmean : ∀ (i : ℕ) (δ : ℝ), 0 < δ → δ ≤ r / 4 → ∀ s : Set E3, MeasurableSet s →
      volume (Metric.ball (0 : E3) δ) *
          ∫⁻ x in s ∩ Metric.ball y (r / 4), ENNReal.ofReal |u i x| ≤
        volume (s ∩ Metric.ball y (r / 4)) * D +
          ENNReal.ofReal (max C 0 * δ) * volume (Metric.ball (0 : E3) δ) := by
    intro i δ hδ hδr s hs
    have hA : MeasurableSet (s ∩ Metric.ball y (r / 4)) := hs.inter measurableSet_ball
    have hAB : s ∩ Metric.ball y (r / 4) ⊆ Metric.ball y (r / 4) := Set.inter_subset_right
    refine (t_s4 (u i) y r δ (hu i) hδr _ hA hAB).trans ?_
    gcongr ?_ + ?_
    · exact mul_le_mul_left' (hbd1 i) _
    · exact t_s1 (u i) y r C δ (hu i) (by linarith) _
        (hAB.trans (Metric.ball_subset_ball (by linarith))) (hmod i)
  
  have hui := t_s5 u (Metric.ball y (r / 4)) D hD (max C 0) (r / 4) (by positivity)
    (le_max_right C 0) hmean
  exact t_s6 u w (Metric.ball y (r / 4)) measure_ball_lt_top.ne hu D hD
    (fun i => (lintegral_mono_set (Metric.ball_subset_ball (by linarith))).trans (hbd1 i)) hui
    (ae_restrict_of_ae_restrict_of_subset (Metric.ball_subset_ball (by linarith)) hae)

theorem dual_ae_conv_chart_L1 [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (Ω Kc : Set M) (hΩ : IsOpen Ω) (φ₀ : M → ℝ) (hφ₀m : dualChartMeas φ₀)
    (hfin₀ : dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc < ⊤)
    (ns : ℕ → M → ℤ) (hns : ∀ i (j : ℤ), sepChartMeas {x | ns i x = j})
    (B : ENNReal) (hB : B < ⊤)
    (hbd : ∀ i, dualRiemVar g (fun x => (Ψ x : ℂ))
      (fun x => φ₀ x + 2 * Real.pi * (ns i x : ℝ)) Ω Kc ≤ B)
    (n : M → ℤ) (hn : ∀ j : ℤ, sepChartMeas {x | n x = j})
    (Z : Set M) (hZ : sepChartNull Z)
    (hconv : ∀ x : M, x ∉ Z → ∀ᶠ i in Filter.atTop, ns i x = n x) :
    ∀ (p : M) (C : Set E3), IsCompact C →
      C ⊆ chartAt E3 p '' (Ω ∩ (chartAt E3 p).source) →
      Filter.Tendsto (fun i => ∫⁻ y in C,
        ENNReal.ofReal |(φ₀ ((chartAt E3 p).symm y) +
            2 * Real.pi * (ns i ((chartAt E3 p).symm y) : ℝ)) -
          (φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ))|)
        Filter.atTop (𝓝 0) :=
by
  classical
  intro p C hC hCU
  set κ := chartAt E3 p with hκ
  
  have hUo : IsOpen (κ '' (Ω ∩ κ.source)) := by
    rw [Set.inter_comm]; exact κ.isOpen_image_source_inter hΩ
  have hUt : κ '' (Ω ∩ κ.source) ⊆ κ.target := by
    rintro _ ⟨x, hx, rfl⟩; exact κ.map_source hx.2
  
  obtain ⟨f, hf⟩ : ∃ f : ℕ → E3 → ENNReal, ∀ i y, f i y =
      ENNReal.ofReal |((ns i (κ.symm y) : ℝ)) - (n (κ.symm y) : ℝ)| := ⟨_, fun _ _ => rfl⟩
  
  have hred : ∀ i, (∫⁻ y in C, ENNReal.ofReal |(φ₀ (κ.symm y) +
        2 * Real.pi * (ns i (κ.symm y) : ℝ)) -
        (φ₀ (κ.symm y) + 2 * Real.pi * (n (κ.symm y) : ℝ))|) =
      ENNReal.ofReal (2 * Real.pi) * ∫⁻ y in C, f i y := by
    intro i
    rw [← lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
    refine lintegral_congr (fun y => ?_)
    rw [hf]
    have e1 : (φ₀ (κ.symm y) + 2 * Real.pi * (ns i (κ.symm y) : ℝ)) -
        (φ₀ (κ.symm y) + 2 * Real.pi * (n (κ.symm y) : ℝ)) =
        (2 * Real.pi) * ((ns i (κ.symm y) : ℝ) - (n (κ.symm y) : ℝ)) := by ring
    rw [e1, abs_mul, abs_of_pos Real.two_pi_pos, ENNReal.ofReal_mul Real.two_pi_pos.le]
  suffices hFC : Tendsto (fun i => ∫⁻ y in C, f i y) atTop (𝓝 0) by
    have h := ENNReal.Tendsto.const_mul hFC
      (Or.inr (ENNReal.ofReal_ne_top (r := 2 * Real.pi)))
    rw [mul_zero] at h
    exact h.congr (fun i => (hred i).symm)
  
  have hmeasHat : ∀ m : M → ℤ, (∀ j : ℤ, sepChartMeas {x | m x = j}) →
      Measurable (κ.target.indicator (fun y => (m (κ.symm y) : ℝ))) := by
    intro m hm
    have hf' : Measurable (κ.target.indicator (fun y => m (κ.symm y))) := by
      apply measurable_to_countable'
      intro j
      have h1 : κ.target.indicator (fun y => m (κ.symm y)) ⁻¹' {j} =
          (κ.target ∩ κ.symm ⁻¹' {x | m x = j}) ∪
            (κ.targetᶜ ∩ {_y : E3 | (0 : ℤ) = j}) := by
        ext y
        by_cases hy : y ∈ κ.target <;> simp [Set.indicator, hy]
      have hmj : MeasurableSet (κ.target ∩ κ.symm ⁻¹' {x | m x = j}) := by
        rw [← κ.image_source_inter_eq', Set.inter_comm]; exact hm j p
      rw [h1]
      exact hmj.union (κ.open_target.measurableSet.compl.inter (MeasurableSet.const _))
    have hcast : Measurable (fun z : ℤ => (z : ℝ)) := measurable_of_countable _
    have h2 := hcast.comp hf'
    convert h2 using 1
    funext y
    by_cases hy : y ∈ κ.target <;> simp [Set.indicator, hy]
  
  obtain ⟨û, hû⟩ : ∃ û : ℕ → E3 → ℝ, ∀ i y, û i y =
      κ.target.indicator (fun y => (ns i (κ.symm y) : ℝ)) y := ⟨_, fun _ _ => rfl⟩
  obtain ⟨ŵ, hŵ⟩ : ∃ ŵ : E3 → ℝ, ∀ y, ŵ y =
      κ.target.indicator (fun y => (n (κ.symm y) : ℝ)) y := ⟨_, fun _ => rfl⟩
  have hu : ∀ i, Measurable (û i) := by
    intro i
    have e : û i = κ.target.indicator (fun y => (ns i (κ.symm y) : ℝ)) := funext (hû i)
    rw [e]; exact hmeasHat (ns i) (hns i)
  have hEi : ∀ i, dualRiemVar g (fun x => (Ψ x : ℂ))
      (fun x => φ₀ x + 2 * Real.pi * (ns i x : ℝ)) Ω Kc < ⊤ :=
    fun i => lt_of_le_of_lt (hbd i) hB
  
  have hrad : ∀ z ∈ κ '' (Ω ∩ κ.source), ∃ R : ℝ, 0 < R ∧
      Metric.closedBall z R ⊆ κ '' (Ω ∩ κ.source) := by
    intro z hz
    obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.1 hUo z hz
    exact ⟨ε / 2, by linarith, (Metric.closedBall_subset_ball (by linarith)).trans hball⟩
  choose! Rf hRpos hRsub using hrad
  
  have hball : ∀ z ∈ C, Tendsto (fun i => ∫⁻ y in Metric.ball z (Rf z / 12), f i y)
      atTop (𝓝 0) := by
    intro z hzC
    have hzU := hCU hzC
    have hR := hRpos z hzU
    have hRs := hRsub z hzU
    have hRt : Metric.closedBall z (Rf z) ⊆ κ.target := hRs.trans hUt
    have hballt : Metric.ball z (Rf z) ⊆ κ.target := Metric.ball_subset_closedBall.trans hRt
    obtain ⟨A, hA0, hAn⟩ := dual_chart_tv_bound g Ψ hΨs Ω Kc hΩ φ₀ hfin₀ p z (Rf z) hR hRs
    obtain ⟨Λ, hΛ⟩ : ∃ Λ : ℝ, Λ = A * (B.toReal +
        (dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc).toReal) := ⟨_, rfl⟩
    have hTVi : ∀ i, ∀ Y : E3 → E3, ContDiff ℝ ∞ Y → HasCompactSupport Y →
        tsupport Y ⊆ Metric.ball z (Rf z) → (∀ y, ‖Y y‖ ≤ 1) →
        ∫ y, û i y * ∑ k : Fin 3, partialDeriv k (fun w => Y w k) y ≤ Λ := by
      intro i Y hY hYc hYs hY1
      have heq : (fun y => û i y * ∑ k : Fin 3, partialDeriv k (fun w => Y w k) y) =
          (fun y => (ns i (κ.symm y) : ℝ) * ∑ k : Fin 3, partialDeriv k (fun w => Y w k) y) := by
        funext y
        by_cases hy : y ∈ κ.target
        · rw [hû, Set.indicator_of_mem hy]
        · have hyY : y ∉ tsupport Y := fun h => hy (hballt (hYs h))
          have hev := (notMem_tsupport_iff_eventuallyEq).1 hyY
          have hdiv : ∑ k : Fin 3, partialDeriv k (fun w => Y w k) y = 0 := by
            apply Finset.sum_eq_zero
            intro k _
            have hevk : (fun w => Y w k) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) :=
              hev.mono (fun w hw => by simp [hw])
            unfold partialDeriv
            rw [hevk.fderiv_eq, fderiv_const_apply]
            simp
          rw [hdiv, mul_zero, mul_zero]
      rw [heq]
      refine ((hAn (ns i) (hEi i)).2 Y hY hYc hYs hY1).trans ?_
      rw [hΛ]
      apply mul_le_mul_of_nonneg_left _ hA0
      have := ENNReal.toReal_mono hB.ne (hbd i)
      linarith
    have hint3 : ∀ i, MeasureTheory.IntegrableOn (û i) (Metric.ball z (Rf z)) := by
      intro i
      have h1 := ((hAn (ns i) (hEi i)).1).mono_set Metric.ball_subset_closedBall
      refine h1.congr_fun (fun y hy => ?_) measurableSet_ball
      rw [hû, Set.indicator_of_mem (hballt hy)]
    have h3r : 3 * (Rf z / 3) = Rf z := by ring
    have hmod : ∀ (i : ℕ) (h : E3), ‖h‖ ≤ Rf z / 3 →
        ∫⁻ x in Metric.ball z (Rf z / 3), ENNReal.ofReal |û i (x + h) - û i x| ≤
          ENNReal.ofReal ((2 * Λ) * ‖h‖) := by
      intro i h hh
      have h1 : ∫⁻ x in Metric.ball z (Rf z / 3), ENNReal.ofReal |û i (x + h) - û i x| ≤
          ENNReal.ofReal (2 * ‖h‖ * Λ) := by
        first
          | exact int_translate_le (M := M) (û i) z (Rf z / 3) Λ (by linarith)
              (by rw [h3r]; exact hint3 i) (by rw [h3r]; exact hTVi i) h hh
          | exact int_translate_le (û i) z (Rf z / 3) Λ (by linarith)
              (by rw [h3r]; exact hint3 i) (by rw [h3r]; exact hTVi i) h hh
      calc _ ≤ _ := h1
        _ = _ := by congr 1; ring
    have hN : volume (κ '' (Z ∩ κ.source)) = 0 := hZ p
    have hae : ∀ᵐ x ∂(MeasureTheory.volume.restrict (Metric.ball z (Rf z / 3))),
        Filter.Tendsto (fun i => û i x) Filter.atTop (𝓝 (ŵ x)) := by
      rw [ae_restrict_iff' measurableSet_ball]
      filter_upwards [measure_eq_zero_iff_ae_notMem.1 hN] with y hyN hyB
      have hyt : y ∈ κ.target := hballt (Metric.ball_subset_ball (by linarith) hyB)
      have hxs : κ.symm y ∈ κ.source := κ.map_target hyt
      have hxZ : κ.symm y ∉ Z := fun h => hyN ⟨κ.symm y, ⟨h, hxs⟩, κ.right_inv hyt⟩
      have hev := hconv _ hxZ
      refine tendsto_const_nhds.congr' ?_
      filter_upwards [hev] with i hi
      rw [hû, hŵ, Set.indicator_of_mem hyt, Set.indicator_of_mem hyt, hi]
    have hL1 : Tendsto (fun i => ∫⁻ x in Metric.ball z (Rf z / 3 / 4),
        ENNReal.ofReal |û i x - ŵ x|) atTop (𝓝 0) := by
      first
        | exact ae_tendsto_L1_of_translate (M := M) û ŵ z (Rf z / 3) (2 * Λ) (by linarith) hu
            (fun i => (hint3 i).mono_set (Metric.ball_subset_ball (by linarith))) hmod hae
        | exact ae_tendsto_L1_of_translate û ŵ z (Rf z / 3) (2 * Λ) (by linarith) hu
            (fun i => (hint3 i).mono_set (Metric.ball_subset_ball (by linarith))) hmod hae
    have h12 : Rf z / 3 / 4 = Rf z / 12 := by ring
    rw [h12] at hL1
    refine hL1.congr (fun i => ?_)
    apply setLIntegral_congr_fun measurableSet_ball
    intro y hy
    have hyt : y ∈ κ.target := hballt (Metric.ball_subset_ball (by linarith) hy)
    simp only [hû, hŵ, hf, Set.indicator_of_mem hyt]
  
  obtain ⟨t, htC, hcov⟩ := hC.elim_nhds_subcover (fun z => Metric.ball z (Rf z / 12))
    (fun z hz => Metric.ball_mem_nhds z (by have := hRpos z (hCU hz); linarith))
  have hunion : ∀ (s : Finset E3) (i : ℕ),
      ∫⁻ y in (⋃ z ∈ s, Metric.ball z (Rf z / 12)), f i y ≤
        ∑ z ∈ s, ∫⁻ y in Metric.ball z (Rf z / 12), f i y := by
    intro s i
    induction s using Finset.induction_on with
    | empty => simp
    | insert a s ha ih =>
      rw [Finset.set_biUnion_insert, Finset.sum_insert ha]
      exact (lintegral_union_le _ _ _).trans (add_le_add le_rfl ih)
  
  have hsum : Tendsto (fun i => ∑ z ∈ t, ∫⁻ y in Metric.ball z (Rf z / 12), f i y)
      atTop (𝓝 0) := by
    have h := tendsto_finset_sum t (fun z hz => hball z (htC z hz))
    simpa using h
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds hsum
    (fun i => zero_le _) (fun i => ?_)
  exact (lintegral_mono_set hcov).trans (hunion t i)

theorem dualRiemVar_lsc [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : M → ℂ) (Ω Kc : Set M) (hΩ : IsOpen Ω) (φs : ℕ → M → ℝ) (φ : M → ℝ)
    (hφm : dualChartMeas φ) (c : ENNReal)
    (hle : ∀ i : ℕ, dualRiemVar g Ψ (φs i) Ω Kc ≤ c + ENNReal.ofReal (1 / ((i : ℝ) + 1)))
    (hconv : ∀ (p : M) (C : Set E3), IsCompact C →
      C ⊆ chartAt E3 p '' (Ω ∩ (chartAt E3 p).source) →
      Filter.Tendsto (fun i => ∫⁻ y in C,
        ENNReal.ofReal |φs i ((chartAt E3 p).symm y) - φ ((chartAt E3 p).symm y)|)
        Filter.atTop (𝓝 0)) :
    dualRiemVar g Ψ φ Ω Kc ≤ c :=
by
  classical
  
  have s2 : ∀ {ι : Type} {n : ℕ} (f : Fin n → ι → ENNReal) (c : ENNReal),
      (∀ x : Fin n → ι, ∑ k, f k (x k) ≤ c) → ∑ k, ⨆ i, f k i ≤ c := by
    intro ι n f c h
    have h1 : ∀ k, (⨆ i, f k i) = ⨆ x : Fin n → ι, f k (x k) := by
      intro k
      apply le_antisymm
      · exact iSup_le fun i => le_iSup_of_le (fun _ => i) le_rfl
      · exact iSup_le fun x => le_iSup _ (x k)
    rw [Finset.sum_congr rfl (fun k _ => h1 k), ENNReal.finsetSum_iSup]
    · exact iSup_le h
    · intro x y
      refine ⟨fun a => if f a (x a) ≤ f a (y a) then y a else x a, fun a => ?_⟩
      by_cases hxy : f a (x a) ≤ f a (y a)
      · dsimp only; rw [if_pos hxy]; exact ⟨hxy, le_rfl⟩
      · dsimp only; rw [if_neg hxy]; exact ⟨le_rfl, (le_total _ _).resolve_left hxy⟩
  
  have s3 : ∀ (V : Set E3), IsOpen V → ∀ (u : ℕ → E3 → ℝ) (w : E3 → ℝ),
      (∀ n, LocallyIntegrableOn (u n) V) →
      (∀ K : Set E3, IsCompact K → K ⊆ V → AEStronglyMeasurable w (volume.restrict K)) →
      (∀ K : Set E3, IsCompact K → K ⊆ V →
        Tendsto (fun n => ∫⁻ y in K, ENNReal.ofReal |u n y - w y|) atTop (𝓝 0)) →
      LocallyIntegrableOn w V := by
    intro V hV u w hu hw hcv
    rw [locallyIntegrableOn_iff hV.isLocallyClosed]
    intro K hKV hK
    obtain ⟨n, hn⟩ := ((hcv K hK hKV).eventually (gt_mem_nhds zero_lt_one)).exists
    have h1 : IntegrableOn (u n) K := (hu n).integrableOn_compact_subset hKV hK
    have h2 : IntegrableOn (fun y => u n y - w y) K := by
      refine ⟨h1.aestronglyMeasurable.sub (hw K hK hKV), ?_⟩
      rw [HasFiniteIntegral]
      simp_rw [Real.enorm_eq_ofReal_abs]
      exact lt_trans hn ENNReal.one_lt_top
    have h3 : IntegrableOn (fun y => u n y - (u n y - w y)) K := Integrable.sub h1 h2
    exact h3.congr_fun (fun y _ => sub_sub_cancel _ _) hK.measurableSet
  
  have s4 : ∀ (D T : E3 → ℝ) (K : Set E3) (C : ℝ), MeasurableSet K → Measurable D →
      (∀ y, |D y| ≤ C) → (∀ y, y ∉ K → D y = 0) → ∀ (u : ℕ → E3 → ℝ) (w : E3 → ℝ),
      (∀ n, IntegrableOn (u n) K) → IntegrableOn w K →
      Tendsto (fun n => ∫⁻ y in K, ENNReal.ofReal |u n y - w y|) atTop (𝓝 0) →
      Tendsto (fun n => ∫ y, (u n y * D y + T y)) atTop (𝓝 (∫ y, (w y * D y + T y))) := by
    intro D T K C hKm hDm hC hD0 u w hu hw hcv
    have hprod : ∀ f : E3 → ℝ, IntegrableOn f K → Integrable (fun y => f y * D y) := by
      intro f hf
      have h1 : IntegrableOn (fun y => f y * D y) K :=
        Integrable.mul_bdd hf hDm.aestronglyMeasurable (Eventually.of_forall fun y => by
          rw [Real.norm_eq_abs]; exact hC y)
      exact h1.integrable_of_forall_notMem_eq_zero fun y hy => by simp [hD0 y hy]
    by_cases hTi : Integrable T
    · rw [tendsto_iff_norm_sub_tendsto_zero]
      have hbound : ∀ n, ‖(∫ y, (u n y * D y + T y)) - ∫ y, (w y * D y + T y)‖ ≤
          C * (∫⁻ y in K, ENNReal.ofReal |u n y - w y|).toReal := by
        intro n
        have hdiff : IntegrableOn (fun y => u n y - w y) K := Integrable.sub (hu n) hw
        have habs : IntegrableOn (fun y => C * |u n y - w y|) K :=
          Integrable.const_mul (Integrable.abs hdiff) C
        have hgi : Integrable (K.indicator fun y => C * |u n y - w y|) :=
          habs.integrable_indicator hKm
        have heq : (∫ y, (u n y * D y + T y)) - ∫ y, (w y * D y + T y) =
            ∫ y, (u n y - w y) * D y := by
          rw [integral_add (hprod _ (hu n)) hTi, integral_add (hprod _ hw) hTi,
            add_sub_add_right_eq_sub, ← integral_sub (hprod _ (hu n)) (hprod _ hw)]
          congr 1
          funext y
          ring
        rw [heq]
        calc ‖∫ y, (u n y - w y) * D y‖
            ≤ ∫ y, K.indicator (fun y => C * |u n y - w y|) y := by
              refine norm_integral_le_of_norm_le hgi (Eventually.of_forall fun y => ?_)
              by_cases hy : y ∈ K
              · rw [Set.indicator_of_mem hy, norm_mul, Real.norm_eq_abs, Real.norm_eq_abs,
                  mul_comm]
                exact mul_le_mul_of_nonneg_right (hC y) (abs_nonneg _)
              · rw [Set.indicator_of_notMem hy, hD0 y hy]
                simp
          _ = C * ∫ y in K, |u n y - w y| := by
              rw [integral_indicator hKm, integral_const_mul]
          _ = C * (∫⁻ y in K, ENNReal.ofReal |u n y - w y|).toReal := by
              rw [integral_eq_lintegral_of_nonneg_ae (ae_of_all _ fun y => abs_nonneg _)
                (Integrable.abs hdiff).aestronglyMeasurable]
      have hlim : Tendsto (fun n => C * (∫⁻ y in K, ENNReal.ofReal |u n y - w y|).toReal)
          atTop (𝓝 0) := by
        have := ((ENNReal.tendsto_toReal ENNReal.zero_ne_top).comp hcv).const_mul C
        simpa using this
      exact squeeze_zero (fun n => norm_nonneg _) hbound hlim
    · have hz : ∀ f : E3 → ℝ, IntegrableOn f K → ∫ y, (f y * D y + T y) = 0 := by
        intro f hf
        apply integral_undef
        intro hi
        apply hTi
        have := hi.sub (hprod f hf)
        convert this using 1
        funext y
        simp
      have hfun : (fun n => ∫ y, (u n y * D y + T y)) = fun _ => (0 : ℝ) :=
        funext fun n => hz _ (hu n)
      rw [hfun, hz _ hw]
      exact tendsto_const_nhds
  
  have hDmeas : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3),
      Measurable (sepDensDiv G X) := by
    intro G X
    unfold sepDensDiv partialDeriv
    exact Finset.measurable_sum _ fun i _ => measurable_fderiv_apply_const ℝ _ _
  have hD0 : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (y : E3),
      y ∉ tsupport X → sepDensDiv G X y = 0 := by
    intro G X y hy
    have hev : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.1 hy
    unfold sepDensDiv partialDeriv
    refine Finset.sum_eq_zero fun i _ => ?_
    have h2 : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) := by
      filter_upwards [hev] with z hz
      simp [hz]
    rw [h2.fderiv_eq]
    simp
  
  rcases eq_or_ne c ⊤ with hc | hc
  · rw [hc]; exact le_top
  have hfin : ∀ i, dualRiemVar g Ψ (φs i) Ω Kc < ⊤ := fun i =>
    lt_of_le_of_lt (hle i) (ENNReal.add_lt_top.2 ⟨lt_top_iff_ne_top.2 hc, ENNReal.ofReal_lt_top⟩)
  
  unfold dualRiemVar
  refine iSup_le fun n => iSup_le fun p => iSup_le fun W => iSup_le fun hfam => ?_
  have hVo : ∀ k, IsOpen (chartAt E3 (p k) '' W k) := fun k =>
    (chartAt E3 (p k)).isOpen_image_of_subset_source (hfam.1 k).1
      ((hfam.1 k).2.trans Set.inter_subset_right)
  have hVΩ : ∀ k, chartAt E3 (p k) '' W k ⊆
      chartAt E3 (p k) '' (Ω ∩ (chartAt E3 (p k)).source) := fun k =>
    Set.image_mono (hfam.1 k).2
  have hVt : ∀ k, chartAt E3 (p k) '' W k ⊆ (chartAt E3 (p k)).target := by
    rintro k _ ⟨x, hx, rfl⟩
    exact (chartAt E3 (p k)).map_source ((hfam.1 k).2 hx).2
  have hsum_le : ∀ i, ∑ k, dualVarG (g.coeff (chartAt E3 (p k)).symm) (dualOmega Ψ (p k))
      (fun y => φs i ((chartAt E3 (p k)).symm y)) (chartAt E3 (p k) '' W k)
      (chartAt E3 (p k) '' (Kc ∩ (chartAt E3 (p k)).source)) ≤
      dualRiemVar g Ψ (φs i) Ω Kc := fun i => by
    unfold dualRiemVar
    exact le_iSup_of_le n (le_iSup_of_le p (le_iSup_of_le W (le_iSup_of_le hfam le_rfl)))
  
  have hLIi : ∀ i k, LocallyIntegrableOn (fun y => φs i ((chartAt E3 (p k)).symm y))
      (chartAt E3 (p k) '' W k) := by
    intro i k
    by_contra hni
    have h1 : dualVarG (g.coeff (chartAt E3 (p k)).symm) (dualOmega Ψ (p k))
        (fun y => φs i ((chartAt E3 (p k)).symm y)) (chartAt E3 (p k) '' W k)
        (chartAt E3 (p k) '' (Kc ∩ (chartAt E3 (p k)).source)) = ⊤ := by
      unfold dualVarG
      rw [iSup_pos hni]
      exact top_sup_eq _
    have h2 := (Finset.single_le_sum (f := fun k => dualVarG (g.coeff (chartAt E3 (p k)).symm)
        (dualOmega Ψ (p k)) (fun y => φs i ((chartAt E3 (p k)).symm y))
        (chartAt E3 (p k) '' W k) (chartAt E3 (p k) '' (Kc ∩ (chartAt E3 (p k)).source)))
      (fun _ _ => zero_le _) (Finset.mem_univ k)).trans (hsum_le i)
    simp only at h2
    rw [h1] at h2
    exact absurd (lt_of_le_of_lt h2 (hfin i)) (lt_irrefl _)
  
  have hLI : ∀ k, LocallyIntegrableOn (fun y => φ ((chartAt E3 (p k)).symm y))
      (chartAt E3 (p k) '' W k) := by
    intro k
    refine s3 _ (hVo k) (fun i y => φs i ((chartAt E3 (p k)).symm y)) _ (fun i => hLIi i k) ?_ ?_
    · intro K hK hKV
      refine (hφm (p k)).aestronglyMeasurable.congr ?_
      refine (ae_restrict_iff' hK.measurableSet).2 (Eventually.of_forall fun y hy => ?_)
      exact Set.indicator_of_mem (hVt k (hKV hy)) _
    · intro K hK hKV
      exact hconv (p k) K hK (hKV.trans (hVΩ k))
  
  obtain ⟨F, hFdef, hFeq⟩ : ∃ F : (E3 → ℝ) → Fin n → (E3 → E3) → ENNReal,
      (∀ v k X, F v k X =
        ⨆ (_ : (∀ y, y ∉ chartAt E3 (p k) '' (Kc ∩ (chartAt E3 (p k)).source) →
            ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
          tsupport X ⊆ chartAt E3 (p k) '' W k ∧
          (∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
            g.coeff (chartAt E3 (p k)).symm y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv (g.coeff (chartAt E3 (p k)).symm) X y| ≤ C),
        ENNReal.ofReal (∫ y, (v y * sepDensDiv (g.coeff (chartAt E3 (p k)).symm) X y +
          Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
            ∑ i : Fin 3, dualOmega Ψ (p k) y i * X y i))) ∧
      ∀ v k, dualVarG (g.coeff (chartAt E3 (p k)).symm) (dualOmega Ψ (p k)) v
          (chartAt E3 (p k) '' W k) (chartAt E3 (p k) '' (Kc ∩ (chartAt E3 (p k)).source)) =
        (⨆ (_ : ¬ LocallyIntegrableOn v (chartAt E3 (p k) '' W k)), (⊤ : ENNReal)) ⊔
          ⨆ X, F v k X :=
    ⟨fun v k X =>
      ⨆ (_ : (∀ y, y ∉ chartAt E3 (p k) '' (Kc ∩ (chartAt E3 (p k)).source) →
            ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
          tsupport X ⊆ chartAt E3 (p k) '' W k ∧
          (∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
            g.coeff (chartAt E3 (p k)).symm y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv (g.coeff (chartAt E3 (p k)).symm) X y| ≤ C),
        ENNReal.ofReal (∫ y, (v y * sepDensDiv (g.coeff (chartAt E3 (p k)).symm) X y +
          Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
            ∑ i : Fin 3, dualOmega Ψ (p k) y i * X y i)),
      fun _ _ _ => rfl, fun _ _ => rfl⟩
  have hlimEq : ∀ k, dualVarG (g.coeff (chartAt E3 (p k)).symm) (dualOmega Ψ (p k))
      (fun y => φ ((chartAt E3 (p k)).symm y)) (chartAt E3 (p k) '' W k)
      (chartAt E3 (p k) '' (Kc ∩ (chartAt E3 (p k)).source)) =
      ⨆ X, F (fun y => φ ((chartAt E3 (p k)).symm y)) k X := by
    intro k
    rw [hFeq, iSup_neg (not_not_intro (hLI k)), bot_sup_eq]
  have happrox : ∀ (i : ℕ) (x : Fin n → (E3 → E3)),
      ∑ k, F (fun y => φs i ((chartAt E3 (p k)).symm y)) k (x k) ≤
        c + ENNReal.ofReal (1 / ((i : ℝ) + 1)) := by
    intro i x
    refine le_trans ?_ ((hsum_le i).trans (hle i))
    refine Finset.sum_le_sum fun k _ => ?_
    rw [hFeq]
    exact le_sup_of_le_right (le_iSup (fun X => F _ k X) (x k))
  
  have hsel : ∀ x : Fin n → (E3 → E3),
      ∑ k, F (fun y => φ ((chartAt E3 (p k)).symm y)) k (x k) ≤ c := by
    intro x
    have hterm : ∀ k, Tendsto (fun i => F (fun y => φs i ((chartAt E3 (p k)).symm y)) k (x k))
        atTop (𝓝 (F (fun y => φ ((chartAt E3 (p k)).symm y)) k (x k))) := by
      intro k
      by_cases hadm : (∀ y, y ∉ chartAt E3 (p k) '' (Kc ∩ (chartAt E3 (p k)).source) →
            ContDiffAt ℝ ∞ (x k) y) ∧ HasCompactSupport (x k) ∧
          tsupport (x k) ⊆ chartAt E3 (p k) '' W k ∧
          (∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
            g.coeff (chartAt E3 (p k)).symm y i j * x k y i * x k y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv (g.coeff (chartAt E3 (p k)).symm) (x k) y| ≤ C
      · simp only [hFdef, iSup_pos hadm]
        obtain ⟨-, hXc, hsub, -, C, hC⟩ := hadm
        have h := s4 (sepDensDiv (g.coeff (chartAt E3 (p k)).symm) (x k))
          (fun y => Real.sqrt (g.coeff (chartAt E3 (p k)).symm y).det *
            ∑ i : Fin 3, dualOmega Ψ (p k) y i * x k y i)
          (tsupport (x k)) C (isClosed_tsupport _).measurableSet (hDmeas _ _) hC (hD0 _ _)
          (fun i y => φs i ((chartAt E3 (p k)).symm y)) (fun y => φ ((chartAt E3 (p k)).symm y))
          (fun i => (hLIi i k).integrableOn_compact_subset hsub hXc.isCompact)
          ((hLI k).integrableOn_compact_subset hsub hXc.isCompact)
          (hconv (p k) _ hXc.isCompact (hsub.trans (hVΩ k)))
        exact (ENNReal.continuous_ofReal.tendsto _).comp h
      · simp only [hFdef, iSup_neg hadm]
        exact tendsto_const_nhds
    have hsumT := tendsto_finset_sum Finset.univ (fun k _ => hterm k)
    have hrhs : Tendsto (fun i : ℕ => c + ENNReal.ofReal (1 / ((i : ℝ) + 1))) atTop (𝓝 c) := by
      have h1 : Tendsto (fun i : ℕ => ENNReal.ofReal (1 / ((i : ℝ) + 1))) atTop (𝓝 0) := by
        rw [← ENNReal.ofReal_zero]
        exact (ENNReal.continuous_ofReal.tendsto 0).comp tendsto_one_div_add_atTop_nhds_zero_nat
      simpa using h1.const_add c
    exact le_of_tendsto_of_tendsto' hsumT hrhs (fun i => happrox i x)
  
  rw [Finset.sum_congr rfl fun k _ => hlimEq k]
  exact s2 _ c hsel

theorem dual_minimizer_exists [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (Ω Kv Kc : Set M) (hΩ : IsOpen Ω) (hKv : IsCompact Kv) (hKvΩ : Kv ⊆ Ω)
    (φ₀ : M → ℝ) (hφ₀m : dualChartMeas φ₀)
    (hfin₀ : dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc < ⊤) :
    ∃ n : M → ℤ, (∀ x : M, x ∉ Kv → n x = 0) ∧ (∀ j : ℤ, sepChartMeas {x | n x = j}) ∧
      ∀ n' : M → ℤ, (∀ x : M, x ∉ Kv → n' x = 0) → (∀ j : ℤ, sepChartMeas {x | n' x = j}) →
        dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc ≤
          dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ)) Ω Kc :=
by
  classical
  
  obtain ⟨E, hE⟩ : ∃ E : (M → ℤ) → ENNReal, ∀ n : M → ℤ, E n =
      dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc :=
    ⟨_, fun _ => rfl⟩
  
  have himg : ∀ (p : M) (S : Set M), chartAt E3 p '' (S ∩ (chartAt E3 p).source) =
      (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S := by
    intro p S
    rw [Set.inter_comm]
    exact (chartAt E3 p).image_source_inter_eq' S
  have hmeasIff : ∀ S : Set M, sepChartMeas S ↔
      ∀ p : M, MeasurableSet ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S) := by
    intro S
    simp only [sepChartMeas, himg]
  have hMU : ∀ {ι : Type} [Countable ι] (S : ι → Set M), (∀ i, sepChartMeas (S i)) →
      sepChartMeas (⋃ i, S i) := by
    intro ι _ S hS
    rw [hmeasIff]
    intro p
    rw [Set.preimage_iUnion, Set.inter_iUnion]
    exact MeasurableSet.iUnion fun i => (hmeasIff _).1 (hS i) p
  have hMC : ∀ S : Set M, sepChartMeas S → sepChartMeas Sᶜ := by
    intro S hS
    rw [hmeasIff]
    intro p
    have h1 : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' Sᶜ =
        (chartAt E3 p).target \ ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_compl_iff, Set.mem_diff]
      tauto
    rw [h1]
    exact (chartAt E3 p).open_target.measurableSet.diff ((hmeasIff S).1 hS p)
  have hMI : ∀ S : ℕ → Set M, (∀ i, sepChartMeas (S i)) → sepChartMeas (⋂ i, S i) := by
    intro S hS
    have h1 : (⋂ i, S i) = (⋃ i, (S i)ᶜ)ᶜ := by
      rw [Set.compl_iUnion]
      simp only [compl_compl]
    rw [h1]
    exact hMC _ (hMU _ fun i => hMC _ (hS i))
  have hMuniv : sepChartMeas (Set.univ : Set M) := by
    rw [hmeasIff]
    intro p
    simpa only [Set.preimage_univ, Set.inter_univ] using (chartAt E3 p).open_target.measurableSet
  have hMunion : ∀ S T : Set M, sepChartMeas S → sepChartMeas T → sepChartMeas (S ∪ T) := by
    intro S T hS hT
    rw [hmeasIff]
    intro p
    rw [Set.preimage_union, Set.inter_union_distrib_left]
    exact ((hmeasIff S).1 hS p).union ((hmeasIff T).1 hT p)
  
  have h0K : ∀ x : M, x ∉ Kv → (fun _ => (0 : ℤ)) x = 0 := fun _ _ => rfl
  have h0M : ∀ j : ℤ, sepChartMeas {x : M | (fun _ => (0 : ℤ)) x = j} := by
    intro j
    by_cases hj : (0 : ℤ) = j
    · have h1 : {x : M | (fun _ => (0 : ℤ)) x = j} = Set.univ := by
        ext x
        simp only [Set.mem_setOf_eq, Set.mem_univ, iff_true]
        exact hj
      rw [h1]
      exact hMuniv
    · have h1 : {x : M | (fun _ => (0 : ℤ)) x = j} = (Set.univ : Set M)ᶜ := by
        ext x
        simp only [Set.mem_setOf_eq, Set.compl_univ, Set.mem_empty_iff_false, iff_false]
        exact hj
      rw [h1]
      exact hMC _ hMuniv
  have hE0 : E (fun _ => 0) = dualRiemVar g (fun x => (Ψ x : ℂ)) φ₀ Ω Kc := by
    rw [hE]
    simp
  
  obtain ⟨m, hm⟩ : ∃ m : ENNReal, m = ⨅ (n' : M → ℤ)
      (_ : (∀ x : M, x ∉ Kv → n' x = 0) ∧ ∀ j : ℤ, sepChartMeas {x | n' x = j}), E n' :=
    ⟨_, rfl⟩
  have hm0 : m ≤ E (fun _ => 0) := by
    rw [hm]
    exact iInf₂_le (fun _ => (0 : ℤ)) ⟨h0K, h0M⟩
  have hfin0 : E (fun _ => 0) < ⊤ := by
    rw [hE0]
    exact hfin₀
  have hmtop : m < ⊤ := lt_of_le_of_lt hm0 hfin0
  have hseq : ∀ i : ℕ, ∃ n' : M → ℤ,
      ((∀ x : M, x ∉ Kv → n' x = 0) ∧ ∀ j : ℤ, sepChartMeas {x | n' x = j}) ∧
        E n' < m + ENNReal.ofReal (1 / ((i : ℝ) + 1)) := by
    intro i
    have hpos : (0 : ℝ) < 1 / ((i : ℝ) + 1) := by positivity
    have hlt : m < m + ENNReal.ofReal (1 / ((i : ℝ) + 1)) :=
      ENNReal.lt_add_right hmtop.ne (ENNReal.ofReal_pos.2 hpos).ne'
    have hlt2 : (⨅ (n' : M → ℤ)
        (_ : (∀ x : M, x ∉ Kv → n' x = 0) ∧ ∀ j : ℤ, sepChartMeas {x | n' x = j}), E n') <
          m + ENNReal.ofReal (1 / ((i : ℝ) + 1)) := by
      rw [← hm]
      exact hlt
    obtain ⟨n', hn'⟩ := iInf_lt_iff.1 hlt2
    obtain ⟨hC, hlt'⟩ := iInf_lt_iff.1 hn'
    exact ⟨n', hC, hlt'⟩
  choose ns hnsC hnsE using hseq
  obtain ⟨B, hBdef⟩ : ∃ B : ENNReal, B = E (fun _ => 0) + 1 := ⟨_, rfl⟩
  have hB : B < ⊤ := by
    rw [hBdef]
    exact ENNReal.add_lt_top.2 ⟨hfin0, ENNReal.one_lt_top⟩
  have hbd : ∀ i, E (ns i) ≤ B := by
    intro i
    rw [hBdef]
    refine (hnsE i).le.trans (add_le_add hm0 ?_)
    rw [ENNReal.ofReal_le_one, div_le_one (by positivity)]
    have : (0 : ℝ) ≤ (i : ℝ) := Nat.cast_nonneg i
    linarith
  
  obtain ⟨ψ, ms, hψ, hmsK, hmsM, hmsE, hbad⟩ :=
    dual_normalised_subseq g Ψ hΨs Ω Kv Kc hΩ hKv hKvΩ φ₀ hφ₀m hfin₀ ns
      (fun i => (hnsC i).1) (fun i => (hnsC i).2) B hB
      (fun i => by rw [← hE (ns i)]; exact hbd i)
  
  have huniq : ∀ (x : M) (j j' : ℤ), (∀ᶠ i in Filter.atTop, ms i x = j) →
      (∀ᶠ i in Filter.atTop, ms i x = j') → j = j' := by
    intro x j j' h1 h2
    obtain ⟨i, hi1, hi2⟩ := (h1.and h2).exists
    rw [← hi1, ← hi2]
  obtain ⟨nl, hnl⟩ : ∃ nl : M → ℤ, ∀ x, nl x =
      if h : ∃ j : ℤ, ∀ᶠ i in Filter.atTop, ms i x = j then h.choose else 0 :=
    ⟨_, fun _ => rfl⟩
  have hnl_spec : ∀ x, (∃ j : ℤ, ∀ᶠ i in Filter.atTop, ms i x = j) →
      ∀ᶠ i in Filter.atTop, ms i x = nl x := by
    intro x h
    rw [hnl x, dif_pos h]
    exact h.choose_spec
  have hnl_eq : ∀ x (j : ℤ), (∀ᶠ i in Filter.atTop, ms i x = j) → nl x = j := by
    intro x j hj
    exact huniq x _ _ (hnl_spec x ⟨j, hj⟩) hj
  have hnl_none : ∀ x, ¬ (∃ j : ℤ, ∀ᶠ i in Filter.atTop, ms i x = j) → nl x = 0 := by
    intro x h
    rw [hnl x, dif_neg h]
  have hnlK : ∀ x : M, x ∉ Kv → nl x = 0 := by
    intro x hx
    exact hnl_eq x 0 (Filter.Eventually.of_forall fun i => hmsK i x hx)
  have hEv : ∀ j : ℤ, sepChartMeas {x : M | ∀ᶠ i in Filter.atTop, ms i x = j} := by
    intro j
    have h1 : {x : M | ∀ᶠ i in Filter.atTop, ms i x = j} =
        ⋃ N : ℕ, ⋂ i : ℕ, {x : M | N ≤ i → ms i x = j} := by
      ext x
      simp only [Set.mem_setOf_eq, Filter.eventually_atTop, Set.mem_iUnion, Set.mem_iInter]
    rw [h1]
    refine hMU _ fun N => hMI _ fun i => ?_
    by_cases hNi : N ≤ i
    · have h2 : {x : M | N ≤ i → ms i x = j} = {x : M | ms i x = j} := by
        ext x
        simp only [Set.mem_setOf_eq, hNi, true_implies]
      rw [h2]
      exact hmsM i j
    · have h2 : {x : M | N ≤ i → ms i x = j} = Set.univ := by
        ext x
        simp only [Set.mem_setOf_eq, hNi, false_implies, Set.mem_univ]
      rw [h2]
      exact hMuniv
  have hnlM : ∀ j : ℤ, sepChartMeas {x | nl x = j} := by
    intro j
    by_cases hj : j = 0
    · subst hj
      have h1 : {x | nl x = 0} = {x : M | ∀ᶠ i in Filter.atTop, ms i x = 0} ∪
          (⋃ j' : ℤ, {x : M | ∀ᶠ i in Filter.atTop, ms i x = j'})ᶜ := by
        ext x
        simp only [Set.mem_setOf_eq, Set.mem_union, Set.mem_compl_iff, Set.mem_iUnion]
        constructor
        · intro hx
          by_cases h : ∃ j' : ℤ, ∀ᶠ i in Filter.atTop, ms i x = j'
          · left
            have := hnl_spec x h
            rw [hx] at this
            exact this
          · right
            exact h
        · rintro (h | h)
          · exact hnl_eq x 0 h
          · exact hnl_none x h
      rw [h1]
      exact hMunion _ _ (hEv 0) (hMC _ (hMU _ hEv))
    · have h1 : {x | nl x = j} = {x : M | ∀ᶠ i in Filter.atTop, ms i x = j} := by
        ext x
        simp only [Set.mem_setOf_eq]
        constructor
        · intro hx
          by_cases h : ∃ j' : ℤ, ∀ᶠ i in Filter.atTop, ms i x = j'
          · have := hnl_spec x h
            rw [hx] at this
            exact this
          · rw [hnl_none x h] at hx
            exact absurd hx.symm hj
        · intro h
          exact hnl_eq x j h
      rw [h1]
      exact hEv j
  
  have hφm : dualChartMeas (fun x => φ₀ x + 2 * Real.pi * (nl x : ℝ)) := by
    intro p
    have hf' : Measurable ((chartAt E3 p).target.indicator
        (fun y => nl ((chartAt E3 p).symm y))) := by
      apply measurable_to_countable'
      intro j
      have h1 : (chartAt E3 p).target.indicator (fun y => nl ((chartAt E3 p).symm y)) ⁻¹' {j} =
          ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x | nl x = j}) ∪
            ((chartAt E3 p).target)ᶜ ∩ {_y : E3 | (0 : ℤ) = j} := by
        ext y
        by_cases hy : y ∈ (chartAt E3 p).target <;>
          simp [Set.indicator, hy]
      rw [h1]
      exact ((hmeasIff _).1 (hnlM j) p).union
        ((chartAt E3 p).open_target.measurableSet.compl.inter (MeasurableSet.const _))
    have hcast : Measurable (fun z : ℤ => (z : ℝ)) := measurable_of_countable _
    have hsum := (hφ₀m p).add (measurable_const.mul (hcast.comp hf') :
      Measurable (fun y => 2 * Real.pi * (fun z : ℤ => (z : ℝ))
        ((chartAt E3 p).target.indicator (fun y => nl ((chartAt E3 p).symm y)) y)))
    convert hsum using 1
    funext y
    by_cases hy : y ∈ (chartAt E3 p).target <;>
      simp [Set.indicator, hy]
  
  have hL1 := dual_ae_conv_chart_L1 g Ψ hΨs Ω Kc hΩ φ₀ hφ₀m hfin₀ ms hmsM B hB
    (fun i => (hmsE i).trans (by rw [← hE (ns (ψ i))]; exact hbd (ψ i))) nl hnlM
    {x | ¬ ∃ j : ℤ, ∀ᶠ i in Filter.atTop, ms i x = j} hbad
    (fun x hx => hnl_spec x (by simpa using hx))
  
  have hle : ∀ i : ℕ, dualRiemVar g (fun x => (Ψ x : ℂ))
      (fun x => φ₀ x + 2 * Real.pi * (ms i x : ℝ)) Ω Kc ≤
        m + ENNReal.ofReal (1 / ((i : ℝ) + 1)) := by
    intro i
    refine (hmsE i).trans ?_
    rw [← hE (ns (ψ i))]
    refine (hnsE (ψ i)).le.trans ?_
    have h1 : (i : ℝ) ≤ (ψ i : ℝ) := by exact_mod_cast hψ.id_le i
    have h2 : 1 / ((ψ i : ℝ) + 1) ≤ 1 / ((i : ℝ) + 1) :=
      one_div_le_one_div_of_le (by positivity) (by linarith)
    exact add_le_add le_rfl (ENNReal.ofReal_le_ofReal h2)
  
  have hlim := dualRiemVar_lsc g (fun x => (Ψ x : ℂ)) Ω Kc hΩ
    (fun i x => φ₀ x + 2 * Real.pi * (ms i x : ℝ)) (fun x => φ₀ x + 2 * Real.pi * (nl x : ℝ))
    hφm m hle hL1
  
  refine ⟨nl, hnlK, hnlM, fun n' hn'K hn'M => hlim.trans ?_⟩
  rw [← hE n', hm]
  exact iInf₂_le n' ⟨hn'K, hn'M⟩

theorem dualRiemVar_disjoint_sum_le [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Ψ : M → ℂ) (φ : M → ℝ) (Ω Kc : Set M) {N : ℕ}
    (U : Fin N → Set M) (hU : ∀ i, U i ⊆ Ω) (hUd : Pairwise (fun i j => Disjoint (U i) (U j))) :
    ∑ i, dualRiemVar g Ψ φ (U i) Kc ≤ dualRiemVar g Ψ φ Ω Kc :=
by
  classical
  let F : (Σ n : ℕ, (Fin n → M) × (Fin n → Set M)) → ENNReal := fun w =>
    ∑ k, dualVarG (g.coeff (chartAt E3 (w.2.1 k)).symm) (dualOmega Ψ (w.2.1 k))
      (fun y => φ ((chartAt E3 (w.2.1 k)).symm y)) (chartAt E3 (w.2.1 k) '' w.2.2 k)
      (chartAt E3 (w.2.1 k) '' (Kc ∩ (chartAt E3 (w.2.1 k)).source))
  let V : Set M → (Σ n : ℕ, (Fin n → M) × (Fin n → Set M)) → Prop := fun U w =>
    (∀ k, IsOpen (w.2.2 k) ∧ w.2.2 k ⊆ U ∩ (chartAt E3 (w.2.1 k)).source) ∧
      Pairwise (fun k l => Disjoint (w.2.2 k) (w.2.2 l))
  have hflat : ∀ U : Set M, dualRiemVar g Ψ φ U Kc ≤ ⨆ w : {w // V U w}, F w.1 := by
    intro U
    unfold dualRiemVar
    refine iSup_le fun n => iSup_le fun p => iSup_le fun W => iSup_le fun h => ?_
    exact le_iSup_of_le (⟨⟨n, p, W⟩, h⟩ : {w // V U w}) le_rfl
  have hne : ∀ U : Set M, Nonempty {w // V U w} := fun U =>
    ⟨⟨⟨0, Fin.elim0, Fin.elim0⟩, fun k => k.elim0, fun k => k.elim0⟩⟩
  have two : ∀ A B O : Set M, A ⊆ O → B ⊆ O → Disjoint A B →
      dualRiemVar g Ψ φ A Kc + dualRiemVar g Ψ φ B Kc ≤ dualRiemVar g Ψ φ O Kc := by
    intro A B O hA hB hAB
    haveI := hne A
    haveI := hne B
    refine (add_le_add (hflat A) (hflat B)).trans (ENNReal.iSup_add_iSup_le ?_)
    rintro ⟨⟨n, p, W⟩, hW1, hW2⟩ ⟨⟨m, q, X⟩, hX1, hX2⟩
    have hval : (∀ k, IsOpen (Fin.append W X k) ∧
          Fin.append W X k ⊆ O ∩ (chartAt E3 (Fin.append p q k)).source) ∧
        Pairwise (fun k l => Disjoint (Fin.append W X k) (Fin.append W X l)) := by
      refine ⟨fun k => ?_, fun k l hkl => ?_⟩
      · induction k using Fin.addCases with
        | left i =>
          rw [Fin.append_left, Fin.append_left]
          exact ⟨(hW1 i).1, fun x hx => ⟨hA ((hW1 i).2 hx).1, ((hW1 i).2 hx).2⟩⟩
        | right j =>
          rw [Fin.append_right, Fin.append_right]
          exact ⟨(hX1 j).1, fun x hx => ⟨hB ((hX1 j).2 hx).1, ((hX1 j).2 hx).2⟩⟩
      · induction k using Fin.addCases with
        | left i =>
          induction l using Fin.addCases with
          | left i' =>
            rw [Fin.append_left, Fin.append_left]
            exact hW2 (fun h => hkl (by rw [h]))
          | right j' =>
            rw [Fin.append_left, Fin.append_right]
            exact hAB.mono (fun x hx => ((hW1 i).2 hx).1) (fun x hx => ((hX1 j').2 hx).1)
        | right j =>
          induction l using Fin.addCases with
          | left i' =>
            rw [Fin.append_right, Fin.append_left]
            exact (hAB.mono (fun x hx => ((hW1 i').2 hx).1) (fun x hx => ((hX1 j).2 hx).1)).symm
          | right j' =>
            rw [Fin.append_right, Fin.append_right]
            exact hX2 (fun h => hkl (by rw [h]))
    have hsum : (∑ k : Fin (n + m), dualVarG (g.coeff (chartAt E3 (Fin.append p q k)).symm)
        (dualOmega Ψ (Fin.append p q k))
        (fun y => φ ((chartAt E3 (Fin.append p q k)).symm y))
        (chartAt E3 (Fin.append p q k) '' Fin.append W X k)
        (chartAt E3 (Fin.append p q k) '' (Kc ∩ (chartAt E3 (Fin.append p q k)).source)))
        ≤ dualRiemVar g Ψ φ O Kc := by
      unfold dualRiemVar
      exact le_iSup_of_le (n + m) (le_iSup_of_le (Fin.append p q)
        (le_iSup_of_le (Fin.append W X) (le_iSup_of_le hval le_rfl)))
    rw [Fin.sum_univ_add] at hsum
    simp only [Fin.append_left, Fin.append_right] at hsum
    exact hsum
  induction N generalizing Ω with
  | zero => simp
  | succ N ih =>
    rw [Fin.sum_univ_castSucc]
    have h1 := ih (⋃ i : Fin N, U i.castSucc) (fun i => U i.castSucc)
      (fun i => Set.subset_iUnion (fun i : Fin N => U i.castSucc) i)
      (fun i j hij => hUd (fun h => hij (Fin.castSucc_injective _ h)))
    refine (add_le_add h1 le_rfl).trans (two _ _ _ (Set.iUnion_subset fun i => hU _) (hU _) ?_)
    exact Set.disjoint_iUnion_left.2 fun i => hUd (Fin.castSucc_lt_last i).ne

theorem dual_radial_function [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds) (a : ℝ) (ha : 2 ≤ a)
    (hbar : ∀ w : M → ℝ, (∀ z : E3, 1 < ‖z‖ → w ((hAF.ends k).Φ z) = ‖z‖) →
      ∀ y : E3, a < ‖y‖ → 0 < g.levelMeanCurv w ((hAF.ends k).Φ y)) :
    ∃ ρ : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ρ ∧
      (∀ (c : ℝ) (x : M), a + 1 / 4 ≤ c →
        (c < ρ x ↔ x ∈ (hAF.ends k).Φ '' {y : E3 | c < ‖y‖})) ∧
      (∀ y : E3, a + 1 / 4 ≤ ‖y‖ → ρ ((hAF.ends k).Φ y) = ‖y‖) ∧
      (∀ x : M, x ∉ (hAF.ends k).Φ '' {y : E3 | a < ‖y‖} → ρ x ≤ a + 1 / 8) ∧
      (∀ p : M, a + 1 / 2 ≤ ρ p → 0 < g.levelMeanCurv ρ p) ∧
      (∀ K : Set M, IsCompact K → ∃ C : ℝ, ∀ x ∈ K, a + 1 / 2 ≤ ρ x → |g.levelMeanCurv ρ x| ≤ C) :=
by
  classical
  have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
  obtain ⟨σ, hσ⟩ : ∃ σ : M → E3,
      σ = ((hAF.ends k).Φ.toOpenPartialHomeomorph.symm : M → E3) := ⟨_, rfl⟩
  have hFs : ∀ y : E3, 1 < ‖y‖ → (hAF.ends k).Φ y ∈ (hAF.ends k).Φ.target ∧
      σ ((hAF.ends k).Φ y) = y := by
    intro y hy
    have hy' : y ∈ (hAF.ends k).Φ.toOpenPartialHomeomorph.source := by
      show y ∈ (hAF.ends k).Φ.source
      rw [hsrc]
      exact hy
    refine ⟨(hAF.ends k).Φ.toOpenPartialHomeomorph.map_source hy', ?_⟩
    rw [hσ]
    exact (hAF.ends k).Φ.toOpenPartialHomeomorph.left_inv hy'
  have hFt : ∀ x ∈ (hAF.ends k).Φ.target, 1 < ‖σ x‖ ∧ (hAF.ends k).Φ (σ x) = x := by
    intro x hx
    have hx' : x ∈ (hAF.ends k).Φ.toOpenPartialHomeomorph.target := hx
    have h1 := (hAF.ends k).Φ.toOpenPartialHomeomorph.map_target hx'
    have h2 : (hAF.ends k).Φ.toOpenPartialHomeomorph.symm x ∈ (hAF.ends k).Φ.source := h1
    rw [hsrc] at h2
    rw [hσ]
    exact ⟨h2, (hAF.ends k).Φ.toOpenPartialHomeomorph.right_inv hx'⟩
  have hTo : IsOpen (hAF.ends k).Φ.target := (hAF.ends k).Φ.toOpenPartialHomeomorph.open_target
  have hσs : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ σ (hAF.ends k).Φ.target := by
    rw [hσ]
    exact (hAF.ends k).Φ.contMDiffOn_invFun
  have hσc : ContinuousOn σ (hAF.ends k).Φ.target := hσs.continuousOn
  
  obtain ⟨h, hh, hlo, hid, hmax⟩ : ∃ h : ℝ → ℝ, ContDiff ℝ ∞ h ∧
      (∀ s : ℝ, s ≤ a + 1 / 8 → h s = a + 1 / 8) ∧ (∀ s : ℝ, a + 1 / 4 ≤ s → h s = s) ∧
      (∀ s : ℝ, h s ≤ max s (a + 1 / 8)) := by
    refine ⟨fun s => a + 1 / 8 + Real.smoothTransition (8 * (s - (a + 1 / 8))) * (s - (a + 1 / 8)),
      ?_, ?_, ?_, ?_⟩
    · exact contDiff_const.add ((Real.smoothTransition.contDiff.comp
        (contDiff_const.mul (contDiff_id.sub contDiff_const))).mul (contDiff_id.sub contDiff_const))
    · intro s hs
      show a + 1 / 8 + Real.smoothTransition (8 * (s - (a + 1 / 8))) * (s - (a + 1 / 8)) = a + 1 / 8
      rw [Real.smoothTransition.zero_of_nonpos (by linarith)]
      ring
    · intro s hs
      show a + 1 / 8 + Real.smoothTransition (8 * (s - (a + 1 / 8))) * (s - (a + 1 / 8)) = s
      rw [Real.smoothTransition.one_of_one_le (by linarith)]
      ring
    · intro s
      show a + 1 / 8 + Real.smoothTransition (8 * (s - (a + 1 / 8))) * (s - (a + 1 / 8)) ≤
        max s (a + 1 / 8)
      rcases le_or_gt s (a + 1 / 8) with hs | hs
      · rw [Real.smoothTransition.zero_of_nonpos (by linarith)]
        have := le_max_right s (a + 1 / 8)
        linarith
      · have h0 := Real.smoothTransition.nonneg (8 * (s - (a + 1 / 8)))
        have h1 := Real.smoothTransition.le_one (8 * (s - (a + 1 / 8)))
        have := le_max_left s (a + 1 / 8)
        nlinarith
  
  obtain ⟨ρ₀, -, hcl⟩ := endChart_far_isClosed g hAF k
  have hCcl : IsClosed ((hAF.ends k).Φ '' {y : E3 | a + 1 / 8 ≤ ‖y‖}) := by
    have hR : IsClosed ((hAF.ends k).Φ '' {y : E3 | max (a + 1 / 8) ρ₀ ≤ ‖y‖}) :=
      hcl _ (le_max_right _ _)
    have hann : IsCompact ((hAF.ends k).Φ ''
        {y : E3 | a + 1 / 8 ≤ ‖y‖ ∧ ‖y‖ ≤ max (a + 1 / 8) ρ₀}) := by
      have hc : IsCompact {y : E3 | a + 1 / 8 ≤ ‖y‖ ∧ ‖y‖ ≤ max (a + 1 / 8) ρ₀} := by
        refine (isCompact_closedBall (0 : E3) (max (a + 1 / 8) ρ₀)).of_isClosed_subset ?_ ?_
        · exact (isClosed_le continuous_const continuous_norm).inter
            (isClosed_le continuous_norm continuous_const)
        · intro y hy
          rw [mem_closedBall_zero_iff]
          exact hy.2
      have hsub : {y : E3 | a + 1 / 8 ≤ ‖y‖ ∧ ‖y‖ ≤ max (a + 1 / 8) ρ₀} ⊆
          (hAF.ends k).Φ.source := by
        intro y hy
        rw [hsrc]
        show (1 : ℝ) < ‖y‖
        linarith [hy.1]
      have hcont : ContinuousOn ((hAF.ends k).Φ : E3 → M) (hAF.ends k).Φ.source :=
        (hAF.ends k).Φ.contMDiffOn_toFun.continuousOn
      exact hc.image_of_continuousOn (hcont.mono hsub)
    have heq : (hAF.ends k).Φ '' {y : E3 | a + 1 / 8 ≤ ‖y‖} =
        (hAF.ends k).Φ '' {y : E3 | a + 1 / 8 ≤ ‖y‖ ∧ ‖y‖ ≤ max (a + 1 / 8) ρ₀} ∪
          (hAF.ends k).Φ '' {y : E3 | max (a + 1 / 8) ρ₀ ≤ ‖y‖} := by
      rw [← Set.image_union]
      congr 1
      ext y
      simp only [Set.mem_setOf_eq, Set.mem_union]
      constructor
      · intro hy
        rcases le_total ‖y‖ (max (a + 1 / 8) ρ₀) with h' | h'
        · exact Or.inl ⟨hy, h'⟩
        · exact Or.inr h'
      · rintro (h' | h')
        · exact h'.1
        · exact le_trans (le_max_left _ _) h'
    rw [heq]
    exact hann.isClosed.union hR
  have hCT : (hAF.ends k).Φ '' {y : E3 | a + 1 / 8 ≤ ‖y‖} ⊆ (hAF.ends k).Φ.target := by
    rintro _ ⟨y, hy, rfl⟩
    have hy' : a + 1 / 8 ≤ ‖y‖ := hy
    exact (hFs y (by linarith)).1
  
  obtain ⟨ρ, hin, hout⟩ : ∃ ρ : M → ℝ,
      (∀ x ∈ (hAF.ends k).Φ.target, ρ x = h ‖σ x‖) ∧
      (∀ x : M, x ∉ (hAF.ends k).Φ.target → ρ x = a + 1 / 8) :=
    ⟨fun x => if x ∈ (hAF.ends k).Φ.target then h ‖σ x‖ else a + 1 / 8,
      fun x hx => if_pos hx, fun x hx => if_neg hx⟩
  
  have hρs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ρ := by
    intro x
    by_cases hx : x ∈ (hAF.ends k).Φ.target
    · have hTn : (hAF.ends k).Φ.target ∈ 𝓝 x := hTo.mem_nhds hx
      have hev : ρ =ᶠ[𝓝 x] fun z => h ‖σ z‖ :=
        Filter.eventually_of_mem hTn (fun z hz => hin z hz)
      have hσx : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ σ x := hσs.contMDiffAt hTn
      have hv0 : σ x ≠ 0 := by
        intro h0
        have h1 := (hFt x hx).1
        rw [h0, norm_zero] at h1
        linarith
      have hhn : ContDiffAt ℝ ∞ (fun u : E3 => h ‖u‖) (σ x) :=
        hh.contDiffAt.comp (σ x) (contDiffAt_norm ℝ hv0)
      have hc : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun z => h ‖σ z‖) x :=
        hhn.contMDiffAt.comp x hσx
      exact hc.congr_of_eventuallyEq hev
    · have hxC : x ∉ (hAF.ends k).Φ '' {y : E3 | a + 1 / 8 ≤ ‖y‖} := fun hxC => hx (hCT hxC)
      have hev : ρ =ᶠ[𝓝 x] fun _ => a + 1 / 8 := by
        filter_upwards [hCcl.isOpen_compl.mem_nhds hxC] with z hz
        by_cases hzT : z ∈ (hAF.ends k).Φ.target
        · rw [hin z hzT]
          apply hlo
          by_contra hlt
          push_neg at hlt
          exact hz ⟨σ z, le_of_lt hlt, (hFt z hzT).2⟩
        · exact hout z hzT
      exact contMDiffAt_const.congr_of_eventuallyEq hev
  
  have hval : ∀ y : E3, a + 1 / 4 ≤ ‖y‖ → ρ ((hAF.ends k).Φ y) = ‖y‖ := by
    intro y hy
    have h1 : 1 < ‖y‖ := by linarith
    rw [hin _ (hFs y h1).1, (hFs y h1).2, hid _ hy]
  
  have hiff : ∀ (c : ℝ) (x : M), a + 1 / 4 ≤ c →
      (c < ρ x ↔ x ∈ (hAF.ends k).Φ '' {y : E3 | c < ‖y‖}) := by
    intro c x hc
    constructor
    · intro hcx
      by_cases hxT : x ∈ (hAF.ends k).Φ.target
      · rw [hin x hxT] at hcx
        have hm := hmax ‖σ x‖
        refine ⟨σ x, ?_, (hFt x hxT).2⟩
        show c < ‖σ x‖
        rcases le_total ‖σ x‖ (a + 1 / 8) with hs | hs
        · rw [max_eq_right hs] at hm
          linarith
        · rw [max_eq_left hs] at hm
          linarith
      · rw [hout x hxT] at hcx
        linarith
    · rintro ⟨y, hy, rfl⟩
      have hy' : c < ‖y‖ := hy
      rw [hval y (by linarith)]
      exact hy'
  
  have hlow : ∀ x : M, x ∉ (hAF.ends k).Φ '' {y : E3 | a < ‖y‖} → ρ x ≤ a + 1 / 8 := by
    intro x hx
    by_cases hxT : x ∈ (hAF.ends k).Φ.target
    · rw [hin x hxT]
      have hs : ‖σ x‖ ≤ a := by
        by_contra hlt
        push_neg at hlt
        exact hx ⟨σ x, hlt, (hFt x hxT).2⟩
      have hm := hmax ‖σ x‖
      rw [max_eq_right (by linarith)] at hm
      exact hm
    · exact (hout x hxT).le
  
  have hO : IsOpen ((hAF.ends k).Φ '' {y : E3 | a + 1 / 4 < ‖y‖}) := by
    have hsub : {y : E3 | a + 1 / 4 < ‖y‖} ⊆ (hAF.ends k).Φ.source := by
      intro y hy
      rw [hsrc]
      show (1 : ℝ) < ‖y‖
      have : a + 1 / 4 < ‖y‖ := hy
      linarith
    exact (hAF.ends k).Φ.toOpenPartialHomeomorph.isOpen_image_of_subset_source
      (isOpen_lt continuous_const continuous_norm) hsub
  have hmc : ∀ p : M, a + 1 / 2 ≤ ρ p → 0 < g.levelMeanCurv ρ p := by
    intro p hp
    obtain ⟨y, hy, rfl⟩ := (hiff (a + 1 / 4) p le_rfl).1 (by linarith)
    have hy' : a + 1 / 4 < ‖y‖ := hy
    have hev : ρ =ᶠ[𝓝 ((hAF.ends k).Φ y)] fun x => ‖σ x‖ := by
      filter_upwards [hO.mem_nhds ⟨y, hy', rfl⟩] with z hz
      obtain ⟨y', hy'', rfl⟩ := hz
      have h4 : a + 1 / 4 < ‖y'‖ := hy''
      rw [hval y' h4.le, (hFs y' (by linarith)).2]
    rw [levelMeanCurv_congr_of_eventuallyEq g ρ (fun x => ‖σ x‖) _ hev]
    exact hbar (fun x => ‖σ x‖)
      (fun z hz => by
        show ‖σ ((hAF.ends k).Φ z)‖ = ‖z‖
        rw [(hFs z hz).2])
      y (by linarith)
  
  have hFc : ContinuousOn (levelMeanCurvCoord (g.coeff (hAF.ends k).Φ) (fun z : E3 => ‖z‖))
      {y : E3 | 1 < ‖y‖} := by
    refine (lmc_contDiffOn (g.coeff (hAF.ends k).Φ) {y : E3 | 1 < ‖y‖}
      (isOpen_lt continuous_const continuous_norm) ?_ ?_ ?_ (fun z : E3 => ‖z‖) ?_ ?_).continuousOn
    · intro i j
      have h1 := coeff_contDiffOn_source g (hAF.ends k).Φ i j
      rwa [hsrc] at h1
    · intro y i j
      exact g.symm _ _ _
    · intro y hy
      exact coeff_posDef g _ y (by rw [hsrc]; exact hy)
    · intro y hy
      have hy' : (1 : ℝ) < ‖y‖ := hy
      have hy0 : y ≠ 0 := by
        intro h0
        rw [h0, norm_zero] at hy'
        linarith
      exact (contDiffAt_norm ℝ hy0).contDiffWithinAt
    · intro z hz hzero
      have hz1 : (1 : ℝ) < ‖z‖ := hz
      have hz0 : z ≠ 0 := by
        intro h0
        rw [h0, norm_zero] at hz1
        linarith
      have hd : DifferentiableAt ℝ (fun u : E3 => ‖u‖) z :=
        (contDiffAt_norm ℝ hz0 (n := 1)).differentiableAt (by norm_num)
      have hγ : HasDerivAt (fun t : ℝ => t • z) z 1 := by
        simpa using (hasDerivAt_id' (1 : ℝ)).smul_const z
      have hl : HasFDerivAt (fun u : E3 => ‖u‖) (fderiv ℝ (fun u : E3 => ‖u‖) z)
          ((fun t : ℝ => t • z) 1) := by
        simp only [one_smul]
        exact hd.hasFDerivAt
      have h1 := hl.comp_hasDerivAt (1 : ℝ) hγ
      have h2 : HasDerivAt ((fun u : E3 => ‖u‖) ∘ fun t : ℝ => t • z) ‖z‖ 1 := by
        have h3 : HasDerivAt (fun t : ℝ => t * ‖z‖) ‖z‖ 1 := by
          simpa using (hasDerivAt_id' (1 : ℝ)).mul_const ‖z‖
        refine h3.congr_of_eventuallyEq ?_
        filter_upwards [lt_mem_nhds (show (0 : ℝ) < 1 by norm_num)] with t ht
        simp only [Function.comp_apply, norm_smul, Real.norm_eq_abs, abs_of_pos ht]
      have h4 := h1.unique h2
      rw [hzero, ContinuousLinearMap.zero_apply] at h4
      linarith
  have hbnd : ∀ K : Set M, IsCompact K → ∃ C : ℝ, ∀ x ∈ K, a + 1 / 2 ≤ ρ x →
      |g.levelMeanCurv ρ x| ≤ C := by
    intro K hK
    have hSc : IsCompact (K ∩ {x | a + 1 / 2 ≤ ρ x}) :=
      hK.inter_right (isClosed_le continuous_const hρs.continuous)
    have hST : K ∩ {x | a + 1 / 2 ≤ ρ x} ⊆ (hAF.ends k).Φ.target := by
      rintro x ⟨-, hx⟩
      have hx' : a + 1 / 2 ≤ ρ x := hx
      obtain ⟨y, hy, rfl⟩ := (hiff (a + 1 / 4) x le_rfl).1 (by linarith)
      have hy' : a + 1 / 4 < ‖y‖ := hy
      exact (hFs y (by linarith)).1
    have hS'c : IsCompact (σ '' (K ∩ {x | a + 1 / 2 ≤ ρ x})) :=
      hSc.image_of_continuousOn (hσc.mono hST)
    have hS'1 : σ '' (K ∩ {x | a + 1 / 2 ≤ ρ x}) ⊆ {y : E3 | 1 < ‖y‖} := by
      rintro _ ⟨x, hx, rfl⟩
      exact (hFt x (hST hx)).1
    obtain ⟨C, hC⟩ := hS'c.exists_bound_of_continuousOn (hFc.mono hS'1)
    refine ⟨C, fun x hxK hx => ?_⟩
    obtain ⟨y, hy, rfl⟩ := (hiff (a + 1 / 4) x le_rfl).1 (by linarith)
    have hy' : a + 1 / 4 < ‖y‖ := hy
    have hy1 : 1 < ‖y‖ := by linarith
    have hysrc : y ∈ (hAF.ends k).Φ.source := by
      rw [hsrc]
      exact hy1
    have hfh : ∀ᶠ z in 𝓝 y, ρ ((hAF.ends k).Φ z) = ‖z‖ := by
      filter_upwards [(isOpen_lt continuous_const continuous_norm).mem_nhds hy'] with z hz
      exact hval z (le_of_lt hz)
    rw [levelMeanCurv_eq_coord g (hAF.ends k).Φ ρ (fun z => ‖z‖) hρs y hysrc hfh]
    have h5 := hC y ⟨_, ⟨hxK, hx⟩, (hFs y hy1).2⟩
    rwa [Real.norm_eq_abs] at h5
  exact ⟨ρ, hρs, hiff, hval, hlow, hmc, hbnd⟩

theorem dual_band_field_split (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (r : E3 → ℝ)
    (T U K : Set E3) (t δ : ℝ) (hδ : 0 < δ) (hT : IsOpen T) (hUT : U ⊆ T)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => G z i j) T)
    (hdet : ∀ z ∈ T, 0 < (G z).det) (hr : ContDiffOn ℝ ∞ r T)
    (hK : ∀ y ∈ K, r y < t - δ) (X : E3 → E3)
    (hX : (∀ y, y ∉ K → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ U ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) :
    ∃ XL XB XR : E3 → E3,
      (∀ y, X y = XL y + XB y + XR y) ∧
      (∀ y, sepDensDiv G X y = sepDensDiv G XL y + sepDensDiv G XB y + sepDensDiv G XR y) ∧
      ((∀ y, y ∉ K → ContDiffAt ℝ ∞ XL y) ∧ HasCompactSupport XL ∧
        tsupport XL ⊆ {y | y ∈ U ∧ r y < t - δ / 8} ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * XL y i * XL y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G XL y| ≤ C) ∧
      ((∀ y, y ∉ K → ContDiffAt ℝ ∞ XB y) ∧ HasCompactSupport XB ∧
        tsupport XB ⊆ {y | y ∈ U ∧ t - δ < r y ∧ r y < t + δ} ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * XB y i * XB y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G XB y| ≤ C) ∧
      ((∀ y, y ∉ K → ContDiffAt ℝ ∞ XR y) ∧ HasCompactSupport XR ∧
        tsupport XR ⊆ {y | y ∈ U ∧ t + δ / 8 < r y} ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * XR y i * XR y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G XR y| ≤ C) ∧
      ContDiff ℝ ∞ XB ∧ ContDiff ℝ ∞ XR ∧
      (∀ y, y ∈ tsupport XL ∨ y ∈ tsupport XB → r y < t + δ) :=
by
  obtain ⟨hXs, hXc, hXU, hXq, C0, hC0⟩ := hX
  have hXT : tsupport X ⊆ T := hXU.trans hUT
  have hrc : ContinuousOn r T := hr.continuousOn
  have hKτ : ∀ y ∈ K, r y < t - δ / 2 := fun y hy => by have := hK y hy; linarith
  
  have hsq : ContDiffOn ℝ ∞ (fun z => Real.sqrt (G z).det) T := by
    have h := hG
    have hP : ContDiffOn ℝ ∞ (fun z => G z 0 0 * G z 1 1 * G z 2 2 - G z 0 0 * G z 1 2 * G z 2 1
        - G z 0 1 * G z 1 0 * G z 2 2 + G z 0 1 * G z 1 2 * G z 2 0
        + G z 0 2 * G z 1 0 * G z 2 1 - G z 0 2 * G z 1 1 * G z 2 0) T :=
      (((((((h 0 0).mul (h 1 1)).mul (h 2 2)).sub (((h 0 0).mul (h 1 2)).mul (h 2 1))).sub
        (((h 0 1).mul (h 1 0)).mul (h 2 2))).add (((h 0 1).mul (h 1 2)).mul (h 2 0))).add
        (((h 0 2).mul (h 1 0)).mul (h 2 1))).sub (((h 0 2).mul (h 1 1)).mul (h 2 0))
    have hdetS : ContDiffOn ℝ ∞ (fun z => (G z).det) T :=
      hP.congr (fun z _ => Matrix.det_fin_three (G z))
    exact hdetS.sqrt (fun z hz => (hdet z hz).ne')
  
  have hcongr : ∀ (Y Z : E3 → E3) (y : E3), Y =ᶠ[𝓝 y] Z →
      sepDensDiv G Y y = sepDensDiv G Z y := by
    intro Y Z y h
    unfold sepDensDiv partialDeriv
    refine Finset.sum_congr rfl (fun i _ => ?_)
    have h' : (fun z => Real.sqrt (G z).det * Y z i) =ᶠ[𝓝 y]
        (fun z => Real.sqrt (G z).det * Z z i) :=
      h.mono (fun z hz => by simp only [hz])
    rw [h'.fderiv_eq]
  have hzero : ∀ y, sepDensDiv G (fun _ => 0) y = 0 := by
    intro y
    simp [sepDensDiv, partialDeriv]
  
  have hprod : ∀ (s : E3 → ℝ) (Y : E3 → E3) (y : E3), DifferentiableAt ℝ s y →
      (∀ i : Fin 3, DifferentiableAt ℝ (fun z => Real.sqrt (G z).det * Y z i) y) →
      sepDensDiv G (fun z => s z • Y z) y =
        s y * sepDensDiv G Y y + Real.sqrt (G y).det * ∑ i : Fin 3, partialDeriv i s y * Y y i := by
    intro s Y y hs hF
    have key : ∀ i : Fin 3,
        partialDeriv i (fun z => Real.sqrt (G z).det * (s z • Y z) i) y =
          s y * partialDeriv i (fun z => Real.sqrt (G z).det * Y z i) y +
            Real.sqrt (G y).det * (partialDeriv i s y * Y y i) := by
      intro i
      have h1 : (fun z => Real.sqrt (G z).det * (s z • Y z) i) =
          (fun z => s z * (Real.sqrt (G z).det * Y z i)) := by
        funext z
        simp only [PiLp.smul_apply, smul_eq_mul]
        ring
      unfold partialDeriv
      rw [h1, fderiv_fun_mul hs (hF i)]
      simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
      ring
    unfold sepDensDiv
    dsimp only
    simp only [key]
    rw [Finset.sum_add_distrib, Finset.mul_sum, Finset.mul_sum]
  have hdiffX : ∀ y ∈ T, y ∉ K → ∀ i : Fin 3,
      DifferentiableAt ℝ (fun z => Real.sqrt (G z).det * X z i) y := by
    intro y hyT hyK i
    exact ((hsq.contDiffAt (hT.mem_nhds hyT)).mul
      ((contDiffAt_piLp 2).1 (hXs y hyK) i)).differentiableAt (by simp)
  have hOS : ∀ (χ : ℝ → ℝ) (y : E3), y ∉ tsupport X →
      (fun z => χ (r z) • X z) =ᶠ[𝓝 y] (fun _ => 0) := by
    intro χ y hy
    have h0 := notMem_tsupport_iff_eventuallyEq.1 hy
    filter_upwards [h0] with z hz
    rw [hz]
    simp
  
  have piece : ∀ (χ : ℝ → ℝ) (c₀ : ℝ) (F : Set ℝ), ContDiff ℝ ∞ χ →
      (∀ s, 0 ≤ χ s ∧ χ s ≤ 1) → (∀ s, s < t - δ / 2 → χ s = c₀) → (c₀ = 0 ∨ c₀ = 1) →
      IsClosed F → (∀ s, χ s ≠ 0 → s ∈ F) →
      ((∀ y, y ∉ K → ContDiffAt ℝ ∞ (fun z => χ (r z) • X z) y) ∧
        HasCompactSupport (fun z => χ (r z) • X z) ∧
        tsupport (fun z => χ (r z) • X z) ⊆ {y | y ∈ U ∧ r y ∈ F} ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
          G y i j * (χ (r y) • X y) i * (χ (r y) • X y) j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G (fun z => χ (r z) • X z) y| ≤ C) ∧
      (c₀ = 0 → ContDiff ℝ ∞ (fun z => χ (r z) • X z)) := by
    intro χ c₀ F hχ h01 hlow hc₀ hF hχF
    have hcT : ContDiffOn ℝ ∞ (fun z => χ (r z)) T := hχ.comp_contDiffOn hr
    have hcAt : ∀ y ∈ T, ContDiffAt ℝ ∞ (fun z => χ (r z)) y :=
      fun y hy => hcT.contDiffAt (hT.mem_nhds hy)
    have hlowEv : ∀ y ∈ T, r y < t - δ / 2 →
        (fun z => χ (r z) • X z) =ᶠ[𝓝 y] (fun z => c₀ • X z) := by
      intro y hyT hry
      have hO : IsOpen (T ∩ r ⁻¹' Set.Iio (t - δ / 2)) := hrc.isOpen_inter_preimage hT isOpen_Iio
      filter_upwards [hO.mem_nhds ⟨hyT, hry⟩] with z hz
      rw [hlow (r z) hz.2]
    have hsm1 : ∀ y, y ∉ K → ContDiffAt ℝ ∞ (fun z => χ (r z) • X z) y := by
      intro y hyK
      by_cases hyT : y ∈ T
      · exact (hcAt y hyT).smul (hXs y hyK)
      · exact contDiffAt_const.congr_of_eventuallyEq (hOS χ y (fun h => hyT (hXT h)))
    have hsm2 : c₀ = 0 → ContDiff ℝ ∞ (fun z => χ (r z) • X z) := by
      intro h0
      rw [contDiff_iff_contDiffAt]
      intro y
      by_cases hyK : y ∈ K
      · by_cases hyT : y ∈ T
        · refine (contDiffAt_const (c := (0 : E3))).congr_of_eventuallyEq
            ((hlowEv y hyT (hKτ y hyK)).trans ?_)
          exact Filter.Eventually.of_forall (fun z => by simp [h0])
        · exact contDiffAt_const.congr_of_eventuallyEq (hOS χ y (fun h => hyT (hXT h)))
      · exact hsm1 y hyK
    have hsuppY : Function.support (fun z => χ (r z) • X z) ⊆ Function.support X := by
      intro z hz
      rw [Function.mem_support] at hz ⊢
      intro hXz
      apply hz
      rw [hXz, smul_zero]
    have hA' : IsClosed (tsupport X ∩ r ⁻¹' F) :=
      (hrc.mono hXT).preimage_isClosed_of_isClosed (isClosed_tsupport X) hF
    have hts : tsupport (fun z => χ (r z) • X z) ⊆ tsupport X ∩ r ⁻¹' F := by
      refine closure_minimal ?_ hA'
      intro z hz
      refine ⟨subset_tsupport _ (hsuppY hz), ?_⟩
      rw [Function.mem_support] at hz
      apply hχF
      intro h0
      apply hz
      rw [h0, zero_smul]
    have hnorm : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
        G y i j * (χ (r y) • X y) i * (χ (r y) • X y) j ≤ 1 := by
      intro y
      have e1 : ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (χ (r y) • X y) i * (χ (r y) • X y) j
          = χ (r y) ^ 2 * ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j := by
        simp only [PiLp.smul_apply, smul_eq_mul, Finset.mul_sum]
        refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => by ring))
      rw [e1]
      obtain ⟨h0, h1⟩ := h01 (r y)
      have hq := hXq y
      have hc2 : χ (r y) ^ 2 ≤ 1 := by nlinarith
      nlinarith [mul_nonneg (sq_nonneg (χ (r y))) (sub_nonneg.2 hq)]
    have hdivB : ∃ C : ℝ, ∀ y, |sepDensDiv G (fun z => χ (r z) • X z) y| ≤ C := by
      have hA0c : IsCompact (tsupport X ∩ r ⁻¹' Set.Ici (t - δ / 2)) :=
        hXc.isCompact.of_isClosed_subset
          ((hrc.mono hXT).preimage_isClosed_of_isClosed (isClosed_tsupport X) isClosed_Ici)
          Set.inter_subset_left
      have hA0T : ∀ y ∈ tsupport X ∩ r ⁻¹' Set.Ici (t - δ / 2), y ∈ T ∧ y ∉ K := by
        intro y hy
        refine ⟨hXT hy.1, fun hyK => ?_⟩
        have h1 := hKτ y hyK
        have h2 : t - δ / 2 ≤ r y := hy.2
        linarith
      have hfd : ContinuousOn (fderiv ℝ (fun w => χ (r w))) T :=
        hcT.continuousOn_fderiv_of_isOpen hT (by simp)
      have hcont : ContinuousOn (fun z => Real.sqrt (G z).det *
          ∑ i : Fin 3, partialDeriv i (fun w => χ (r w)) z * X z i)
          (tsupport X ∩ r ⁻¹' Set.Ici (t - δ / 2)) := by
        apply continuousOn_of_forall_continuousAt
        intro y hy
        obtain ⟨hyT, hyK⟩ := hA0T y hy
        have h1 : ContinuousAt (fun z => Real.sqrt (G z).det) y :=
          (hsq.contDiffAt (hT.mem_nhds hyT)).continuousAt
        have h2 : ∀ i : Fin 3, ContinuousAt (fun z => partialDeriv i (fun w => χ (r w)) z) y :=
          fun i => (hfd.continuousAt (hT.mem_nhds hyT)).clm_apply continuousAt_const
        have h3 : ∀ i : Fin 3, ContinuousAt (fun z => X z i) y :=
          fun i => ((contDiffAt_piLp 2).1 (hXs y hyK) i).continuousAt
        refine h1.mul ?_
        simp only [Fin.sum_univ_three]
        exact (((h2 0).mul (h3 0)).add ((h2 1).mul (h3 1))).add ((h2 2).mul (h3 2))
      obtain ⟨D, hD⟩ := hA0c.exists_bound_of_continuousOn hcont
      refine ⟨|C0| + |D|, fun y => ?_⟩
      have hC0y := hC0 y
      by_cases hyA : y ∈ tsupport X
      · by_cases hry : r y < t - δ / 2
        · have hyT := hXT hyA
          rw [hcongr _ _ y (hlowEv y hyT hry)]
          rcases hc₀ with h0 | h1
          · subst h0
            simp only [zero_smul]
            rw [hzero, abs_zero]
            positivity
          · subst h1
            simp only [one_smul]
            linarith [le_abs_self C0, abs_nonneg D]
        · push_neg at hry
          have hyA0 : y ∈ tsupport X ∩ r ⁻¹' Set.Ici (t - δ / 2) := ⟨hyA, hry⟩
          obtain ⟨hyT, hyK⟩ := hA0T y hyA0
          rw [hprod (fun w => χ (r w)) X y ((hcAt y hyT).differentiableAt (by simp))
            (hdiffX y hyT hyK)]
          have hDy : |Real.sqrt (G y).det *
              ∑ i : Fin 3, partialDeriv i (fun w => χ (r w)) y * X y i| ≤ D := by
            have h := hD y hyA0
            rw [Real.norm_eq_abs] at h
            exact h
          obtain ⟨h0, h1⟩ := h01 (r y)
          have e1 : |χ (r y) * sepDensDiv G X y| ≤ C0 := by
            rw [abs_mul, abs_of_nonneg h0]
            calc χ (r y) * |sepDensDiv G X y| ≤ 1 * |sepDensDiv G X y| :=
                  mul_le_mul_of_nonneg_right h1 (abs_nonneg _)
              _ ≤ C0 := by rw [one_mul]; exact hC0y
          refine (abs_add_le _ _).trans ?_
          linarith [le_abs_self C0, le_abs_self D]
      · rw [hcongr _ _ y (hOS χ y hyA), hzero, abs_zero]
        positivity
    exact ⟨⟨hsm1, hXc.mono hsuppY, fun y hy => ⟨hXU (hts hy).1, (hts hy).2⟩, hnorm, hdivB⟩, hsm2⟩
  
  have hadd : ∀ (χ₁ χ₂ χ₃ : ℝ → ℝ), ContDiff ℝ ∞ χ₁ → ContDiff ℝ ∞ χ₂ → ContDiff ℝ ∞ χ₃ →
      (∀ s, χ₁ s + χ₂ s + χ₃ s = 1) →
      (∀ s, s < t - δ / 2 → χ₁ s = 1 ∧ χ₂ s = 0 ∧ χ₃ s = 0) →
      ∀ y, sepDensDiv G X y = sepDensDiv G (fun z => χ₁ (r z) • X z) y +
        sepDensDiv G (fun z => χ₂ (r z) • X z) y + sepDensDiv G (fun z => χ₃ (r z) • X z) y := by
    intro χ₁ χ₂ χ₃ h₁ h₂ h₃ hs hl y
    by_cases hyA : y ∈ tsupport X
    · have hyT := hXT hyA
      by_cases hry : r y < t - δ / 2
      · have hO : IsOpen (T ∩ r ⁻¹' Set.Iio (t - δ / 2)) :=
          hrc.isOpen_inter_preimage hT isOpen_Iio
        have hN := hO.mem_nhds ⟨hyT, hry⟩
        have e1 : (fun z => χ₁ (r z) • X z) =ᶠ[𝓝 y] X := by
          filter_upwards [hN] with z hz
          rw [(hl (r z) hz.2).1, one_smul]
        have e2 : (fun z => χ₂ (r z) • X z) =ᶠ[𝓝 y] (fun _ => 0) := by
          filter_upwards [hN] with z hz
          rw [(hl (r z) hz.2).2.1, zero_smul]
        have e3 : (fun z => χ₃ (r z) • X z) =ᶠ[𝓝 y] (fun _ => 0) := by
          filter_upwards [hN] with z hz
          rw [(hl (r z) hz.2).2.2, zero_smul]
        rw [hcongr _ _ y e1, hcongr _ _ y e2, hcongr _ _ y e3, hzero]
        ring
      · push_neg at hry
        have hyK : y ∉ K := fun hyK => by have := hKτ y hyK; linarith
        have hd : ∀ (χ : ℝ → ℝ), ContDiff ℝ ∞ χ → DifferentiableAt ℝ (fun w => χ (r w)) y :=
          fun χ hχ => ((hχ.comp_contDiffOn hr).contDiffAt (hT.mem_nhds hyT)).differentiableAt
            (by simp)
        rw [hprod _ X y (hd χ₁ h₁) (hdiffX y hyT hyK), hprod _ X y (hd χ₂ h₂) (hdiffX y hyT hyK),
          hprod _ X y (hd χ₃ h₃) (hdiffX y hyT hyK)]
        have hpd : ∀ i : Fin 3, partialDeriv i (fun w => χ₁ (r w)) y +
            partialDeriv i (fun w => χ₂ (r w)) y + partialDeriv i (fun w => χ₃ (r w)) y = 0 := by
          intro i
          have h12 : HasFDerivAt (fun w => χ₁ (r w) + χ₂ (r w) + χ₃ (r w))
              (fderiv ℝ (fun w => χ₁ (r w)) y + fderiv ℝ (fun w => χ₂ (r w)) y +
                fderiv ℝ (fun w => χ₃ (r w)) y) y :=
            (((hd χ₁ h₁).hasFDerivAt.add (hd χ₂ h₂).hasFDerivAt).add (hd χ₃ h₃).hasFDerivAt)
          have hsum : (fun w => χ₁ (r w) + χ₂ (r w) + χ₃ (r w)) = fun _ => (1 : ℝ) :=
            funext (fun w => hs (r w))
          rw [hsum] at h12
          have h0 := h12.fderiv
          rw [fderiv_const_apply] at h0
          have h0' := congrArg (fun L => L (e i)) h0
          simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.zero_apply] at h0'
          unfold partialDeriv
          linarith
        have hA : ∑ i : Fin 3, partialDeriv i (fun w => χ₁ (r w)) y * X y i +
            ∑ i : Fin 3, partialDeriv i (fun w => χ₂ (r w)) y * X y i +
            ∑ i : Fin 3, partialDeriv i (fun w => χ₃ (r w)) y * X y i = 0 := by
          rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
          refine Finset.sum_eq_zero (fun i _ => ?_)
          have h := hpd i
          calc _ = (partialDeriv i (fun w => χ₁ (r w)) y +
                partialDeriv i (fun w => χ₂ (r w)) y +
                partialDeriv i (fun w => χ₃ (r w)) y) * X y i := by ring
            _ = 0 := by rw [h, zero_mul]
        have hs1 := hs (r y)
        linear_combination (-(sepDensDiv G X y)) * hs1 - Real.sqrt (G y).det * hA
    · rw [hcongr _ _ y (hOS χ₁ y hyA), hcongr _ _ y (hOS χ₂ y hyA), hcongr _ _ y (hOS χ₃ y hyA),
        hzero, hcongr X (fun _ => 0) y (notMem_tsupport_iff_eventuallyEq.1 hyA), hzero]
      ring
  
  obtain ⟨cL, hcL⟩ : ∃ f : ℝ → ℝ, ∀ s, f s = 1 - Real.smoothTransition (4 * (s - t) / δ + 2) :=
    ⟨fun s => 1 - Real.smoothTransition (4 * (s - t) / δ + 2), fun s => rfl⟩
  obtain ⟨cB, hcB⟩ : ∃ f : ℝ → ℝ, ∀ s, f s = Real.smoothTransition (4 * (s - t) / δ + 2) -
      Real.smoothTransition (4 * (s - t) / δ - 1) :=
    ⟨fun s => Real.smoothTransition (4 * (s - t) / δ + 2) -
      Real.smoothTransition (4 * (s - t) / δ - 1), fun s => rfl⟩
  obtain ⟨cR, hcR⟩ : ∃ f : ℝ → ℝ, ∀ s, f s = Real.smoothTransition (4 * (s - t) / δ - 1) :=
    ⟨fun s => Real.smoothTransition (4 * (s - t) / δ - 1), fun s => rfl⟩
  have hS1 : ContDiff ℝ ∞ (fun s : ℝ => Real.smoothTransition (4 * (s - t) / δ + 2)) :=
    Real.smoothTransition.contDiff.comp (by fun_prop)
  have hS2 : ContDiff ℝ ∞ (fun s : ℝ => Real.smoothTransition (4 * (s - t) / δ - 1)) :=
    Real.smoothTransition.contDiff.comp (by fun_prop)
  have hLs : ContDiff ℝ ∞ cL := by
    rw [show cL = _ from funext hcL]; exact contDiff_const.sub hS1
  have hBs : ContDiff ℝ ∞ cB := by
    rw [show cB = _ from funext hcB]; exact hS1.sub hS2
  have hRs : ContDiff ℝ ∞ cR := by
    rw [show cR = _ from funext hcR]; exact hS2
  have hu1 : ∀ s, s < t - δ / 2 → 4 * (s - t) / δ + 2 ≤ 0 := by
    intro s hs
    have : 4 * (s - t) / δ ≤ -2 := by rw [div_le_iff₀ hδ]; linarith
    linarith
  have hu2 : ∀ s, s < t - δ / 2 → 4 * (s - t) / δ - 1 ≤ 0 := by
    intro s hs; linarith [hu1 s hs]
  have hu3 : ∀ s, t - δ / 4 < s → 1 ≤ 4 * (s - t) / δ + 2 := by
    intro s hs
    have : -1 ≤ 4 * (s - t) / δ := by rw [le_div_iff₀ hδ]; linarith
    linarith
  have hu4 : ∀ s, t + δ / 2 < s → 1 ≤ 4 * (s - t) / δ - 1 := by
    intro s hs
    have : 2 ≤ 4 * (s - t) / δ := by rw [le_div_iff₀ hδ]; linarith
    linarith
  have hu5 : ∀ s, s < t + δ / 4 → 4 * (s - t) / δ - 1 ≤ 0 := by
    intro s hs
    have : 4 * (s - t) / δ ≤ 1 := by rw [div_le_iff₀ hδ]; linarith
    linarith
  have hlow3 : ∀ s, s < t - δ / 2 → cL s = 1 ∧ cB s = 0 ∧ cR s = 0 := by
    intro s hs
    rw [hcL, hcB, hcR, Real.smoothTransition.zero_of_nonpos (hu1 s hs),
      Real.smoothTransition.zero_of_nonpos (hu2 s hs)]
    norm_num
  have hsum3 : ∀ s, cL s + cB s + cR s = 1 := by
    intro s; rw [hcL, hcB, hcR]; ring
  have hL01 : ∀ s, 0 ≤ cL s ∧ cL s ≤ 1 := by
    intro s
    rw [hcL]
    constructor
    · linarith [Real.smoothTransition.le_one (4 * (s - t) / δ + 2)]
    · linarith [Real.smoothTransition.nonneg (4 * (s - t) / δ + 2)]
  have hB01 : ∀ s, 0 ≤ cB s ∧ cB s ≤ 1 := by
    intro s
    rw [hcB]
    constructor
    · have := Real.smoothTransition.monotone
        (show 4 * (s - t) / δ - 1 ≤ 4 * (s - t) / δ + 2 by linarith)
      linarith
    · linarith [Real.smoothTransition.le_one (4 * (s - t) / δ + 2),
        Real.smoothTransition.nonneg (4 * (s - t) / δ - 1)]
  have hR01 : ∀ s, 0 ≤ cR s ∧ cR s ≤ 1 := by
    intro s
    rw [hcR]
    exact ⟨Real.smoothTransition.nonneg _, Real.smoothTransition.le_one _⟩
  have hLsupp : ∀ s, cL s ≠ 0 → s ∈ Set.Iic (t - δ / 4) := by
    intro s hs
    by_contra h
    rw [Set.mem_Iic, not_le] at h
    apply hs
    rw [hcL, Real.smoothTransition.one_of_one_le (hu3 s h)]
    ring
  have hBsupp : ∀ s, cB s ≠ 0 → s ∈ Set.Icc (t - δ / 2) (t + δ / 2) := by
    intro s hs
    by_contra h
    rw [Set.mem_Icc, not_and_or, not_le, not_le] at h
    apply hs
    rw [hcB]
    rcases h with h | h
    · rw [Real.smoothTransition.zero_of_nonpos (hu1 s h),
        Real.smoothTransition.zero_of_nonpos (hu2 s h)]
      ring
    · rw [Real.smoothTransition.one_of_one_le
          (show (1 : ℝ) ≤ 4 * (s - t) / δ + 2 by linarith [hu4 s h]),
        Real.smoothTransition.one_of_one_le (hu4 s h)]
      ring
  have hRsupp : ∀ s, cR s ≠ 0 → s ∈ Set.Ici (t + δ / 4) := by
    intro s hs
    by_contra h
    rw [Set.mem_Ici, not_le] at h
    apply hs
    rw [hcR, Real.smoothTransition.zero_of_nonpos (hu5 s h)]
  
  obtain ⟨⟨aL1, aL2, aL3, aL4, aL5⟩, -⟩ := piece cL 1 (Set.Iic (t - δ / 4)) hLs hL01
    (fun s hs => (hlow3 s hs).1) (Or.inr rfl) isClosed_Iic hLsupp
  obtain ⟨⟨aB1, aB2, aB3, aB4, aB5⟩, hBsm⟩ := piece cB 0 (Set.Icc (t - δ / 2) (t + δ / 2)) hBs
    hB01 (fun s hs => (hlow3 s hs).2.1) (Or.inl rfl) isClosed_Icc hBsupp
  obtain ⟨⟨aR1, aR2, aR3, aR4, aR5⟩, hRsm⟩ := piece cR 0 (Set.Ici (t + δ / 4)) hRs hR01
    (fun s hs => (hlow3 s hs).2.2) (Or.inl rfl) isClosed_Ici hRsupp
  refine ⟨fun z => cL (r z) • X z, fun z => cB (r z) • X z, fun z => cR (r z) • X z,
    ?_, ?_, ⟨aL1, aL2, ?_, aL4, aL5⟩, ⟨aB1, aB2, ?_, aB4, aB5⟩, ⟨aR1, aR2, ?_, aR4, aR5⟩,
    hBsm rfl, hRsm rfl, ?_⟩
  · intro y
    show X y = cL (r y) • X y + cB (r y) • X y + cR (r y) • X y
    rw [← add_smul, ← add_smul, hsum3 (r y), one_smul]
  · exact hadd cL cB cR hLs hBs hRs hsum3 hlow3
  · intro y hy
    have h1 : r y ≤ t - δ / 4 := (aL3 hy).2
    exact ⟨(aL3 hy).1, by linarith⟩
  · intro y hy
    have h1 : t - δ / 2 ≤ r y ∧ r y ≤ t + δ / 2 := (aB3 hy).2
    exact ⟨(aB3 hy).1, by linarith [h1.1], by linarith [h1.2]⟩
  · intro y hy
    have h1 : t + δ / 4 ≤ r y := (aR3 hy).2
    exact ⟨(aR3 hy).1, by linarith⟩
  · intro y hy
    rcases hy with hy | hy
    · have h1 : r y ≤ t - δ / 4 := (aL3 hy).2
      linarith
    · have h1 : t - δ / 2 ≤ r y ∧ r y ≤ t + δ / 2 := (aB3 hy).2
      linarith [h1.2]

theorem dual_band_integral_split (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ)
    (v v' : E3 → ℝ) (T U : Set E3) (hT : IsOpen T) (hUT : U ⊆ T)
    (hG : ∀ i j : Fin 3, ContinuousOn (fun z => G z i j) T)
    (hom : ∀ i : Fin 3, ContinuousOn (fun y => om y i) T)
    (hv' : MeasureTheory.LocallyIntegrableOn v' U)
    (X XL XB XR : E3 → E3) (hsum : ∀ y, X y = XL y + XB y + XR y)
    (hdiv : ∀ y, sepDensDiv G X y = sepDensDiv G XL y + sepDensDiv G XB y + sepDensDiv G XR y)
    (hXB : ContDiff ℝ ∞ XB ∧ HasCompactSupport XB ∧ tsupport XB ⊆ U ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G XB y| ≤ C)
    (hXR : ContDiff ℝ ∞ XR ∧ HasCompactSupport XR ∧ tsupport XR ⊆ U ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G XR y| ≤ C)
    (hvv : ∀ y, y ∈ tsupport XL ∨ y ∈ tsupport XB → v' y = v y) :
    ENNReal.ofReal (∫ y, (v' y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) ≤
      ENNReal.ofReal (∫ y, (v y * sepDensDiv G XL y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * XL y i)) +
      ENNReal.ofReal (∫ y, (v y * sepDensDiv G XB y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * XB y i)) +
      ENNReal.ofReal (∫ y, (v' y * sepDensDiv G XR y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * XR y i)) :=
by
  
  have hvan : ∀ (Y : E3 → E3) (y : E3), y ∉ tsupport Y → sepDensDiv G Y y = 0 := by
    intro Y y hy
    have hY : Y =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    have hev : (fun z => Real.sqrt (G z).det * Y z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hY] with z hz
      simp [hz]
    unfold partialDeriv
    rw [hev.fderiv_eq]
    simp
  
  have hmeas : ∀ Y : E3 → E3, Measurable (sepDensDiv G Y) := by
    intro Y
    unfold sepDensDiv partialDeriv
    exact Finset.measurable_sum _ fun i _ => measurable_fderiv_apply_const ℝ _ _
  
  have hdivint : ∀ Y : E3 → E3, HasCompactSupport Y → tsupport Y ⊆ U →
      (∃ C : ℝ, ∀ y, |sepDensDiv G Y y| ≤ C) →
      Integrable (fun y => v' y * sepDensDiv G Y y) := by
    rintro Y hYc hYU ⟨C, hC⟩
    have h1 : IntegrableOn v' (tsupport Y) := hv'.integrableOn_compact_subset hYU hYc.isCompact
    have h2 : Integrable ((tsupport Y).indicator v') :=
      (integrable_indicator_iff (isClosed_tsupport Y).measurableSet).2 h1
    have h3 : Integrable (fun y => sepDensDiv G Y y * (tsupport Y).indicator v' y) :=
      h2.bdd_mul (hmeas Y).aestronglyMeasurable
        (ae_of_all _ fun y => by rw [Real.norm_eq_abs]; exact hC y)
    refine h3.congr (ae_of_all _ fun y => ?_)
    by_cases hy : y ∈ tsupport Y
    · simp only [Set.indicator_of_mem hy]; ring
    · simp only [Set.indicator_of_notMem hy, hvan Y y hy]; ring
  
  have hdetc : ContinuousOn (fun z => (G z).det) T := by
    have hGm : ContinuousOn G T := continuousOn_pi.2 fun i => continuousOn_pi.2 fun j => hG i j
    exact (continuous_id.matrix_det).comp_continuousOn hGm
  have homint : ∀ Y : E3 → E3, Continuous Y → HasCompactSupport Y → tsupport Y ⊆ U →
      Integrable (fun y => Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y y i) := by
    intro Y hYc hYcs hYU
    have hon : ContinuousOn (fun y => Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y y i) T := by
      refine (Real.continuous_sqrt.comp_continuousOn hdetc).mul ?_
      refine continuousOn_finset_sum _ fun i _ => (hom i).mul ?_
      exact ((EuclideanSpace.proj i).continuous.comp hYc).continuousOn
    have hcont : Continuous (fun y => Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y y i) := by
      refine continuous_iff_continuousAt.2 fun y => ?_
      by_cases hy : y ∈ T
      · exact hon.continuousAt (hT.mem_nhds hy)
      · have hy' : y ∉ tsupport Y := fun h => hy (hUT (hYU h))
        have hY : Y =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy'
        have hev : (fun _ => (0 : ℝ)) =ᶠ[𝓝 y]
            (fun y => Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y y i) := by
          filter_upwards [hY] with z hz
          simp [hz]
        exact continuousAt_const.congr hev
    refine hcont.integrable_of_hasCompactSupport (hYcs.mono ?_)
    intro y hy
    rw [Function.mem_support] at hy ⊢
    intro hY0
    apply hy
    simp [hY0]
  obtain ⟨hXBs, hXBc, hXBU, hXBC⟩ := hXB
  obtain ⟨hXRs, hXRc, hXRU, hXRC⟩ := hXR
  
  have hswapL : ∀ y, v' y * sepDensDiv G XL y = v y * sepDensDiv G XL y := by
    intro y
    by_cases hy : y ∈ tsupport XL
    · rw [hvv y (Or.inl hy)]
    · rw [hvan XL y hy, mul_zero, mul_zero]
  have hswapB : ∀ y, v' y * sepDensDiv G XB y = v y * sepDensDiv G XB y := by
    intro y
    by_cases hy : y ∈ tsupport XB
    · rw [hvv y (Or.inr hy)]
    · rw [hvan XB y hy, mul_zero, mul_zero]
  
  have hom_add : ∀ y, ∑ i : Fin 3, om y i * X y i = ∑ i : Fin 3, om y i * XL y i +
      ∑ i : Fin 3, om y i * XB y i + ∑ i : Fin 3, om y i * XR y i := by
    intro y
    rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun i _ => ?_
    have hc : X y i = XL y i + XB y i + XR y i := by rw [hsum y]; rfl
    rw [hc]; ring
  
  have hpt : ∀ y, (v' y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) =
      (v y * sepDensDiv G XL y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * XL y i) +
      (v y * sepDensDiv G XB y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * XB y i) +
      (v' y * sepDensDiv G XR y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * XR y i) := by
    intro y
    rw [hdiv y, hom_add y]
    linear_combination hswapL y + hswapB y
  
  have hFR : Integrable (fun y => v' y * sepDensDiv G XR y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * XR y i) :=
    (hdivint XR hXRc hXRU hXRC).add (homint XR hXRs.continuous hXRc hXRU)
  
  have hFB : Integrable (fun y => v y * sepDensDiv G XB y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * XB y i) := by
    refine ((hdivint XB hXBc hXBU hXBC).add (homint XB hXBs.continuous hXBc hXBU)).congr
      (ae_of_all _ fun y => ?_)
    simp only [Pi.add_apply]
    rw [hswapB y]
  
  have key : ∀ (F FL FB FR : E3 → ℝ), (∀ y, F y = FL y + FB y + FR y) → Integrable FB →
      Integrable FR →
      ENNReal.ofReal (∫ y, F y) ≤ ENNReal.ofReal (∫ y, FL y) + ENNReal.ofReal (∫ y, FB y) +
        ENNReal.ofReal (∫ y, FR y) := by
    intro F FL FB FR hp hB hR
    by_cases hF : Integrable F
    · have hL : Integrable FL := by
        refine ((hF.sub hB).sub hR).congr (ae_of_all _ fun y => ?_)
        simp only [Pi.sub_apply, hp y]
        ring
      have e1 : ∫ y, F y = ∫ y, (FL y + FB y) + FR y := integral_congr_ae (ae_of_all _ hp)
      have e2 : ∫ y, (FL y + FB y) + FR y = (∫ y, FL y + FB y) + ∫ y, FR y :=
        integral_add (hL.add hB) hR
      have e3 : ∫ y, FL y + FB y = (∫ y, FL y) + ∫ y, FB y := integral_add hL hB
      rw [e1, e2, e3]
      exact ENNReal.ofReal_add_le.trans (add_le_add ENNReal.ofReal_add_le le_rfl)
    · rw [integral_undef hF, ENNReal.ofReal_zero]
      exact zero_le _
  exact key _ _ _ _ hpt hFB hFR

theorem dualRiemVar_band_split [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : M → ℂ) (hΨ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ Ψ) (φ φ' ρ : M → ℝ)
    (hρ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ρ) (Ω Kc : Set M) (t δ : ℝ) (hδ : 0 < δ)
    (hKc : ∀ x ∈ Kc, ρ x < t - δ) (hφ : ∀ x : M, ρ x < t + δ → φ' x = φ x) :
    dualRiemVar g Ψ φ' Ω Kc ≤
      dualRiemVar g Ψ φ {x | x ∈ Ω ∧ ρ x < t - δ / 8} Kc +
        dualRiemVar g Ψ φ {x | x ∈ Ω ∧ t - δ < ρ x ∧ ρ x < t + δ} Kc +
        dualRiemVar g Ψ φ' {x | x ∈ Ω ∧ t + δ / 8 < ρ x} Kc :=
by
  classical
  have hρc : Continuous ρ := hρ.continuous
  
  have hchart : ∀ (q : M) (V : Set M), IsOpen V → V ⊆ (chartAt E3 q).source →
      dualVarG (g.coeff (chartAt E3 q).symm) (dualOmega Ψ q) (fun y => φ' ((chartAt E3 q).symm y))
          (chartAt E3 q '' V) (chartAt E3 q '' (Kc ∩ (chartAt E3 q).source)) ≤
        dualVarG (g.coeff (chartAt E3 q).symm) (dualOmega Ψ q)
            (fun y => φ ((chartAt E3 q).symm y))
            (chartAt E3 q '' (V ∩ {x | ρ x < t - δ / 8}))
            (chartAt E3 q '' (Kc ∩ (chartAt E3 q).source)) +
          dualVarG (g.coeff (chartAt E3 q).symm) (dualOmega Ψ q)
            (fun y => φ ((chartAt E3 q).symm y))
            (chartAt E3 q '' (V ∩ {x | t - δ < ρ x ∧ ρ x < t + δ}))
            (chartAt E3 q '' (Kc ∩ (chartAt E3 q).source)) +
          dualVarG (g.coeff (chartAt E3 q).symm) (dualOmega Ψ q)
            (fun y => φ' ((chartAt E3 q).symm y))
            (chartAt E3 q '' (V ∩ {x | t + δ / 8 < ρ x}))
            (chartAt E3 q '' (Kc ∩ (chartAt E3 q).source)) := by
    intro q V hVo hV
    set κ := chartAt E3 q with hκ
    set G := g.coeff κ.symm with hGdef
    set om := dualOmega Ψ q with homdef
    set K := κ '' (Kc ∩ κ.source) with hKdef
    set U := κ '' V with hUdef
    have himg : ∀ P : ℝ → Prop,
        κ '' (V ∩ {x | P (ρ x)}) = {y | y ∈ U ∧ P (ρ (κ.symm y))} := by
      intro P
      ext y
      constructor
      · rintro ⟨x, ⟨hxV, hxP⟩, rfl⟩
        refine ⟨⟨x, hxV, rfl⟩, ?_⟩
        show P (ρ (κ.symm (κ x)))
        rw [κ.left_inv (hV hxV)]
        exact hxP
      · rintro ⟨⟨x, hxV, rfl⟩, hP⟩
        have hP' : P (ρ (κ.symm (κ x))) := hP
        rw [κ.left_inv (hV hxV)] at hP'
        exact ⟨x, ⟨hxV, hP'⟩, rfl⟩
    have hL : κ '' (V ∩ {x | ρ x < t - δ / 8}) = {y | y ∈ U ∧ ρ (κ.symm y) < t - δ / 8} :=
      himg (fun s => s < t - δ / 8)
    have hB : κ '' (V ∩ {x | t - δ < ρ x ∧ ρ x < t + δ}) =
        {y | y ∈ U ∧ t - δ < ρ (κ.symm y) ∧ ρ (κ.symm y) < t + δ} :=
      himg (fun s => t - δ < s ∧ s < t + δ)
    have hR : κ '' (V ∩ {x | t + δ / 8 < ρ x}) = {y | y ∈ U ∧ t + δ / 8 < ρ (κ.symm y)} :=
      himg (fun s => t + δ / 8 < s)
    rw [hL, hB, hR]
    
    have hT : IsOpen κ.target := κ.open_target
    have hUT : U ⊆ κ.target := by
      rintro _ ⟨x, hx, rfl⟩
      exact κ.map_source (hV hx)
    have hUo : IsOpen U := κ.isOpen_image_of_subset_source hVo hV
    have hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => G z i j) κ.target :=
      fun i j => g.smooth q i j
    have hGc : ∀ i j : Fin 3, ContinuousOn (fun z => G z i j) κ.target :=
      fun i j => (hG i j).continuousOn
    have hdet : ∀ z ∈ κ.target, 0 < (G z).det :=
      fun z hz => (coeff_chart_symm_posDef g q z hz).det_pos
    have hr : ContDiffOn ℝ ∞ (fun y => ρ (κ.symm y)) κ.target := by
      have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (ρ ∘ κ.symm) κ.target :=
        hρ.comp_contMDiffOn contMDiffOn_chart_symm
      exact contMDiffOn_iff_contDiffOn.mp h1
    have hΨc : ContDiffOn ℝ ∞ (fun y => Ψ (κ.symm y)) κ.target := by
      have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (Ψ ∘ κ.symm) κ.target :=
        hΨ.comp_contMDiffOn contMDiffOn_chart_symm
      exact contMDiffOn_iff_contDiffOn.mp h1
    have hre : ContDiffOn ℝ ∞ (fun y => (Ψ (κ.symm y)).re) κ.target :=
      Complex.reCLM.contDiff.comp_contDiffOn hΨc
    have him : ContDiffOn ℝ ∞ (fun y => (Ψ (κ.symm y)).im) κ.target :=
      Complex.imCLM.contDiff.comp_contDiffOn hΨc
    have hpd : ∀ f : E3 → ℝ, ContDiffOn ℝ ∞ f κ.target → ∀ i : Fin 3,
        ContinuousOn (fun y => partialDeriv i f y) κ.target := by
      intro f hf i
      exact (hf.continuousOn_fderiv_of_isOpen hT (by simp)).clm_apply continuousOn_const
    have hom : ∀ i : Fin 3, ContinuousOn (fun y => om y i) κ.target := by
      intro i
      exact (hre.continuousOn.mul (hpd _ him i)).sub (him.continuousOn.mul (hpd _ hre i))
    have hK : ∀ y ∈ K, ρ (κ.symm y) < t - δ := by
      rintro _ ⟨x, ⟨hxK, hxs⟩, rfl⟩
      rw [κ.left_inv hxs]
      exact hKc x hxK
    have hvv : ∀ y, ρ (κ.symm y) < t + δ → φ' (κ.symm y) = φ (κ.symm y) :=
      fun y hy => hφ _ hy
    
    have hrU : ContinuousOn (fun y => ρ (κ.symm y)) U := hr.continuousOn.mono hUT
    have hoL : IsOpen {y | y ∈ U ∧ ρ (κ.symm y) < t - δ / 8} :=
      hrU.isOpen_inter_preimage hUo isOpen_Iio
    have hoB : IsOpen {y | y ∈ U ∧ t - δ < ρ (κ.symm y) ∧ ρ (κ.symm y) < t + δ} :=
      hrU.isOpen_inter_preimage hUo isOpen_Ioo
    have hoR : IsOpen {y | y ∈ U ∧ t + δ / 8 < ρ (κ.symm y)} :=
      hrU.isOpen_inter_preimage hUo isOpen_Ioi
    have glue1 : ∀ (f h : E3 → ℝ) (S : Set E3), IsOpen S → (∀ y ∈ S, f y = h y) →
        MeasureTheory.LocallyIntegrableOn f S → ∀ y ∈ S,
          MeasureTheory.IntegrableAtFilter h (𝓝[U] y) := by
      intro f h S hS hfh hf y hy
      obtain ⟨s, hs, hint⟩ := hf y hy
      rw [hS.nhdsWithin_eq hy] at hs
      refine ⟨interior s ∩ S, mem_nhdsWithin_of_mem_nhds
        (Filter.inter_mem (interior_mem_nhds.2 hs) (hS.mem_nhds hy)), ?_⟩
      exact (hint.mono_set (fun z hz => interior_subset hz.1)).congr_fun
        (fun z hz => hfh z hz.2) (isOpen_interior.inter hS).measurableSet
    have glue : MeasureTheory.LocallyIntegrableOn (fun y => φ (κ.symm y))
          {y | y ∈ U ∧ ρ (κ.symm y) < t - δ / 8} →
        MeasureTheory.LocallyIntegrableOn (fun y => φ (κ.symm y))
          {y | y ∈ U ∧ t - δ < ρ (κ.symm y) ∧ ρ (κ.symm y) < t + δ} →
        MeasureTheory.LocallyIntegrableOn (fun y => φ' (κ.symm y))
          {y | y ∈ U ∧ t + δ / 8 < ρ (κ.symm y)} →
        MeasureTheory.LocallyIntegrableOn (fun y => φ' (κ.symm y)) U := by
      intro hL' hB' hR' y hy
      by_cases h1 : ρ (κ.symm y) < t - δ / 8
      · exact glue1 _ _ _ hoL (fun z hz => (hvv z (by linarith [hz.2])).symm) hL' y ⟨hy, h1⟩
      by_cases h2 : t + δ / 8 < ρ (κ.symm y)
      · exact glue1 _ _ _ hoR (fun z hz => rfl) hR' y ⟨hy, h2⟩
      push_neg at h1 h2
      exact glue1 _ _ _ hoB (fun z hz => (hvv z hz.2.2).symm) hB' y
        ⟨hy, by linarith, by linarith⟩
    by_cases hLI : MeasureTheory.LocallyIntegrableOn (fun y => φ' (κ.symm y)) U
    · conv_lhs => rw [dualVarG]
      refine sup_le (iSup_le fun h => absurd hLI h) (iSup₂_le fun X hX => ?_)
      obtain ⟨XL, XB, XR, hsum, hdiv, hadL, hadB, hadR, hXBs, hXRs, hsupp⟩ :=
        dual_band_field_split G (fun y => ρ (κ.symm y)) κ.target U K t δ hδ hT hUT hG hdet hr
          hK X hX
      have hint := dual_band_integral_split G om (fun y => φ (κ.symm y))
        (fun y => φ' (κ.symm y)) κ.target U hT hUT hGc hom hLI X XL XB XR hsum hdiv
        ⟨hXBs, hadB.2.1, Set.Subset.trans hadB.2.2.1 (fun y hy => hy.1), hadB.2.2.2.2⟩
        ⟨hXRs, hadR.2.1, Set.Subset.trans hadR.2.2.1 (fun y hy => hy.1), hadR.2.2.2.2⟩
        (fun y hy => hvv y (hsupp y hy))
      refine hint.trans (add_le_add (add_le_add ?_ ?_) ?_)
      · rw [dualVarG]
        exact le_sup_of_le_right (le_iSup₂_of_le XL hadL le_rfl)
      · rw [dualVarG]
        exact le_sup_of_le_right (le_iSup₂_of_le XB hadB le_rfl)
      · rw [dualVarG]
        exact le_sup_of_le_right (le_iSup₂_of_le XR hadR le_rfl)
    · have hor : ¬ MeasureTheory.LocallyIntegrableOn (fun y => φ (κ.symm y))
            {y | y ∈ U ∧ ρ (κ.symm y) < t - δ / 8} ∨
          ¬ MeasureTheory.LocallyIntegrableOn (fun y => φ (κ.symm y))
            {y | y ∈ U ∧ t - δ < ρ (κ.symm y) ∧ ρ (κ.symm y) < t + δ} ∨
          ¬ MeasureTheory.LocallyIntegrableOn (fun y => φ' (κ.symm y))
            {y | y ∈ U ∧ t + δ / 8 < ρ (κ.symm y)} := by
        by_contra hc
        push_neg at hc
        exact hLI (glue hc.1 hc.2.1 hc.2.2)
      rcases hor with h | h | h
      · have htop : dualVarG G om (fun y => φ (κ.symm y))
            {y | y ∈ U ∧ ρ (κ.symm y) < t - δ / 8} K = ⊤ := by
          rw [dualVarG]
          exact top_unique (le_sup_of_le_left (le_iSup_of_le h le_rfl))
        rw [htop, top_add, top_add]
        exact le_top
      · have htop : dualVarG G om (fun y => φ (κ.symm y))
            {y | y ∈ U ∧ t - δ < ρ (κ.symm y) ∧ ρ (κ.symm y) < t + δ} K = ⊤ := by
          rw [dualVarG]
          exact top_unique (le_sup_of_le_left (le_iSup_of_le h le_rfl))
        rw [htop, add_top, top_add]
        exact le_top
      · have htop : dualVarG G om (fun y => φ' (κ.symm y))
            {y | y ∈ U ∧ t + δ / 8 < ρ (κ.symm y)} K = ⊤ := by
          rw [dualVarG]
          exact top_unique (le_sup_of_le_left (le_iSup_of_le h le_rfl))
        rw [htop, add_top]
        exact le_top
  
  conv_lhs => rw [dualRiemVar]
  refine iSup_le fun n => iSup_le fun p => iSup_le fun W => iSup_le fun hW => ?_
  refine (Finset.sum_le_sum fun k _ => hchart (p k) (W k) (hW.1 k).1
    (fun x hx => ((hW.1 k).2 hx).2)).trans ?_
  rw [Finset.sum_add_distrib, Finset.sum_add_distrib]
  refine add_le_add (add_le_add ?_ ?_) ?_
  · rw [dualRiemVar]
    exact le_iSup_of_le n (le_iSup_of_le p (le_iSup_of_le (fun k => W k ∩ {x | ρ x < t - δ / 8})
      (le_iSup_of_le ⟨fun k => ⟨(hW.1 k).1.inter (isOpen_lt hρc continuous_const),
        fun x hx => ⟨⟨((hW.1 k).2 hx.1).1, hx.2⟩, ((hW.1 k).2 hx.1).2⟩⟩,
        fun k l hkl => (hW.2 hkl).mono Set.inter_subset_left Set.inter_subset_left⟩ le_rfl)))
  · rw [dualRiemVar]
    exact le_iSup_of_le n (le_iSup_of_le p
      (le_iSup_of_le (fun k => W k ∩ {x | t - δ < ρ x ∧ ρ x < t + δ})
      (le_iSup_of_le ⟨fun k => ⟨(hW.1 k).1.inter
          ((isOpen_lt continuous_const hρc).inter (isOpen_lt hρc continuous_const)),
        fun x hx => ⟨⟨((hW.1 k).2 hx.1).1, hx.2⟩, ((hW.1 k).2 hx.1).2⟩⟩,
        fun k l hkl => (hW.2 hkl).mono Set.inter_subset_left Set.inter_subset_left⟩ le_rfl)))
  · rw [dualRiemVar]
    exact le_iSup_of_le n (le_iSup_of_le p (le_iSup_of_le (fun k => W k ∩ {x | t + δ / 8 < ρ x})
      (le_iSup_of_le ⟨fun k => ⟨(hW.1 k).1.inter (isOpen_lt continuous_const hρc),
        fun x hx => ⟨⟨((hW.1 k).2 hx.1).1, hx.2⟩, ((hW.1 k).2 hx.1).2⟩⟩,
        fun k l hkl => (hW.2 hkl).mono Set.inter_subset_left Set.inter_subset_left⟩ le_rfl)))

theorem dualRiemVar_untwist [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : M → ℂ) (φ₀ : M → ℝ) (n : M → ℤ) (O Kc : Set M) (hO : IsOpen O)
    (hΨ : ∀ x ∈ O, Ψ x = 1) (hφ₀ : ∀ x ∈ O, φ₀ x = 0) (hKc : Disjoint O Kc) :
    dualRiemVar g Ψ (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) O Kc =
      ENNReal.ofReal (2 * Real.pi) * dualRiemVar g (fun _ => (1 : ℂ)) (fun x => (n x : ℝ)) O ∅ :=
by
  classical
  
  have omz : ∀ (Ψ' : M → ℂ) (q : M) (W : Set M), IsOpen W → W ⊆ (chartAt E3 q).source →
      (∀ x ∈ W, Ψ' x = 1) → ∀ y ∈ chartAt E3 q '' W, ∀ i : Fin 3, dualOmega Ψ' q y i = 0 := by
    intro Ψ' q W hW hWs hΨ' y hy i
    have hU : IsOpen (chartAt E3 q '' W) :=
      (chartAt E3 q).isOpen_image_of_subset_source hW hWs
    have hone : ∀ z ∈ chartAt E3 q '' W, Ψ' ((chartAt E3 q).symm z) = 1 := by
      rintro _ ⟨w, hw, rfl⟩
      rw [(chartAt E3 q).left_inv (hWs hw)]
      exact hΨ' w hw
    have hev : (fun z => (Ψ' ((chartAt E3 q).symm z)).im) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) := by
      filter_upwards [hU.mem_nhds hy] with z hz
      rw [hone z hz]
      simp
    unfold dualOmega partialDeriv
    rw [hev.fderiv_eq, hone y hy]
    simp
  
  have piece : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (omL omR : E3 → Fin 3 → ℝ)
      (vL vR : E3 → ℝ) (U K : Set E3) (c : ℝ), 0 < c → IsOpen U → Disjoint U K →
      (∀ y ∈ U, vL y = c * vR y) → (∀ y ∈ U, ∀ i, omL y i = 0) →
      (∀ y ∈ U, ∀ i, omR y i = 0) →
      dualVarG G omL vL U K = ENNReal.ofReal c * dualVarG G omR vR U ∅ := by
    intro G omL omR vL vR U K c hc hU hUK hv homL homR
    have hguard : MeasureTheory.LocallyIntegrableOn vL U ↔
        MeasureTheory.LocallyIntegrableOn vR U := by
      rw [MeasureTheory.locallyIntegrableOn_iff hU.isLocallyClosed,
        MeasureTheory.locallyIntegrableOn_iff hU.isLocallyClosed]
      constructor
      · intro h K' hK'U hK'
        have h1 : MeasureTheory.IntegrableOn (fun y => c * vR y) K' :=
          (h K' hK'U hK').congr_fun (fun y hy => hv y (hK'U hy)) hK'.measurableSet
        exact (MeasureTheory.integrable_const_mul_iff (isUnit_iff_ne_zero.2 hc.ne') _).1 h1
      · intro h K' hK'U hK'
        have h1 : MeasureTheory.IntegrableOn (fun y => c * vR y) K' :=
          (h K' hK'U hK').const_mul c
        exact h1.congr_fun (fun y hy => (hv y (hK'U hy)).symm) hK'.measurableSet
    have hadm : ∀ X : E3 → E3, ((∀ y, y ∉ K → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
        tsupport X ⊆ U ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) ↔
        ((∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
        tsupport X ⊆ U ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) := by
      intro X
      constructor
      · rintro ⟨h1, h2, h3, h4, h5⟩
        refine ⟨fun y _ => ?_, h2, h3, h4, h5⟩
        by_cases hyK : y ∈ K
        · have hyU : y ∉ U := fun hyU => Set.disjoint_left.1 hUK hyU hyK
          have hyt : y ∉ tsupport X := fun h => hyU (h3 h)
          have hev : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.1 hyt
          exact (contDiffAt_const (c := (0 : E3))).congr_of_eventuallyEq hev
        · exact h1 y hyK
      · rintro ⟨h1, h2, h3, h4, h5⟩
        exact ⟨fun y _ => h1 y (Set.notMem_empty y), h2, h3, h4, h5⟩
    have hint : ∀ X : E3 → E3, tsupport X ⊆ U →
        (∫ y, (vL y * sepDensDiv G X y + Real.sqrt (G y).det * ∑ i : Fin 3, omL y i * X y i)) =
        c * ∫ y, (vR y * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, omR y i * X y i) := by
      intro X hX
      rw [← MeasureTheory.integral_const_mul]
      congr 1
      funext y
      by_cases hyU : y ∈ U
      · simp only [homL y hyU, homR y hyU, hv y hyU, zero_mul, Finset.sum_const_zero,
          mul_zero, add_zero]
        ring
      · have hyt : y ∉ tsupport X := fun h => hyU (hX h)
        have hev : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.1 hyt
        have hX0 : X y = 0 := hev.eq_of_nhds
        have hdiv : sepDensDiv G X y = 0 := by
          unfold sepDensDiv
          apply Finset.sum_eq_zero
          intro i _
          unfold partialDeriv
          have hev' : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) := by
            filter_upwards [hev] with z hz
            simp [hz]
          rw [hev'.fderiv_eq]
          simp
        simp [hX0, hdiv]
    unfold dualVarG
    by_cases hR : MeasureTheory.LocallyIntegrableOn vR U
    · have hL := hguard.2 hR
      simp only [hL, hR, not_true_eq_false, iSup_false, bot_sup_eq]
      rw [ENNReal.mul_iSup]
      refine iSup_congr fun X => ?_
      rw [ENNReal.mul_iSup]
      refine iSup_congr_Prop (hadm X) fun hX => ?_
      rw [hint X hX.2.2.1, ENNReal.ofReal_mul hc.le]
    · have hL : ¬ MeasureTheory.LocallyIntegrableOn vL U := fun h => hR (hguard.1 h)
      simp only [hL, hR, not_false_eq_true, iSup_true, top_sup_eq]
      exact (ENNReal.mul_top (ENNReal.ofReal_pos.2 hc).ne').symm
  
  unfold dualRiemVar
  simp only [ENNReal.mul_iSup]
  refine iSup_congr fun N => iSup_congr fun p => iSup_congr fun W => iSup_congr fun hfam => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  have hWo : IsOpen (W k) := (hfam.1 k).1
  have hWs : W k ⊆ (chartAt E3 (p k)).source := fun x hx => ((hfam.1 k).2 hx).2
  have hWO : W k ⊆ O := fun x hx => ((hfam.1 k).2 hx).1
  rw [Set.empty_inter, Set.image_empty]
  refine piece _ _ _ _ _ _ _ _ Real.two_pi_pos
    ((chartAt E3 (p k)).isOpen_image_of_subset_source hWo hWs) ?_ ?_
    (omz Ψ (p k) (W k) hWo hWs (fun x hx => hΨ x (hWO hx)))
    (omz (fun _ => (1 : ℂ)) (p k) (W k) hWo hWs (fun _ _ => rfl))
  · rw [Set.disjoint_left]
    rintro _ ⟨w, hw, rfl⟩ ⟨x, ⟨hxK, hxs⟩, hx⟩
    have hxw : x = w := (chartAt E3 (p k)).injOn hxs (hWs hw) hx
    subst hxw
    exact Set.disjoint_left.1 hKc (hWO hw) hxK
  · rintro _ ⟨w, hw, rfl⟩
    simp [(chartAt E3 (p k)).left_inv (hWs hw), hφ₀ w (hWO hw)]

theorem dual_witness_layer [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ω : Set M) {m : ℕ} (pp : Fin m → M) (Y : Fin m → E3 → E3)
    (hY : ∀ k, ContDiff ℝ ∞ (Y k) ∧ HasCompactSupport (Y k) ∧
      tsupport (Y k) ⊆ (chartAt E3 (pp k)).target)
    {n : ℕ} (q : Fin n → M) (φ : Fin n → M → ℝ) (hφ : calPartition q φ Ω)
    (V : M → E3) (hV : calSmoothField V)
    (hid : ∀ E : Set M, sepChartMeas E →
      ∑ k, ∫ y in chartAt E3 (pp k) '' (E ∩ (chartAt E3 (pp k)).source),
        sepDensDiv (g.coeff (chartAt E3 (pp k)).symm) (Y k) y = calDivSum g q φ E V)
    (w : M → ℤ) (hwm : ∀ j : ℤ, sepChartMeas {x | w x = j})
    (hwY : ∀ k, MeasureTheory.IntegrableOn (fun y => (w ((chartAt E3 (pp k)).symm y) : ℝ))
      (tsupport (Y k)))
    (hwφ : ∀ j, MeasureTheory.IntegrableOn (fun y => (w ((chartAt E3 (q j)).symm y) : ℝ))
      (chartAt E3 (q j) '' tsupport (φ j))) :
    ∑ k, ∫ y, (w ((chartAt E3 (pp k)).symm y) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 (pp k)).symm) (Y k) y =
      (∑ j, ∫ y, ((max (w ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y) +
        ∑ j, ∫ y, ((max (-w ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) (fun x => -V x)) y :=
by
  
  have hT : ∀ (p : M) (S : Set M), chartAt E3 p '' (S ∩ (chartAt E3 p).source) =
      (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S := by
    intro p S
    rw [Set.inter_comm, OpenPartialHomeomorph.image_source_inter_eq']
  
  have hmeasP : ∀ (P : ℤ → Prop), sepChartMeas {x : M | P (w x)} := by
    intro P p
    rw [hT]
    have e : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | P (w x)} =
        ⋃ j ∈ {j : ℤ | P j},
          (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | w x = j} := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_setOf_eq, Set.mem_iUnion,
        exists_prop]
      constructor
      · rintro ⟨h1, h2⟩
        exact ⟨_, h2, h1, rfl⟩
      · rintro ⟨j, hj, h1, h2⟩
        exact ⟨h1, h2 ▸ hj⟩
    rw [e]
    refine MeasurableSet.biUnion (Set.to_countable _) (fun j _ => ?_)
    have h := hwm j p
    rw [hT] at h
    exact h
  have hup : ∀ i : ℕ, sepChartMeas {x : M | (i : ℤ) + 1 ≤ w x} :=
    fun i => hmeasP (fun b => (i : ℤ) + 1 ≤ b)
  have hdn : ∀ i : ℕ, sepChartMeas {x : M | w x ≤ -((i : ℤ) + 1)} :=
    fun i => hmeasP (fun b => b ≤ -((i : ℤ) + 1))
  
  have hvan : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (K : Set E3), IsClosed K →
      (∀ z, z ∉ K → X z = 0) → ∀ y, y ∉ K → sepDensDiv G X y = 0 := by
    intro G X K hK hX y hy
    have hev : ∀ i : Fin 3,
        (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) := by
      intro i
      filter_upwards [hK.isOpen_compl.mem_nhds hy] with z hz
      rw [hX z hz]
      simp
    unfold sepDensDiv partialDeriv
    refine Finset.sum_eq_zero fun i _ => ?_
    rw [(hev i).fderiv_eq]
    simp
  
  have hodd : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X X' : E3 → E3), (∀ z, X' z = -X z) →
      ∀ y, sepDensDiv G X' y = -sepDensDiv G X y := by
    intro G X X' hX y
    unfold sepDensDiv partialDeriv
    rw [← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl fun i _ => ?_
    have h : (fun z => Real.sqrt (G z).det * X' z i) =
        -(fun z => Real.sqrt (G z).det * X z i) := by
      funext z
      simp [hX z]
    rw [h, fderiv_neg]
    rfl
  
  have hcont : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3),
      (∀ i : Fin 3, ContDiff ℝ ∞ (fun z => Real.sqrt (G z).det * X z i)) →
      Continuous (sepDensDiv G X) := by
    intro G X hX
    have h : sepDensDiv G X = fun y => ∑ i : Fin 3,
        fderiv ℝ (fun z => Real.sqrt (G z).det * X z i) y (e i) := rfl
    rw [h]
    exact continuous_finset_sum _ fun i _ =>
      ((hX i).continuous_fderiv (by simp)).clm_apply continuous_const
  
  have hfieldsmooth : ∀ (p : M) (Z : E3 → E3), ContDiff ℝ ∞ Z →
      tsupport Z ⊆ (chartAt E3 p).target → ∀ i : Fin 3,
      ContDiff ℝ ∞ (fun z => Real.sqrt (g.coeff (chartAt E3 p).symm z).det * Z z i) := by
    intro p Z hZ hZt i
    rw [contDiff_iff_contDiffAt]
    intro z
    by_cases hz : z ∈ (chartAt E3 p).target
    · have hent : ∀ a b : Fin 3, ContDiffOn ℝ ∞
          (fun y => g.coeff (chartAt E3 p).symm y a b) (chartAt E3 p).target :=
        fun a b => g.smooth p a b
      have hdet : ContDiffOn ℝ ∞ (fun y => (g.coeff (chartAt E3 p).symm y).det)
          (chartAt E3 p).target := by
        simp only [Matrix.det_fin_three]
        exact (((((((hent 0 0).mul (hent 1 1)).mul (hent 2 2)).sub
          (((hent 0 0).mul (hent 1 2)).mul (hent 2 1))).sub
          (((hent 0 1).mul (hent 1 0)).mul (hent 2 2))).add
          (((hent 0 1).mul (hent 1 2)).mul (hent 2 0))).add
          (((hent 0 2).mul (hent 1 0)).mul (hent 2 1))).sub
          (((hent 0 2).mul (hent 1 1)).mul (hent 2 0))
      have hpos : ∀ y ∈ (chartAt E3 p).target, (g.coeff (chartAt E3 p).symm y).det ≠ 0 :=
        fun y hy => (Matrix.PosDef.det_pos (coeff_chart_symm_posDef g p y hy)).ne'
      have hsq := hdet.sqrt hpos
      have hZi : ContDiff ℝ ∞ (fun z => Z z i) :=
        (EuclideanSpace.proj (𝕜 := ℝ) i).contDiff.comp hZ
      exact (hsq.mul hZi.contDiffOn).contDiffAt ((chartAt E3 p).open_target.mem_nhds hz)
    · have hzt : z ∉ tsupport Z := fun h => hz (hZt h)
      have hev : (fun z => Real.sqrt (g.coeff (chartAt E3 p).symm z).det * Z z i) =ᶠ[𝓝 z]
          fun _ => (0 : ℝ) := by
        filter_upwards [(notMem_tsupport_iff_eventuallyEq).1 hzt] with y hy
        simp [hy]
      exact contDiffAt_const.congr_of_eventuallyEq hev
  
  have hpiece0 : ∀ (qq : M) (ψ : M → ℝ) (X : M → E3) (z : E3),
      z ∉ chartAt E3 qq '' tsupport ψ → calPiece qq ψ X z = 0 := by
    intro qq ψ X z hz
    unfold calPiece
    by_cases ht : z ∈ (chartAt E3 qq).target
    · rw [Set.indicator_of_mem ht]
      have h0 : ψ ((chartAt E3 qq).symm z) = 0 := by
        by_contra hne
        exact hz ⟨_, subset_tsupport _ hne, (chartAt E3 qq).right_inv ht⟩
      simp [h0]
    · exact Set.indicator_of_notMem ht _
  have hKc : ∀ j, IsCompact (chartAt E3 (q j) '' tsupport (φ j)) := fun j =>
    (hφ.2.2.2 j).1.image_of_continuousOn ((chartAt E3 (q j)).continuousOn.mono
        (fun x hx => ((hφ.2.2.2 j).2 hx).2))
  have hKt : ∀ j, chartAt E3 (q j) '' tsupport (φ j) ⊆ (chartAt E3 (q j)).target := by
    rintro j _ ⟨x, hx, rfl⟩
    exact (chartAt E3 (q j)).map_source ((hφ.2.2.2 j).2 hx).2
  have hpieceneg : ∀ j z, calPiece (q j) (φ j) (fun x => -V x) z =
      -calPiece (q j) (φ j) V z := by
    intro j z
    unfold calPiece
    by_cases ht : z ∈ (chartAt E3 (q j)).target
    · rw [Set.indicator_of_mem ht, Set.indicator_of_mem ht]
      simp [map_neg, smul_neg]
    · rw [Set.indicator_of_notMem ht, Set.indicator_of_notMem ht, neg_zero]
  
  have hlim : ∀ (p : M) (f : E3 → ℝ) (T : Set E3), Continuous f → IsCompact T →
      T ⊆ (chartAt E3 p).target → (∀ y, y ∉ T → f y = 0) →
      MeasureTheory.IntegrableOn (fun y => (w ((chartAt E3 p).symm y) : ℝ)) T →
      Tendsto (fun N : ℕ => ∑ i ∈ Finset.range N,
          ((∫ y in chartAt E3 p '' ({x | (i : ℤ) + 1 ≤ w x} ∩ (chartAt E3 p).source), f y) -
            ∫ y in chartAt E3 p '' ({x | w x ≤ -((i : ℤ) + 1)} ∩ (chartAt E3 p).source), f y))
        atTop (𝓝 (∫ y, (w ((chartAt E3 p).symm y) : ℝ) * f y)) := by
    intro p f T hf hTc hTt hfT hwT
    have hsupp : HasCompactSupport f := HasCompactSupport.intro hTc hfT
    obtain ⟨C, hC⟩ := hf.bounded_above_of_compact_support hsupp
    have hfi : Integrable f := hf.integrable_of_hasCompactSupport hsupp
    have hind : ∀ (P : ℤ → Prop) [DecidablePred P] (y : E3),
        (chartAt E3 p '' ({x | P (w x)} ∩ (chartAt E3 p).source)).indicator f y =
        (if P (w ((chartAt E3 p).symm y)) then (1 : ℝ) else 0) * f y := by
      intro P _ y
      rw [hT]
      by_cases hy : y ∈ (chartAt E3 p).target
      · by_cases hP : P (w ((chartAt E3 p).symm y))
        · rw [Set.indicator_of_mem (show y ∈ (chartAt E3 p).target ∩
              (chartAt E3 p).symm ⁻¹' {x | P (w x)} from ⟨hy, hP⟩), if_pos hP, one_mul]
        · rw [Set.indicator_of_notMem (fun h => hP h.2), if_neg hP, zero_mul]
      · have h0 : f y = 0 := hfT y (fun h => hy (hTt h))
        rw [h0, mul_zero]
        exact Set.indicator_of_notMem (fun h => hy h.1) _
    have hsetint : ∀ (P : ℤ → Prop) [DecidablePred P],
        ∫ y in chartAt E3 p '' ({x | P (w x)} ∩ (chartAt E3 p).source), f y =
        ∫ y, (if P (w ((chartAt E3 p).symm y)) then (1 : ℝ) else 0) * f y := by
      intro P _
      rw [← integral_indicator (hmeasP P p)]
      exact integral_congr_ae (Filter.Eventually.of_forall (hind P))
    have hintP : ∀ (P : ℤ → Prop) [DecidablePred P],
        Integrable (fun y => (if P (w ((chartAt E3 p).symm y)) then (1 : ℝ) else 0) * f y) := by
      intro P _
      exact (hfi.indicator (hmeasP P p)).congr (Filter.Eventually.of_forall (hind P))
    
    have hclamp : ∀ (N : ℕ) (b : ℤ) (r : ℝ), ∑ i ∈ Finset.range N,
        ((if (i : ℤ) + 1 ≤ b then (1 : ℝ) else 0) * r -
          (if b ≤ -((i : ℤ) + 1) then (1 : ℝ) else 0) * r) =
        ((max (min b (N : ℤ)) (-(N : ℤ)) : ℤ) : ℝ) * r := by
      intro N b r
      induction N with
      | zero => simp
      | succ N ih =>
        rw [Finset.sum_range_succ, ih]
        by_cases h1 : (N : ℤ) + 1 ≤ b
        · have h2 : ¬ b ≤ -((N : ℤ) + 1) := by omega
          have e1 : max (min b ((N + 1 : ℕ) : ℤ)) (-((N + 1 : ℕ) : ℤ)) =
              max (min b (N : ℤ)) (-(N : ℤ)) + 1 := by
            push_cast
            simp only [max_def, min_def]
            split_ifs <;> omega
          rw [if_pos h1, if_neg h2, e1]
          push_cast
          ring
        · by_cases h2 : b ≤ -((N : ℤ) + 1)
          · have e1 : max (min b ((N + 1 : ℕ) : ℤ)) (-((N + 1 : ℕ) : ℤ)) =
                max (min b (N : ℤ)) (-(N : ℤ)) - 1 := by
              push_cast
              simp only [max_def, min_def]
              split_ifs <;> omega
            rw [if_neg h1, if_pos h2, e1]
            push_cast
            ring
          · have e1 : max (min b ((N + 1 : ℕ) : ℤ)) (-((N + 1 : ℕ) : ℤ)) =
                max (min b (N : ℤ)) (-(N : ℤ)) := by
              push_cast
              simp only [max_def, min_def]
              split_ifs <;> omega
            rw [if_neg h1, if_neg h2, e1]
            ring
    have hclb : ∀ (N : ℕ) (b : ℤ), |((max (min b (N : ℤ)) (-(N : ℤ)) : ℤ) : ℝ)| ≤ |(b : ℝ)| := by
      intro N b
      have h : |max (min b (N : ℤ)) (-(N : ℤ))| ≤ |b| := by
        rw [abs_le]
        have h1 := le_abs_self b
        have h2 := neg_abs_le b
        have h3 : (0 : ℤ) ≤ (N : ℤ) := Int.natCast_nonneg N
        generalize |b| = B at *
        constructor <;> simp only [max_def, min_def] <;> split_ifs <;> omega
      exact_mod_cast h
    have hFN : ∀ N : ℕ, (fun y => ∑ i ∈ Finset.range N,
        ((if (i : ℤ) + 1 ≤ w ((chartAt E3 p).symm y) then (1 : ℝ) else 0) * f y -
          (if w ((chartAt E3 p).symm y) ≤ -((i : ℤ) + 1) then (1 : ℝ) else 0) * f y)) =
        fun y => ((max (min (w ((chartAt E3 p).symm y)) (N : ℤ)) (-(N : ℤ)) : ℤ) : ℝ) * f y := by
      intro N
      funext y
      exact hclamp N _ _
    have hseq : ∀ N : ℕ, ∑ i ∈ Finset.range N,
        ((∫ y in chartAt E3 p '' ({x | (i : ℤ) + 1 ≤ w x} ∩ (chartAt E3 p).source), f y) -
          ∫ y in chartAt E3 p '' ({x | w x ≤ -((i : ℤ) + 1)} ∩ (chartAt E3 p).source), f y) =
        ∫ y, ((max (min (w ((chartAt E3 p).symm y)) (N : ℤ)) (-(N : ℤ)) : ℤ) : ℝ) * f y := by
      intro N
      rw [← hFN N, integral_finset_sum]
      · refine Finset.sum_congr rfl fun i _ => ?_
        rw [integral_sub (hintP (fun b => (i : ℤ) + 1 ≤ b))
          (hintP (fun b => b ≤ -((i : ℤ) + 1))),
          hsetint (fun b => (i : ℤ) + 1 ≤ b), hsetint (fun b => b ≤ -((i : ℤ) + 1))]
      · intro i _
        exact (hintP (fun b => (i : ℤ) + 1 ≤ b)).sub (hintP (fun b => b ≤ -((i : ℤ) + 1)))
    have hbound : Integrable
        (fun y => ‖T.indicator (fun y => (w ((chartAt E3 p).symm y) : ℝ)) y‖ * C) :=
      ((hwT.integrable_indicator hTc.isClosed.measurableSet).norm).mul_const C
    have hlimit : Tendsto (fun N : ℕ =>
        ∫ y, ((max (min (w ((chartAt E3 p).symm y)) (N : ℤ)) (-(N : ℤ)) : ℤ) : ℝ) * f y) atTop
        (𝓝 (∫ y, (w ((chartAt E3 p).symm y) : ℝ) * f y)) := by
      refine tendsto_integral_of_dominated_convergence _ (fun N => ?_) hbound (fun N => ?_) ?_
      · rw [← hFN N]
        apply Integrable.aestronglyMeasurable
        apply integrable_finset_sum
        intro i _
        exact (hintP (fun b => (i : ℤ) + 1 ≤ b)).sub (hintP (fun b => b ≤ -((i : ℤ) + 1)))
      · refine Filter.Eventually.of_forall fun y => ?_
        have hCy : |f y| ≤ C := by simpa [Real.norm_eq_abs] using hC y
        by_cases hy : y ∈ T
        · simp only [Set.indicator_of_mem hy, norm_mul, Real.norm_eq_abs]
          exact mul_le_mul (hclb N _) hCy (abs_nonneg _) (abs_nonneg _)
        · simp [Set.indicator_of_notMem hy, hfT y hy]
      · refine Filter.Eventually.of_forall fun y => ?_
        refine tendsto_atTop_of_eventually_const (i₀ := (w ((chartAt E3 p).symm y)).natAbs)
          fun N hN => ?_
        have h : max (min (w ((chartAt E3 p).symm y)) (N : ℤ)) (-(N : ℤ)) =
            w ((chartAt E3 p).symm y) := by
          simp only [max_def, min_def]
          split_ifs <;> omega
        rw [h]
    exact hlimit.congr fun N => (hseq N).symm
  
  have hFc : ∀ k, Continuous (sepDensDiv (g.coeff (chartAt E3 (pp k)).symm) (Y k)) := fun k =>
    hcont _ _ (hfieldsmooth (pp k) (Y k) (hY k).1 (hY k).2.2)
  have hF0 : ∀ k y, y ∉ tsupport (Y k) →
      sepDensDiv (g.coeff (chartAt E3 (pp k)).symm) (Y k) y = 0 := fun k =>
    hvan _ _ _ (isClosed_tsupport _) (fun z hz => image_eq_zero_of_notMem_tsupport hz)
  have hPc : ∀ j, Continuous
      (sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V)) := fun j =>
    hcont _ _ (calPiece_regular g (q j) (φ j) (hφ.1 j) (hφ.2.2.2 j).1
      (fun x hx => ((hφ.2.2.2 j).2 hx).2) V hV).1
  have hP0 : ∀ j y, y ∉ chartAt E3 (q j) '' tsupport (φ j) →
      sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y = 0 := fun j =>
    hvan _ _ _ (hKc j).isClosed (fun z hz => hpiece0 _ _ _ z hz)
  have hPneg : ∀ j y,
      sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) (fun x => -V x)) y =
        -sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y := fun j =>
    hodd _ _ _ (hpieceneg j)
  
  have hA := tendsto_finset_sum Finset.univ (fun k _ =>
    hlim (pp k) _ (tsupport (Y k)) (hFc k) (hY k).2.1.isCompact (hY k).2.2 (hF0 k) (hwY k))
  have hB := tendsto_finset_sum Finset.univ (fun j _ =>
    hlim (q j) _ _ (hPc j) (hKc j) (hKt j) (hP0 j) (hwφ j))
  have hstar : ∑ k, ∫ y, (w ((chartAt E3 (pp k)).symm y) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 (pp k)).symm) (Y k) y =
      ∑ j, ∫ y, (w ((chartAt E3 (q j)).symm y) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y := by
    refine tendsto_nhds_unique hA (hB.congr fun N => ?_)
    beta_reduce
    rw [Finset.sum_comm]
    conv_rhs => rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Finset.sum_sub_distrib, Finset.sum_sub_distrib, hid _ (hup i), hid _ (hdn i)]
    rfl
  
  have hsplit : ∀ j, ∫ y, (w ((chartAt E3 (q j)).symm y) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y =
      (∫ y, ((max (w ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y) +
        ∫ y, ((max (-w ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) (fun x => -V x)) y := by
    intro j
    obtain ⟨C, hC⟩ := (hPc j).bounded_above_of_compact_support
      (HasCompactSupport.intro (hKc j) (hP0 j))
    have hKm := (hKc j).isClosed.measurableSet
    have hpos1 : MeasureTheory.IntegrableOn
        (fun y => ((max (w ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ))
        (chartAt E3 (q j) '' tsupport (φ j)) :=
      (MeasureTheory.Integrable.pos_part (hwφ j)).congr
        (Filter.Eventually.of_forall fun y => by simp only [Int.cast_max, Int.cast_zero])
    have hneg1 : MeasureTheory.IntegrableOn
        (fun y => ((max (-w ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ))
        (chartAt E3 (q j) '' tsupport (φ j)) :=
      (MeasureTheory.Integrable.neg_part (hwφ j)).congr
        (Filter.Eventually.of_forall fun y => by
          simp only [Int.cast_max, Int.cast_neg, Int.cast_zero])
    have hpos : Integrable (fun y => ((max (w ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y) := by
      refine ((hpos1.integrable_indicator hKm).mul_bdd (hPc j).aestronglyMeasurable
        (Filter.Eventually.of_forall hC)).congr (Filter.Eventually.of_forall fun y => ?_)
      by_cases hy : y ∈ chartAt E3 (q j) '' tsupport (φ j)
      · simp only [Set.indicator_of_mem hy]
      · simp only [Set.indicator_of_notMem hy, hP0 j y hy, mul_zero]
    have hneg : Integrable (fun y => ((max (-w ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) (fun x => -V x)) y) := by
      refine (((hneg1.integrable_indicator hKm).mul_bdd (hPc j).aestronglyMeasurable
        (Filter.Eventually.of_forall hC)).neg).congr (Filter.Eventually.of_forall fun y => ?_)
      beta_reduce
      rw [hPneg j y, Pi.neg_apply]
      by_cases hy : y ∈ chartAt E3 (q j) '' tsupport (φ j)
      · simp only [Set.indicator_of_mem hy, mul_neg]
      · simp only [Set.indicator_of_notMem hy, hP0 j y hy, mul_zero, neg_zero]
    rw [← integral_add hpos hneg]
    refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
    dsimp only
    rw [hPneg j y]
    have h1 := max_zero_sub_max_neg_zero_eq_self (w ((chartAt E3 (q j)).symm y))
    have h2 : ((w ((chartAt E3 (q j)).symm y) : ℤ) : ℝ) =
        ((max (w ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ) -
          ((max (-w ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ) := by
      rw [← Int.cast_sub, h1]
    rw [h2]
    ring
  rw [hstar, ← Finset.sum_add_distrib]
  exact Finset.sum_congr rfl fun j _ => hsplit j

theorem dcs_level_ineq [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (ρ : M → ℝ) (r₁ η : ℝ) (hρ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ρ)
    (hmc : ∀ p : M, r₁ ≤ ρ p → 0 < g.levelMeanCurv ρ p) (hη : 0 < η)
    (Ω : Set M) {n : ℕ} (q : Fin n → M) (φ : Fin n → M → ℝ) (hφ : calPartition q φ Ω)
    (O : Set M) (hO : IsOpen O) (hφ1 : ∀ x ∈ O, ∑ j, φ j x = 1)
    (F : Set M) (hF : sepChartMeas F) (hFU : sepChartMeas (F ∩ {x : M | r₁ < ρ x}))
    (hFO : ∀ x ∈ F, r₁ < ρ x → x ∈ O)
    (Y V Z : M → E3) (hY : calSmoothField Y) (hY1 : ∀ x, g.g x (Y x) (Y x) ≤ 1)
    (hZ : calSmoothField Z)
    (hVZ : ∀ q' : M, ∀ y ∈ (chartAt E3 q').target, ∀ wV wY wZ : E3,
      wV = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q') ((chartAt E3 q').symm y)
        (V ((chartAt E3 q').symm y)) →
      wY = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q') ((chartAt E3 q').symm y)
        (Y ((chartAt E3 q').symm y)) →
      wZ = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q') ((chartAt E3 q').symm y)
        (Z ((chartAt E3 q').symm y)) →
      ∀ i : Fin 3,
        wV i = (1 - calTheta r₁ η (ρ ((chartAt E3 q').symm y))) * wY i +
          calSigma ρ r₁ (∅ : Set M) ((chartAt E3 q').symm y) *
            calTheta r₁ η (ρ ((chartAt E3 q').symm y)) *
            calUnitNormal (g.coeff (chartAt E3 q').symm) (fun z => ρ ((chartAt E3 q').symm z)) y i ∧
        wZ i = calTheta r₁ η (ρ ((chartAt E3 q').symm y)) *
            calUnitNormal (g.coeff (chartAt E3 q').symm) (fun z => ρ ((chartAt E3 q').symm z)) y i) :
    (∀ j, MeasureTheory.IntegrableOn (fun y => φ j ((chartAt E3 (q j)).symm y) *
        g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
        Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det)
      (chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source))) ∧
    ∑ j, ((∫ y in chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source),
            calTheta r₁ η (ρ ((chartAt E3 (q j)).symm y)) *
              (φ j ((chartAt E3 (q j)).symm y) * g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
                Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det)) +
          ∫ y in chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source),
            (1 - calTheta r₁ η (ρ ((chartAt E3 (q j)).symm y))) *
              sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y) ≤
      ∑ j, ((∫ y in chartAt E3 (q j) '' (F ∩ (chartAt E3 (q j)).source),
            sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y) -
          ∫ y in chartAt E3 (q j) '' ((F \ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source),
            sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y) :=
by
  have hρc : Continuous ρ := hρ.continuous
  have hU1 : IsOpen {x : M | r₁ < ρ x} := isOpen_lt continuous_const hρc
  have hBo : IsOpen ({p : M | r₁ < ρ p} \ (∅ : Set M)) := by
    rw [Set.diff_empty]; exact hU1
  have hφs : ∀ j, tsupport (φ j) ⊆ (chartAt E3 (q j)).source :=
    fun j x hx => ((hφ.2.2.2 j).2 hx).2
  have hsd : symmDiff F (∅ : Set M) = F := symmDiff_bot F
  have hθc : Continuous (calTheta r₁ η) := by
    show Continuous (fun t => Real.smoothTransition (2 * ((t - r₁) / η) - 1))
    exact Real.smoothTransition.continuous.comp (by fun_prop)
  have hθ0 : ∀ t, 0 ≤ calTheta r₁ η t := fun t => Real.smoothTransition.nonneg _
  have hθ1 : ∀ t, calTheta r₁ η t ≤ 1 := fun t => Real.smoothTransition.le_one _
  have hj : ∀ j, MeasureTheory.IntegrableOn (fun y => φ j ((chartAt E3 (q j)).symm y) *
        g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
        Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det)
      (chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source)) ∧
      (∫ y in chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source),
            calTheta r₁ η (ρ ((chartAt E3 (q j)).symm y)) *
              (φ j ((chartAt E3 (q j)).symm y) * g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
                Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det)) +
          (∫ y in chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source),
            Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det *
              fderiv ℝ (fun z => φ j ((chartAt E3 (q j)).symm z)) y
                (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 (q j)) ((chartAt E3 (q j)).symm y)
                  (Z ((chartAt E3 (q j)).symm y)) : E3)) +
          ∫ y in chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source),
            (1 - calTheta r₁ η (ρ ((chartAt E3 (q j)).symm y))) *
              sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y ≤
        (∫ y in chartAt E3 (q j) '' (F ∩ (chartAt E3 (q j)).source),
            sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y) -
          ∫ y in chartAt E3 (q j) '' ((F \ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source),
            sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y := by
    intro j
    obtain ⟨c1, c2, c3⟩ := cal_chart_step g ρ r₁ η ∅ F hρ hmc (Set.empty_subset _) isOpen_empty
      hBo hF hη (q j) (φ j) (hφ.1 j) (hφ.2.1 j) (hφ.2.2.2 j).1 (hφs j) Y V Z hY hY1 (hVZ (q j))
    rw [hsd] at c1 c2 c3
    rw [Set.union_empty] at c3
    have hSm : MeasurableSet
        (chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source)) := hFU (q j)
    have hσ : ∀ y ∈ chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source),
        calSigma ρ r₁ (∅ : Set M) ((chartAt E3 (q j)).symm y) = 1 := by
      rintro _ ⟨x, ⟨⟨-, hxU⟩, hxs⟩, rfl⟩
      rw [(chartAt E3 (q j)).left_inv hxs]
      have hx' : x ∈ {p : M | r₁ < ρ p} \ (∅ : Set M) := ⟨hxU, Set.notMem_empty x⟩
      simp only [calSigma, Set.indicator_of_mem hx', Set.indicator_empty, sub_zero]
    have hsubT : chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source) ⊆
        (chartAt E3 (q j)).target := by
      rintro _ ⟨x, hx, rfl⟩
      exact (chartAt E3 (q j)).map_source hx.2
    have hθm : AEStronglyMeasurable (fun y => calTheta r₁ η (ρ ((chartAt E3 (q j)).symm y)))
        (volume.restrict
          (chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source))) :=
      (((hθc.comp hρc).comp_continuousOn (chartAt E3 (q j)).continuousOn_symm).mono hsubT
        ).aestronglyMeasurable hSm
    have hθb : ∀ᵐ y ∂(volume.restrict
          (chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source))),
        ‖calTheta r₁ η (ρ ((chartAt E3 (q j)).symm y))‖ ≤ 1 := by
      refine Filter.Eventually.of_forall (fun y => ?_)
      have h0 := hθ0 (ρ ((chartAt E3 (q j)).symm y))
      have h1 := hθ1 (ρ ((chartAt E3 (q j)).symm y))
      rw [Real.norm_eq_abs, abs_le]
      constructor <;> linarith
    have hθσ := Integrable.bdd_mul c2 hθm hθb
    have hmerge := integral_sub c2 hθσ
    have hcong : ∫ y in chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source),
        (calSigma ρ r₁ (∅ : Set M) ((chartAt E3 (q j)).symm y) *
            sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y -
          calTheta r₁ η (ρ ((chartAt E3 (q j)).symm y)) *
            (calSigma ρ r₁ (∅ : Set M) ((chartAt E3 (q j)).symm y) *
              sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y)) =
        ∫ y in chartAt E3 (q j) '' ((F ∩ {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source),
          (1 - calTheta r₁ η (ρ ((chartAt E3 (q j)).symm y))) *
            sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y := by
      refine setIntegral_congr_fun hSm (fun y hy => ?_)
      rw [hσ y hy]
      ring
    refine ⟨c1, ?_⟩
    linarith
  have hcanc := cal_partition_div_cancel g Ω q φ hφ O hO hφ1 Z hZ (F ∩ {x : M | r₁ < ρ x}) hFU
    (fun x hx => hFO x hx.1 hx.2)
  refine ⟨fun j => (hj j).1, ?_⟩
  have hsum := Finset.sum_le_sum (fun j (_ : j ∈ (Finset.univ : Finset (Fin n))) => (hj j).2)
  simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib] at hsum ⊢
  linarith

theorem dcs_div_weighted [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (q : M) (ψ : M → ℝ) (hψ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ) (hψc : IsCompact (tsupport ψ))
    (hψs : tsupport ψ ⊆ (chartAt E3 q).source) (W : M → E3) (hW : calSmoothField W) :
    MeasureTheory.Integrable (sepDensDiv (g.coeff (chartAt E3 q).symm) (calPiece q ψ W)) ∧
    (∀ y, y ∉ chartAt E3 q '' tsupport ψ →
      sepDensDiv (g.coeff (chartAt E3 q).symm) (calPiece q ψ W) y = 0) ∧
    ∀ v : E3 → ℝ, MeasureTheory.IntegrableOn v (chartAt E3 q '' tsupport ψ) →
      MeasureTheory.Integrable
        (fun y => v y * sepDensDiv (g.coeff (chartAt E3 q).symm) (calPiece q ψ W) y) :=
by
  obtain ⟨hH, hInt⟩ := calPiece_regular g q ψ hψ hψc hψs W hW
  set κ := chartAt E3 q with hκ
  have hKc : IsCompact (κ '' tsupport ψ) :=
    hψc.image_of_continuousOn (κ.continuousOn.mono hψs)
  have hKo : IsOpen (κ '' tsupport ψ)ᶜ := hKc.isClosed.isOpen_compl
  have hX0 : ∀ z, z ∉ κ '' tsupport ψ → calPiece q ψ W z = 0 := by
    intro z hz
    unfold calPiece
    by_cases hzt : z ∈ κ.target
    · rw [Set.indicator_of_mem hzt]
      have hψz : ψ (κ.symm z) = 0 := by
        by_contra hne
        apply hz
        refine ⟨κ.symm z, subset_tsupport ψ hne, κ.right_inv hzt⟩
      simp only [← hκ, hψz, zero_smul]
    · exact Set.indicator_of_notMem hzt _
  have hb : ∀ y, y ∉ κ '' tsupport ψ →
      sepDensDiv (g.coeff κ.symm) (calPiece q ψ W) y = 0 := by
    intro y hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero (fun i _ => ?_)
    unfold partialDeriv
    have hev : (fun z => Real.sqrt (g.coeff κ.symm z).det * calPiece q ψ W z i) =ᶠ[𝓝 y]
        (fun _ => (0 : ℝ)) := by
      filter_upwards [hKo.mem_nhds hy] with z hz
      rw [hX0 z hz]
      simp
    rw [hev.fderiv_eq]
    simp
  have hDc : Continuous (sepDensDiv (g.coeff κ.symm) (calPiece q ψ W)) := by
    unfold sepDensDiv
    refine continuous_finset_sum _ (fun i _ => ?_)
    unfold partialDeriv
    exact ((hH i).continuous_fderiv (by simp)).clm_apply continuous_const
  refine ⟨hInt, hb, fun v hv => ?_⟩
  refine (hv.mul_continuousOn hDc.continuousOn hKc).integrable_of_forall_notMem_eq_zero ?_
  intro y hy
  simp only [hb y hy, mul_zero]

theorem dcs_layer_tendsto (p : M) (u : M → ℤ) (hu0 : ∀ x, 0 ≤ u x) (E : Set M)
    (hE : MeasurableSet (chartAt E3 p '' (E ∩ (chartAt E3 p).source)))
    (hlev : ∀ m : ℕ, MeasurableSet
      (chartAt E3 p '' ({x : M | (m : ℤ) + 1 ≤ u x} ∩ (chartAt E3 p).source)))
    (P : E3 → ℝ) (hP : MeasureTheory.IntegrableOn P (chartAt E3 p '' (E ∩ (chartAt E3 p).source)))
    (huP : MeasureTheory.IntegrableOn (fun y => (u ((chartAt E3 p).symm y) : ℝ) * P y)
      (chartAt E3 p '' (E ∩ (chartAt E3 p).source))) :
    Filter.Tendsto (fun N : ℕ => ∑ m ∈ Finset.range N,
        ∫ y in chartAt E3 p '' (({x : M | (m : ℤ) + 1 ≤ u x} ∩ E) ∩ (chartAt E3 p).source), P y)
      Filter.atTop
      (nhds (∫ y in chartAt E3 p '' (E ∩ (chartAt E3 p).source),
        (u ((chartAt E3 p).symm y) : ℝ) * P y)) :=
by
  classical
  generalize chartAt E3 p = e at hE hlev hP huP ⊢
  
  have hB : ∀ m : ℕ, e '' (({x : M | (m : ℤ) + 1 ≤ u x} ∩ E) ∩ e.source) =
      e '' (E ∩ e.source) ∩ e '' ({x : M | (m : ℤ) + 1 ≤ u x} ∩ e.source) := by
    intro m
    have h1 : ({x : M | (m : ℤ) + 1 ≤ u x} ∩ E) ∩ e.source =
        (E ∩ e.source) ∩ ({x : M | (m : ℤ) + 1 ≤ u x} ∩ e.source) := by
      ext x
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq]
      tauto
    rw [h1]
    exact e.injOn.image_inter Set.inter_subset_right Set.inter_subset_right
  
  have hmem : ∀ y ∈ e '' (E ∩ e.source), ∀ m : ℕ,
      y ∈ e '' ({x : M | (m : ℤ) + 1 ≤ u x} ∩ e.source) ↔ (m : ℤ) + 1 ≤ u (e.symm y) := by
    rintro y ⟨x, ⟨_, hxS⟩, rfl⟩ m
    rw [e.left_inv hxS]
    constructor
    · rintro ⟨x', ⟨hx'u, hx'S⟩, hx'eq⟩
      have hxx : x' = x := e.injOn hx'S hxS hx'eq
      rw [hxx] at hx'u
      exact hx'u
    · intro h
      exact ⟨x, ⟨h, hxS⟩, rfl⟩
  
  have hcount : ∀ k : ℤ, 0 ≤ k → ∀ N : ℕ,
      (∑ m ∈ Finset.range N, (if (m : ℤ) + 1 ≤ k then (1 : ℝ) else 0)) =
        ((min N k.toNat : ℕ) : ℝ) := by
    intro k hk N
    have hK : (k.toNat : ℤ) = k := Int.toNat_of_nonneg hk
    induction N with
    | zero => simp
    | succ N ih =>
      rw [Finset.sum_range_succ, ih]
      by_cases h : (N : ℤ) + 1 ≤ k
      · rw [if_pos h]
        have h2 : min (N + 1) k.toNat = min N k.toNat + 1 := by omega
        rw [h2]
        push_cast
        ring
      · rw [if_neg h]
        have h2 : min (N + 1) k.toNat = min N k.toNat := by omega
        rw [h2]
        simp
  
  have hF : ∀ y ∈ e '' (E ∩ e.source), ∀ N : ℕ,
      (∑ m ∈ Finset.range N, (e '' ({x : M | (m : ℤ) + 1 ≤ u x} ∩ e.source)).indicator P y) =
        ((min N (u (e.symm y)).toNat : ℕ) : ℝ) * P y := by
    intro y hy N
    rw [← hcount _ (hu0 _) N, Finset.sum_mul]
    refine Finset.sum_congr rfl (fun m _ => ?_)
    rw [Set.indicator_apply]
    by_cases h : (m : ℤ) + 1 ≤ u (e.symm y)
    · rw [if_pos ((hmem y hy m).2 h), if_pos h, one_mul]
    · rw [if_neg (fun h' => h ((hmem y hy m).1 h')), if_neg h, zero_mul]
  
  have hint : ∀ m : ℕ, MeasureTheory.Integrable
      ((e '' ({x : M | (m : ℤ) + 1 ≤ u x} ∩ e.source)).indicator P)
      (MeasureTheory.volume.restrict (e '' (E ∩ e.source))) :=
    fun m => hP.indicator (hlev m)
  have heq : ∀ N : ℕ,
      (∫ y in e '' (E ∩ e.source),
        ∑ m ∈ Finset.range N, (e '' ({x : M | (m : ℤ) + 1 ≤ u x} ∩ e.source)).indicator P y) =
      ∑ m ∈ Finset.range N,
        ∫ y in e '' (({x : M | (m : ℤ) + 1 ≤ u x} ∩ E) ∩ e.source), P y := by
    intro N
    rw [MeasureTheory.integral_finset_sum _ (fun m _ => hint m)]
    refine Finset.sum_congr rfl (fun m _ => ?_)
    rw [hB m, MeasureTheory.setIntegral_indicator (hlev m)]
  
  have hDCT : Filter.Tendsto (fun N : ℕ => ∫ y in e '' (E ∩ e.source),
        ∑ m ∈ Finset.range N, (e '' ({x : M | (m : ℤ) + 1 ≤ u x} ∩ e.source)).indicator P y)
      Filter.atTop
      (nhds (∫ y in e '' (E ∩ e.source), (u (e.symm y) : ℝ) * P y)) := by
    refine MeasureTheory.tendsto_integral_of_dominated_convergence
      (fun y => ‖(u (e.symm y) : ℝ) * P y‖) (fun N => ?_) huP.norm (fun N => ?_) ?_
    · exact (MeasureTheory.integrable_finset_sum _ (fun m _ => hint m)).aestronglyMeasurable
    · filter_upwards [MeasureTheory.ae_restrict_mem hE] with y hy
      rw [hF y hy N, norm_mul, norm_mul]
      apply mul_le_mul_of_nonneg_right _ (norm_nonneg _)
      have hk := hu0 (e.symm y)
      have hK : ((u (e.symm y)).toNat : ℤ) = u (e.symm y) := Int.toNat_of_nonneg hk
      have h2 : ((min N (u (e.symm y)).toNat : ℕ) : ℤ) ≤ u (e.symm y) := by omega
      have h3 : (((min N (u (e.symm y)).toNat : ℕ) : ℤ) : ℝ) ≤ ((u (e.symm y) : ℤ) : ℝ) :=
        by exact_mod_cast h2
      have hk' : (0 : ℝ) ≤ ((u (e.symm y) : ℤ) : ℝ) := by exact_mod_cast hk
      rw [Real.norm_eq_abs, Real.norm_eq_abs, abs_of_nonneg (Nat.cast_nonneg _),
        abs_of_nonneg hk']
      rw [Int.cast_natCast] at h3
      exact h3
    · filter_upwards [MeasureTheory.ae_restrict_mem hE] with y hy
      apply tendsto_atTop_of_eventually_const (i₀ := (u (e.symm y)).toNat)
      intro N hN
      rw [hF y hy N, min_eq_right hN]
      have hK : ((u (e.symm y)).toNat : ℤ) = u (e.symm y) := Int.toNat_of_nonneg (hu0 _)
      have hK' : (((u (e.symm y)).toNat : ℤ) : ℝ) = ((u (e.symm y) : ℤ) : ℝ) := by rw [hK]
      rw [Int.cast_natCast] at hK'
      rw [hK']
  exact hDCT.congr heq

theorem dcs_theta_limit (S : Set E3) (hS : MeasurableSet S) (r₁ : ℝ) (t F : E3 → ℝ)
    (ht : ∀ y ∈ S, r₁ < t y)
    (htm : MeasureTheory.AEStronglyMeasurable t (MeasureTheory.volume.restrict S))
    (hF : MeasureTheory.IntegrableOn F S) :
    Filter.Tendsto (fun k : ℕ => ∫ y in S, calTheta r₁ (1 / ((k : ℝ) + 1)) (t y) * F y)
      Filter.atTop (nhds (∫ y in S, F y)) ∧
    Filter.Tendsto (fun k : ℕ => ∫ y in S, (1 - calTheta r₁ (1 / ((k : ℝ) + 1)) (t y)) * F y)
      Filter.atTop (nhds 0) :=
by
  have hθ0 : ∀ η s : ℝ, 0 ≤ calTheta r₁ η s := by
    intro η s
    unfold calTheta
    exact Real.smoothTransition.nonneg _
  have hθ1 : ∀ η s : ℝ, calTheta r₁ η s ≤ 1 := by
    intro η s
    unfold calTheta
    exact Real.smoothTransition.le_one _
  have hθc : ∀ η : ℝ, Continuous (calTheta r₁ η) := by
    intro η
    unfold calTheta
    exact Real.smoothTransition.continuous.comp (by fun_prop)
  have hev : ∀ s : ℝ, r₁ < s →
      ∀ᶠ k : ℕ in Filter.atTop, calTheta r₁ (1 / ((k : ℝ) + 1)) s = 1 := by
    intro s hs
    have hδ : 0 < s - r₁ := sub_pos.mpr hs
    obtain ⟨N, hN⟩ := exists_nat_ge (1 / (s - r₁))
    refine Filter.eventually_atTop.2 ⟨N, fun k hk => ?_⟩
    unfold calTheta
    apply Real.smoothTransition.one_of_one_le
    have hk' : (N : ℝ) ≤ (k : ℝ) := by exact_mod_cast hk
    have hk1 : (0 : ℝ) < (k : ℝ) + 1 := by positivity
    have e : (s - r₁) / (1 / ((k : ℝ) + 1)) = (s - r₁) * ((k : ℝ) + 1) := by
      field_simp
    rw [e]
    have h1 : 1 ≤ (s - r₁) * ((k : ℝ) + 1) := by
      have : 1 / (s - r₁) ≤ (k : ℝ) + 1 := by linarith
      rw [div_le_iff₀ hδ] at this
      linarith
    linarith
  have hae : ∀ᵐ y ∂(MeasureTheory.volume.restrict S),
      ∀ᶠ k : ℕ in Filter.atTop, calTheta r₁ (1 / ((k : ℝ) + 1)) (t y) = 1 :=
    (MeasureTheory.ae_restrict_iff' hS).2 (Filter.Eventually.of_forall fun y hy => hev _ (ht y hy))
  constructor
  · refine MeasureTheory.tendsto_integral_of_dominated_convergence (fun y => ‖F y‖)
      (fun k => ((hθc _).comp_aestronglyMeasurable htm).mul hF.aestronglyMeasurable)
      hF.norm (fun k => Filter.Eventually.of_forall fun y => ?_) ?_
    · rw [norm_mul, Real.norm_eq_abs (calTheta _ _ _), abs_of_nonneg (hθ0 _ _)]
      exact mul_le_of_le_one_left (norm_nonneg _) (hθ1 _ _)
    · filter_upwards [hae] with y hy
      refine tendsto_const_nhds.congr' ?_
      filter_upwards [hy] with k hk
      rw [hk, one_mul]
  · have h := MeasureTheory.tendsto_integral_of_dominated_convergence (μ := MeasureTheory.volume.restrict S)
      (F := fun (k : ℕ) y => (1 - calTheta r₁ (1 / ((k : ℝ) + 1)) (t y)) * F y)
      (f := fun _ => (0 : ℝ)) (fun y => ‖F y‖)
      (fun k => ((continuous_const.sub (hθc _)).comp_aestronglyMeasurable htm).mul
        hF.aestronglyMeasurable)
      hF.norm (fun k => Filter.Eventually.of_forall fun y => ?_) ?_
    · simpa using h
    · rw [norm_mul, Real.norm_eq_abs (1 - calTheta _ _ _),
        abs_of_nonneg (sub_nonneg.mpr (hθ1 _ _))]
      exact mul_le_of_le_one_left (norm_nonneg _) (by linarith [hθ0 (1 / ((k : ℝ) + 1)) (t y)])
    · filter_upwards [hae] with y hy
      refine tendsto_const_nhds.congr' ?_
      filter_upwards [hy] with k hk
      rw [hk, sub_self, zero_mul]

theorem dual_cal_step_fn [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (ρ : M → ℝ) (r₁ : ℝ) (hρ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ρ)
    (hmc : ∀ p : M, r₁ ≤ ρ p → 0 < g.levelMeanCurv ρ p)
    (Ω : Set M) {n : ℕ} (q : Fin n → M) (φ : Fin n → M → ℝ) (hφ : calPartition q φ Ω)
    (O : Set M) (hO : IsOpen O) (hφ1 : ∀ x ∈ O, ∑ j, φ j x = 1)
    (w : M → ℤ) (hw0 : ∀ x, 0 ≤ w x) (hwm : ∀ j : ℤ, sepChartMeas {x | w x = j})
    (hwO : ∀ x, r₁ < ρ x → w x ≠ 0 → x ∈ O)
    (hwφ : ∀ j, MeasureTheory.IntegrableOn (fun y => (w ((chartAt E3 (q j)).symm y) : ℝ))
      (chartAt E3 (q j) '' tsupport (φ j)))
    (hH : ∀ j, ∃ C : ℝ, ∀ x ∈ tsupport (φ j), r₁ < ρ x → |g.levelMeanCurv ρ x| ≤ C)
    (Y : M → E3) (hY : calSmoothField Y) (hY1 : ∀ x, g.g x (Y x) (Y x) ≤ 1)
    (ε : ℝ) (hε : 0 < ε) :
    (∀ j, MeasureTheory.IntegrableOn (fun y => φ j ((chartAt E3 (q j)).symm y) *
        g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
        Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det)
      (chartAt E3 (q j) '' ({x : M | r₁ < ρ x ∧ w x ≠ 0} ∩ (chartAt E3 (q j)).source))) ∧
    ∃ V : M → E3, calSmoothField V ∧ (∀ x, g.g x (V x) (V x) ≤ 1) ∧
      (∑ j, ∫ y, (if r₁ < ρ ((chartAt E3 (q j)).symm y) then (0 : ℝ)
            else (w ((chartAt E3 (q j)).symm y) : ℝ)) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y) +
        calVolSum g q φ {x : M | r₁ < ρ x ∧ w x ≠ 0} (fun x => g.levelMeanCurv ρ x) - ε ≤
      ∑ j, ∫ y, (w ((chartAt E3 (q j)).symm y) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y :=
by
  classical
  have hρc : Continuous ρ := hρ.continuous
  have hU1 : IsOpen {x : M | r₁ < ρ x} := isOpen_lt continuous_const hρc
  
  have hT : ∀ (p : M) (S : Set M), chartAt E3 p '' (S ∩ (chartAt E3 p).source) =
      (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S := by
    intro p S
    rw [Set.inter_comm, OpenPartialHomeomorph.image_source_inter_eq']
  have hmeasρ : ∀ p : M,
      MeasurableSet ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | r₁ < ρ x}) :=
    fun p => ((chartAt E3 p).isOpen_inter_preimage_symm hU1).measurableSet
  have hmeasP : ∀ (p : M) (P : ℤ → Prop),
      MeasurableSet ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | P (w x)}) := by
    intro p P
    have e : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | P (w x)} =
        ⋃ j ∈ {j : ℤ | P j}, (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | w x = j} := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_setOf_eq, Set.mem_iUnion,
        exists_prop]
      constructor
      · rintro ⟨h1, h2⟩
        exact ⟨_, h2, h1, rfl⟩
      · rintro ⟨j, hj, h1, h2⟩
        exact ⟨h1, h2 ▸ hj⟩
    rw [e]
    refine MeasurableSet.biUnion (Set.to_countable _) (fun j _ => ?_)
    have h := hwm j p
    rw [hT] at h
    exact h
  have hcm : ∀ (P₁ P₂ : ℤ → Prop) (S : Set M),
      (∀ x, x ∈ S ↔ (r₁ < ρ x ∧ P₁ (w x)) ∨ (¬ r₁ < ρ x ∧ P₂ (w x))) → sepChartMeas S := by
    intro P₁ P₂ S hS p
    rw [hT]
    have e : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S =
        (((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | r₁ < ρ x}) ∩
          ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | P₁ (w x)})) ∪
        (((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | P₂ (w x)}) \
          ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | r₁ < ρ x})) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_setOf_eq, Set.mem_union,
        Set.mem_diff, hS]
      tauto
    rw [e]
    exact ((hmeasρ p).inter (hmeasP p P₁)).union ((hmeasP p P₂).diff (hmeasρ p))
  have hFm : ∀ m : ℕ, sepChartMeas {x : M | (m : ℤ) + 1 ≤ w x} := fun m =>
    hcm (fun z => (m : ℤ) + 1 ≤ z) (fun z => (m : ℤ) + 1 ≤ z) _
      (fun x => by simp only [Set.mem_setOf_eq]; tauto)
  have hFUm : ∀ m : ℕ, sepChartMeas ({x : M | (m : ℤ) + 1 ≤ w x} ∩ {x : M | r₁ < ρ x}) :=
    fun m => hcm (fun z => (m : ℤ) + 1 ≤ z) (fun _ => False) _
      (fun x => by simp only [Set.mem_inter_iff, Set.mem_setOf_eq]; tauto)
  have hU1m : sepChartMeas {x : M | r₁ < ρ x} :=
    hcm (fun _ => True) (fun _ => False) _ (fun x => by simp only [Set.mem_setOf_eq]; tauto)
  have hU1cm : sepChartMeas {x : M | r₁ < ρ x}ᶜ :=
    hcm (fun _ => False) (fun _ => True) _
      (fun x => by simp only [Set.mem_compl_iff, Set.mem_setOf_eq]; tauto)
  have hunivm : sepChartMeas (Set.univ : Set M) :=
    hcm (fun _ => True) (fun _ => True) _ (fun x => by simp only [Set.mem_univ]; tauto)
  have hDm : sepChartMeas {x : M | r₁ < ρ x ∧ w x ≠ 0} :=
    hcm (fun z => z ≠ 0) (fun _ => False) _ (fun x => by simp only [Set.mem_setOf_eq]; tauto)
  have hFO : ∀ m : ℕ, ∀ x ∈ {x : M | (m : ℤ) + 1 ≤ w x}, r₁ < ρ x → x ∈ O := by
    intro m x hx hxρ
    have h : (m : ℤ) + 1 ≤ w x := hx
    exact hwO x hxρ (by omega)
  have hDeq : {x : M | ((0 : ℕ) : ℤ) + 1 ≤ w x} ∩ {x : M | r₁ < ρ x} =
      {x : M | r₁ < ρ x ∧ w x ≠ 0} := by
    ext x
    simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Nat.cast_zero, zero_add]
    have := hw0 x
    constructor
    · rintro ⟨h1, h2⟩
      exact ⟨h2, by omega⟩
    · rintro ⟨h1, h2⟩
      exact ⟨by omega, h1⟩
  have hBo : IsOpen ({p : M | r₁ < ρ p} \ (∅ : Set M)) := by
    rw [Set.diff_empty]; exact hU1
  
  have hsubT : ∀ (p : M) (S : Set M),
      chartAt E3 p '' (S ∩ (chartAt E3 p).source) ⊆ (chartAt E3 p).target := by
    rintro p S _ ⟨x, hx, rfl⟩
    exact (chartAt E3 p).map_source hx.2
  have hφs : ∀ j, tsupport (φ j) ⊆ (chartAt E3 (q j)).source :=
    fun j x hx => ((hφ.2.2.2 j).2 hx).2
  have hKt : ∀ j, chartAt E3 (q j) '' tsupport (φ j) ⊆ (chartAt E3 (q j)).target := by
    rintro j _ ⟨x, hx, rfl⟩
    exact (chartAt E3 (q j)).map_source (hφs j hx)
  have hKs : ∀ j, chartAt E3 (q j) '' tsupport (φ j) ⊆
      chartAt E3 (q j) '' (chartAt E3 (q j)).source := fun j => Set.image_mono (hφs j)
  
  have hθc : ∀ η : ℝ, Continuous (calTheta r₁ η) := by
    intro η
    show Continuous (fun t => Real.smoothTransition (2 * ((t - r₁) / η) - 1))
    exact Real.smoothTransition.continuous.comp (by fun_prop)
  have hθ0 : ∀ η t, 0 ≤ calTheta r₁ η t := fun η t => Real.smoothTransition.nonneg _
  have hθ1 : ∀ η t, calTheta r₁ η t ≤ 1 := fun η t => Real.smoothTransition.le_one _
  have hcont : ∀ (p : M) (h : ℝ → ℝ), Continuous h → ∀ S : Set E3,
      S ⊆ (chartAt E3 p).target → MeasurableSet S →
      AEStronglyMeasurable (fun y => h (ρ ((chartAt E3 p).symm y))) (volume.restrict S) := by
    intro p h hh S hS hSm
    exact (((hh.comp hρc).comp_continuousOn (chartAt E3 p).continuousOn_symm).mono hS
      ).aestronglyMeasurable hSm
  have htU : ∀ j, ∀ y ∈ chartAt E3 (q j) '' ({x : M | r₁ < ρ x} ∩ (chartAt E3 (q j)).source),
      r₁ < ρ ((chartAt E3 (q j)).symm y) := by
    rintro j _ ⟨x, ⟨hx, hxs⟩, rfl⟩
    rw [(chartAt E3 (q j)).left_inv hxs]
    exact hx
  have htD : ∀ j, ∀ y ∈ chartAt E3 (q j) '' ({x : M | r₁ < ρ x ∧ w x ≠ 0} ∩
      (chartAt E3 (q j)).source), r₁ < ρ ((chartAt E3 (q j)).symm y) := by
    rintro j _ ⟨x, ⟨hx, hxs⟩, rfl⟩
    rw [(chartAt E3 (q j)).left_inv hxs]
    exact hx.1
  
  obtain ⟨V₀, Z₀, -, -, hZ₀, hVZ₀⟩ := cal_blend_field g ρ r₁ 1 ∅ hρ hmc (Set.empty_subset _)
    isOpen_empty hBo one_pos Y hY hY1
  have hintD : ∀ j, IntegrableOn (fun y => φ j ((chartAt E3 (q j)).symm y) *
        g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
        Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det)
      (chartAt E3 (q j) '' ({x : M | r₁ < ρ x ∧ w x ≠ 0} ∩ (chartAt E3 (q j)).source)) := by
    intro j
    rw [← hDeq]
    exact (dcs_level_ineq g ρ r₁ 1 hρ hmc one_pos Ω q φ hφ O hO hφ1 _ (hFm 0) (hFUm 0) (hFO 0)
      Y V₀ Z₀ hY hY1 hZ₀ hVZ₀).1 j
  refine ⟨hintD, ?_⟩
  
  have hωPY : ∀ j, Integrable (fun y => (w ((chartAt E3 (q j)).symm y) : ℝ) *
      sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y) := fun j =>
    (dcs_div_weighted g (q j) (φ j) (hφ.1 j) (hφ.2.2.2 j).1 (hφs j) Y hY).2.2 _ (hwφ j)
  have ha : Tendsto (fun k : ℕ => ∑ j, ∫ y in chartAt E3 (q j) '' ({x : M | r₁ < ρ x ∧ w x ≠ 0} ∩
      (chartAt E3 (q j)).source),
      calTheta r₁ (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y)) *
        (φ j ((chartAt E3 (q j)).symm y) * g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
          Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det)) atTop
      (𝓝 (calVolSum g q φ {x : M | r₁ < ρ x ∧ w x ≠ 0} (fun x => g.levelMeanCurv ρ x))) := by
    refine tendsto_finset_sum _ (fun j _ => ?_)
    exact (dcs_theta_limit _ (hDm (q j)) r₁ (fun y => ρ ((chartAt E3 (q j)).symm y)) _
      (htD j) (hcont (q j) id continuous_id _ (hsubT _ _) (hDm (q j))) (hintD j)).1
  have hcj : ∀ j, Tendsto (fun k : ℕ => ∫ y in chartAt E3 (q j) '' ({x : M | r₁ < ρ x} ∩
      (chartAt E3 (q j)).source), (w ((chartAt E3 (q j)).symm y) : ℝ) *
        ((1 - calTheta r₁ (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y))) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y))
      atTop (𝓝 0) := by
    intro j
    have h := (dcs_theta_limit _ (hU1m (q j)) r₁ (fun y => ρ ((chartAt E3 (q j)).symm y)) _
      (htU j) (hcont (q j) id continuous_id _ (hsubT _ _) (hU1m (q j)))
      (hωPY j).integrableOn).2
    refine h.congr (fun k => integral_congr_ae (Eventually.of_forall fun y => ?_))
    beta_reduce
    ring
  have hc : Tendsto (fun k : ℕ => ∑ j, ∫ y in chartAt E3 (q j) '' ({x : M | r₁ < ρ x} ∩
      (chartAt E3 (q j)).source), (w ((chartAt E3 (q j)).symm y) : ℝ) *
        ((1 - calTheta r₁ (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y))) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y))
      atTop (𝓝 0) := by
    have h := tendsto_finset_sum (Finset.univ : Finset (Fin n)) (fun j _ => hcj j)
    rwa [Finset.sum_const_zero] at h
  obtain ⟨k, hk1, hk2⟩ := ((ha.eventually (lt_mem_nhds (show
      calVolSum g q φ {x : M | r₁ < ρ x ∧ w x ≠ 0} (fun x => g.levelMeanCurv ρ x) - ε / 2 <
      calVolSum g q φ {x : M | r₁ < ρ x ∧ w x ≠ 0} (fun x => g.levelMeanCurv ρ x) by linarith))).and
    (hc.eventually (lt_mem_nhds (show -(ε / 2) < (0 : ℝ) by linarith)))).exists
  
  have hη : (0 : ℝ) < 1 / ((k : ℝ) + 1) := by positivity
  obtain ⟨V, Z, hV, hV1, hZ, hVZ⟩ := cal_blend_field g ρ r₁ (1 / ((k : ℝ) + 1)) ∅ hρ hmc
    (Set.empty_subset _) isOpen_empty hBo hη Y hY hY1
  refine ⟨V, hV, hV1, ?_⟩
  have hlev := fun m : ℕ => (dcs_level_ineq g ρ r₁ (1 / ((k : ℝ) + 1)) hρ hmc hη Ω q φ hφ O hO
    hφ1 _ (hFm m) (hFUm m) (hFO m) Y V Z hY hY1 hZ hVZ).2
  have hnn : ∀ m : ℕ, 0 ≤ ∑ j, ∫ y in chartAt E3 (q j) '' (({x : M | (m : ℤ) + 1 ≤ w x} ∩
      {x : M | r₁ < ρ x}) ∩ (chartAt E3 (q j)).source),
      calTheta r₁ (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y)) *
        (φ j ((chartAt E3 (q j)).symm y) * g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
          Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det) := by
    intro m
    refine Finset.sum_nonneg (fun j _ => setIntegral_nonneg (hFUm m (q j)) ?_)
    rintro _ ⟨x, ⟨⟨-, hxU⟩, hxs⟩, rfl⟩
    rw [(chartAt E3 (q j)).left_inv hxs]
    exact mul_nonneg (hθ0 _ _) (mul_nonneg (mul_nonneg (hφ.2.1 j x) (hmc x (le_of_lt hxU)).le)
      (Real.sqrt_nonneg _))
  
  have hθm : ∀ j (S : Set E3), S ⊆ (chartAt E3 (q j)).target → MeasurableSet S →
      AEStronglyMeasurable (fun y => 1 - calTheta r₁ (1 / ((k : ℝ) + 1))
        (ρ ((chartAt E3 (q j)).symm y))) (volume.restrict S) :=
    fun j S hS hSm => hcont (q j) (fun t => 1 - calTheta r₁ (1 / ((k : ℝ) + 1)) t)
      (continuous_const.sub (hθc _)) S hS hSm
  have hθb : ∀ (S : Set E3) (j : Fin n), ∀ᵐ y ∂(volume.restrict S),
      ‖1 - calTheta r₁ (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y))‖ ≤ 1 := by
    intro S j
    refine Eventually.of_forall (fun y => ?_)
    have h0 := hθ0 (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y))
    have h1 := hθ1 (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y))
    rw [Real.norm_eq_abs, abs_le]
    constructor <;> linarith
  have hEj : ∀ j, Tendsto (fun N : ℕ => ∑ m ∈ Finset.range N,
      ∫ y in chartAt E3 (q j) '' (({x : M | (m : ℤ) + 1 ≤ w x} ∩ {x : M | r₁ < ρ x}) ∩
        (chartAt E3 (q j)).source),
        (1 - calTheta r₁ (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y))) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y) atTop
      (𝓝 (∫ y in chartAt E3 (q j) '' ({x : M | r₁ < ρ x} ∩ (chartAt E3 (q j)).source),
        (w ((chartAt E3 (q j)).symm y) : ℝ) *
          ((1 - calTheta r₁ (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y))) *
            sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y))) := by
    intro j
    have hP : IntegrableOn (fun y => (1 - calTheta r₁ (1 / ((k : ℝ) + 1))
        (ρ ((chartAt E3 (q j)).symm y))) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y)
        (chartAt E3 (q j) '' ({x : M | r₁ < ρ x} ∩ (chartAt E3 (q j)).source)) :=
      Integrable.bdd_mul
        (dcs_div_weighted g (q j) (φ j) (hφ.1 j) (hφ.2.2.2 j).1 (hφs j) Y hY).1.integrableOn
        (hθm j _ (hsubT _ _) (hU1m (q j))) (hθb _ j)
    have huP : IntegrableOn (fun y => (w ((chartAt E3 (q j)).symm y) : ℝ) *
        ((1 - calTheta r₁ (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y))) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y))
        (chartAt E3 (q j) '' ({x : M | r₁ < ρ x} ∩ (chartAt E3 (q j)).source)) :=
      (Integrable.bdd_mul (hωPY j).integrableOn (hθm j _ (hsubT _ _) (hU1m (q j)))
        (hθb _ j)).congr (Eventually.of_forall fun y => by beta_reduce; ring)
    exact dcs_layer_tendsto (q j) w hw0 {x : M | r₁ < ρ x} (hU1m (q j)) (fun m => hFm m (q j))
      (fun y => (1 - calTheta r₁ (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y))) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y) hP huP
  have hRVj : ∀ j, Tendsto (fun N : ℕ => ∑ m ∈ Finset.range N,
      ∫ y in chartAt E3 (q j) '' ({x : M | (m : ℤ) + 1 ≤ w x} ∩ (chartAt E3 (q j)).source),
        sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y) atTop
      (𝓝 (∫ y, (w ((chartAt E3 (q j)).symm y) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y)) := by
    intro j
    have hreg := dcs_div_weighted g (q j) (φ j) (hφ.1 j) (hφ.2.2.2 j).1 (hφs j) V hV
    have h := dcs_layer_tendsto (q j) w hw0 Set.univ (hunivm (q j)) (fun m => hFm m (q j))
      (sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V))
      hreg.1.integrableOn (hreg.2.2 _ (hwφ j)).integrableOn
    simp only [Set.inter_univ, Set.univ_inter] at h
    have he : ∫ y in chartAt E3 (q j) '' (chartAt E3 (q j)).source,
        (w ((chartAt E3 (q j)).symm y) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y =
        ∫ y, (w ((chartAt E3 (q j)).symm y) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y := by
      refine setIntegral_eq_integral_of_forall_compl_eq_zero (fun y hy => ?_)
      rw [hreg.2.1 y (fun h' => hy (hKs j h')), mul_zero]
    rw [he] at h
    exact h
  have hRYj : ∀ j, Tendsto (fun N : ℕ => ∑ m ∈ Finset.range N,
      ∫ y in chartAt E3 (q j) '' (({x : M | (m : ℤ) + 1 ≤ w x} \ {x : M | r₁ < ρ x}) ∩
        (chartAt E3 (q j)).source),
        sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y) atTop
      (𝓝 (∫ y, (if r₁ < ρ ((chartAt E3 (q j)).symm y) then (0 : ℝ)
            else (w ((chartAt E3 (q j)).symm y) : ℝ)) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y)) := by
    intro j
    have hreg := dcs_div_weighted g (q j) (φ j) (hφ.1 j) (hφ.2.2.2 j).1 (hφs j) Y hY
    have he : ∫ y in chartAt E3 (q j) '' ({x : M | r₁ < ρ x}ᶜ ∩ (chartAt E3 (q j)).source),
        (w ((chartAt E3 (q j)).symm y) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y =
        ∫ y, (if r₁ < ρ ((chartAt E3 (q j)).symm y) then (0 : ℝ)
            else (w ((chartAt E3 (q j)).symm y) : ℝ)) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y := by
      have hz : ∀ y, y ∉ chartAt E3 (q j) '' ({x : M | r₁ < ρ x}ᶜ ∩ (chartAt E3 (q j)).source) →
          (if r₁ < ρ ((chartAt E3 (q j)).symm y) then (0 : ℝ)
            else (w ((chartAt E3 (q j)).symm y) : ℝ)) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y = 0 := by
        intro y hy
        by_cases hyt : y ∈ (chartAt E3 (q j)).target
        · have hr : r₁ < ρ ((chartAt E3 (q j)).symm y) := by
            by_contra hc'
            exact hy (by rw [hT]; exact ⟨hyt, hc'⟩)
          rw [if_pos hr, zero_mul]
        · rw [hreg.2.1 y (fun h' => hyt (hKt j h')), mul_zero]
      rw [← setIntegral_eq_integral_of_forall_compl_eq_zero hz]
      refine setIntegral_congr_fun (hU1cm (q j)) (fun y hy => ?_)
      rw [hT] at hy
      have hn : ¬ r₁ < ρ ((chartAt E3 (q j)).symm y) := hy.2
      simp only [hn, if_false]
    rw [← he]
    exact dcs_layer_tendsto (q j) w hw0 {x : M | r₁ < ρ x}ᶜ (hU1cm (q j)) (fun m => hFm m (q j))
      (sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y))
      hreg.1.integrableOn (hωPY j).integrableOn
  have hE := (tendsto_finset_sum (Finset.univ : Finset (Fin n)) (fun j _ => hEj j)).congr
    (fun N => Finset.sum_comm)
  have hRV := (tendsto_finset_sum (Finset.univ : Finset (Fin n)) (fun j _ => hRVj j)).congr
    (fun N => Finset.sum_comm)
  have hRY := (tendsto_finset_sum (Finset.univ : Finset (Fin n)) (fun j _ => hRYj j)).congr
    (fun N => Finset.sum_comm)
  have key : ∀ᶠ N : ℕ in atTop,
      (∑ j, ∫ y in chartAt E3 (q j) '' ({x : M | r₁ < ρ x ∧ w x ≠ 0} ∩
        (chartAt E3 (q j)).source),
        calTheta r₁ (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y)) *
          (φ j ((chartAt E3 (q j)).symm y) * g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
            Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det)) +
        ∑ m ∈ Finset.range N, ∑ j,
          ∫ y in chartAt E3 (q j) '' (({x : M | (m : ℤ) + 1 ≤ w x} ∩ {x : M | r₁ < ρ x}) ∩
            (chartAt E3 (q j)).source),
            (1 - calTheta r₁ (1 / ((k : ℝ) + 1)) (ρ ((chartAt E3 (q j)).symm y))) *
              sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y ≤
      (∑ m ∈ Finset.range N, ∑ j,
          ∫ y in chartAt E3 (q j) '' ({x : M | (m : ℤ) + 1 ≤ w x} ∩ (chartAt E3 (q j)).source),
            sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V) y) -
        ∑ m ∈ Finset.range N, ∑ j,
          ∫ y in chartAt E3 (q j) '' (({x : M | (m : ℤ) + 1 ≤ w x} \ {x : M | r₁ < ρ x}) ∩
            (chartAt E3 (q j)).source),
            sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) Y) y := by
    refine Filter.eventually_atTop.2 ⟨1, fun N hN => ?_⟩
    have h1 := Finset.sum_le_sum (fun m (_ : m ∈ Finset.range N) => hlev m)
    simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib] at h1
    have h3 := Finset.single_le_sum (fun m (_ : m ∈ Finset.range N) => hnn m)
      (Finset.mem_range.2 (show 0 < N by omega))
    rw [hDeq] at h3
    linarith
  have hfin := le_of_tendsto_of_tendsto (tendsto_const_nhds.add hE) (hRV.sub hRY) key
  beta_reduce at hk1 hk2
  linarith

theorem calPiece_wdiv_sum [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (p : M) {m : ℕ} (ψ : Fin m → M → ℝ) (hψ : ∀ k, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (ψ k))
    (hψc : ∀ k, IsCompact (tsupport (ψ k))) (hψs : ∀ k, tsupport (ψ k) ⊆ (chartAt E3 p).source)
    (V : M → E3) (hV : calSmoothField V) (f : E3 → ℝ)
    (hf : ∀ k, MeasureTheory.IntegrableOn f (chartAt E3 p '' tsupport (ψ k))) :
    ∫ y, f y * sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p (fun x => ∑ k, ψ k x) V) y =
      ∑ k, ∫ y, f y * sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p (ψ k) V) y :=
by
  classical
  
  have hposdef : ∀ y ∈ (chartAt E3 p).target, (g.coeff (chartAt E3 p).symm y).PosDef := by
    intro y hy
    have hq : (chartAt E3 p).symm y ∈ (chartAt E3 p).source := (chartAt E3 p).map_target hy
    have hf : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y :=
      mdifferentiableAt_atlas_symm (chart_mem_atlas E3 p) hy
    have hg : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y) :=
      mdifferentiableAt_atlas (chart_mem_atlas E3 p) hq
    have hcomp : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 p) ∘ (chartAt E3 p).symm) y =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)).comp
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y) := mfderiv_comp y hg hf
    have hid : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 p) ∘ (chartAt E3 p).symm) y =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) id y := by
      apply Filter.EventuallyEq.mfderiv_eq
      filter_upwards [(chartAt E3 p).eventually_right_inverse hy] with z hz
      exact hz
    rw [mfderiv_id] at hid
    have hinv : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y)
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y w) = w := by
      intro w
      have h1 := congrArg (fun L => L w) (hcomp.symm.trans hid)
      simpa using h1
    have hDinj : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y w = 0 → w = 0 := by
      intro w hw
      rw [← hinv w, hw, map_zero]
    apply Matrix.PosDef.of_dotProduct_mulVec_pos
    · apply Matrix.IsHermitian.ext
      intro i j
      simp only [RiemannianMetric3.coeff, coeffMatrix, star_trivial]
      exact g.symm _ _ _
    · intro x hx
      have hvx : (∑ i, x i • e i : E3) ≠ 0 := by
        intro h0
        apply hx
        funext j
        have h1 := congrArg (fun u : E3 => u j) h0
        fin_cases j <;> simpa [e, Fin.sum_univ_three, EuclideanSpace.single_apply] using h1
      have hDv := fun h => hvx (hDinj _ h)
      have hpos := g.posDef ((chartAt E3 p).symm y) _ hDv
      have key : star x ⬝ᵥ (g.coeff (chartAt E3 p).symm y).mulVec x =
          g.g ((chartAt E3 p).symm y)
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y (∑ i, x i • e i : E3))
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y (∑ i, x i • e i : E3)) := by
        simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply,
          ContinuousLinearMap.smul_apply, smul_eq_mul, Fin.sum_univ_three, map_add,
          ContinuousLinearMap.add_apply, dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial,
          RiemannianMetric3.coeff, coeffMatrix]
        ring
      rw [key]
      exact hpos
  set T : Set E3 := (chartAt E3 p).target with hTdef
  set w : E3 → E3 := fun y => (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p)
      ((chartAt E3 p).symm y) (V ((chartAt E3 p).symm y)) : E3) with hwdef
  set G : E3 → Matrix (Fin 3) (Fin 3) ℝ := g.coeff (chartAt E3 p).symm with hGdef
  have hTo : IsOpen T := (chartAt E3 p).open_target
  have hwT : ContDiffOn ℝ ∞ w T := hV p
  have hGs : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) T := fun i j => g.smooth p i j
  have hdetpos : ∀ y ∈ T, 0 < (G y).det := fun y hy =>
    (hposdef y hy).det_pos
  have hdetT : ContDiffOn ℝ ∞ (fun y => (G y).det) T := by
    have e : (fun y => (G y).det) = fun y => G y 0 0 * G y 1 1 * G y 2 2
        - G y 0 0 * G y 1 2 * G y 2 1
        - G y 0 1 * G y 1 0 * G y 2 2 + G y 0 1 * G y 1 2 * G y 2 0
        + G y 0 2 * G y 1 0 * G y 2 1 - G y 0 2 * G y 1 1 * G y 2 0 := by
      funext y; exact Matrix.det_fin_three _
    rw [e]
    have h := hGs
    exact (((((((h 0 0).mul (h 1 1)).mul (h 2 2)).sub (((h 0 0).mul (h 1 2)).mul (h 2 1))).sub
      (((h 0 1).mul (h 1 0)).mul (h 2 2))).add (((h 0 1).mul (h 1 2)).mul (h 2 0))).add
      (((h 0 2).mul (h 1 0)).mul (h 2 1))).sub (((h 0 2).mul (h 1 1)).mul (h 2 0))
  have hsqT : ContDiffOn ℝ ∞ (fun y => Real.sqrt (G y).det) T :=
    hdetT.sqrt (fun y hy => (hdetpos y hy).ne')
  have hwi : ∀ i : Fin 3, ContDiffOn ℝ ∞ (fun y => w y i) T := by
    intro i
    exact (EuclideanSpace.proj i : E3 →L[ℝ] ℝ).contDiff.comp_contDiffOn hwT
  have hψT : ∀ k, ContDiffOn ℝ ∞ (fun y => ψ k ((chartAt E3 p).symm y)) T := by
    intro k
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (ψ k ∘ (chartAt E3 p).symm)
        (chartAt E3 p).target :=
      (hψ k).comp_contMDiffOn contMDiffOn_chart_symm
    exact contMDiffOn_iff_contDiffOn.mp h1
  
  have hcp : ∀ (φ : M → ℝ) (z : E3) (i : Fin 3),
      calPiece p φ V z i = T.indicator (fun y => φ ((chartAt E3 p).symm y) * w y i) z := by
    intro φ z i
    by_cases hz : z ∈ T
    · rw [Set.indicator_of_mem hz]
      simp only [calPiece]
      rw [Set.indicator_of_mem hz]
      rw [WithLp.ofLp_smul]
      rfl
    · rw [Set.indicator_of_notMem hz]
      simp only [calPiece]
      rw [Set.indicator_of_notMem hz]
      simp
  
  have hKc : ∀ k, IsCompact ((chartAt E3 p) '' tsupport (ψ k)) := fun k =>
    (hψc k).image_of_continuousOn ((chartAt E3 p).continuousOn.mono (hψs k))
  have hKT : ∀ k, (chartAt E3 p) '' tsupport (ψ k) ⊆ T := by
    rintro k _ ⟨x, hx, rfl⟩
    exact (chartAt E3 p).map_source (hψs k hx)
  have hvan : ∀ k (y : E3) (i : Fin 3), y ∉ (chartAt E3 p) '' tsupport (ψ k) →
      T.indicator (fun y => ψ k ((chartAt E3 p).symm y) * w y i) y = 0 := by
    intro k y i hy
    by_cases hyT : y ∈ T
    · rw [Set.indicator_of_mem hyT]
      have h0 : ψ k ((chartAt E3 p).symm y) = 0 := by
        apply image_eq_zero_of_notMem_tsupport
        intro hmem
        exact hy ⟨_, hmem, (chartAt E3 p).right_inv hyT⟩
      rw [h0, zero_mul]
    · exact Set.indicator_of_notMem hyT _
  
  obtain ⟨F, hFdef⟩ : ∃ F : Fin m → Fin 3 → E3 → ℝ, ∀ k i z, F k i z =
      Real.sqrt (G z).det * T.indicator (fun y => ψ k ((chartAt E3 p).symm y) * w y i) z :=
    ⟨_, fun _ _ _ => rfl⟩
  have hF : ∀ k (i : Fin 3), ContDiff ℝ ∞ (F k i) := by
    intro k i
    rw [contDiff_iff_contDiffAt]
    intro z
    by_cases hz : z ∈ T
    · have hH : ContDiffOn ℝ ∞
          (fun y => Real.sqrt (G y).det * (ψ k ((chartAt E3 p).symm y) * w y i)) T :=
        hsqT.mul ((hψT k).mul (hwi i))
      refine (hH.contDiffAt (hTo.mem_nhds hz)).congr_of_eventuallyEq ?_
      filter_upwards [hTo.mem_nhds hz] with y hy
      rw [hFdef, Set.indicator_of_mem hy]
    · have hzK : z ∉ (chartAt E3 p) '' tsupport (ψ k) := fun h => hz (hKT k h)
      refine (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
      filter_upwards [(hKc k).isClosed.isOpen_compl.mem_nhds hzK] with y hy
      rw [hFdef, hvan k y i hy, mul_zero]
  have hk_pt : ∀ k (i : Fin 3),
      (fun z => Real.sqrt (G z).det * calPiece p (ψ k) V z i) = F k i := by
    intro k i; funext z; rw [hFdef, hcp]
  have hsum_pt : ∀ i : Fin 3,
      (fun z => Real.sqrt (G z).det * calPiece p (fun x => ∑ k, ψ k x) V z i)
        = fun z => ∑ k, F k i z := by
    intro i; funext z
    simp only [hFdef]
    rw [hcp, ← Finset.mul_sum]
    congr 1
    by_cases hz : z ∈ T
    · simp only [Set.indicator_of_mem hz, Finset.sum_mul]
    · simp only [Set.indicator_of_notMem hz, Finset.sum_const_zero]
  have hdiv_k : ∀ k, sepDensDiv G (calPiece p (ψ k) V) =
      fun y => ∑ i : Fin 3, partialDeriv i (F k i) y := by
    intro k; funext y
    unfold sepDensDiv
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [hk_pt k i]
  have hdiv : ∀ y, sepDensDiv G (calPiece p (fun x => ∑ k, ψ k x) V) y =
      ∑ k, sepDensDiv G (calPiece p (ψ k) V) y := by
    intro y
    simp only [hdiv_k]
    unfold sepDensDiv
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [hsum_pt i]
    unfold partialDeriv
    have hfs : (fun z => ∑ k, F k i z) = ∑ k, F k i := by
      funext z; rw [Finset.sum_apply]
    rw [hfs, fderiv_sum (fun k _ => ((hF k i).differentiable (by simp)) y)]
    rw [ContinuousLinearMap.sum_apply]
  
  have hDcont : ∀ k, Continuous (sepDensDiv G (calPiece p (ψ k) V)) := by
    intro k
    rw [hdiv_k k]
    refine continuous_finset_sum _ (fun i _ => ?_)
    exact ((hF k i).continuous_fderiv (by simp)).clm_apply continuous_const
  have hDvan : ∀ k (y : E3), y ∉ (chartAt E3 p) '' tsupport (ψ k) →
      sepDensDiv G (calPiece p (ψ k) V) y = 0 := by
    intro k y hy
    rw [hdiv_k k]
    refine Finset.sum_eq_zero (fun i _ => ?_)
    have hev : F k i =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [(hKc k).isClosed.isOpen_compl.mem_nhds hy] with z hz
      rw [hFdef, hvan k z i hz, mul_zero]
    unfold partialDeriv
    rw [hev.fderiv_eq]
    simp
  have hint : ∀ k, Integrable (fun y => f y * sepDensDiv G (calPiece p (ψ k) V) y) := by
    intro k
    have hcs : HasCompactSupport (sepDensDiv G (calPiece p (ψ k) V)) :=
      HasCompactSupport.intro (hKc k) (hDvan k)
    obtain ⟨C, hC⟩ := hcs.exists_bound_of_continuous (hDcont k)
    have hInd : Integrable (((chartAt E3 p) '' tsupport (ψ k)).indicator f) :=
      (hf k).integrable_indicator (hKc k).measurableSet
    have h2 := hInd.mul_bdd (hDcont k).aestronglyMeasurable (c := C)
      (Filter.Eventually.of_forall hC)
    refine h2.congr (Filter.Eventually.of_forall (fun y => ?_))
    by_cases hy : y ∈ (chartAt E3 p) '' tsupport (ψ k)
    · simp only [Set.indicator_of_mem hy]
    · simp only [Set.indicator_of_notMem hy, hDvan k y hy, zero_mul, mul_zero]
  have hfun : (fun y => f y * sepDensDiv G (calPiece p (fun x => ∑ k, ψ k x) V) y) =
      fun y => ∑ k, f y * sepDensDiv G (calPiece p (ψ k) V) y := by
    funext y
    rw [hdiv y, Finset.mul_sum]
  rw [hfun]
  exact integral_finset_sum _ (fun k _ => hint k)

theorem calPiece_wdiv_chart_eq [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (p q : M) (φ : M → ℝ) (hφ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ φ) (hφc : IsCompact (tsupport φ))
    (hφs : tsupport φ ⊆ (chartAt E3 p).source ∩ (chartAt E3 q).source)
    (V : M → E3) (hV : calSmoothField V) (w : M → ℤ) (hw0 : ∀ x, 0 ≤ w x)
    (hwm : ∀ j : ℤ, sepChartMeas {x | w x = j})
    (hwp : MeasureTheory.IntegrableOn (fun y => (w ((chartAt E3 p).symm y) : ℝ))
      (chartAt E3 p '' tsupport φ))
    (hwq : MeasureTheory.IntegrableOn (fun y => (w ((chartAt E3 q).symm y) : ℝ))
      (chartAt E3 q '' tsupport φ)) :
    ∫ y, (w ((chartAt E3 p).symm y) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p φ V) y =
      ∫ y, (w ((chartAt E3 q).symm y) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 q).symm) (calPiece q φ V) y :=
by
  
  have hT : ∀ (p : M) (S : Set M), chartAt E3 p '' (S ∩ (chartAt E3 p).source) =
      (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S := by
    intro p S
    rw [Set.inter_comm, OpenPartialHomeomorph.image_source_inter_eq']
  
  have hmeasP : ∀ (P : ℤ → Prop), sepChartMeas {x : M | P (w x)} := by
    intro P p
    rw [hT]
    have e : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | P (w x)} =
        ⋃ j ∈ {j : ℤ | P j},
          (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | w x = j} := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_setOf_eq, Set.mem_iUnion,
        exists_prop]
      constructor
      · rintro ⟨h1, h2⟩
        exact ⟨_, h2, h1, rfl⟩
      · rintro ⟨j, hj, h1, h2⟩
        exact ⟨h1, h2 ▸ hj⟩
    rw [e]
    refine MeasurableSet.biUnion (Set.to_countable _) (fun j _ => ?_)
    have h := hwm j p
    rw [hT] at h
    exact h
  have hup : ∀ i : ℕ, sepChartMeas {x : M | (i : ℤ) + 1 ≤ w x} :=
    fun i => hmeasP (fun b => (i : ℤ) + 1 ≤ b)
  have hdn : ∀ i : ℕ, sepChartMeas {x : M | w x ≤ -((i : ℤ) + 1)} :=
    fun i => hmeasP (fun b => b ≤ -((i : ℤ) + 1))
  
  have hvan : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (K : Set E3), IsClosed K →
      (∀ z, z ∉ K → X z = 0) → ∀ y, y ∉ K → sepDensDiv G X y = 0 := by
    intro G X K hK hX y hy
    have hev : ∀ i : Fin 3,
        (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) := by
      intro i
      filter_upwards [hK.isOpen_compl.mem_nhds hy] with z hz
      rw [hX z hz]
      simp
    unfold sepDensDiv partialDeriv
    refine Finset.sum_eq_zero fun i _ => ?_
    rw [(hev i).fderiv_eq]
    simp
  
  have hcont : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3),
      (∀ i : Fin 3, ContDiff ℝ ∞ (fun z => Real.sqrt (G z).det * X z i)) →
      Continuous (sepDensDiv G X) := by
    intro G X hX
    have h : sepDensDiv G X = fun y => ∑ i : Fin 3,
        fderiv ℝ (fun z => Real.sqrt (G z).det * X z i) y (e i) := rfl
    rw [h]
    exact continuous_finset_sum _ fun i _ =>
      ((hX i).continuous_fderiv (by simp)).clm_apply continuous_const
  
  have hpiece0 : ∀ (qq : M) (ψ : M → ℝ) (X : M → E3) (z : E3),
      z ∉ chartAt E3 qq '' tsupport ψ → calPiece qq ψ X z = 0 := by
    intro qq ψ X z hz
    unfold calPiece
    by_cases ht : z ∈ (chartAt E3 qq).target
    · rw [Set.indicator_of_mem ht]
      have h0 : ψ ((chartAt E3 qq).symm z) = 0 := by
        by_contra hne
        exact hz ⟨_, subset_tsupport _ hne, (chartAt E3 qq).right_inv ht⟩
      simp [h0]
    · exact Set.indicator_of_notMem ht _
  
  have hlim : ∀ (p : M) (f : E3 → ℝ) (T : Set E3), Continuous f → IsCompact T →
      T ⊆ (chartAt E3 p).target → (∀ y, y ∉ T → f y = 0) →
      MeasureTheory.IntegrableOn (fun y => (w ((chartAt E3 p).symm y) : ℝ)) T →
      Tendsto (fun N : ℕ => ∑ i ∈ Finset.range N,
          ((∫ y in chartAt E3 p '' ({x | (i : ℤ) + 1 ≤ w x} ∩ (chartAt E3 p).source), f y) -
            ∫ y in chartAt E3 p '' ({x | w x ≤ -((i : ℤ) + 1)} ∩ (chartAt E3 p).source), f y))
        atTop (𝓝 (∫ y, (w ((chartAt E3 p).symm y) : ℝ) * f y)) := by
    intro p f T hf hTc hTt hfT hwT
    have hsupp : HasCompactSupport f := HasCompactSupport.intro hTc hfT
    obtain ⟨C, hC⟩ := hf.bounded_above_of_compact_support hsupp
    have hfi : Integrable f := hf.integrable_of_hasCompactSupport hsupp
    have hind : ∀ (P : ℤ → Prop) [DecidablePred P] (y : E3),
        (chartAt E3 p '' ({x | P (w x)} ∩ (chartAt E3 p).source)).indicator f y =
        (if P (w ((chartAt E3 p).symm y)) then (1 : ℝ) else 0) * f y := by
      intro P _ y
      rw [hT]
      by_cases hy : y ∈ (chartAt E3 p).target
      · by_cases hP : P (w ((chartAt E3 p).symm y))
        · rw [Set.indicator_of_mem (show y ∈ (chartAt E3 p).target ∩
              (chartAt E3 p).symm ⁻¹' {x | P (w x)} from ⟨hy, hP⟩), if_pos hP, one_mul]
        · rw [Set.indicator_of_notMem (fun h => hP h.2), if_neg hP, zero_mul]
      · have h0 : f y = 0 := hfT y (fun h => hy (hTt h))
        rw [h0, mul_zero]
        exact Set.indicator_of_notMem (fun h => hy h.1) _
    have hsetint : ∀ (P : ℤ → Prop) [DecidablePred P],
        ∫ y in chartAt E3 p '' ({x | P (w x)} ∩ (chartAt E3 p).source), f y =
        ∫ y, (if P (w ((chartAt E3 p).symm y)) then (1 : ℝ) else 0) * f y := by
      intro P _
      rw [← integral_indicator (hmeasP P p)]
      exact integral_congr_ae (Filter.Eventually.of_forall (hind P))
    have hintP : ∀ (P : ℤ → Prop) [DecidablePred P],
        Integrable (fun y => (if P (w ((chartAt E3 p).symm y)) then (1 : ℝ) else 0) * f y) := by
      intro P _
      exact (hfi.indicator (hmeasP P p)).congr (Filter.Eventually.of_forall (hind P))
    
    have hclamp : ∀ (N : ℕ) (b : ℤ) (r : ℝ), ∑ i ∈ Finset.range N,
        ((if (i : ℤ) + 1 ≤ b then (1 : ℝ) else 0) * r -
          (if b ≤ -((i : ℤ) + 1) then (1 : ℝ) else 0) * r) =
        ((max (min b (N : ℤ)) (-(N : ℤ)) : ℤ) : ℝ) * r := by
      intro N b r
      induction N with
      | zero => simp
      | succ N ih =>
        rw [Finset.sum_range_succ, ih]
        by_cases h1 : (N : ℤ) + 1 ≤ b
        · have h2 : ¬ b ≤ -((N : ℤ) + 1) := by omega
          have e1 : max (min b ((N + 1 : ℕ) : ℤ)) (-((N + 1 : ℕ) : ℤ)) =
              max (min b (N : ℤ)) (-(N : ℤ)) + 1 := by
            push_cast
            simp only [max_def, min_def]
            split_ifs <;> omega
          rw [if_pos h1, if_neg h2, e1]
          push_cast
          ring
        · by_cases h2 : b ≤ -((N : ℤ) + 1)
          · have e1 : max (min b ((N + 1 : ℕ) : ℤ)) (-((N + 1 : ℕ) : ℤ)) =
                max (min b (N : ℤ)) (-(N : ℤ)) - 1 := by
              push_cast
              simp only [max_def, min_def]
              split_ifs <;> omega
            rw [if_neg h1, if_pos h2, e1]
            push_cast
            ring
          · have e1 : max (min b ((N + 1 : ℕ) : ℤ)) (-((N + 1 : ℕ) : ℤ)) =
                max (min b (N : ℤ)) (-(N : ℤ)) := by
              push_cast
              simp only [max_def, min_def]
              split_ifs <;> omega
            rw [if_neg h1, if_neg h2, e1]
            ring
    have hclb : ∀ (N : ℕ) (b : ℤ), |((max (min b (N : ℤ)) (-(N : ℤ)) : ℤ) : ℝ)| ≤ |(b : ℝ)| := by
      intro N b
      have h : |max (min b (N : ℤ)) (-(N : ℤ))| ≤ |b| := by
        rw [abs_le]
        have h1 := le_abs_self b
        have h2 := neg_abs_le b
        have h3 : (0 : ℤ) ≤ (N : ℤ) := Int.natCast_nonneg N
        generalize |b| = B at *
        constructor <;> simp only [max_def, min_def] <;> split_ifs <;> omega
      exact_mod_cast h
    have hFN : ∀ N : ℕ, (fun y => ∑ i ∈ Finset.range N,
        ((if (i : ℤ) + 1 ≤ w ((chartAt E3 p).symm y) then (1 : ℝ) else 0) * f y -
          (if w ((chartAt E3 p).symm y) ≤ -((i : ℤ) + 1) then (1 : ℝ) else 0) * f y)) =
        fun y => ((max (min (w ((chartAt E3 p).symm y)) (N : ℤ)) (-(N : ℤ)) : ℤ) : ℝ) * f y := by
      intro N
      funext y
      exact hclamp N _ _
    have hseq : ∀ N : ℕ, ∑ i ∈ Finset.range N,
        ((∫ y in chartAt E3 p '' ({x | (i : ℤ) + 1 ≤ w x} ∩ (chartAt E3 p).source), f y) -
          ∫ y in chartAt E3 p '' ({x | w x ≤ -((i : ℤ) + 1)} ∩ (chartAt E3 p).source), f y) =
        ∫ y, ((max (min (w ((chartAt E3 p).symm y)) (N : ℤ)) (-(N : ℤ)) : ℤ) : ℝ) * f y := by
      intro N
      rw [← hFN N, integral_finset_sum]
      · refine Finset.sum_congr rfl fun i _ => ?_
        rw [integral_sub (hintP (fun b => (i : ℤ) + 1 ≤ b))
          (hintP (fun b => b ≤ -((i : ℤ) + 1))),
          hsetint (fun b => (i : ℤ) + 1 ≤ b), hsetint (fun b => b ≤ -((i : ℤ) + 1))]
      · intro i _
        exact (hintP (fun b => (i : ℤ) + 1 ≤ b)).sub (hintP (fun b => b ≤ -((i : ℤ) + 1)))
    have hbound : Integrable
        (fun y => ‖T.indicator (fun y => (w ((chartAt E3 p).symm y) : ℝ)) y‖ * C) :=
      ((hwT.integrable_indicator hTc.isClosed.measurableSet).norm).mul_const C
    have hlimit : Tendsto (fun N : ℕ =>
        ∫ y, ((max (min (w ((chartAt E3 p).symm y)) (N : ℤ)) (-(N : ℤ)) : ℤ) : ℝ) * f y) atTop
        (𝓝 (∫ y, (w ((chartAt E3 p).symm y) : ℝ) * f y)) := by
      refine tendsto_integral_of_dominated_convergence _ (fun N => ?_) hbound (fun N => ?_) ?_
      · rw [← hFN N]
        apply Integrable.aestronglyMeasurable
        apply integrable_finset_sum
        intro i _
        exact (hintP (fun b => (i : ℤ) + 1 ≤ b)).sub (hintP (fun b => b ≤ -((i : ℤ) + 1)))
      · refine Filter.Eventually.of_forall fun y => ?_
        have hCy : |f y| ≤ C := by simpa [Real.norm_eq_abs] using hC y
        by_cases hy : y ∈ T
        · simp only [Set.indicator_of_mem hy, norm_mul, Real.norm_eq_abs]
          exact mul_le_mul (hclb N _) hCy (abs_nonneg _) (abs_nonneg _)
        · simp [Set.indicator_of_notMem hy, hfT y hy]
      · refine Filter.Eventually.of_forall fun y => ?_
        refine tendsto_atTop_of_eventually_const (i₀ := (w ((chartAt E3 p).symm y)).natAbs)
          fun N hN => ?_
        have h : max (min (w ((chartAt E3 p).symm y)) (N : ℤ)) (-(N : ℤ)) =
            w ((chartAt E3 p).symm y) := by
          simp only [max_def, min_def]
          split_ifs <;> omega
        rw [h]
    exact hlimit.congr fun N => (hseq N).symm
  
  have hsp : tsupport φ ⊆ (chartAt E3 p).source := fun x hx => (hφs hx).1
  have hsq : tsupport φ ⊆ (chartAt E3 q).source := fun x hx => (hφs hx).2
  have hKc : ∀ r : M, tsupport φ ⊆ (chartAt E3 r).source →
      IsCompact (chartAt E3 r '' tsupport φ) := fun r hr =>
    hφc.image_of_continuousOn ((chartAt E3 r).continuousOn.mono hr)
  have hKt : ∀ r : M, tsupport φ ⊆ (chartAt E3 r).source →
      chartAt E3 r '' tsupport φ ⊆ (chartAt E3 r).target := by
    rintro r hr _ ⟨x, hx, rfl⟩
    exact (chartAt E3 r).map_source (hr hx)
  have hPc : ∀ r : M, tsupport φ ⊆ (chartAt E3 r).source →
      Continuous (sepDensDiv (g.coeff (chartAt E3 r).symm) (calPiece r φ V)) := fun r hr =>
    hcont _ _ (calPiece_regular g r φ hφ hφc hr V hV).1
  have hP0 : ∀ r : M, tsupport φ ⊆ (chartAt E3 r).source → ∀ y,
      y ∉ chartAt E3 r '' tsupport φ →
      sepDensDiv (g.coeff (chartAt E3 r).symm) (calPiece r φ V) y = 0 := fun r hr =>
    hvan _ _ _ (hKc r hr).isClosed (fun z hz => hpiece0 _ _ _ z hz)
  have hA := hlim p _ _ (hPc p hsp) (hKc p hsp) (hKt p hsp) (hP0 p hsp) hwp
  have hB := hlim q _ _ (hPc q hsq) (hKc q hsq) (hKt q hsq) (hP0 q hsq) hwq
  refine tendsto_nhds_unique hA (hB.congr fun N => ?_)
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [calPiece_div_integral_chart_eq g p q φ hφ hφc hφs V hV _ (hup i),
    calPiece_div_integral_chart_eq g p q φ hφ hφc hφs V hV _ (hdn i)]

theorem smooth_min_profile (s ε : ℝ) (hε : 0 < ε) :
    ContDiff ℝ ∞ (fun t : ℝ => ((t + s) - Real.sqrt ((t - s) ^ 2 + ε ^ 2)) / 2) ∧
    (∀ t : ℝ, 0 ≤ deriv (fun t : ℝ => ((t + s) - Real.sqrt ((t - s) ^ 2 + ε ^ 2)) / 2) t ∧
      deriv (fun t : ℝ => ((t + s) - Real.sqrt ((t - s) ^ 2 + ε ^ 2)) / 2) t ≤ 1) ∧
    ∀ t : ℝ, |((t + s) - Real.sqrt ((t - s) ^ 2 + ε ^ 2)) / 2 - min t s| ≤ ε ∧
      |(t - ((t + s) - Real.sqrt ((t - s) ^ 2 + ε ^ 2)) / 2) - (max t s - s)| ≤ ε :=
by
  have hq : ∀ t : ℝ, 0 < (t - s) ^ 2 + ε ^ 2 := fun t => by positivity
  have hderiv : ∀ t : ℝ, HasDerivAt
      (fun t : ℝ => ((t + s) - Real.sqrt ((t - s) ^ 2 + ε ^ 2)) / 2)
      ((1 - (2 * (t - s)) / (2 * Real.sqrt ((t - s) ^ 2 + ε ^ 2))) / 2) t := by
    intro t
    have h1 : HasDerivAt (fun t : ℝ => (t - s) ^ 2 + ε ^ 2) (2 * (t - s)) t := by
      have h0 := (((hasDerivAt_id' t).sub_const s).pow 2).add_const (ε ^ 2)
      convert h0 using 1
      simp
    have h2 := h1.sqrt (hq t).ne'
    have h3 := (((hasDerivAt_id' t).add_const s).sub h2).div_const 2
    convert h3 using 1
  have hbound : ∀ t : ℝ, |t - s| ≤ Real.sqrt ((t - s) ^ 2 + ε ^ 2) ∧
      Real.sqrt ((t - s) ^ 2 + ε ^ 2) ≤ |t - s| + ε := by
    intro t
    refine ⟨Real.abs_le_sqrt (by nlinarith), ?_⟩
    rw [Real.sqrt_le_iff]
    refine ⟨by positivity, ?_⟩
    have h := sq_abs (t - s)
    nlinarith [abs_nonneg (t - s)]
  refine ⟨?_, ?_, ?_⟩
  · exact ((contDiff_id.add contDiff_const).sub
      ((((contDiff_id.sub contDiff_const).pow 2).add contDiff_const).sqrt
        fun t => (hq t).ne')).div_const 2
  · intro t
    rw [(hderiv t).deriv]
    have hr : 0 < Real.sqrt ((t - s) ^ 2 + ε ^ 2) := Real.sqrt_pos.2 (hq t)
    obtain ⟨hlo, hhi⟩ := abs_le.1 (hbound t).1
    have e1 : (2 * (t - s)) / (2 * Real.sqrt ((t - s) ^ 2 + ε ^ 2)) ≤ 1 := by
      rw [div_le_one (by positivity)]; linarith
    have e2 : -1 ≤ (2 * (t - s)) / (2 * Real.sqrt ((t - s) ^ 2 + ε ^ 2)) := by
      rw [le_div_iff₀ (by positivity)]; linarith
    constructor <;> linarith
  · intro t
    obtain ⟨h1, h2⟩ := hbound t
    rcases le_total t s with hts | hts
    · rw [min_eq_left hts, max_eq_right hts]
      rw [abs_of_nonpos (by linarith : t - s ≤ 0)] at h1 h2
      constructor <;> rw [abs_le] <;> constructor <;> linarith
    · rw [min_eq_right hts, max_eq_left hts]
      rw [abs_of_nonneg (by linarith : 0 ≤ t - s)] at h1 h2
      constructor <;> rw [abs_le] <;> constructor <;> linarith

theorem dualPair_sub_abs_le (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (C : ℝ)
    (hC : ∀ y, |sepDensDiv G X y| ≤ C) (hXc : HasCompactSupport X) (a b : E3 → ℝ)
    (ha : MeasureTheory.IntegrableOn a (tsupport X))
    (hb : MeasureTheory.IntegrableOn b (tsupport X)) :
    (∫ y, a y * sepDensDiv G X y) - (∫ y, b y * sepDensDiv G X y) ≤
      C * ∫ y in tsupport X, |a y - b y| :=
by
  classical
  have hK : MeasurableSet (tsupport X) := (isClosed_tsupport X).measurableSet
  have hvan : ∀ y, y ∉ tsupport X → sepDensDiv G X y = 0 := by
    intro y hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    unfold partialDeriv
    have hsub : tsupport (fun z => Real.sqrt (G z).det * X z i) ⊆ tsupport X := by
      refine (tsupport_mul_subset_right).trans (closure_mono ?_)
      intro z hz hX
      apply hz
      simp [hX]
    have h0 : y ∉ Function.support (fderiv ℝ (fun z => Real.sqrt (G z).det * X z i)) :=
      fun h => hy (hsub (support_fderiv_subset ℝ h))
    rw [Function.notMem_support] at h0
    rw [h0]
    rfl
  have hDm : Measurable (sepDensDiv G X) := by
    have hfun : sepDensDiv G X = fun y => ∑ i : Fin 3,
        fderiv ℝ (fun z => Real.sqrt (G z).det * X z i) y (e i) := rfl
    rw [hfun]
    exact Finset.measurable_sum _ (fun i _ => measurable_fderiv_apply_const ℝ _ _)
  have hbd : ∀ᵐ y ∂(volume.restrict (tsupport X)), ‖sepDensDiv G X y‖ ≤ C :=
    Filter.Eventually.of_forall (fun y => by rw [Real.norm_eq_abs]; exact hC y)
  have haK : IntegrableOn (fun y => a y * sepDensDiv G X y) (tsupport X) :=
    Integrable.mul_bdd ha hDm.aestronglyMeasurable hbd
  have hbK : IntegrableOn (fun y => b y * sepDensDiv G X y) (tsupport X) :=
    Integrable.mul_bdd hb hDm.aestronglyMeasurable hbd
  have habK : IntegrableOn (fun y => (a y - b y) * sepDensDiv G X y) (tsupport X) :=
    Integrable.mul_bdd (ha.sub hb) hDm.aestronglyMeasurable hbd
  have haI : Integrable (fun y => a y * sepDensDiv G X y) :=
    haK.integrable_of_forall_notMem_eq_zero (fun y hy => by rw [hvan y hy, mul_zero])
  have hbI : Integrable (fun y => b y * sepDensDiv G X y) :=
    hbK.integrable_of_forall_notMem_eq_zero (fun y hy => by rw [hvan y hy, mul_zero])
  have hrw : (∫ y, a y * sepDensDiv G X y) - (∫ y, b y * sepDensDiv G X y) =
      ∫ y in tsupport X, (a y - b y) * sepDensDiv G X y := by
    rw [← integral_sub haI hbI,
      setIntegral_eq_integral_of_forall_compl_eq_zero
        (fun y hy => by rw [hvan y hy, mul_zero])]
    congr 1
    funext y
    ring
  have habs : IntegrableOn (fun y => C * |a y - b y|) (tsupport X) :=
    ((ha.sub hb).abs).const_mul C
  have hmono : ∫ y in tsupport X, (a y - b y) * sepDensDiv G X y ≤
      ∫ y in tsupport X, C * |a y - b y| := by
    refine setIntegral_mono habK habs (fun y => ?_)
    calc (a y - b y) * sepDensDiv G X y ≤ |(a y - b y) * sepDensDiv G X y| := le_abs_self _
      _ = |a y - b y| * |sepDensDiv G X y| := abs_mul _ _
      _ ≤ |a y - b y| * C := mul_le_mul_of_nonneg_left (hC y) (abs_nonneg _)
      _ = C * |a y - b y| := mul_comm _ _
  rw [hrw]
  refine hmono.trans (le_of_eq ?_)
  exact integral_const_mul C _

theorem dualSplit_smooth_pairing (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3)
    (hV : IsOpen V) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ V, (G y).PosDef)
    (u : E3 → ℝ) (hu : ContDiff ℝ ∞ u) (φ : ℝ → ℝ) (hφ : ContDiff ℝ ∞ φ)
    (hφ' : ∀ t, 0 ≤ deriv φ t ∧ deriv φ t ≤ 1)
    (X Y : E3 → E3) (hX : ContDiff ℝ ∞ X) (hXc : HasCompactSupport X) (hXV : tsupport X ⊆ V)
    (hXn : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1)
    (hY : ContDiff ℝ ∞ Y) (hYc : HasCompactSupport Y) (hYV : tsupport Y ⊆ V)
    (hYn : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y y i * Y y j ≤ 1) :
    ∃ Z : E3 → E3, ContDiff ℝ ∞ Z ∧ HasCompactSupport Z ∧
      tsupport Z ⊆ tsupport X ∪ tsupport Y ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Z y i * Z y j ≤ 1) ∧
      (∫ y, φ (u y) * sepDensDiv G X y) + (∫ y, (u y - φ (u y)) * sepDensDiv G Y y) =
        ∫ y, u y * sepDensDiv G Z y :=
by
  classical
  
  have hσ : ∀ y ∈ V, ContDiffAt ℝ ∞ (fun z => Real.sqrt (G z).det) y := by
    intro y hy
    have hc : ∀ i j : Fin 3, ContDiffAt ℝ ∞ (fun z => G z i j) y :=
      fun i j => (hG i j).contDiffAt (hV.mem_nhds hy)
    have hdetf : (fun z => (G z).det) = fun z =>
        G z 0 0 * G z 1 1 * G z 2 2 - G z 0 0 * G z 1 2 * G z 2 1 -
          G z 0 1 * G z 1 0 * G z 2 2 + G z 0 1 * G z 1 2 * G z 2 0 +
          G z 0 2 * G z 1 0 * G z 2 1 - G z 0 2 * G z 1 1 * G z 2 0 := by
      funext z
      exact Matrix.det_fin_three (G z)
    have a1 := ((hc 0 0).mul (hc 1 1)).mul (hc 2 2)
    have a2 := ((hc 0 0).mul (hc 1 2)).mul (hc 2 1)
    have a3 := ((hc 0 1).mul (hc 1 0)).mul (hc 2 2)
    have a4 := ((hc 0 1).mul (hc 1 2)).mul (hc 2 0)
    have a5 := ((hc 0 2).mul (hc 1 0)).mul (hc 2 1)
    have a6 := ((hc 0 2).mul (hc 1 1)).mul (hc 2 0)
    have hd : ContDiffAt ℝ ∞ (fun z => (G z).det) y := by
      rw [hdetf]
      exact ((((a1.sub a2).sub a3).add a4).add a5).sub a6
    exact hd.sqrt (ne_of_gt (hpd y hy).det_pos)
  
  have hsW : ∀ W : E3 → E3, ContDiff ℝ ∞ W → tsupport W ⊆ V → ∀ i : Fin 3,
      ContDiff ℝ ∞ (fun z => Real.sqrt (G z).det * W z i) := by
    intro W hW hWV i
    rw [contDiff_iff_contDiffAt]
    intro y
    by_cases hy : y ∈ tsupport W
    · exact (hσ y (hWV hy)).mul ((contDiffAt_piLp 2).1 hW.contDiffAt i)
    · have hW0 : W =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.1 hy
      refine (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
      filter_upwards [hW0] with z hz
      have hz' : W z = 0 := hz
      rw [hz']
      simp
  have hsWc : ∀ W : E3 → E3, HasCompactSupport W → ∀ i : Fin 3,
      HasCompactSupport (fun z => Real.sqrt (G z).det * W z i) := by
    intro W hWc i
    refine hWc.mono' ?_
    intro z hz
    refine subset_tsupport _ ?_
    rw [Function.mem_support] at hz ⊢
    intro hW0
    apply hz
    rw [hW0]
    simp
  have hpc : ∀ f : E3 → ℝ, ContDiff ℝ ∞ f → ∀ i : Fin 3, Continuous (fun y => partialDeriv i f y) :=
    fun f hf i => (hf.continuous_fderiv (by simp)).clm_apply continuous_const
  
  have hRint : ∀ f : E3 → ℝ, ContDiff ℝ ∞ f → ∀ W : E3 → E3, ContDiff ℝ ∞ W →
      HasCompactSupport W → tsupport W ⊆ V →
      Integrable (fun y => Real.sqrt (G y).det * ∑ i : Fin 3, partialDeriv i f y * W y i) := by
    intro f hf W hW hWc hWV
    have h1 : Integrable (fun y => ∑ i : Fin 3,
        partialDeriv i f y * (Real.sqrt (G y).det * W y i)) :=
      integrable_finset_sum _ (fun i _ =>
        ((hpc f hf i).mul (hsW W hW hWV i).continuous).integrable_of_hasCompactSupport
          (hsWc W hWc i).mul_left)
    refine h1.congr (Filter.Eventually.of_forall fun y => ?_)
    simp only [Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    ring
  
  have ibp : ∀ f : E3 → ℝ, ContDiff ℝ ∞ f → ∀ W : E3 → E3, ContDiff ℝ ∞ W →
      HasCompactSupport W → tsupport W ⊆ V →
      ∫ y, f y * sepDensDiv G W y =
        -∫ y, Real.sqrt (G y).det * ∑ i : Fin 3, partialDeriv i f y * W y i := by
    intro f hf W hW hWc hWV
    obtain ⟨F, hFdef⟩ : ∃ F : Fin 3 → E3 → ℝ,
        ∀ i z, F i z = f z * (Real.sqrt (G z).det * W z i) := ⟨_, fun _ _ => rfl⟩
    have hFeq : ∀ i, F i = fun z => f z * (Real.sqrt (G z).det * W z i) :=
      fun i => funext (hFdef i)
    have hFs : ∀ i, ContDiff ℝ ∞ (F i) := by
      intro i
      rw [hFeq i]
      exact hf.mul (hsW W hW hWV i)
    have hFc : ∀ i, HasCompactSupport (F i) := by
      intro i
      rw [hFeq i]
      exact (hsWc W hWc i).mul_left
    have hI : ∀ i, Integrable (partialDeriv i (F i)) ∧ ∫ y, partialDeriv i (F i) y = 0 := by
      intro i
      have hcont : Continuous (partialDeriv i (F i)) :=
        ((hFs i).continuous_fderiv (by simp)).clm_apply continuous_const
      have hcs : HasCompactSupport (partialDeriv i (F i)) := (hFc i).fderiv_apply ℝ (e i)
      have hint : Integrable (partialDeriv i (F i)) := hcont.integrable_of_hasCompactSupport hcs
      refine ⟨hint, ?_⟩
      have key := integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable (μ := volume)
        (f := fun _ : E3 => (1 : ℝ)) (g := F i) (v := e i) ?_ ?_ ?_ (differentiable_const 1)
        ((hFs i).differentiable (by simp))
      · simpa [partialDeriv] using key
      · simp
      · simpa [partialDeriv] using hint
      · simpa using (hFs i).continuous.integrable_of_hasCompactSupport (hFc i)
    have hpt : ∀ y, f y * sepDensDiv G W y = (∑ i, partialDeriv i (F i) y) -
        Real.sqrt (G y).det * ∑ i : Fin 3, partialDeriv i f y * W y i := by
      intro y
      have hfd : DifferentiableAt ℝ f y := hf.differentiable (by simp) y
      have hgd : ∀ i : Fin 3, DifferentiableAt ℝ (fun z => Real.sqrt (G z).det * W z i) y :=
        fun i => (hsW W hW hWV i).differentiable (by simp) y
      have hcomp : ∀ i : Fin 3, partialDeriv i (F i) y =
          f y * partialDeriv i (fun z => Real.sqrt (G z).det * W z i) y +
            Real.sqrt (G y).det * W y i * partialDeriv i f y := by
        intro i
        rw [hFeq i]
        unfold partialDeriv
        have hm : HasFDerivAt (fun z => f z * (Real.sqrt (G z).det * W z i))
            (f y • fderiv ℝ (fun z => Real.sqrt (G z).det * W z i) y +
              (Real.sqrt (G y).det * W y i) • fderiv ℝ f y) y :=
          HasFDerivAt.mul hfd.hasFDerivAt (hgd i).hasFDerivAt
        rw [hm.fderiv]
        simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
      simp only [hcomp, sepDensDiv, Fin.sum_univ_three]
      ring
    have hDint : Integrable (fun y => ∑ i, partialDeriv i (F i) y) :=
      integrable_finset_sum _ (fun i _ => (hI i).1)
    have hD0 : ∫ y, ∑ i, partialDeriv i (F i) y = 0 := by
      rw [integral_finset_sum _ (fun i _ => (hI i).1)]
      exact Finset.sum_eq_zero (fun i _ => (hI i).2)
    have hLHS : (fun y => f y * sepDensDiv G W y) = fun y =>
        (∑ i, partialDeriv i (F i) y) -
          Real.sqrt (G y).det * ∑ i : Fin 3, partialDeriv i f y * W y i := funext hpt
    rw [hLHS, integral_sub hDint (hRint f hf W hW hWc hWV), hD0, zero_sub]
  
  have hφd : ContDiff ℝ ∞ (deriv φ) := (contDiff_infty_iff_deriv.1 hφ).2
  have hφdiff : Differentiable ℝ φ := hφ.differentiable (by simp)
  obtain ⟨α, hαdef⟩ : ∃ α : E3 → ℝ, α = fun y => deriv φ (u y) := ⟨_, rfl⟩
  have hα : ContDiff ℝ ∞ α := by rw [hαdef]; exact hφd.comp hu
  have hα01 : ∀ y, 0 ≤ α y ∧ α y ≤ 1 := by
    intro y
    rw [hαdef]
    exact hφ' (u y)
  
  obtain ⟨Z, hZdef⟩ : ∃ Z : E3 → E3, Z = fun y => α y • X y + (1 - α y) • Y y := ⟨_, rfl⟩
  have hZi : ∀ y (i : Fin 3), Z y i = α y * X y i + (1 - α y) * Y y i := by
    intro y i
    rw [hZdef]
    simp
  have hZ : ContDiff ℝ ∞ Z := by
    rw [hZdef]
    exact (hα.smul hX).add ((contDiff_const.sub hα).smul hY)
  have hZsub : tsupport Z ⊆ tsupport X ∪ tsupport Y := by
    rw [hZdef]
    exact (tsupport_add (fun y => α y • X y) (fun y => (1 - α y) • Y y)).trans
      (Set.union_subset_union (tsupport_smul_subset_right _ _) (tsupport_smul_subset_right _ _))
  have hZc : HasCompactSupport Z :=
    (hXc.isCompact.union hYc.isCompact).of_isClosed_subset (isClosed_tsupport Z) hZsub
  have hZV : tsupport Z ⊆ V := hZsub.trans (Set.union_subset hXV hYV)
  
  have hquad : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Z y i * Z y j ≤ 1 := by
    intro y
    simp only [hZi]
    by_cases hy : y ∈ V
    · obtain ⟨ht0, ht1⟩ := hα01 y
      have hpsd := (hpd y hy).posSemidef.dotProduct_mulVec_nonneg (fun i => X y i - Y y i)
      have hx := hXn y
      have hyy := hYn y
      simp only [star_trivial, dotProduct, Matrix.mulVec, Fin.sum_univ_three] at hpsd hx hyy ⊢
      have h1 := mul_le_mul_of_nonneg_left hx ht0
      have h2 := mul_le_mul_of_nonneg_left hyy (sub_nonneg.2 ht1)
      have h3 := mul_nonneg (mul_nonneg ht0 (sub_nonneg.2 ht1)) hpsd
      nlinarith [h1, h2, h3]
    · have hX0 : X y = 0 := image_eq_zero_of_notMem_tsupport (fun h => hy (hXV h))
      have hY0 : Y y = 0 := image_eq_zero_of_notMem_tsupport (fun h => hy (hYV h))
      simp [hX0, hY0]
  
  have chainA : ∀ y (i : Fin 3), partialDeriv i (fun z => φ (u z)) y = α y * partialDeriv i u y := by
    intro y i
    have hu' : HasFDerivAt u (fderiv ℝ u y) y := (hu.differentiable (by simp) y).hasFDerivAt
    have hc : HasFDerivAt (fun z => φ (u z)) (deriv φ (u y) • fderiv ℝ u y) y :=
      HasDerivAt.comp_hasFDerivAt y (hφdiff (u y)).hasDerivAt hu'
    unfold partialDeriv
    rw [hc.fderiv, hαdef]
    simp only [ContinuousLinearMap.smul_apply, smul_eq_mul]
  have chainB : ∀ y (i : Fin 3),
      partialDeriv i (fun z => u z - φ (u z)) y = (1 - α y) * partialDeriv i u y := by
    intro y i
    have hu' : HasFDerivAt u (fderiv ℝ u y) y := (hu.differentiable (by simp) y).hasFDerivAt
    have hc : HasFDerivAt (fun z => φ (u z)) (deriv φ (u y) • fderiv ℝ u y) y :=
      HasDerivAt.comp_hasFDerivAt y (hφdiff (u y)).hasDerivAt hu'
    have hs : HasFDerivAt (fun z => u z - φ (u z))
        (fderiv ℝ u y - deriv φ (u y) • fderiv ℝ u y) y := hu'.sub hc
    unfold partialDeriv
    rw [hs.fderiv, hαdef]
    simp only [ContinuousLinearMap.sub_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    ring
  
  have IX : ∫ y, φ (u y) * sepDensDiv G X y =
      -∫ y, Real.sqrt (G y).det * ∑ i : Fin 3, partialDeriv i (fun z => φ (u z)) y * X y i :=
    ibp (fun z => φ (u z)) (hφ.comp hu) X hX hXc hXV
  have IY : ∫ y, (u y - φ (u y)) * sepDensDiv G Y y =
      -∫ y, Real.sqrt (G y).det *
        ∑ i : Fin 3, partialDeriv i (fun z => u z - φ (u z)) y * Y y i :=
    ibp (fun z => u z - φ (u z)) (hu.sub (hφ.comp hu)) Y hY hYc hYV
  have IZ : ∫ y, u y * sepDensDiv G Z y =
      -∫ y, Real.sqrt (G y).det * ∑ i : Fin 3, partialDeriv i u y * Z y i :=
    ibp u hu Z hZ hZc hZV
  have hPX := hRint (fun z => φ (u z)) (hφ.comp hu) X hX hXc hXV
  have hPY := hRint (fun z => u z - φ (u z)) (hu.sub (hφ.comp hu)) Y hY hYc hYV
  refine ⟨Z, hZ, hZc, hZsub, hquad, ?_⟩
  rw [IX, IY, IZ, ← neg_add, ← integral_add hPX hPY]
  congr 1
  refine integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
  simp only [chainA, chainB, hZi, Fin.sum_univ_three]
  ring

theorem moll_L1_tendsto (g : E3 → ℝ) (hg : MeasureTheory.Integrable g) (η : ℝ) (hη : 0 < η) :
    ∃ ε₀ : ℝ, 0 < ε₀ ∧ ∀ b : ContDiffBump (0 : E3), b.rOut ≤ ε₀ →
      ∫ y, |MeasureTheory.convolution (b.normed MeasureTheory.volume) g
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - g y| ≤ η :=
by
  
  have hcontract : ∀ (b : ContDiffBump (0 : E3)) (k : E3 → ℝ), Integrable k →
      ∫ y, |MeasureTheory.convolution (b.normed MeasureTheory.volume) k
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y| ≤ ∫ y, |k y| := by
    intro b k hk
    have hpt : ∀ y, |MeasureTheory.convolution (b.normed MeasureTheory.volume) k
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y| ≤
        MeasureTheory.convolution (b.normed MeasureTheory.volume) (fun x => |k x|)
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y := by
      intro y
      rw [convolution_lsmul, convolution_lsmul]
      calc |∫ t, b.normed volume t • k (y - t)|
          ≤ ∫ t, ‖b.normed volume t • k (y - t)‖ := by
            rw [← Real.norm_eq_abs]; exact norm_integral_le_integral_norm _
        _ = ∫ t, b.normed volume t • |k (y - t)| := by
            congr 1; funext t
            rw [smul_eq_mul, smul_eq_mul, Real.norm_eq_abs, abs_mul,
              abs_of_nonneg (b.nonneg_normed t)]
    have hI : Integrable (MeasureTheory.convolution (b.normed MeasureTheory.volume)
        (fun x => |k x|) (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume) :=
      Integrable.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) b.integrable_normed hk.abs
    have hE : ∫ y, MeasureTheory.convolution (b.normed MeasureTheory.volume) (fun x => |k x|)
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y = ∫ y, |k y| := by
      rw [integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) b.integrable_normed hk.abs]
      simp [b.integral_normed]
    calc _ ≤ ∫ y, MeasureTheory.convolution (b.normed MeasureTheory.volume) (fun x => |k x|)
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y :=
          integral_mono_of_nonneg (ae_of_all _ (fun y => abs_nonneg _)) hI (ae_of_all _ hpt)
      _ = _ := hE
  
  have hlin : ∀ (b : ContDiffBump (0 : E3)) (h : E3 → ℝ), Integrable h → ∀ y,
      MeasureTheory.convolution (b.normed MeasureTheory.volume) g
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y =
        MeasureTheory.convolution (b.normed MeasureTheory.volume) (fun x => g x - h x)
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y +
        MeasureTheory.convolution (b.normed MeasureTheory.volume) h
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y := by
    intro b h hh y
    have hEk : ConvolutionExists (b.normed MeasureTheory.volume) (fun x => g x - h x)
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume :=
      HasCompactSupport.convolutionExists_left (ContinuousLinearMap.lsmul ℝ ℝ)
        b.hasCompactSupport_normed b.continuous_normed (hg.sub hh).locallyIntegrable
    have hEh : ConvolutionExists (b.normed MeasureTheory.volume) h
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume :=
      HasCompactSupport.convolutionExists_left (ContinuousLinearMap.lsmul ℝ ℝ)
        b.hasCompactSupport_normed b.continuous_normed hh.locallyIntegrable
    have key := hEk.distrib_add hEh
    have hsum : ((fun x => g x - h x) + h) = g := by
      funext x; simp
    rw [hsum] at key
    rw [key]
    rfl
  
  have hunif : ∀ (h : E3 → ℝ), Continuous h → HasCompactSupport h → ∀ η' : ℝ, 0 < η' →
      ∃ δ : ℝ, 0 < δ ∧ ∀ b : ContDiffBump (0 : E3), b.rOut ≤ δ →
        ∫ y, |MeasureTheory.convolution (b.normed MeasureTheory.volume) h
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - h y| ≤ η' := by
    intro h hc hs η' hη'
    obtain ⟨L, hLdef⟩ : ∃ L : Set E3, L = Metric.cthickening 1 (tsupport h) := ⟨_, rfl⟩
    have hLc : IsCompact L := by rw [hLdef]; exact hs.isCompact.cthickening
    have hLm : MeasurableSet L := by rw [hLdef]; exact Metric.isClosed_cthickening.measurableSet
    have hKL : tsupport h ⊆ L := by rw [hLdef]; exact Metric.self_subset_cthickening _
    obtain ⟨V, hV⟩ : ∃ V : ℝ, V = volume.real L := ⟨_, rfl⟩
    have hV0 : 0 ≤ V := by rw [hV]; exact measureReal_nonneg
    obtain ⟨ε', hε'⟩ : ∃ ε' : ℝ, ε' = η' / (V + 1) := ⟨_, rfl⟩
    have hε'0 : 0 < ε' := by rw [hε']; exact div_pos hη' (by linarith)
    obtain ⟨δ₁, hδ₁, hu⟩ :=
      Metric.uniformContinuous_iff.mp (hs.uniformContinuous_of_continuous hc) ε' hε'0
    refine ⟨min δ₁ 1, lt_min hδ₁ one_pos, fun b hb => ?_⟩
    have hb1 : b.rOut ≤ δ₁ := hb.trans (min_le_left _ _)
    have hb2 : b.rOut ≤ 1 := hb.trans (min_le_right _ _)
    have hpt : ∀ x₀, |MeasureTheory.convolution (b.normed MeasureTheory.volume) h
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume x₀ - h x₀| ≤
        L.indicator (fun _ => ε') x₀ := by
      intro x₀
      by_cases hx : x₀ ∈ L
      · rw [Set.indicator_of_mem hx, ← Real.dist_eq]
        apply b.dist_normed_convolution_le hc.aestronglyMeasurable
        intro x hxb
        exact (hu (lt_of_lt_of_le (Metric.mem_ball.mp hxb) hb1)).le
      · rw [Set.indicator_of_notMem hx, ← Real.dist_eq]
        have hx0 : h x₀ = 0 := image_eq_zero_of_notMem_tsupport (fun h' => hx (hKL h'))
        apply b.dist_normed_convolution_le hc.aestronglyMeasurable
        intro x hxb
        have hxK : x ∉ tsupport h := by
          intro hxK
          apply hx
          rw [hLdef]
          refine Metric.mem_cthickening_of_dist_le x₀ x 1 _ hxK ?_
          rw [dist_comm]
          exact le_of_lt (lt_of_lt_of_le (Metric.mem_ball.mp hxb) hb2)
        rw [image_eq_zero_of_notMem_tsupport hxK, hx0, dist_self]
    have hInt : Integrable (L.indicator (fun _ : E3 => ε')) :=
      (integrableOn_const hLc.measure_lt_top.ne).integrable_indicator hLm
    calc ∫ y, |MeasureTheory.convolution (b.normed MeasureTheory.volume) h
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - h y|
        ≤ ∫ y, L.indicator (fun _ => ε') y :=
          integral_mono_of_nonneg (ae_of_all _ (fun y => abs_nonneg _)) hInt (ae_of_all _ hpt)
      _ = V * ε' := by rw [integral_indicator_const ε' hLm, smul_eq_mul, hV]
      _ ≤ η' := by
        rw [hε', mul_div_assoc', div_le_iff₀ (by linarith)]
        nlinarith
  
  obtain ⟨h, hhs, hgh, hhc, hhi⟩ :=
    hg.exists_hasCompactSupport_integral_sub_le (show (0 : ℝ) < η / 3 by positivity)
  obtain ⟨δ, hδ, hδb⟩ := hunif h hhc hhs (η / 3) (by positivity)
  refine ⟨δ, hδ, fun b hb => ?_⟩
  have hC1 : Integrable (fun y => |MeasureTheory.convolution (b.normed MeasureTheory.volume)
      (fun x => g x - h x) (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y|) :=
    (Integrable.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) b.integrable_normed
      (hg.sub hhi)).abs
  have hC2 : Integrable (fun y => |MeasureTheory.convolution (b.normed MeasureTheory.volume) h
      (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - h y|) :=
    ((Integrable.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) b.integrable_normed
      hhi).sub hhi).abs
  have hC3 : Integrable (fun y => |g y - h y|) := (hg.sub hhi).abs
  have hpt : ∀ y, |MeasureTheory.convolution (b.normed MeasureTheory.volume) g
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - g y| ≤
      (|MeasureTheory.convolution (b.normed MeasureTheory.volume)
        (fun x => g x - h x) (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y| +
      |MeasureTheory.convolution (b.normed MeasureTheory.volume) h
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - h y|) + |g y - h y| := by
    intro y
    rw [hlin b h hhi y]
    have e : MeasureTheory.convolution (b.normed MeasureTheory.volume) (fun x => g x - h x)
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y +
        MeasureTheory.convolution (b.normed MeasureTheory.volume) h
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - g y =
        (MeasureTheory.convolution (b.normed MeasureTheory.volume) (fun x => g x - h x)
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y +
        (MeasureTheory.convolution (b.normed MeasureTheory.volume) h
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - h y)) - (g y - h y) := by ring
    rw [e]
    have htri := abs_add_le
      (MeasureTheory.convolution (b.normed MeasureTheory.volume) (fun x => g x - h x)
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y)
      (MeasureTheory.convolution (b.normed MeasureTheory.volume) h
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - h y)
    exact (abs_sub _ _).trans (by linarith)
  have hgh' : ∫ y, |g y - h y| ≤ η / 3 := by
    have : (fun y => |g y - h y|) = fun y => ‖g y - h y‖ := by
      funext y; rw [Real.norm_eq_abs]
    rw [this]; exact hgh
  have h1 : ∫ y, |MeasureTheory.convolution (b.normed MeasureTheory.volume)
        (fun x => g x - h x) (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y| ≤
      ∫ y, |g y - h y| := hcontract b (fun x => g x - h x) (hg.sub hhi)
  have h2 := hδb b hb
  have hC12 : Integrable (fun y => |MeasureTheory.convolution (b.normed MeasureTheory.volume)
        (fun x => g x - h x) (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y| +
      |MeasureTheory.convolution (b.normed MeasureTheory.volume) h
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - h y|) := hC1.add hC2
  calc _ ≤ ∫ y, ((|MeasureTheory.convolution (b.normed MeasureTheory.volume)
        (fun x => g x - h x) (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y| +
      |MeasureTheory.convolution (b.normed MeasureTheory.volume) h
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - h y|) + |g y - h y|) :=
        integral_mono_of_nonneg (ae_of_all _ (fun y => abs_nonneg _))
          (hC12.add hC3) (ae_of_all _ hpt)
    _ = (∫ y, |MeasureTheory.convolution (b.normed MeasureTheory.volume)
        (fun x => g x - h x) (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y|) +
      (∫ y, |MeasureTheory.convolution (b.normed MeasureTheory.volume) h
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y - h y|) +
      ∫ y, |g y - h y| := by
        rw [integral_add hC12 hC3, integral_add hC1 hC2]
    _ ≤ η := by linarith

theorem quadForm_unif_transfer (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (L₀ : Set E3)
    (hL₀ : IsCompact L₀) (hGc : ∀ i j : Fin 3, ContinuousOn (fun y => G y i j) L₀)
    (hpd : ∀ y ∈ L₀, (G y).PosDef) (θ : ℝ) (hθ : 0 < θ) :
    ∃ δ : ℝ, 0 < δ ∧ ∀ y ∈ L₀, ∀ z ∈ L₀, dist y z ≤ δ → ∀ a : Fin 3 → ℝ,
      ∑ i : Fin 3, ∑ j : Fin 3, G y i j * a i * a j ≤ (G y).det →
      ∑ i : Fin 3, ∑ j : Fin 3, G z i j * a i * a j ≤ (1 + θ) * (G z).det :=
by
  classical
  rcases L₀.eq_empty_or_nonempty with hE | hne
  · refine ⟨1, one_pos, ?_⟩
    intro y hy
    rw [hE] at hy
    exact absurd hy (Set.notMem_empty y)
  
  have hGpi : ContinuousOn (fun y => (fun i j => G y i j : Fin 3 → Fin 3 → ℝ)) L₀ :=
    continuousOn_pi.2 (fun i => continuousOn_pi.2 (fun j => hGc i j))
  have hGm : ContinuousOn G L₀ := hGpi
  have hdet : ContinuousOn (fun y => (G y).det) L₀ :=
    (continuous_id.matrix_det).comp_continuousOn hGm
  
  obtain ⟨y₀, hy₀, hmin⟩ := hL₀.exists_isMinOn hne hdet
  obtain ⟨y₁, hy₁, hmax⟩ := hL₀.exists_isMaxOn hne hdet
  obtain ⟨d₀, hd₀def⟩ : ∃ d₀ : ℝ, d₀ = (G y₀).det := ⟨_, rfl⟩
  obtain ⟨D, hDdef⟩ : ∃ D : ℝ, D = (G y₁).det := ⟨_, rfl⟩
  have hd₀ : 0 < d₀ := by rw [hd₀def]; exact (hpd y₀ hy₀).det_pos
  have hdlo : ∀ y ∈ L₀, d₀ ≤ (G y).det := fun y hy => by
    rw [hd₀def]; exact isMinOn_iff.1 hmin y hy
  have hdhi : ∀ y ∈ L₀, (G y).det ≤ D := fun y hy => by
    rw [hDdef]; exact isMaxOn_iff.1 hmax y hy
  have hD : 0 < D := lt_of_lt_of_le hd₀ ((hdlo y₁ hy₁).trans_eq hDdef.symm)
  
  have hform : ∀ (A : Matrix (Fin 3) (Fin 3) ℝ) (v : Fin 3 → ℝ),
      star v ⬝ᵥ A.mulVec v = ∑ i, ∑ j, A i j * v i * v j := by
    intro A v
    simp only [star_trivial, dotProduct, Matrix.mulVec, Finset.mul_sum]
    refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => by ring))
  have hS : IsCompact (Metric.sphere (0 : Fin 3 → ℝ) 1) := isCompact_sphere 0 1
  have hSne : (Metric.sphere (0 : Fin 3 → ℝ) 1).Nonempty :=
    NormedSpace.sphere_nonempty.2 zero_le_one
  have hF : ContinuousOn (fun p : E3 × (Fin 3 → ℝ) => ∑ i, ∑ j, G p.1 i j * p.2 i * p.2 j)
      (L₀ ×ˢ Metric.sphere (0 : Fin 3 → ℝ) 1) := by
    apply continuousOn_finset_sum
    intro i _
    apply continuousOn_finset_sum
    intro j _
    refine ContinuousOn.mul (ContinuousOn.mul ?_ ?_) ?_
    · exact (hGc i j).comp continuousOn_fst (fun p hp => hp.1)
    · exact ((continuous_apply i).comp continuous_snd).continuousOn
    · exact ((continuous_apply j).comp continuous_snd).continuousOn
  obtain ⟨⟨y₂, v₀⟩, ⟨hy₂, hv₀⟩, hFmin⟩ := (hL₀.prod hS).exists_isMinOn (hne.prod hSne) hF
  obtain ⟨lam, hlamdef⟩ : ∃ lam : ℝ, lam = ∑ i, ∑ j, G y₂ i j * v₀ i * v₀ j := ⟨_, rfl⟩
  have hv₀ne : v₀ ≠ 0 := by
    intro h
    rw [h, mem_sphere_zero_iff_norm, norm_zero] at hv₀
    exact zero_ne_one hv₀
  have hlam : 0 < lam := by
    have := (hpd y₂ hy₂).dotProduct_mulVec_pos hv₀ne
    rw [hform] at this
    rw [hlamdef]; exact this
  have hcoer0 : ∀ y ∈ L₀, ∀ a : Fin 3 → ℝ,
      lam * ‖a‖ ^ 2 ≤ ∑ i, ∑ j, G y i j * a i * a j := by
    intro y hy a
    by_cases ha : a = 0
    · subst ha; simp
    · have hna : 0 < ‖a‖ := norm_pos_iff.2 ha
      have hvS : ‖a‖⁻¹ • a ∈ Metric.sphere (0 : Fin 3 → ℝ) 1 := by
        rw [mem_sphere_zero_iff_norm]; exact norm_smul_inv_norm ha
      have hav : ∀ i, a i = ‖a‖ * (‖a‖⁻¹ • a) i := by
        intro i
        rw [Pi.smul_apply, smul_eq_mul, ← mul_assoc, mul_inv_cancel₀ hna.ne', one_mul]
      have h1 := isMinOn_iff.1 hFmin (y, ‖a‖⁻¹ • a) ⟨hy, hvS⟩
      simp only at h1
      rw [← hlamdef] at h1
      have h2 : ∑ i, ∑ j, G y i j * a i * a j =
          ‖a‖ ^ 2 * ∑ i, ∑ j, G y i j * (‖a‖⁻¹ • a) i * (‖a‖⁻¹ • a) j := by
        rw [Finset.mul_sum]
        refine Finset.sum_congr rfl (fun i _ => ?_)
        rw [Finset.mul_sum]
        refine Finset.sum_congr rfl (fun j _ => ?_)
        rw [hav i, hav j]
        simp only [Pi.smul_apply, smul_eq_mul]
        ring
      rw [h2, mul_comm lam]
      exact mul_le_mul_of_nonneg_left h1 (by positivity)
  have hsq : ∀ (a : Fin 3 → ℝ) (i : Fin 3), a i ^ 2 ≤ ‖a‖ ^ 2 := by
    intro a i
    have h := norm_le_pi_norm a i
    rw [Real.norm_eq_abs] at h
    calc a i ^ 2 = |a i| ^ 2 := (sq_abs _).symm
      _ ≤ ‖a‖ ^ 2 := pow_le_pow_left₀ (abs_nonneg _) h 2
  obtain ⟨c, hcdef⟩ : ∃ c : ℝ, c = lam / 3 := ⟨_, rfl⟩
  have hc : 0 < c := by rw [hcdef]; positivity
  have hcoer : ∀ y ∈ L₀, ∀ a : Fin 3 → ℝ,
      c * ∑ i, a i ^ 2 ≤ ∑ i, ∑ j, G y i j * a i * a j := by
    intro y hy a
    have h0 := hcoer0 y hy a
    have hs : ∑ i, a i ^ 2 ≤ 3 * ‖a‖ ^ 2 := by
      rw [Fin.sum_univ_three]
      linarith [hsq a 0, hsq a 1, hsq a 2]
    have : c * ∑ i, a i ^ 2 ≤ c * (3 * ‖a‖ ^ 2) := mul_le_mul_of_nonneg_left hs hc.le
    have e : c * (3 * ‖a‖ ^ 2) = lam * ‖a‖ ^ 2 := by rw [hcdef]; ring
    linarith
  
  have hΦ : ContinuousOn (fun y => ((fun i j => G y i j : Fin 3 → Fin 3 → ℝ), (G y).det)) L₀ :=
    hGpi.prodMk hdet
  have huc := hL₀.uniformContinuousOn_of_continuous hΦ
  obtain ⟨τ, hτdef⟩ : ∃ τ : ℝ, τ = θ * d₀ * c / (c + 3 * D) := ⟨_, rfl⟩
  have hτ : 0 < τ := by rw [hτdef]; positivity
  obtain ⟨δ, hδ, hclose⟩ := Metric.uniformContinuousOn_iff_le.1 huc τ hτ
  refine ⟨δ, hδ, ?_⟩
  intro y hy z hz hyz a hq
  have hd := hclose y hy z hz hyz
  rw [Prod.dist_eq] at hd
  have hd1 := (le_max_left _ _).trans hd
  have hd2 := (le_max_right _ _).trans hd
  simp only at hd1 hd2
  have hent : ∀ i j : Fin 3, |G z i j - G y i j| ≤ τ := by
    intro i j
    have h := (dist_le_pi_dist (fun j => G y i j) (fun j => G z i j) j).trans
      ((dist_le_pi_dist (fun i j => G y i j) (fun i j => G z i j) i).trans hd1)
    have h' : |G y i j - G z i j| ≤ τ := by simpa [Real.dist_eq] using h
    rwa [abs_sub_comm] at h'
  rw [Real.dist_eq] at hd2
  
  have hterm : ∀ i j : Fin 3,
      (G z i j - G y i j) * a i * a j ≤ τ * (a i ^ 2 + a j ^ 2) / 2 := by
    intro i j
    have h := abs_le.1 (hent i j)
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ τ - (G z i j - G y i j)) (sq_nonneg (a i + a j)),
      mul_nonneg (by linarith : (0:ℝ) ≤ τ + (G z i j - G y i j)) (sq_nonneg (a i - a j))]
  have hdiff : ∑ i, ∑ j, G z i j * a i * a j - ∑ i, ∑ j, G y i j * a i * a j
      = ∑ i, ∑ j, (G z i j - G y i j) * a i * a j := by
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl (fun j _ => ?_)
    ring
  have hsum : ∑ i, ∑ j, (G z i j - G y i j) * a i * a j ≤
      ∑ i : Fin 3, ∑ j : Fin 3, τ * (a i ^ 2 + a j ^ 2) / 2 :=
    Finset.sum_le_sum (fun i _ => Finset.sum_le_sum (fun j _ => hterm i j))
  have heval : ∑ i : Fin 3, ∑ j : Fin 3, τ * (a i ^ 2 + a j ^ 2) / 2 =
      3 * τ * ∑ i, a i ^ 2 := by
    simp only [Fin.sum_univ_three]; ring
  have hcs := hcoer y hy a
  have hdy := hdhi y hy
  have hdz := hdlo z hz
  have hdd := (abs_le.1 hd2).2
  have hcD : c * ∑ i, a i ^ 2 ≤ D := hcs.trans (hq.trans hdy)
  have hne3 : c + 3 * D ≠ 0 := by positivity
  have key : τ * (c + 3 * D) = θ * d₀ * c := by
    rw [hτdef]; field_simp
  have hτcD : 3 * τ * (c * ∑ i, a i ^ 2) ≤ 3 * τ * D :=
    mul_le_mul_of_nonneg_left hcD (by positivity)
  have h3 : c * (τ + 3 * τ * ∑ i, a i ^ 2) ≤ c * (θ * d₀) := by
    linarith
  have h4 : τ + 3 * τ * ∑ i, a i ^ 2 ≤ θ * d₀ := le_of_mul_le_mul_left h3 hc
  have h5 : θ * d₀ ≤ θ * (G z).det := mul_le_mul_of_nonneg_left hdz hθ.le
  linarith

theorem moll_quad_avg_le (A : Matrix (Fin 3) (Fin 3) ℝ)
    (hA : ∀ v : Fin 3 → ℝ, 0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, A i j * v i * v j)
    (b : ContDiffBump (0 : E3)) (h : Fin 3 → E3 → ℝ) (hh : ∀ i, Continuous (h i))
    (hhc : ∀ i, HasCompactSupport (h i)) (z : E3) (M : ℝ)
    (hM : ∀ t : E3, ‖t‖ < b.rOut →
      ∑ i : Fin 3, ∑ j : Fin 3, A i j * h i (z - t) * h j (z - t) ≤ M) :
    ∑ i : Fin 3, ∑ j : Fin 3, A i j *
        MeasureTheory.convolution (b.normed MeasureTheory.volume) (h i)
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume z *
        MeasureTheory.convolution (b.normed MeasureTheory.volume) (h j)
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume z ≤ M :=
by
  set ρ := b.normed MeasureTheory.volume with hρdef
  simp only [MeasureTheory.convolution_lsmul, smul_eq_mul]
  set c : Fin 3 → ℝ := fun k => ∫ t, ρ t * h k (z - t) with hcdef
  show ∑ i : Fin 3, ∑ j : Fin 3, A i j * c i * c j ≤ M
  set Qc := ∑ i : Fin 3, ∑ j : Fin 3, A i j * c i * c j with hQc
  set d : Fin 3 → ℝ := fun k => ∑ i : Fin 3, (A i k + A k i) * c i with hd
  have htan : ∀ v : Fin 3 → ℝ,
      (∑ k : Fin 3, d k * v k) - Qc ≤ ∑ i : Fin 3, ∑ j : Fin 3, A i j * v i * v j := by
    intro v
    have hv := hA (fun i => v i - c i)
    simp only [hd, hQc, Fin.sum_univ_three] at hv ⊢
    linarith [hv]
  have hdc : ∑ k : Fin 3, d k * c k = 2 * Qc := by
    simp only [hd, hQc, Fin.sum_univ_three]
    ring
  have hρnn : ∀ t, 0 ≤ ρ t := fun t => b.nonneg_normed t
  have hρint : ∫ t, ρ t = 1 := b.integral_normed
  have hρsupp : ∀ t, ρ t ≠ 0 → ‖t‖ < b.rOut := by
    intro t ht
    have ht' : t ∈ Function.support ρ := ht
    rw [hρdef, b.support_normed_eq] at ht'
    simpa using ht'
  have hint : ∀ k, MeasureTheory.Integrable (fun t => ρ t * h k (z - t)) := by
    intro k
    refine Continuous.integrable_of_hasCompactSupport ?_ ?_
    · exact b.continuous_normed.mul ((hh k).comp (continuous_const.sub continuous_id))
    · exact b.hasCompactSupport_normed.mul_right
  have hρi : MeasureTheory.Integrable ρ := b.integrable_normed
  have hsumi : MeasureTheory.Integrable
      (fun t => ∑ k : Fin 3, d k * (ρ t * h k (z - t))) :=
    MeasureTheory.integrable_finset_sum _ (fun k _ => (hint k).const_mul (d k))
  have hpt : ∀ t, (∑ k : Fin 3, d k * (ρ t * h k (z - t))) - Qc * ρ t ≤ M * ρ t := by
    intro t
    have e : (∑ k : Fin 3, d k * (ρ t * h k (z - t))) - Qc * ρ t =
        ρ t * ((∑ k : Fin 3, d k * h k (z - t)) - Qc) := by
      rw [mul_sub, Finset.mul_sum]
      congr 1
      · exact Finset.sum_congr rfl (fun k _ => by ring)
      · ring
    rw [e, mul_comm M]
    by_cases h0 : ρ t = 0
    · simp [h0]
    · apply mul_le_mul_of_nonneg_left _ (hρnn t)
      exact (htan (fun i => h i (z - t))).trans (hM t (hρsupp t h0))
  have hL : ∫ t, ((∑ k : Fin 3, d k * (ρ t * h k (z - t))) - Qc * ρ t) = Qc := by
    rw [MeasureTheory.integral_sub hsumi (hρi.const_mul Qc),
      MeasureTheory.integral_finset_sum _ (fun k _ => (hint k).const_mul (d k))]
    simp only [MeasureTheory.integral_const_mul]
    have e2 : ∑ k : Fin 3, d k * ∫ t, ρ t * h k (z - t) = ∑ k : Fin 3, d k * c k := rfl
    rw [e2, hdc, hρint]
    ring
  have hR : ∫ t, M * ρ t = M := by
    rw [MeasureTheory.integral_const_mul, hρint, mul_one]
  have hmono : ∫ t, ((∑ k : Fin 3, d k * (ρ t * h k (z - t))) - Qc * ρ t) ≤ ∫ t, M * ρ t :=
    MeasureTheory.integral_mono (hsumi.sub (hρi.const_mul Qc)) (hρi.const_mul M) hpt
  rw [hL, hR] at hmono
  exact hmono

theorem moll_integral_adjoint (b : ContDiffBump (0 : E3)) (g : E3 → ℝ)
    (hg : MeasureTheory.Integrable g) (k : E3 → ℝ) (hk : Continuous k)
    (hkc : HasCompactSupport k) :
    ∫ x, MeasureTheory.convolution (b.normed MeasureTheory.volume) g
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume x * k x =
      ∫ y, g y * MeasureTheory.convolution (b.normed MeasureTheory.volume) k
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y :=
by
  have hφi : MeasureTheory.Integrable (b.normed (MeasureTheory.volume : MeasureTheory.Measure E3)) :=
    b.integrable_normed
  have hconv : ∀ (u : E3 → ℝ) (x : E3),
      MeasureTheory.convolution (b.normed (MeasureTheory.volume : MeasureTheory.Measure E3)) u
          (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume x =
        ∫ t, b.normed (MeasureTheory.volume : MeasureTheory.Measure E3) (x - t) * u t := by
    intro u x
    rw [MeasureTheory.convolution_lsmul_swap]
    rfl
  obtain ⟨C, hC⟩ := hk.bounded_above_of_compact_support hkc
  have hint0 : MeasureTheory.Integrable
      (fun p : E3 × E3 => g p.2 * b.normed (MeasureTheory.volume : MeasureTheory.Measure E3) (p.1 - p.2))
      ((MeasureTheory.volume : MeasureTheory.Measure E3).prod MeasureTheory.volume) := by
    have := hg.convolution_integrand (ContinuousLinearMap.lsmul ℝ ℝ) hφi
      (μ := MeasureTheory.volume) (ν := MeasureTheory.volume)
    simpa using this
  have hint : MeasureTheory.Integrable
      (Function.uncurry fun x t =>
        g t * b.normed (MeasureTheory.volume : MeasureTheory.Measure E3) (x - t) * k x)
      ((MeasureTheory.volume : MeasureTheory.Measure E3).prod MeasureTheory.volume) := by
    have := hint0.mul_bdd (c := C) (hk.comp continuous_fst).aestronglyMeasurable
      (Filter.Eventually.of_forall fun p => hC p.1)
    exact this
  calc ∫ x, MeasureTheory.convolution (b.normed MeasureTheory.volume) g
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume x * k x
      = ∫ x, ∫ t, g t * b.normed (MeasureTheory.volume : MeasureTheory.Measure E3) (x - t) * k x := by
        congr 1; funext x; rw [hconv, ← MeasureTheory.integral_mul_const]; congr 1; funext t; ring
    _ = ∫ t, ∫ x, g t * b.normed (MeasureTheory.volume : MeasureTheory.Measure E3) (x - t) * k x :=
        MeasureTheory.integral_integral_swap hint
    _ = ∫ t, g t * MeasureTheory.convolution (b.normed MeasureTheory.volume) k
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume t := by
        congr 1; funext t; rw [hconv, ← MeasureTheory.integral_const_mul]; congr 1; funext x
        rw [show b.normed (MeasureTheory.volume : MeasureTheory.Measure E3) (t - x) =
            b.normed (MeasureTheory.volume : MeasureTheory.Measure E3) (x - t) by
          rw [← neg_sub, b.normed_neg]]
        ring

theorem dens_field_of_smooth (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3)
    (hV : IsOpen V) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V)
    (hpd : ∀ y ∈ V, (G y).PosDef) (S : Set E3) (hS : IsCompact S) (hSV : S ⊆ V)
    (c : ℝ) (hc : 0 < c) (w : Fin 3 → E3 → ℝ) (hw : ∀ i, ContDiff ℝ ∞ (w i))
    (hwS : ∀ i, ∀ z, z ∉ S → w i z = 0)
    (hwq : ∀ z ∈ S, ∑ i : Fin 3, ∑ j : Fin 3, G z i j * w i z * w j z ≤ c ^ 2 * (G z).det) :
    ∃ Z' : E3 → E3, (∀ y, ContDiffAt ℝ ∞ Z' y) ∧ HasCompactSupport Z' ∧ tsupport Z' ⊆ S ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Z' y i * Z' y j ≤ 1) ∧
      (∃ C : ℝ, ∀ y, |sepDensDiv G Z' y| ≤ C) ∧
      ∀ y, sepDensDiv G Z' y = c⁻¹ * ∑ i : Fin 3, partialDeriv i (w i) y :=
by
  classical
  have hScl : IsClosed S := hS.isClosed
  set Z' : E3 → E3 := fun z =>
    WithLp.toLp 2 (fun i : Fin 3 => w i z / (c * Real.sqrt (G z).det)) with hZ'def
  have hZapp : ∀ z i, Z' z i = w i z / (c * Real.sqrt (G z).det) := fun z i => rfl
  have hZ0 : ∀ z, z ∉ S → ∀ i, Z' z i = 0 := by
    intro z hz i
    rw [hZapp, hwS i z hz, zero_div]
  have hZ0' : ∀ z, z ∉ S → Z' z = 0 := by
    intro z hz
    apply PiLp.ext
    intro i
    rw [hZ0 z hz i, PiLp.zero_apply]
  
  have hdens : ∀ i, (fun z => Real.sqrt (G z).det * Z' z i) = fun z => c⁻¹ * w i z := by
    intro i
    funext z
    by_cases hz : z ∈ S
    · have hdet := (hpd z (hSV hz)).det_pos
      have hs : 0 < Real.sqrt (G z).det := Real.sqrt_pos.2 hdet
      have hs0 := hs.ne'
      have hc0 := hc.ne'
      rw [hZapp]
      field_simp
    · rw [hZ0 z hz i, hwS i z hz]
      simp
  have hdiv : ∀ y, sepDensDiv G Z' y = c⁻¹ * ∑ i : Fin 3, partialDeriv i (w i) y := by
    intro y
    unfold sepDensDiv
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    rw [hdens i]
    unfold partialDeriv
    rw [fderiv_const_mul ((hw i).differentiable (by simp) y) c⁻¹,
      ContinuousLinearMap.smul_apply, smul_eq_mul]
  
  have hsupp : Function.support Z' ⊆ S := by
    intro z hz
    by_contra h
    exact hz (hZ0' z h)
  have htsupp : tsupport Z' ⊆ S := closure_minimal hsupp hScl
  have hcs : HasCompactSupport Z' := hS.of_isClosed_subset (isClosed_tsupport Z') htsupp
  
  have hcons : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Z' y i * Z' y j ≤ 1 := by
    intro y
    by_cases hy : y ∈ S
    · have hdet := (hpd y (hSV hy)).det_pos
      have hs : 0 < Real.sqrt (G y).det := Real.sqrt_pos.2 hdet
      have hs2 : Real.sqrt (G y).det ^ 2 = (G y).det := Real.sq_sqrt hdet.le
      have hD : 0 < c ^ 2 * (G y).det := mul_pos (pow_pos hc 2) hdet
      have key : ∀ (s : ℝ), 0 < s → s ^ 2 = (G y).det → ∀ i j : Fin 3,
          G y i j * (w i y / (c * s)) * (w j y / (c * s)) =
            G y i j * w i y * w j y / (c ^ 2 * (G y).det) := by
        intro s hs' hs2' i j
        rw [← hs2']
        have hs0 := hs'.ne'
        have hc0 := hc.ne'
        field_simp
      have heq : ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Z' y i * Z' y j =
          (∑ i : Fin 3, ∑ j : Fin 3, G y i j * w i y * w j y) / (c ^ 2 * (G y).det) := by
        rw [Finset.sum_div]
        refine Finset.sum_congr rfl (fun i _ => ?_)
        rw [Finset.sum_div]
        refine Finset.sum_congr rfl (fun j _ => ?_)
        rw [hZapp, hZapp]
        exact key _ hs hs2 i j
      rw [heq, div_le_one hD]
      exact hwq y hy
    · simp [hZ0 y hy]
  
  have hb : ∀ i, ∃ C, ∀ y, |partialDeriv i (w i) y| ≤ C := by
    intro i
    have hcsw : HasCompactSupport (w i) := HasCompactSupport.intro hS (hwS i)
    have hcont : Continuous (partialDeriv i (w i)) :=
      ((hw i).continuous_fderiv (by simp)).clm_apply continuous_const
    have hcs' : HasCompactSupport (partialDeriv i (w i)) := hcsw.fderiv_apply ℝ (e i)
    obtain ⟨C, hC⟩ := hcont.bounded_above_of_compact_support hcs'
    exact ⟨C, fun y => by rw [← Real.norm_eq_abs]; exact hC y⟩
  choose Cf hCf using hb
  refine ⟨Z', ?_, hcs, htsupp, hcons, ⟨c⁻¹ * ∑ i, Cf i, fun y => ?_⟩, hdiv⟩
  · intro y
    by_cases hy : y ∈ V
    · have hdetpos := (hpd y hy).det_pos
      have hnhds := hV.mem_nhds hy
      have hent : ∀ a b : Fin 3, ContDiffAt ℝ ∞ (fun z => G z a b) y :=
        fun a b => (hG a b).contDiffAt hnhds
      have hdet : ContDiffAt ℝ ∞ (fun z => (G z).det) y := by
        have hfun : (fun z => (G z).det) = fun z =>
            G z 0 0 * G z 1 1 * G z 2 2 - G z 0 0 * G z 1 2 * G z 2 1
            - G z 0 1 * G z 1 0 * G z 2 2 + G z 0 1 * G z 1 2 * G z 2 0
            + G z 0 2 * G z 1 0 * G z 2 1 - G z 0 2 * G z 1 1 * G z 2 0 := by
          funext z
          exact Matrix.det_fin_three (G z)
        rw [hfun]
        have t1 := ((hent 0 0).mul (hent 1 1)).mul (hent 2 2)
        have t2 := ((hent 0 0).mul (hent 1 2)).mul (hent 2 1)
        have t3 := ((hent 0 1).mul (hent 1 0)).mul (hent 2 2)
        have t4 := ((hent 0 1).mul (hent 1 2)).mul (hent 2 0)
        have t5 := ((hent 0 2).mul (hent 1 0)).mul (hent 2 1)
        have t6 := ((hent 0 2).mul (hent 1 1)).mul (hent 2 0)
        exact ((((t1.sub t2).sub t3).add t4).add t5).sub t6
      have hsq : ContDiffAt ℝ ∞ (fun z => Real.sqrt (G z).det) y := hdet.sqrt hdetpos.ne'
      have hden : ContDiffAt ℝ ∞ (fun z => c * Real.sqrt (G z).det) y :=
        contDiffAt_const.mul hsq
      have hne : c * Real.sqrt (G y).det ≠ 0 :=
        mul_ne_zero hc.ne' (Real.sqrt_pos.2 hdetpos).ne'
      apply contDiffAt_piLp' 2
      intro i
      exact ((hw i).contDiffAt).div hden hne
    · have hyS : y ∉ S := fun h => hy (hSV h)
      have hev : Z' =ᶠ[nhds y] fun _ => (0 : E3) :=
        Filter.eventually_of_mem (hScl.isOpen_compl.mem_nhds hyS) (fun z hz => hZ0' z hz)
      exact contDiffAt_const.congr_of_eventuallyEq hev
  · rw [hdiv y, abs_mul, abs_of_pos (inv_pos.2 hc)]
    refine mul_le_mul_of_nonneg_left ?_ (inv_pos.2 hc).le
    exact (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => hCf i y)

theorem dualVarG_moll_pairing_le (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3)
    (hV : IsOpen V) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ V, (G y).PosDef)
    (W : Set E3) (hW : IsOpen W) (hWV : W ⊆ V) (K : Set E3) (hK : IsCompact K) (hKW : K ⊆ W)
    (θ : ℝ) (hθ : 0 < θ) :
    ∃ r : ℝ, 0 < r ∧ Metric.cthickening (2 * r) K ⊆ W ∧
      ∀ b : ContDiffBump (0 : E3), b.rOut ≤ r →
      ∀ f : E3 → ℝ, dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ < ⊤ →
      ∀ Z : E3 → E3, ContDiff ℝ ∞ Z → tsupport Z ⊆ K →
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Z y i * Z y j ≤ 1) →
        ∫ y, MeasureTheory.convolution (b.normed MeasureTheory.volume)
            ((Metric.cthickening (2 * r) K).indicator f)
            (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume y * sepDensDiv G Z y ≤
          (1 + θ) * (dualVarG G (fun _ _ => (0 : ℝ)) f W ∅).toReal :=
by
  classical
  
  obtain ⟨δ₀, hδ₀, hL₀W⟩ := hK.exists_cthickening_subset_open hW hKW
  have hL₀c : IsCompact (Metric.cthickening δ₀ K) := hK.cthickening
  have hL₀V : Metric.cthickening δ₀ K ⊆ V := hL₀W.trans hWV
  have hKL₀ : K ⊆ Metric.cthickening δ₀ K := Metric.self_subset_cthickening K
  obtain ⟨δ₁, hδ₁, hTR⟩ := quadForm_unif_transfer G (Metric.cthickening δ₀ K) hL₀c
    (fun i j => ((hG i j).continuousOn).mono hL₀V) (fun y hy => hpd y (hL₀V hy)) θ hθ
  obtain ⟨r, hrdef⟩ : ∃ r : ℝ, r = min (δ₀ / 2) δ₁ := ⟨_, rfl⟩
  have hr0 : 0 < r := by rw [hrdef]; exact lt_min (half_pos hδ₀) hδ₁
  have hrδ₀ : 2 * r ≤ δ₀ := by
    have := min_le_left (δ₀ / 2) δ₁; rw [hrdef]; linarith
  have hrδ₁ : r ≤ δ₁ := by rw [hrdef]; exact min_le_right _ _
  have hLW : Metric.cthickening (2 * r) K ⊆ W := (Metric.cthickening_mono hrδ₀ K).trans hL₀W
  refine ⟨r, hr0, hLW, ?_⟩
  intro b hb f hfin Z hZ hZK hZn
  
  have hZc : HasCompactSupport Z := hK.of_isClosed_subset (isClosed_tsupport Z) hZK
  have hZV : tsupport Z ⊆ V := hZK.trans (hKW.trans hWV)
  have hZ0 : ∀ y, y ∉ K → ∀ i, Z y i = 0 := by
    intro y hy i
    simp [image_eq_zero_of_notMem_tsupport (fun h' => hy (hZK h'))]
  obtain ⟨h, hhdef⟩ : ∃ h : Fin 3 → E3 → ℝ,
      h = fun i z => Real.sqrt (G z).det * Z z i := ⟨_, rfl⟩
  have hhs : ∀ i, ContDiff ℝ ∞ (h i) ∧ HasCompactSupport (h i) := by
    intro i; rw [hhdef]; exact smth_density_contDiff G V hV hG hpd Z hZ hZc hZV i
  have hh0 : ∀ i y, y ∉ K → h i y = 0 := by
    intro i y hy; simp only [hhdef, hZ0 y hy i, mul_zero]
  obtain ⟨w, hwdef⟩ : ∃ w : Fin 3 → E3 → ℝ, w = fun i =>
      MeasureTheory.convolution (b.normed MeasureTheory.volume) (h i)
        (ContinuousLinearMap.lsmul ℝ ℝ) MeasureTheory.volume := ⟨_, rfl⟩
  have hws : ∀ i, ContDiff ℝ ∞ (w i) := by
    intro i; simp only [hwdef]
    exact HasCompactSupport.contDiff_convolution_right (ContinuousLinearMap.lsmul ℝ ℝ)
      (hhs i).2 b.integrable_normed.locallyIntegrable (hhs i).1
  obtain ⟨S, hSdef⟩ : ∃ S : Set E3, S = Metric.cthickening r K := ⟨_, rfl⟩
  have hSc : IsCompact S := by rw [hSdef]; exact hK.cthickening
  have hSclosed : IsClosed S := by rw [hSdef]; exact Metric.isClosed_cthickening
  have hSL₀ : S ⊆ Metric.cthickening δ₀ K := by
    rw [hSdef]; exact Metric.cthickening_mono (by linarith) K
  have hSV : S ⊆ V := hSL₀.trans hL₀V
  have hSW : S ⊆ W := hSL₀.trans hL₀W
  have hSL : S ⊆ Metric.cthickening (2 * r) K := by
    rw [hSdef]; exact Metric.cthickening_mono (by linarith) K
  have hρsupp : ∀ t : E3, b.normed MeasureTheory.volume t ≠ 0 → ‖t‖ < b.rOut := by
    intro t ht
    have h1 : t ∈ Function.support (b.normed MeasureTheory.volume) := ht
    rw [b.support_normed_eq] at h1
    exact mem_ball_zero_iff.mp h1
  
  have hw0 : ∀ i, ∀ z, z ∉ S → w i z = 0 := by
    intro i z hz
    simp only [hwdef]
    rw [MeasureTheory.convolution_lsmul]
    have hfun : (fun t => b.normed MeasureTheory.volume t • h i (z - t)) = fun _ => (0 : ℝ) := by
      funext t
      by_cases ht : b.normed MeasureTheory.volume t = 0
      · rw [ht, zero_smul]
      · have h1 := hρsupp t ht
        have h2 : z - t ∉ K := by
          intro hk
          apply hz
          rw [hSdef]
          apply Metric.mem_cthickening_of_dist_le z (z - t) r K hk
          rw [dist_eq_norm, sub_sub_cancel]; linarith
        rw [hh0 i _ h2, smul_zero]
    rw [hfun, MeasureTheory.integral_zero]
  have hdw0 : ∀ i y, y ∉ S → partialDeriv i (w i) y = 0 := by
    intro i y hy
    have hev : w i =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hSclosed.isOpen_compl.mem_nhds hy] with z hz
      exact hw0 i z hz
    unfold partialDeriv
    rw [hev.fderiv_eq]
    simp
  
  have hPSD : ∀ z ∈ V, ∀ v : Fin 3 → ℝ,
      0 ≤ ∑ i : Fin 3, ∑ j : Fin 3, G z i j * v i * v j := by
    intro z hz v
    have h1 := (hpd z hz).posSemidef.dotProduct_mulVec_nonneg v
    have e1 : star v ⬝ᵥ (G z).mulVec v = ∑ i : Fin 3, ∑ j : Fin 3, G z i j * v i * v j := by
      simp only [star_trivial, dotProduct, Matrix.mulVec, Finset.mul_sum]
      refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => ?_))
      ring
    linarith
  have hdetpos : ∀ z ∈ V, 0 < (G z).det := fun z hz => (hpd z hz).det_pos
  
  have hwq : ∀ z ∈ S, ∑ i : Fin 3, ∑ j : Fin 3, G z i j * w i z * w j z ≤
      (1 + θ) ^ 2 * (G z).det := by
    intro z hz
    have hzV := hSV hz
    have hzL₀ := hSL₀ hz
    have hd := hdetpos z hzV
    have hM : ∀ t : E3, ‖t‖ < b.rOut →
        ∑ i : Fin 3, ∑ j : Fin 3, G z i j * h i (z - t) * h j (z - t) ≤ (1 + θ) * (G z).det := by
      intro t ht
      by_cases hk : z - t ∈ K
      · have hyV : z - t ∈ V := hL₀V (hKL₀ hk)
        have hdy := hdetpos (z - t) hyV
        have hq : ∑ i : Fin 3, ∑ j : Fin 3, G (z - t) i j * h i (z - t) * h j (z - t) ≤
            (G (z - t)).det := by
          have e2 : ∑ i : Fin 3, ∑ j : Fin 3, G (z - t) i j * h i (z - t) * h j (z - t) =
              (G (z - t)).det * ∑ i : Fin 3, ∑ j : Fin 3,
                G (z - t) i j * Z (z - t) i * Z (z - t) j := by
            simp only [hhdef, Finset.mul_sum]
            refine Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => ?_))
            have hs := Real.mul_self_sqrt hdy.le
            linear_combination (G (z - t) i j * Z (z - t) i * Z (z - t) j) * hs
          rw [e2]
          exact mul_le_of_le_one_right hdy.le (hZn (z - t))
        refine hTR (z - t) (hKL₀ hk) z hzL₀ ?_ (fun i => h i (z - t)) hq
        rw [dist_eq_norm, sub_sub_cancel_left, norm_neg]; linarith
      · have h0 : ∀ i, h i (z - t) = 0 := fun i => hh0 i _ hk
        simp only [h0, mul_zero, Finset.sum_const_zero]
        exact mul_nonneg (by linarith) hd.le
    have key := moll_quad_avg_le (G z) (hPSD z hzV) b h (fun i => (hhs i).1.continuous)
      (fun i => (hhs i).2) z ((1 + θ) * (G z).det) hM
    have key' : ∑ i : Fin 3, ∑ j : Fin 3, G z i j * w i z * w j z ≤ (1 + θ) * (G z).det := by
      rw [hwdef]; exact key
    calc _ ≤ (1 + θ) * (G z).det := key'
      _ ≤ (1 + θ) ^ 2 * (G z).det := by
        nlinarith [mul_pos (mul_pos (by linarith : (0 : ℝ) < 1 + θ) hθ) hd]
  
  obtain ⟨Z', hZ's, hZ'c, hZ'S, hZ'n, ⟨C', hC'⟩, hID⟩ :=
    dens_field_of_smooth G V hV hG hpd S hSc hSV (1 + θ) (by linarith) w hws hw0 hwq
  
  have hli : MeasureTheory.LocallyIntegrableOn f W := by
    by_contra hcon
    have htop : dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ = ⊤ := by
      apply top_le_iff.1
      unfold dualVarG
      exact le_sup_of_le_left (le_iSup_of_le hcon le_rfl)
    rw [htop] at hfin
    exact lt_irrefl _ hfin
  obtain ⟨g, hgdef⟩ : ∃ g : E3 → ℝ, g = (Metric.cthickening (2 * r) K).indicator f := ⟨_, rfl⟩
  have hg : MeasureTheory.Integrable g := by
    rw [hgdef]
    exact (hli.integrableOn_compact_subset hLW hK.cthickening).integrable_indicator
      Metric.isClosed_cthickening.measurableSet
  obtain ⟨u, hudef⟩ : ∃ u : E3 → ℝ, u = MeasureTheory.convolution
      (b.normed MeasureTheory.volume) g (ContinuousLinearMap.lsmul ℝ ℝ)
      MeasureTheory.volume := ⟨_, rfl⟩
  rw [← hgdef, ← hudef]
  have hu_int : MeasureTheory.Integrable u := by
    rw [hudef]
    exact MeasureTheory.Integrable.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ)
      b.integrable_normed hg
  
  have hadm : (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ Z' y) ∧ HasCompactSupport Z' ∧
      tsupport Z' ⊆ W ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Z' y i * Z' y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G Z' y| ≤ C :=
    ⟨fun y _ => hZ's y, hZ'c, hZ'S.trans hSW, hZ'n, C', hC'⟩
  have hle : ENNReal.ofReal (∫ y, f y * sepDensDiv G Z' y) ≤
      dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ := by
    unfold dualVarG
    refine le_sup_of_le_right (le_iSup₂_of_le Z' hadm (le_of_eq ?_))
    simp
  have hfT : ∫ y, f y * sepDensDiv G Z' y ≤ (dualVarG G (fun _ _ => (0 : ℝ)) f W ∅).toReal :=
    (ENNReal.ofReal_le_iff_le_toReal hfin.ne).1 hle
  
  have hk_cont : ∀ i, Continuous (partialDeriv i (h i)) := fun i =>
    ((hhs i).1.continuous_fderiv (by simp)).clm_apply continuous_const
  have hk_supp : ∀ i, HasCompactSupport (partialDeriv i (h i)) := fun i =>
    (hhs i).2.fderiv_apply ℝ (e i)
  have hkb : ∀ i, ∃ C, ∀ y, ‖partialDeriv i (h i) y‖ ≤ C := fun i =>
    (hk_cont i).bounded_above_of_compact_support (hk_supp i)
  have hdw_cont : ∀ i, Continuous (partialDeriv i (w i)) := fun i =>
    ((hws i).continuous_fderiv (by simp)).clm_apply continuous_const
  have hdw_supp : ∀ i, HasCompactSupport (partialDeriv i (w i)) := fun i =>
    HasCompactSupport.intro hSc (fun y hy => hdw0 i y hy)
  have hdwb : ∀ i, ∃ C, ∀ y, ‖partialDeriv i (w i) y‖ ≤ C := fun i =>
    (hdw_cont i).bounded_above_of_compact_support (hdw_supp i)
  have hdw : ∀ i y, partialDeriv i (w i) y = MeasureTheory.convolution
      (b.normed MeasureTheory.volume) (partialDeriv i (h i)) (ContinuousLinearMap.lsmul ℝ ℝ)
      MeasureTheory.volume y := by
    intro i y; simp only [hwdef]
    have hd := (hhs i).2.hasFDerivAt_convolution_right (L := ContinuousLinearMap.lsmul ℝ ℝ)
      (μ := MeasureTheory.volume) b.integrable_normed.locallyIntegrable
      ((hhs i).1.of_le (by simp)) y
    unfold partialDeriv
    rw [hd.fderiv, MeasureTheory.convolution_def, MeasureTheory.convolution_lsmul]
    have hint := (HasCompactSupport.fderiv ℝ (hhs i).2).convolutionExists_right
      (μ := MeasureTheory.volume)
      (ContinuousLinearMap.precompR E3 (ContinuousLinearMap.lsmul ℝ ℝ))
      (b.integrable_normed (μ := MeasureTheory.volume)).locallyIntegrable
      ((hhs i).1.continuous_fderiv (by simp)) y
    rw [ContinuousLinearMap.integral_apply hint]
    congr 1
  have hdZ : ∀ y, sepDensDiv G Z y = ∑ i : Fin 3, partialDeriv i (h i) y := by
    intro y; rw [hhdef]; rfl
  have hsum : ∀ y, ∑ i : Fin 3, partialDeriv i (w i) y = (1 + θ) * sepDensDiv G Z' y := by
    intro y
    rw [hID y, ← mul_assoc, mul_inv_cancel₀ (by linarith : (0 : ℝ) < 1 + θ).ne', one_mul]
  have hgf : ∀ y, g y * sepDensDiv G Z' y = f y * sepDensDiv G Z' y := by
    intro y
    by_cases hy : y ∈ Metric.cthickening (2 * r) K
    · rw [hgdef, Set.indicator_of_mem hy]
    · have hyS : y ∉ S := fun h' => hy (hSL h')
      have h0 : sepDensDiv G Z' y = 0 := by
        rw [hID y, Finset.sum_eq_zero (fun i _ => hdw0 i y hyS), mul_zero]
      rw [h0, mul_zero, mul_zero]
  calc ∫ y, u y * sepDensDiv G Z y
      = ∑ i : Fin 3, ∫ y, u y * partialDeriv i (h i) y := by
        simp_rw [hdZ, Finset.mul_sum]
        rw [MeasureTheory.integral_finset_sum]
        intro i _
        obtain ⟨C, hC⟩ := hkb i
        exact hu_int.mul_bdd (hk_cont i).aestronglyMeasurable (Filter.Eventually.of_forall hC)
    _ = ∑ i : Fin 3, ∫ y, g y * partialDeriv i (w i) y := by
        refine Finset.sum_congr rfl (fun i _ => ?_)
        rw [hudef, moll_integral_adjoint b g hg (partialDeriv i (h i)) (hk_cont i) (hk_supp i)]
        congr 1
        funext y
        rw [hdw i y]
    _ = ∫ y, g y * ∑ i : Fin 3, partialDeriv i (w i) y := by
        simp_rw [Finset.mul_sum]
        rw [MeasureTheory.integral_finset_sum]
        intro i _
        obtain ⟨C, hC⟩ := hdwb i
        exact hg.mul_bdd (hdw_cont i).aestronglyMeasurable (Filter.Eventually.of_forall hC)
    _ = (1 + θ) * ∫ y, f y * sepDensDiv G Z' y := by
        rw [← MeasureTheory.integral_const_mul]
        congr 1
        funext y
        rw [hsum y, ← hgf y]
        ring
    _ ≤ (1 + θ) * (dualVarG G (fun _ _ => (0 : ℝ)) f W ∅).toReal :=
        mul_le_mul_of_nonneg_left hfT (by linarith)

theorem dualVarG_zero_min_max_split (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3)
    (hV : IsOpen V) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ V, (G y).PosDef)
    (W : Set E3) (hW : IsOpen W) (hWc : IsCompact (closure W)) (hWV : closure W ⊆ V)
    (f : E3 → ℝ) (s : ℝ) :
    dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (f y) s) W ∅ +
        dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (f y) s - s) W ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ :=
by
  classical
  have hWV' : W ⊆ V := subset_closure.trans hWV
  rcases eq_or_ne (dualVarG G (fun _ _ => (0 : ℝ)) f W ∅) ⊤ with htop | hne
  · rw [htop]; exact le_top
  have hfin : dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ < ⊤ := lt_top_iff_ne_top.2 hne
  obtain ⟨T, hT⟩ : ∃ T : ℝ, T = (dualVarG G (fun _ _ => (0 : ℝ)) f W ∅).toReal := ⟨_, rfl⟩
  have hT0 : 0 ≤ T := by rw [hT]; exact ENNReal.toReal_nonneg
  
  have hli : LocallyIntegrableOn f W := by
    by_contra h
    apply hne
    apply top_le_iff.1
    unfold dualVarG
    exact le_sup_of_le_left (le_iSup_of_le h le_rfl)
  have hconst : ∀ (k : Set E3) (c : ℝ), IsCompact k → IntegrableOn (fun _ => c) k :=
    fun k c hk => ContinuousOn.integrableOn_compact hk continuousOn_const
  have hlimin : LocallyIntegrableOn (fun y => min (f y) s) W := by
    rw [locallyIntegrableOn_iff hW.isLocallyClosed]
    intro k hkW hk
    exact Integrable.inf (hli.integrableOn_compact_subset hkW hk) (hconst k s hk)
  have hlimax : LocallyIntegrableOn (fun y => max (f y) s - s) W := by
    rw [locallyIntegrableOn_iff hW.isLocallyClosed]
    intro k hkW hk
    exact Integrable.sub (Integrable.sup (hli.integrableOn_compact_subset hkW hk) (hconst k s hk))
      (hconst k s hk)
  have hup : ∀ v : E3 → ℝ, LocallyIntegrableOn v W →
      dualVarG G (fun _ _ => (0 : ℝ)) v W ∅ ≤
        ⨆ (X : E3 → E3) (_ : (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
            tsupport X ⊆ W ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
            ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C),
          ENNReal.ofReal (∫ y, v y * sepDensDiv G X y) := by
    intro v hv
    unfold dualVarG
    refine sup_le (iSup_le fun h => absurd hv h)
      (iSup₂_le fun X hX => le_iSup₂_of_le X hX (le_of_eq ?_))
    simp
  
  have hd0 : ∀ y, sepDensDiv G (fun _ => (0 : E3)) y = 0 := by
    intro y; simp [sepDensDiv, partialDeriv]
  have hadm0 : (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ (fun _ : E3 => (0 : E3)) y) ∧
      HasCompactSupport (fun _ : E3 => (0 : E3)) ∧ tsupport (fun _ : E3 => (0 : E3)) ⊆ W ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
        G y i j * (fun _ : E3 => (0 : E3)) y i * (fun _ : E3 => (0 : E3)) y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G (fun _ : E3 => (0 : E3)) y| ≤ C := by
    refine ⟨fun y _ => contDiffAt_const, HasCompactSupport.zero, ?_, fun y => by simp,
      0, fun y => by rw [hd0]; simp⟩
    show tsupport (0 : E3 → E3) ⊆ W
    rw [tsupport_zero]
    exact Set.empty_subset _
  
  have core : ∀ X Y : E3 → E3,
      ((∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
            tsupport X ⊆ W ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
            ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) →
      ((∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ Y y) ∧ HasCompactSupport Y ∧
            tsupport Y ⊆ W ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y y i * Y y j ≤ 1) ∧
            ∃ C : ℝ, ∀ y, |sepDensDiv G Y y| ≤ C) →
      (∫ y, min (f y) s * sepDensDiv G X y) + (∫ y, (max (f y) s - s) * sepDensDiv G Y y) ≤ T := by
    rintro X Y ⟨hX1, hXc, hXW, hXn, CX, hCX⟩ ⟨hY1, hYc, hYW, hYn, CY, hCY⟩
    have hXs : ContDiff ℝ ∞ X := contDiff_iff_contDiffAt.2 (fun y => hX1 y (Set.notMem_empty y))
    have hYs : ContDiff ℝ ∞ Y := contDiff_iff_contDiffAt.2 (fun y => hY1 y (Set.notMem_empty y))
    have hCX0 : 0 ≤ CX := (abs_nonneg _).trans (hCX 0)
    have hCY0 : 0 ≤ CY := (abs_nonneg _).trans (hCY 0)
    obtain ⟨K, hKdef⟩ : ∃ K : Set E3, K = tsupport X ∪ tsupport Y := ⟨_, rfl⟩
    have hK : IsCompact K := by rw [hKdef]; exact hXc.isCompact.union hYc.isCompact
    have hKW : K ⊆ W := by rw [hKdef]; exact Set.union_subset hXW hYW
    have hXK : tsupport X ⊆ K := by rw [hKdef]; exact Set.subset_union_left
    have hYK : tsupport Y ⊆ K := by rw [hKdef]; exact Set.subset_union_right
    obtain ⟨μK, hμK⟩ : ∃ μK : ℝ, μK = volume.real K := ⟨_, rfl⟩
    have hμK0 : 0 ≤ μK := by rw [hμK]; exact measureReal_nonneg
    have hvolX : volume.real (tsupport X) ≤ μK := by
      rw [hμK]; exact measureReal_mono hXK hK.measure_lt_top.ne
    have hvolY : volume.real (tsupport Y) ≤ μK := by
      rw [hμK]; exact measureReal_mono hYK hK.measure_lt_top.ne
    have hfK : IntegrableOn f K := hli.integrableOn_compact_subset hKW hK
    have hminK : IntegrableOn (fun y => min (f y) s) K := Integrable.inf hfK (hconst K s hK)
    have hmaxK : IntegrableOn (fun y => max (f y) s - s) K :=
      Integrable.sub (Integrable.sup hfK (hconst K s hK)) (hconst K s hK)
    have claim : ∀ η : ℝ, 0 < η →
        (∫ y, min (f y) s * sepDensDiv G X y) + (∫ y, (max (f y) s - s) * sepDensDiv G Y y) ≤
          (1 + η) * T + (CX * (η + η * μK) + CY * (η + η * μK)) := by
      intro η hη
      
      obtain ⟨r, hr, hLW, hmoll⟩ :=
        dualVarG_moll_pairing_le G V hV hG hsymm hpd W hW hWV' K hK hKW η hη
      have hLc : IsCompact (Metric.cthickening (2 * r) K) := hK.cthickening
      have hKL : K ⊆ Metric.cthickening (2 * r) K := Metric.self_subset_cthickening K
      obtain ⟨g, hgdef⟩ : ∃ g : E3 → ℝ, g = (Metric.cthickening (2 * r) K).indicator f :=
        ⟨_, rfl⟩
      have hg : Integrable g := by
        rw [hgdef]
        exact (hli.integrableOn_compact_subset hLW hLc).integrable_indicator
          Metric.isClosed_cthickening.measurableSet
      have hgK : ∀ y ∈ K, g y = f y := by
        intro y hy; rw [hgdef]; exact Set.indicator_of_mem (hKL hy) f
      
      obtain ⟨ε₀, hε₀, hL1⟩ := moll_L1_tendsto g hg η hη
      have hm0 : 0 < min r ε₀ := lt_min hr hε₀
      let b : ContDiffBump (0 : E3) := ⟨min r ε₀ / 2, min r ε₀, half_pos hm0, half_lt_self hm0⟩
      have hbr : b.rOut ≤ r := min_le_left r ε₀
      have hbe : b.rOut ≤ ε₀ := min_le_right r ε₀
      obtain ⟨u, hudef⟩ : ∃ u : E3 → ℝ, u = MeasureTheory.convolution
          (b.normed MeasureTheory.volume) g (ContinuousLinearMap.lsmul ℝ ℝ)
          MeasureTheory.volume := ⟨_, rfl⟩
      have hu : ContDiff ℝ ∞ u := by
        rw [hudef]
        exact HasCompactSupport.contDiff_convolution_left (ContinuousLinearMap.lsmul ℝ ℝ)
          b.hasCompactSupport_normed b.contDiff_normed hg.locallyIntegrable
      have hui : Integrable u := by
        rw [hudef]
        exact Integrable.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ)
          b.integrable_normed hg
      have hL1' : ∫ y, |u y - g y| ≤ η := by rw [hudef]; exact hL1 b hbe
      have hdiff : Integrable (fun y => |u y - g y|) := (hui.sub hg).abs
      have hdiffint : ∀ S : Set E3, ∫ y in S, |u y - g y| ≤ η := fun S =>
        (setIntegral_le_integral hdiff (Filter.Eventually.of_forall fun y => abs_nonneg _)).trans
          hL1'
      
      obtain ⟨φ, hφdef⟩ : ∃ φ : ℝ → ℝ,
          φ = fun t => ((t + s) - Real.sqrt ((t - s) ^ 2 + η ^ 2)) / 2 := ⟨_, rfl⟩
      obtain ⟨hφs, hφd, hφe⟩ := smooth_min_profile s η hη
      rw [← hφdef] at hφs hφd
      have hφe' : ∀ t, |φ t - min t s| ≤ η ∧ |(t - φ t) - (max t s - s)| ≤ η := by
        intro t; rw [hφdef]; exact hφe t
      
      obtain ⟨Z, hZs, hZc, hZsub, hZn, hZid⟩ :=
        dualSplit_smooth_pairing G V hV hG hsymm hpd u hu φ hφs hφd X Y hXs hXc
          (hXW.trans hWV') hXn hYs hYc (hYW.trans hWV') hYn
      have hZK : tsupport Z ⊆ K := by rw [hKdef]; exact hZsub
      
      have hmo : ∫ y, u y * sepDensDiv G Z y ≤ (1 + η) * T := by
        rw [hudef, hgdef, hT]; exact hmoll b hbr f hfin Z hZs hZK hZn
      
      have hptX : ∀ y ∈ tsupport X, |min (f y) s - φ (u y)| ≤ |u y - g y| + η := by
        intro y hy
        have hgy := hgK y (hXK hy)
        have h1 : |min (f y) s - min (u y) s| ≤ |u y - g y| := by
          have h := abs_min_sub_min_le_max (f y) s (u y) s
          rw [sub_self, abs_zero, max_eq_left (abs_nonneg (f y - u y))] at h
          rw [hgy, abs_sub_comm (u y) (f y)]; exact h
        have h2 := (hφe' (u y)).1
        calc |min (f y) s - φ (u y)|
            ≤ |min (f y) s - min (u y) s| + |min (u y) s - φ (u y)| := abs_sub_le _ _ _
          _ ≤ |u y - g y| + η := add_le_add h1 (by rw [abs_sub_comm]; exact h2)
      have hptY : ∀ y ∈ tsupport Y,
          |(max (f y) s - s) - (u y - φ (u y))| ≤ |u y - g y| + η := by
        intro y hy
        have hgy := hgK y (hYK hy)
        have h3 : |max (f y) s - max (u y) s| ≤ |u y - g y| := by
          have h := abs_max_sub_max_le_max (f y) s (u y) s
          rw [sub_self, abs_zero, max_eq_left (abs_nonneg (f y - u y))] at h
          rw [hgy, abs_sub_comm (u y) (f y)]; exact h
        have h4 := (hφe' (u y)).2
        have e : (max (f y) s - s) - (max (u y) s - s) = max (f y) s - max (u y) s := by ring
        calc |(max (f y) s - s) - (u y - φ (u y))|
            ≤ |(max (f y) s - s) - (max (u y) s - s)| +
                |(max (u y) s - s) - (u y - φ (u y))| := abs_sub_le _ _ _
          _ ≤ |u y - g y| + η := add_le_add (by rw [e]; exact h3) (by rw [abs_sub_comm]; exact h4)
      
      have hφuX : IntegrableOn (fun y => φ (u y)) (tsupport X) :=
        ContinuousOn.integrableOn_compact hXc.isCompact (hφs.continuous.comp hu.continuous).continuousOn
      have hφuY : IntegrableOn (fun y => u y - φ (u y)) (tsupport Y) :=
        ContinuousOn.integrableOn_compact hYc.isCompact
          (hu.continuous.sub (hφs.continuous.comp hu.continuous)).continuousOn
      have eX : (∫ y, min (f y) s * sepDensDiv G X y) - ∫ y, φ (u y) * sepDensDiv G X y ≤
          CX * (η + η * μK) := by
        have e1 : (∫ y, min (f y) s * sepDensDiv G X y) - ∫ y, φ (u y) * sepDensDiv G X y ≤
            CX * ∫ y in tsupport X, |min (f y) s - φ (u y)| :=
          dualPair_sub_abs_le G X CX hCX hXc (fun y => min (f y) s) (fun y => φ (u y))
            (hminK.mono_set hXK) hφuX
        refine e1.trans (mul_le_mul_of_nonneg_left ?_ hCX0)
        have i1 : IntegrableOn (fun y => |u y - g y|) (tsupport X) := hdiff.integrableOn
        have i2 : IntegrableOn (fun _ => η) (tsupport X) := hconst _ η hXc.isCompact
        calc ∫ y in tsupport X, |min (f y) s - φ (u y)|
            ≤ ∫ y in tsupport X, (|u y - g y| + η) :=
              setIntegral_mono_on (Integrable.abs (Integrable.sub (hminK.mono_set hXK) hφuX))
                (Integrable.add i1 i2) (isClosed_tsupport X).measurableSet hptX
          _ = (∫ y in tsupport X, |u y - g y|) + volume.real (tsupport X) * η := by
              rw [integral_add i1 i2, setIntegral_const, smul_eq_mul]
          _ ≤ η + μK * η := add_le_add (hdiffint _) (mul_le_mul_of_nonneg_right hvolX hη.le)
          _ = η + η * μK := by ring
      have eY : (∫ y, (max (f y) s - s) * sepDensDiv G Y y) -
          ∫ y, (u y - φ (u y)) * sepDensDiv G Y y ≤ CY * (η + η * μK) := by
        have e1 : (∫ y, (max (f y) s - s) * sepDensDiv G Y y) -
            ∫ y, (u y - φ (u y)) * sepDensDiv G Y y ≤
            CY * ∫ y in tsupport Y, |(max (f y) s - s) - (u y - φ (u y))| :=
          dualPair_sub_abs_le G Y CY hCY hYc (fun y => max (f y) s - s) (fun y => u y - φ (u y))
            (hmaxK.mono_set hYK) hφuY
        refine e1.trans (mul_le_mul_of_nonneg_left ?_ hCY0)
        have i1 : IntegrableOn (fun y => |u y - g y|) (tsupport Y) := hdiff.integrableOn
        have i2 : IntegrableOn (fun _ => η) (tsupport Y) := hconst _ η hYc.isCompact
        calc ∫ y in tsupport Y, |(max (f y) s - s) - (u y - φ (u y))|
            ≤ ∫ y in tsupport Y, (|u y - g y| + η) :=
              setIntegral_mono_on (Integrable.abs (Integrable.sub (hmaxK.mono_set hYK) hφuY))
                (Integrable.add i1 i2) (isClosed_tsupport Y).measurableSet hptY
          _ = (∫ y in tsupport Y, |u y - g y|) + volume.real (tsupport Y) * η := by
              rw [integral_add i1 i2, setIntegral_const, smul_eq_mul]
          _ ≤ η + μK * η := add_le_add (hdiffint _) (mul_le_mul_of_nonneg_right hvolY hη.le)
          _ = η + η * μK := by ring
      
      linarith [eX, eY, hZid, hmo]
    refine le_of_forall_pos_le_add fun ε hε => ?_
    obtain ⟨Mc, hMc⟩ : ∃ Mc : ℝ, Mc = T + (CX + CY) * (1 + μK) := ⟨_, rfl⟩
    have hM0 : 0 ≤ Mc := by
      rw [hMc]
      have := mul_nonneg (add_nonneg hCX0 hCY0) (by linarith : (0 : ℝ) ≤ 1 + μK)
      linarith
    have hM1 : 0 < Mc + 1 := by linarith
    have h1 := claim (ε / (Mc + 1)) (div_pos hε hM1)
    have h2 : (1 + ε / (Mc + 1)) * T + (CX * (ε / (Mc + 1) + ε / (Mc + 1) * μK) +
        CY * (ε / (Mc + 1) + ε / (Mc + 1) * μK)) = T + ε / (Mc + 1) * Mc := by
      rw [hMc]; ring
    have h3 : ε / (Mc + 1) * Mc ≤ ε := by
      rw [div_mul_eq_mul_div, div_le_iff₀ hM1]; nlinarith
    linarith
  
  have hmax0 : ∀ x : ℝ, ENNReal.ofReal x = ENNReal.ofReal (max x 0) := by
    intro x
    rcases le_total 0 x with h | h
    · rw [max_eq_left h]
    · rw [max_eq_right h, ENNReal.ofReal_of_nonpos h, ENNReal.ofReal_zero]
  have hA0 : ∫ y, min (f y) s * sepDensDiv G (fun _ => (0 : E3)) y = 0 := by simp [hd0]
  have hB0 : ∫ y, (max (f y) s - s) * sepDensDiv G (fun _ => (0 : E3)) y = 0 := by simp [hd0]
  calc dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (f y) s) W ∅ +
        dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (f y) s - s) W ∅
      ≤ (⨆ (X : E3 → E3) (_ : (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X y) ∧
            HasCompactSupport X ∧ tsupport X ⊆ W ∧
            (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
            ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C),
          ENNReal.ofReal (∫ y, min (f y) s * sepDensDiv G X y)) +
        (⨆ (X : E3 → E3) (_ : (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X y) ∧
            HasCompactSupport X ∧ tsupport X ⊆ W ∧
            (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
            ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C),
          ENNReal.ofReal (∫ y, (max (f y) s - s) * sepDensDiv G X y)) :=
        add_le_add (hup _ hlimin) (hup _ hlimax)
    _ ≤ dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ := by
        refine ENNReal.biSup_add_biSup_le' ⟨fun _ => (0 : E3), hadm0⟩ ⟨fun _ => (0 : E3), hadm0⟩
          (fun X hX Y hY => ?_)
        obtain ⟨X', hX', hAX⟩ : ∃ X' : E3 → E3,
            ((∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X' y) ∧ HasCompactSupport X' ∧
              tsupport X' ⊆ W ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X' y i * X' y j ≤ 1) ∧
              ∃ C : ℝ, ∀ y, |sepDensDiv G X' y| ≤ C) ∧
            ∫ y, min (f y) s * sepDensDiv G X' y =
              max (∫ y, min (f y) s * sepDensDiv G X y) 0 := by
          by_cases ha : 0 ≤ ∫ y, min (f y) s * sepDensDiv G X y
          · exact ⟨X, hX, (max_eq_left ha).symm⟩
          · exact ⟨fun _ => (0 : E3), hadm0, by rw [hA0, max_eq_right (not_le.1 ha).le]⟩
        obtain ⟨Y', hY', hBY⟩ : ∃ Y' : E3 → E3,
            ((∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ Y' y) ∧ HasCompactSupport Y' ∧
              tsupport Y' ⊆ W ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y' y i * Y' y j ≤ 1) ∧
              ∃ C : ℝ, ∀ y, |sepDensDiv G Y' y| ≤ C) ∧
            ∫ y, (max (f y) s - s) * sepDensDiv G Y' y =
              max (∫ y, (max (f y) s - s) * sepDensDiv G Y y) 0 := by
          by_cases hb : 0 ≤ ∫ y, (max (f y) s - s) * sepDensDiv G Y y
          · exact ⟨Y, hY, (max_eq_left hb).symm⟩
          · exact ⟨fun _ => (0 : E3), hadm0, by rw [hB0, max_eq_right (not_le.1 hb).le]⟩
        have hc := core X' Y' hX' hY'
        rw [hAX, hBY] at hc
        show ENNReal.ofReal (∫ y, min (f y) s * sepDensDiv G X y) +
            ENNReal.ofReal (∫ y, (max (f y) s - s) * sepDensDiv G Y y) ≤ _
        rw [hmax0 (∫ y, min (f y) s * sepDensDiv G X y),
          hmax0 (∫ y, (max (f y) s - s) * sepDensDiv G Y y),
          ← ENNReal.ofReal_add (le_max_right _ _) (le_max_right _ _),
          ← ENNReal.ofReal_toReal hne, ← hT]
        exact ENNReal.ofReal_le_ofReal hc

theorem dual_pair_piece_le [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (n : M → ℤ) (U : Set M) (hU : IsOpen U) (p : M) (ψ : M → ℝ)
    (hψ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ) (hψc : IsCompact (tsupport ψ))
    (hψs : tsupport ψ ⊆ U ∩ (chartAt E3 p).source) (c : ℝ) (hc : 0 < c) (hψb : ∀ x, |ψ x| ≤ c)
    (V₁ V₂ : M → E3) (hV₁ : calSmoothField V₁) (hV₂ : calSmoothField V₂)
    (hV₁1 : ∀ x, g.g x (V₁ x) (V₁ x) ≤ 1) (hV₂1 : ∀ x, g.g x (V₂ x) (V₂ x) ≤ 1) :
    ENNReal.ofReal ((∫ y, ((max (n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₁) y) +
        ∫ y, ((max (-n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₂) y) ≤
      ENNReal.ofReal c * dualRiemVar g (fun _ => (1 : ℂ)) (fun x => (n x : ℝ)) U ∅ :=
by
  classical
  have hψs' : tsupport ψ ⊆ (chartAt E3 p).source := hψs.trans Set.inter_subset_right
  have hKc : IsCompact ((chartAt E3 p) '' tsupport ψ) :=
    hψc.image_of_continuousOn ((chartAt E3 p).continuousOn.mono hψs')
  have hKcl : IsClosed ((chartAt E3 p) '' tsupport ψ) := hKc.isClosed
  have hKt : (chartAt E3 p) '' tsupport ψ ⊆ (chartAt E3 p).target := by
    rintro _ ⟨x, hx, rfl⟩
    exact (chartAt E3 p).map_source (hψs' hx)
  
  have hexp : ∀ (L : E3 →L[ℝ] E3) (B : E3 →L[ℝ] E3 →L[ℝ] ℝ) (a : E3),
      ∑ i : Fin 3, ∑ j : Fin 3, B (L (e i)) (L (e j)) * a i * a j = B (L a) (L a) := by
    intro L B a
    have ha : a = a 0 • e 0 + a 1 • e 1 + a 2 • e 2 := by
      ext i; fin_cases i <;> simp [e, EuclideanSpace.single_apply]
    conv_rhs => rw [ha]
    simp only [map_add, map_smul, ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply,
      smul_eq_mul, Fin.sum_univ_three]
    ring
  
  have hwit : ∀ (V : M → E3), calSmoothField V → (∀ x, g.g x (V x) (V x) ≤ 1) →
      ∀ (a : ℝ), |a| * c ≤ 1 → ∀ (W : Set E3), (chartAt E3 p) '' tsupport ψ ⊆ W →
      ∀ (f : E3 → ℝ),
      ENNReal.ofReal (a * ∫ y, f y * sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V) y) ≤
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) f W ∅ := by
    intro V hV hV1 a ha W hW f
    have hval : ∀ y ∈ (chartAt E3 p).target, calPiece p ψ V y =
        (ψ ((chartAt E3 p).symm y) • mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p)
          ((chartAt E3 p).symm y) (V ((chartAt E3 p).symm y)) : E3) := by
      intro y hy
      unfold calPiece
      rw [Set.indicator_of_mem hy]
    have hval0 : ∀ y ∉ (chartAt E3 p).target, calPiece p ψ V y = 0 := by
      intro y hy
      unfold calPiece
      rw [Set.indicator_of_notMem hy]
    have hZ : ∀ y ∉ (chartAt E3 p) '' tsupport ψ, calPiece p ψ V y = 0 := by
      intro y hy
      by_cases hyt : y ∈ (chartAt E3 p).target
      · have hx : (chartAt E3 p).symm y ∉ tsupport ψ := fun hx =>
          hy ⟨_, hx, (chartAt E3 p).right_inv hyt⟩
        rw [hval y hyt, image_eq_zero_of_notMem_tsupport hx, zero_smul]
      · exact hval0 y hyt
    have hCon : ContDiffOn ℝ ∞ (calPiece p ψ V) (chartAt E3 p).target := by
      have h1 : ContDiffOn ℝ ∞ (fun y => ψ ((chartAt E3 p).symm y)) (chartAt E3 p).target :=
        contMDiffOn_iff_contDiffOn.mp (hψ.comp_contMDiffOn contMDiffOn_chart_symm)
      exact (h1.smul (hV p)).congr hval
    have hC : ContDiff ℝ ∞ (calPiece p ψ V) := by
      rw [contDiff_iff_contDiffAt]
      intro y
      by_cases hy : y ∈ (chartAt E3 p) '' tsupport ψ
      · exact hCon.contDiffAt ((chartAt E3 p).open_target.mem_nhds (hKt hy))
      · have hev : calPiece p ψ V =ᶠ[𝓝 y] fun _ => (0 : E3) := by
          filter_upwards [hKcl.isOpen_compl.mem_nhds hy] with z hz using hZ z hz
        exact contDiffAt_const.congr_of_eventuallyEq hev
    have hHC : HasCompactSupport (calPiece p ψ V) := HasCompactSupport.intro hKc hZ
    have hT : tsupport (calPiece p ψ V) ⊆ (chartAt E3 p) '' tsupport ψ :=
      closure_minimal (fun y hy => by_contra fun h => hy (hZ y h)) hKcl
    
    set X : E3 → E3 := fun z => a • calPiece p ψ V z with hXdef
    have hXC : ContDiff ℝ ∞ X := hC.const_smul a
    have hXK : HasCompactSupport X := hHC.mono (fun y hy h => hy (by simp [hXdef, h]))
    have hXT : tsupport X ⊆ W :=
      (tsupport_smul_subset_right (fun _ => a) (calPiece p ψ V)).trans (hT.trans hW)
    have hXN : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
        g.coeff (chartAt E3 p).symm y i j * X y i * X y j ≤ 1 := by
      intro y
      by_cases hy : y ∈ (chartAt E3 p).target
      · have hxs : (chartAt E3 p).symm y ∈ (chartAt E3 p).source :=
          (chartAt E3 p).map_target hy
        have hchain : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p) ((chartAt E3 p).symm y) w) = w := by
          intro w
          have h := (mdifferentiable_chart (I := 𝓘(ℝ, E3)) p).symm_comp_deriv hxs
          rw [(chartAt E3 p).right_inv hy] at h
          exact DFunLike.congr_fun h w
        have hXy : X y = (a * ψ ((chartAt E3 p).symm y)) • mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3)
            (chartAt E3 p) ((chartAt E3 p).symm y) (V ((chartAt E3 p).symm y)) := by
          simp only [hXdef, hval y hy, smul_smul]
        have hsum : ∑ i : Fin 3, ∑ j : Fin 3,
            g.coeff (chartAt E3 p).symm y i j * X y i * X y j =
            g.g ((chartAt E3 p).symm y) (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y (X y))
              (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 p).symm y (X y)) :=
          hexp _ _ _
        rw [hsum, hXy]
        simp only [map_smul, hchain, ContinuousLinearMap.smul_apply, smul_eq_mul]
        have h1 : |a * ψ ((chartAt E3 p).symm y)| ≤ 1 := by
          rw [abs_mul]
          calc |a| * |ψ ((chartAt E3 p).symm y)| ≤ |a| * c :=
                mul_le_mul_of_nonneg_left (hψb _) (abs_nonneg a)
            _ ≤ 1 := ha
        have h2 : (a * ψ ((chartAt E3 p).symm y)) ^ 2 ≤ 1 := by
          rw [← sq_abs]; nlinarith [abs_nonneg (a * ψ ((chartAt E3 p).symm y))]
        have h3 := hV1 ((chartAt E3 p).symm y)
        have h4 : 0 ≤ (a * ψ ((chartAt E3 p).symm y)) ^ 2 := sq_nonneg _
        nlinarith [mul_le_mul_of_nonneg_left h3 h4]
      · have hX0 : X y = 0 := by simp [hXdef, hval0 y hy]
        simp [hX0]
    
    have hdiv : ∀ y, sepDensDiv (g.coeff (chartAt E3 p).symm) X y =
        a * sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V) y := by
      intro y
      unfold sepDensDiv partialDeriv
      rw [Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      have hf : (fun z => Real.sqrt (g.coeff (chartAt E3 p).symm z).det * X z i) =
          a • (fun z => Real.sqrt (g.coeff (chartAt E3 p).symm z).det * calPiece p ψ V z i) := by
        funext z; simp only [hXdef, Pi.smul_apply, PiLp.smul_apply, smul_eq_mul]; ring
      rw [hf, fderiv_const_smul_of_field]
      simp
    
    obtain ⟨hreg, -⟩ := calPiece_regular g p ψ hψ hψc hψs' V hV
    have hFcont : Continuous (sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V)) := by
      unfold sepDensDiv partialDeriv
      refine continuous_finset_sum Finset.univ fun i _ => ?_
      exact ((hreg i).continuous_fderiv (by simp)).clm_apply continuous_const
    have hF0 : ∀ y ∉ (chartAt E3 p) '' tsupport ψ,
        sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V) y = 0 := by
      intro y hy
      unfold sepDensDiv partialDeriv
      refine Finset.sum_eq_zero fun i _ => ?_
      have hev : (fun z => Real.sqrt (g.coeff (chartAt E3 p).symm z).det * calPiece p ψ V z i)
          =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
        filter_upwards [hKcl.isOpen_compl.mem_nhds hy] with z hz
        rw [hZ z hz]; simp
      rw [hev.fderiv_eq]; simp
    obtain ⟨C, hCb⟩ := (HasCompactSupport.intro hKc hF0).exists_bound_of_continuous hFcont
    have hbd : ∃ C' : ℝ, ∀ y, |sepDensDiv (g.coeff (chartAt E3 p).symm) X y| ≤ C' := by
      refine ⟨|a| * C, fun y => ?_⟩
      rw [hdiv y, abs_mul]
      have := hCb y
      rw [Real.norm_eq_abs] at this
      exact mul_le_mul_of_nonneg_left this (abs_nonneg a)
    
    unfold dualVarG
    refine le_sup_of_le_right (le_iSup₂_of_le X ⟨fun y _ => hXC.contDiffAt, hXK, hXT, hXN, hbd⟩ ?_)
    apply le_of_eq
    congr 1
    rw [← MeasureTheory.integral_const_mul]
    refine MeasureTheory.integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
    simp only [zero_mul, Finset.sum_const_zero, mul_zero, add_zero, hdiv y]
    ring
  
  have hV'o : IsOpen ((chartAt E3 p) '' (U ∩ (chartAt E3 p).source)) :=
    (chartAt E3 p).isOpen_image_of_subset_source (hU.inter (chartAt E3 p).open_source)
      Set.inter_subset_right
  have hKV : (chartAt E3 p) '' tsupport ψ ⊆ (chartAt E3 p) '' (U ∩ (chartAt E3 p).source) :=
    Set.image_mono hψs
  have hV't : (chartAt E3 p) '' (U ∩ (chartAt E3 p).source) ⊆ (chartAt E3 p).target := by
    rintro _ ⟨x, hx, rfl⟩
    exact (chartAt E3 p).map_source hx.2
  obtain ⟨W, hWo, hKW, hWcl, hWc⟩ := exists_open_between_and_isCompact_closure hKc hV'o hKV
  have hWV' : W ⊆ (chartAt E3 p) '' (U ∩ (chartAt E3 p).source) := subset_closure.trans hWcl
  
  have hsplit := dualVarG_zero_min_max_split (g.coeff (chartAt E3 p).symm) _ hV'o
    (fun i j => (g.smooth p i j).mono hV't) (fun y i j => g.symm _ _ _)
    (fun y hy => coeff_chart_symm_posDef g p y (hV't hy)) W hWo hWc hWcl
    (fun y => (n ((chartAt E3 p).symm y) : ℝ)) 0
  
  have hcinv : |c⁻¹| * c ≤ 1 :=
    le_of_eq (by rw [abs_of_pos (inv_pos.2 hc), inv_mul_cancel₀ hc.ne'])
  have hcinv' : |-c⁻¹| * c ≤ 1 := by rw [abs_neg]; exact hcinv
  have h₁ := hwit V₁ hV₁ hV₁1 c⁻¹ hcinv W hKW
    (fun y => max ((n ((chartAt E3 p).symm y) : ℝ)) 0 - 0)
  have h₂ := hwit V₂ hV₂ hV₂1 (-c⁻¹) hcinv' W hKW
    (fun y => min ((n ((chartAt E3 p).symm y) : ℝ)) 0)
  
  have hmono : dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
        (fun y => (n ((chartAt E3 p).symm y) : ℝ)) W ∅ ≤
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
        (fun y => (n ((chartAt E3 p).symm y) : ℝ))
        ((chartAt E3 p) '' (U ∩ (chartAt E3 p).source)) ∅ := by
    unfold dualVarG
    refine sup_le (iSup_le fun h => le_sup_of_le_left
      (le_iSup_of_le (fun h' => h (h'.mono_set hWV')) le_rfl))
      (iSup₂_le fun X hX => le_sup_of_le_right
        (le_iSup₂_of_le X ⟨hX.1, hX.2.1, hX.2.2.1.trans hWV', hX.2.2.2⟩ le_rfl))
  have hω : dualOmega (fun _ => (1 : ℂ)) p = fun _ _ => (0 : ℝ) := by
    funext y i
    simp [dualOmega, partialDeriv]
  have hfam : dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
        (fun y => (n ((chartAt E3 p).symm y) : ℝ))
        ((chartAt E3 p) '' (U ∩ (chartAt E3 p).source)) ∅ ≤
      dualRiemVar g (fun _ => (1 : ℂ)) (fun x => (n x : ℝ)) U ∅ := by
    unfold dualRiemVar
    refine le_iSup_of_le 1 (le_iSup_of_le (fun _ => p) (le_iSup_of_le
      (fun _ => U ∩ (chartAt E3 p).source) (le_iSup_of_le
      ⟨fun _ => ⟨hU.inter (chartAt E3 p).open_source, subset_rfl⟩,
        fun k l hkl => absurd (Subsingleton.elim k l) hkl⟩ ?_)))
    simp only [Fin.sum_univ_one, hω, Set.empty_inter, Set.image_empty] <;> exact le_rfl
  
  have h1eq : (∫ y, (max ((n ((chartAt E3 p).symm y) : ℝ)) 0 - 0) *
        sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₁) y) =
      ∫ y, ((max (n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₁) y := by
    refine MeasureTheory.integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
    simp only [Int.cast_max, Int.cast_zero, sub_zero]
  have h2eq : (∫ y, min ((n ((chartAt E3 p).symm y) : ℝ)) 0 *
        sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₂) y) =
      -∫ y, ((max (-n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ) *
        sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₂) y := by
    rw [← MeasureTheory.integral_neg]
    refine MeasureTheory.integral_congr_ae (Filter.Eventually.of_forall fun y => ?_)
    have hm : ((max (-n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ) =
        -min ((n ((chartAt E3 p).symm y) : ℝ)) 0 := by
      simp only [Int.cast_max, Int.cast_neg, Int.cast_zero]
      rw [← max_neg_neg, neg_zero]
    simp only [hm]
    ring
  have hsum : ((∫ y, ((max (n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₁) y) +
        ∫ y, ((max (-n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₂) y) =
      c * (c⁻¹ * (∫ y, (max ((n ((chartAt E3 p).symm y) : ℝ)) 0 - 0) *
          sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₁) y) +
        -c⁻¹ * ∫ y, min ((n ((chartAt E3 p).symm y) : ℝ)) 0 *
          sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₂) y) := by
    rw [h1eq, h2eq]
    field_simp
  
  rw [hsum, ENNReal.ofReal_mul hc.le]
  refine mul_le_mul_right (ENNReal.ofReal_add_le.trans ?_) _
  refine (add_le_add h₁ h₂).trans ?_
  rw [add_comm]
  exact hsplit.trans (hmono.trans hfam)

theorem dual_ge_divSum_pair [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ω : Set M) (hΩ : IsOpen Ω) {m : ℕ} (q : Fin m → M) (φ : Fin m → M → ℝ)
    (hφ : calPartition q φ Ω) (n : M → ℤ) (hnm : ∀ j : ℤ, sepChartMeas {x | n x = j})
    (hloc : ∀ p : M, MeasureTheory.LocallyIntegrableOn
      (fun y => (n ((chartAt E3 p).symm y) : ℝ)) (chartAt E3 p '' (Ω ∩ (chartAt E3 p).source)))
    (V₁ V₂ : M → E3) (hV₁ : calSmoothField V₁) (hV₂ : calSmoothField V₂)
    (hV₁1 : ∀ x, g.g x (V₁ x) (V₁ x) ≤ 1) (hV₂1 : ∀ x, g.g x (V₂ x) (V₂ x) ≤ 1) :
    ENNReal.ofReal ((∑ j, ∫ y, ((max (n ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V₁) y) +
        ∑ j, ∫ y, ((max (-n ((chartAt E3 (q j)).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 (q j)).symm) (calPiece (q j) (φ j) V₂) y) ≤
      dualRiemVar g (fun _ => (1 : ℂ)) (fun x => (n x : ℝ)) Ω ∅ :=
by
  classical
  obtain ⟨P, hP⟩ : ∃ P : M → (M → ℝ) → ℝ, P = fun p ψ =>
      (∫ y, ((max (n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₁) y) +
        ∫ y, ((max (-n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 p).symm) (calPiece p ψ V₂) y := ⟨_, rfl⟩
  obtain ⟨T, hT⟩ : ∃ T : Set M → ENNReal,
      T = fun U => dualRiemVar g (fun _ => (1 : ℂ)) (fun x => (n x : ℝ)) U ∅ := ⟨_, rfl⟩
  
  have hsup : ∀ (Ω : Set M) {N : ℕ} (U : Fin N → Set M), (∀ i, U i ⊆ Ω) →
      Pairwise (fun i j => Disjoint (U i) (U j)) → ∑ i, T (U i) ≤ T Ω := by
    intro Ω N U h1 h2
    subst hT
    exact dualRiemVar_disjoint_sum_le g _ _ Ω ∅ U h1 h2
  
  have hpiece : ∀ (U : Set M), IsOpen U → ∀ (p : M) (ψ : M → ℝ),
      ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ → IsCompact (tsupport ψ) →
      tsupport ψ ⊆ U ∩ (chartAt E3 p).source → ∀ c : ℝ, 0 < c → (∀ x, |ψ x| ≤ c) →
      ENNReal.ofReal (P p ψ) ≤ ENNReal.ofReal c * T U := by
    intro U hU p ψ h1 h2 h3 c hc h4
    subst hP hT
    exact dual_pair_piece_le g n U hU p ψ h1 h2 h3 c hc h4 V₁ V₂ hV₁ hV₂ hV₁1 hV₂1
  
  have hPsum : ∀ (p : M) {k : ℕ} (ψ : Fin k → M → ℝ),
      (∀ i, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (ψ i)) → (∀ i, IsCompact (tsupport (ψ i))) →
      (∀ i, tsupport (ψ i) ⊆ (chartAt E3 p).source) →
      (∀ i, MeasureTheory.IntegrableOn (fun y => ((max (n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ))
        (chartAt E3 p '' tsupport (ψ i))) →
      (∀ i, MeasureTheory.IntegrableOn (fun y => ((max (-n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ))
        (chartAt E3 p '' tsupport (ψ i))) →
      P p (fun x => ∑ i, ψ i x) = ∑ i, P p (ψ i) := by
    intro p k ψ h1 h2 h3 h4 h5
    have e1 := calPiece_wdiv_sum g p ψ h1 h2 h3 V₁ hV₁ _ h4
    have e2 := calPiece_wdiv_sum g p ψ h1 h2 h3 V₂ hV₂ _ h5
    subst hP
    simp only
    rw [e1, e2, Finset.sum_add_distrib]
  
  have hTimg : ∀ (p : M) (S : Set M), chartAt E3 p '' (S ∩ (chartAt E3 p).source) =
      (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S := by
    intro p S
    rw [Set.inter_comm, OpenPartialHomeomorph.image_source_inter_eq']
  have hmeasP : ∀ (Q : ℤ → Prop), sepChartMeas {x : M | Q (n x)} := by
    intro Q p
    rw [hTimg]
    have e : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | Q (n x)} =
        ⋃ j ∈ {j : ℤ | Q j}, (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | n x = j} := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_setOf_eq, Set.mem_iUnion,
        exists_prop]
      constructor
      · rintro ⟨h1, h2⟩
        exact ⟨_, h2, h1, rfl⟩
      · rintro ⟨j, hj, h1, h2⟩
        exact ⟨h1, h2 ▸ hj⟩
    rw [e]
    refine MeasurableSet.biUnion (Set.to_countable _) (fun j _ => ?_)
    have h := hnm j p
    rw [hTimg] at h
    exact h
  have hmp : ∀ j : ℤ, sepChartMeas {x | max (n x) 0 = j} := fun j => hmeasP (fun z => max z 0 = j)
  have hmm : ∀ j : ℤ, sepChartMeas {x | max (-n x) 0 = j} :=
    fun j => hmeasP (fun z => max (-z) 0 = j)
  
  have hPchart : ∀ (p r : M) (ψ : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ →
      IsCompact (tsupport ψ) → tsupport ψ ⊆ (chartAt E3 p).source ∩ (chartAt E3 r).source →
      MeasureTheory.IntegrableOn (fun y => ((max (n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ))
        (chartAt E3 p '' tsupport ψ) →
      MeasureTheory.IntegrableOn (fun y => ((max (n ((chartAt E3 r).symm y)) 0 : ℤ) : ℝ))
        (chartAt E3 r '' tsupport ψ) →
      MeasureTheory.IntegrableOn (fun y => ((max (-n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ))
        (chartAt E3 p '' tsupport ψ) →
      MeasureTheory.IntegrableOn (fun y => ((max (-n ((chartAt E3 r).symm y)) 0 : ℤ) : ℝ))
        (chartAt E3 r '' tsupport ψ) →
      P p ψ = P r ψ := by
    intro p r ψ h1 h2 h3 h4 h5 h6 h7
    subst hP
    exact congrArg₂ (· + ·)
      (calPiece_wdiv_chart_eq g p r ψ h1 h2 h3 V₁ hV₁ (fun x => max (n x) 0)
        (fun x => le_max_right _ _) hmp h4 h5)
      (calPiece_wdiv_chart_eq g p r ψ h1 h2 h3 V₂ hV₂ (fun x => max (-n x) 0)
        (fun x => le_max_right _ _) hmm h6 h7)
  
  have hIntg : ∀ (Ω : Set M), IsOpen Ω →
      (∀ p : M, MeasureTheory.LocallyIntegrableOn (fun y => (n ((chartAt E3 p).symm y) : ℝ))
        (chartAt E3 p '' (Ω ∩ (chartAt E3 p).source))) →
      ∀ (r : M) (ψ : M → ℝ), IsCompact (tsupport ψ) → tsupport ψ ⊆ Ω ∩ (chartAt E3 r).source →
      MeasureTheory.IntegrableOn (fun y => ((max (n ((chartAt E3 r).symm y)) 0 : ℤ) : ℝ))
        (chartAt E3 r '' tsupport ψ) ∧
      MeasureTheory.IntegrableOn (fun y => ((max (-n ((chartAt E3 r).symm y)) 0 : ℤ) : ℝ))
        (chartAt E3 r '' tsupport ψ) := by
    intro Ω hΩ hl r ψ hc hs
    have hK : IsCompact (chartAt E3 r '' tsupport ψ) :=
      hc.image_of_continuousOn ((chartAt E3 r).continuousOn.mono (fun x hx => (hs hx).2))
    have ho : IsOpen (chartAt E3 r '' (Ω ∩ (chartAt E3 r).source)) :=
      (chartAt E3 r).isOpen_image_of_subset_source (hΩ.inter (chartAt E3 r).open_source)
        Set.inter_subset_right
    have hI := (MeasureTheory.locallyIntegrableOn_iff ho.isLocallyClosed).1 (hl r) _
      (Set.image_mono hs) hK
    exact ⟨(MeasureTheory.Integrable.pos_part hI).congr
        (Filter.Eventually.of_forall fun y => by simp only [Int.cast_max, Int.cast_zero]),
      (MeasureTheory.Integrable.neg_part hI).congr
        (Filter.Eventually.of_forall fun y => by
          simp only [Int.cast_max, Int.cast_neg, Int.cast_zero])⟩
  
  suffices H : ∀ (m : ℕ) (Ω : Set M), IsOpen Ω → ∀ (q : Fin m → M) (φ : Fin m → M → ℝ),
      calPartition q φ Ω →
      (∀ p : M, MeasureTheory.LocallyIntegrableOn (fun y => (n ((chartAt E3 p).symm y) : ℝ))
        (chartAt E3 p '' (Ω ∩ (chartAt E3 p).source))) →
      ENNReal.ofReal (∑ j, P (q j) (φ j)) ≤ T Ω by
    have h := H m Ω hΩ q φ hφ hloc
    subst hP hT
    simp only at h
    rw [Finset.sum_add_distrib] at h
    exact h
  clear hloc hφ
  intro m
  induction m with
  | zero =>
    intro Ω _ q φ _ _
    simp
  | succ m ih =>
    intro Ω hΩ q φ hφ hl
    obtain ⟨hsm, hnn, hsum, hsupp⟩ := hφ
    by_cases hPtop : T Ω = ⊤
    · rw [hPtop]; exact le_top
    have hI := hIntg Ω hΩ hl
    have hmono : ∀ U : Set M, U ⊆ Ω → T U ≤ T Ω := by
      intro U hU
      have h := hsup Ω (fun _ : Fin 1 => U) (fun _ => hU)
        (fun i j hij => absurd (Subsingleton.elim i j) hij)
      simpa using h
    have hfin : ∀ U : Set M, U ⊆ Ω → T U ≠ ⊤ := fun U hU =>
      ne_top_of_le_ne_top hPtop (hmono U hU)
    have hconv : ∀ (U : Set M), U ⊆ Ω → ∀ (x c : ℝ), 0 ≤ c →
        ENNReal.ofReal x ≤ ENNReal.ofReal c * T U → x ≤ c * (T U).toReal := by
      intro U hU x c hc h
      have h2 := (ENNReal.ofReal_le_iff_le_toReal
        (ENNReal.mul_ne_top ENNReal.ofReal_ne_top (hfin U hU))).1 h
      rwa [ENNReal.toReal_mul, ENNReal.toReal_ofReal hc] at h2
    have hpv0 : 0 ≤ (T Ω).toReal := ENNReal.toReal_nonneg
    have hφ1 : ∀ j x, φ j x ≤ 1 := fun j x =>
      le_trans (Finset.single_le_sum (fun k _ => hnn k x) (Finset.mem_univ j)) (hsum x)
    have hφ0src : ∀ x, φ 0 x ≠ 0 → x ∈ Ω ∩ (chartAt E3 (q 0)).source := fun x hx =>
      (hsupp 0).2 (subset_tsupport _ hx)
    have hprod : ∀ (w : M → ℝ), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
        (∀ x, 0 ≤ w x ∧ w x ≤ 1) → ∀ j,
        ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => w x * φ j x) ∧
        IsCompact (tsupport (fun x => w x * φ j x)) ∧
        tsupport (fun x => w x * φ j x) ⊆ tsupport w ∩ (Ω ∩ (chartAt E3 (q j)).source) ∧
        (∀ x, |w x * φ j x| ≤ 1) ∧ (∀ x, 0 ≤ w x * φ j x) := by
      intro w hw hw01 j
      refine ⟨hw.mul (hsm j),
        (hsupp j).1.of_isClosed_subset (isClosed_tsupport _) (tsupport_mul_subset_right),
        fun x hx => ⟨tsupport_mul_subset_left hx, (hsupp j).2 (tsupport_mul_subset_right hx)⟩,
        fun x => ?_, fun x => mul_nonneg (hw01 x).1 (hnn j x)⟩
      rw [abs_of_nonneg (mul_nonneg (hw01 x).1 (hnn j x))]
      exact mul_le_one₀ (hw01 x).2 (hnn j x) (hφ1 j x)
    
    have hstar : ∀ N : ℕ, 0 < N → ∀ u : ℝ, 0 < u →
        ∑ j, P (q j) (φ j) ≤ (T Ω).toReal + 8 * N * u * (T Ω).toReal
          + (m + 1) * (T Ω).toReal / N := by
      intro N hN u hu
      have hNpos : (0 : ℝ) < N := by exact_mod_cast hN
      have hBsub : ∀ i : Fin N, Ω ∩ {x | u * (8 * ((i : ℕ) : ℝ) + 4) - 2 * u < φ 0 x ∧
          φ 0 x < u * (8 * ((i : ℕ) : ℝ) + 4) + 2 * u} ⊆ Ω := fun i => Set.inter_subset_left
      have hBdisj : Pairwise (fun i j : Fin N =>
          Disjoint (Ω ∩ {x | u * (8 * ((i : ℕ) : ℝ) + 4) - 2 * u < φ 0 x ∧
            φ 0 x < u * (8 * ((i : ℕ) : ℝ) + 4) + 2 * u})
          (Ω ∩ {x | u * (8 * ((j : ℕ) : ℝ) + 4) - 2 * u < φ 0 x ∧
            φ 0 x < u * (8 * ((j : ℕ) : ℝ) + 4) + 2 * u})) := by
        intro i j hij
        rw [Set.disjoint_left]
        rintro x ⟨-, h1, h2⟩ ⟨-, h3, h4⟩
        have hne : (i : ℕ) ≠ (j : ℕ) := fun h => hij (Fin.ext h)
        rcases Nat.lt_or_gt_of_ne hne with h | h
        · have h' : ((i : ℕ) : ℝ) + 1 ≤ ((j : ℕ) : ℝ) := by exact_mod_cast h
          nlinarith [mul_le_mul_of_nonneg_left h' hu.le]
        · have h' : ((j : ℕ) : ℝ) + 1 ≤ ((i : ℕ) : ℝ) := by exact_mod_cast h
          nlinarith [mul_le_mul_of_nonneg_left h' hu.le]
      have hBsum := hsup Ω _ hBsub hBdisj
      have hBreal : ∑ i : Fin N, (T (Ω ∩ {x | u * (8 * ((i : ℕ) : ℝ) + 4) - 2 * u < φ 0 x ∧
          φ 0 x < u * (8 * ((i : ℕ) : ℝ) + 4) + 2 * u})).toReal ≤ (T Ω).toReal := by
        rw [← ENNReal.toReal_sum (fun i _ => hfin _ (hBsub i))]
        exact ENNReal.toReal_mono hPtop hBsum
      obtain ⟨i, -, hi⟩ : ∃ i ∈ (Finset.univ : Finset (Fin N)),
          (T (Ω ∩ {x | u * (8 * ((i : ℕ) : ℝ) + 4) - 2 * u < φ 0 x ∧
            φ 0 x < u * (8 * ((i : ℕ) : ℝ) + 4) + 2 * u})).toReal
            ≤ (T Ω).toReal / N := by
        refine Finset.exists_le_of_sum_le ⟨⟨0, hN⟩, Finset.mem_univ _⟩ ?_
        rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul,
          mul_div_cancel₀ _ hNpos.ne']
        exact hBreal
      set t : ℝ := u * (8 * ((i : ℕ) : ℝ) + 4) with ht
      set B : Set M := Ω ∩ {x | t - 2 * u < φ 0 x ∧ φ 0 x < t + 2 * u} with hB
      have hi' : (T B).toReal ≤ (T Ω).toReal / N := hi
      have hBsub' : B ⊆ Ω := Set.inter_subset_left
      have hBopen : IsOpen B := hΩ.inter
        ((isOpen_lt continuous_const (hsm 0).continuous).inter
          (isOpen_lt (hsm 0).continuous continuous_const))
      have ht0 : 0 < t := by positivity
      have htle : t ≤ 8 * N * u := by
        have hiN : ((i : ℕ) : ℝ) + 1 ≤ (N : ℝ) := by exact_mod_cast i.isLt
        nlinarith [mul_le_mul_of_nonneg_left hiN hu.le]
      
      obtain ⟨a, b, γ, ha, hb, hγ, h01, hsa, hsb, hsγ⟩ := calCut_functions (φ 0) (hsm 0) t u hu
      have h01a : ∀ x, 0 ≤ a x ∧ a x ≤ 1 := fun x => ⟨(h01 x).1, (h01 x).2.1⟩
      have h01b : ∀ x, 0 ≤ b x ∧ b x ≤ 1 := fun x => ⟨(h01 x).2.2.1, (h01 x).2.2.2.1⟩
      have h01γ : ∀ x, 0 ≤ γ x ∧ γ x ≤ 1 := fun x => ⟨(h01 x).2.2.2.2.1, (h01 x).2.2.2.2.2.1⟩
      have hsum3 : ∀ x, a x + γ x + b x = 1 := fun x => (h01 x).2.2.2.2.2.2
      have hPa := hprod a ha h01a
      have hPb := hprod b hb h01b
      have hPγ := hprod γ hγ h01γ
      have hta' : tsupport a ⊆ tsupport (φ 0) := fun x hx =>
        subset_tsupport _ (ht0.trans (hsa hx)).ne'
      have hta : tsupport a ⊆ Ω ∩ (chartAt E3 (q 0)).source := fun x hx =>
        hφ0src x (ht0.trans (hsa hx)).ne'
      set Ωa : Set M := Ω ∩ {x | t < φ 0 x} with hΩadef
      set Ωb : Set M := Ω ∩ {x | φ 0 x < t} with hΩbdef
      have hΩa : IsOpen Ωa := hΩ.inter (isOpen_lt continuous_const (hsm 0).continuous)
      have hΩb : IsOpen Ωb := hΩ.inter (isOpen_lt (hsm 0).continuous continuous_const)
      have hΩasub : Ωa ⊆ Ω := Set.inter_subset_left
      have hΩbsub : Ωb ⊆ Ω := Set.inter_subset_left
      have hdab : Disjoint Ωa Ωb := Set.disjoint_left.2 fun x h1 h2 =>
        lt_asymm (show t < φ 0 x from h1.2) (show φ 0 x < t from h2.2)
      
      have hsplit : ∀ j, P (q j) (φ j) = P (q j) (fun x => a x * φ j x) +
          P (q j) (fun x => γ x * φ j x) + P (q j) (fun x => b x * φ j x) := by
        intro j
        have hw : ∀ k : Fin 3, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (![a, γ, b] k) ∧
            ∀ x, 0 ≤ ![a, γ, b] k x ∧ ![a, γ, b] k x ≤ 1 := by
          intro k
          fin_cases k
          · exact ⟨ha, h01a⟩
          · exact ⟨hγ, h01γ⟩
          · exact ⟨hb, h01b⟩
        have h : P (q j) (fun x => ∑ k : Fin 3, ![a, γ, b] k x * φ j x) =
            ∑ k : Fin 3, P (q j) (fun x => ![a, γ, b] k x * φ j x) :=
          hPsum (q j) (fun k x => ![a, γ, b] k x * φ j x)
            (fun k => (hprod _ (hw k).1 (hw k).2 j).1)
            (fun k => (hprod _ (hw k).1 (hw k).2 j).2.1)
            (fun k x hx => ((hprod _ (hw k).1 (hw k).2 j).2.2.1 hx).2.2)
            (fun k => (hI (q j) _ (hprod _ (hw k).1 (hw k).2 j).2.1
              (fun x hx => ((hprod _ (hw k).1 (hw k).2 j).2.2.1 hx).2)).1)
            (fun k => (hI (q j) _ (hprod _ (hw k).1 (hw k).2 j).2.1
              (fun x hx => ((hprod _ (hw k).1 (hw k).2 j).2.2.1 hx).2)).2)
        have hfun : (fun x => ∑ k : Fin 3, ![a, γ, b] k x * φ j x) = φ j := by
          funext x
          simp only [Fin.sum_univ_three, Matrix.cons_val_zero, Matrix.cons_val_one,
            Matrix.head_cons, Matrix.cons_val_two, Matrix.tail_cons]
          linear_combination (φ j x) * hsum3 x
        rw [hfun, Fin.sum_univ_three] at h
        simpa only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons,
          Matrix.cons_val_two, Matrix.tail_cons] using h
      
      have hAj : ∀ j, P (q j) (fun x => a x * φ j x) = P (q 0) (fun x => a x * φ j x) := by
        intro j
        have hs : tsupport (fun x => a x * φ j x) ⊆ Ω ∩ (chartAt E3 (q 0)).source :=
          fun x hx => hta ((hPa j).2.2.1 hx).1
        have hs' : tsupport (fun x => a x * φ j x) ⊆ Ω ∩ (chartAt E3 (q j)).source :=
          fun x hx => ((hPa j).2.2.1 hx).2
        exact hPchart (q j) (q 0) _ (hPa j).1 (hPa j).2.1
          (fun x hx => ⟨(hs' hx).2, (hs hx).2⟩)
          (hI (q j) _ (hPa j).2.1 hs').1 (hI (q 0) _ (hPa j).2.1 hs).1
          (hI (q j) _ (hPa j).2.1 hs').2 (hI (q 0) _ (hPa j).2.1 hs).2
      have hAsum : P (q 0) (fun x => ∑ j, a x * φ j x) =
          ∑ j, P (q 0) (fun x => a x * φ j x) := by
        have hs : ∀ j, tsupport (fun x => a x * φ j x) ⊆ Ω ∩ (chartAt E3 (q 0)).source :=
          fun j x hx => hta ((hPa j).2.2.1 hx).1
        exact hPsum (q 0) (fun j x => a x * φ j x) (fun j => (hPa j).1) (fun j => (hPa j).2.1)
          (fun j x hx => (hs j hx).2) (fun j => (hI (q 0) _ (hPa j).2.1 (hs j)).1)
          (fun j => (hI (q 0) _ (hPa j).2.1 (hs j)).2)
      have hψa_eq : (fun x => ∑ j, a x * φ j x) = fun x => a x * ∑ j, φ j x := by
        funext x; rw [Finset.mul_sum]
      have hψa_sm : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => ∑ j, a x * φ j x) := by
        rw [hψa_eq]; exact ha.mul (contMDiff_finset_sum fun j _ => hsm j)
      have hψa_ts : tsupport (fun x => ∑ j, a x * φ j x) ⊆ tsupport a := by
        rw [hψa_eq]; exact tsupport_mul_subset_left
      have hψa_b : ∀ x, |∑ j, a x * φ j x| ≤ 1 := by
        intro x
        have e := congrFun hψa_eq x
        simp only at e
        have hs0 : 0 ≤ ∑ j, φ j x := Finset.sum_nonneg fun j _ => hnn j x
        rw [e, abs_of_nonneg (mul_nonneg (h01a x).1 hs0)]
        exact mul_le_one₀ (h01a x).2 hs0 (hsum x)
      have hA := hpiece Ωa hΩa (q 0) (fun x => ∑ j, a x * φ j x) hψa_sm
        ((hsupp 0).1.of_isClosed_subset (isClosed_tsupport _) (hψa_ts.trans hta'))
        (fun x hx => ⟨⟨(hta (hψa_ts hx)).1, hsa (hψa_ts hx)⟩, (hta (hψa_ts hx)).2⟩) 1 one_pos
        hψa_b
      have hAR : P (q 0) (fun x => ∑ j, a x * φ j x) ≤ 1 * (T Ωa).toReal :=
        hconv Ωa hΩasub _ 1 zero_le_one hA
      
      have hΓj : ∀ j, P (q j) (fun x => γ x * φ j x) ≤ (T B).toReal := by
        intro j
        have h := hpiece B hBopen (q j) (fun x => γ x * φ j x)
          (hPγ j).1 (hPγ j).2.1
          (fun x hx => ⟨⟨((hPγ j).2.2.1 hx).2.1, hsγ ((hPγ j).2.2.1 hx).1⟩,
            ((hPγ j).2.2.1 hx).2.2⟩) 1 one_pos (hPγ j).2.2.2.1
        have h2 : P (q j) (fun x => γ x * φ j x) ≤ 1 * (T B).toReal :=
          hconv B hBsub' _ 1 zero_le_one h
        linarith
      have hγsum : ∑ j, P (q j) (fun x => γ x * φ j x) ≤ (m + 1) * (T B).toReal := by
        calc _ ≤ ∑ _j : Fin (m + 1), (T B).toReal :=
              Finset.sum_le_sum fun j _ => hΓj j
          _ = _ := by
              rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
              push_cast; ring
      
      have hbφ0 : ∀ x, |b x * φ 0 x| ≤ t := by
        intro x
        rw [abs_of_nonneg (mul_nonneg (h01b x).1 (hnn 0 x))]
        by_cases hbx : b x = 0
        · rw [hbx, zero_mul]; exact ht0.le
        · have h1 : φ 0 x < t := hsb (subset_tsupport _ hbx)
          have h2 : b x * φ 0 x ≤ φ 0 x := mul_le_of_le_one_left (hnn 0 x) (h01b x).2
          linarith
      have hHead := hpiece Ωb hΩb (q 0) (fun x => b x * φ 0 x)
        (hPb 0).1 (hPb 0).2.1
        (fun x hx => ⟨⟨((hPb 0).2.2.1 hx).2.1, hsb ((hPb 0).2.2.1 hx).1⟩,
          ((hPb 0).2.2.1 hx).2.2⟩) t ht0 hbφ0
      have hHeadR : P (q 0) (fun x => b x * φ 0 x) ≤ t * (T Ωb).toReal :=
        hconv Ωb hΩbsub _ t ht0.le hHead
      have hpart' : calPartition (fun j : Fin m => q j.succ) (fun j x => b x * φ j.succ x) Ωb := by
        refine ⟨fun j => (hPb j.succ).1, fun j x => (hPb j.succ).2.2.2.2 x, fun x => ?_,
          fun j => ⟨(hPb j.succ).2.1, fun y hy => ⟨⟨((hPb j.succ).2.2.1 hy).2.1,
            hsb ((hPb j.succ).2.2.1 hy).1⟩, ((hPb j.succ).2.2.1 hy).2.2⟩⟩⟩
        have e : ∑ j : Fin m, b x * φ j.succ x = b x * ∑ j : Fin m, φ j.succ x := by
          rw [Finset.mul_sum]
        have hs := hsum x
        rw [Fin.sum_univ_succ] at hs
        have hnn' : 0 ≤ ∑ j : Fin m, φ j.succ x := Finset.sum_nonneg fun j _ => hnn _ x
        have h2 : b x * ∑ j : Fin m, φ j.succ x ≤ ∑ j : Fin m, φ j.succ x :=
          mul_le_of_le_one_left hnn' (h01b x).2
        rw [e]
        linarith [hnn 0 x]
      have hlb : ∀ p : M, MeasureTheory.LocallyIntegrableOn
          (fun y => (n ((chartAt E3 p).symm y) : ℝ)) (chartAt E3 p '' (Ωb ∩ (chartAt E3 p).source)) :=
        fun p => (hl p).mono_set (Set.image_mono fun x hx => ⟨hΩbsub hx.1, hx.2⟩)
      have hTail := ih Ωb hΩb _ _ hpart' hlb
      have hTailR : ∑ j : Fin m, P (q j.succ) (fun x => b x * φ j.succ x) ≤ (T Ωb).toReal :=
        (ENNReal.ofReal_le_iff_le_toReal (hfin Ωb hΩbsub)).1 hTail
      have hbsplit : ∑ j, P (q j) (fun x => b x * φ j x) = P (q 0) (fun x => b x * φ 0 x) +
          ∑ j : Fin m, P (q j.succ) (fun x => b x * φ j.succ x) := by
        rw [Fin.sum_univ_succ]
      have hasum : ∑ j, P (q j) (fun x => a x * φ j x) = P (q 0) (fun x => ∑ j, a x * φ j x) := by
        rw [hAsum]; exact Finset.sum_congr rfl fun j _ => hAj j
      
      have hab := hsup Ω ![Ωa, Ωb]
        (by
          intro k
          fin_cases k
          · exact hΩasub
          · exact hΩbsub)
        (by
          intro k l hkl
          fin_cases k <;> fin_cases l
          · exact absurd rfl hkl
          · exact hdab
          · exact hdab.symm
          · exact absurd rfl hkl)
      rw [Fin.sum_univ_two] at hab
      simp only [Matrix.cons_val_zero, Matrix.cons_val_one] at hab
      have habR := ENNReal.toReal_mono hPtop hab
      rw [ENNReal.toReal_add (hfin _ hΩasub) (hfin _ hΩbsub)] at habR
      have hpa0 : 0 ≤ (T Ωa).toReal := ENNReal.toReal_nonneg
      have hpb0 : 0 ≤ (T Ωb).toReal := ENNReal.toReal_nonneg
      have hpB0 : 0 ≤ (T B).toReal := ENNReal.toReal_nonneg
      have hT1 : t * (T Ωb).toReal ≤ 8 * N * u * (T Ω).toReal :=
        mul_le_mul htle (by linarith) hpb0 (by positivity)
      have hT2 : (m + 1) * (T B).toReal ≤ (m + 1) * (T Ω).toReal / N := by
        rw [mul_div_assoc]
        exact mul_le_mul_of_nonneg_left hi' (by positivity)
      rw [Finset.sum_congr rfl fun j _ => hsplit j, Finset.sum_add_distrib,
        Finset.sum_add_distrib, hasum, hbsplit]
      linarith
    
    have hΛ : ∑ j, P (q j) (φ j) ≤ (T Ω).toReal := by
      refine le_of_forall_pos_le_add fun ε hε => ?_
      obtain ⟨N, hN⟩ := exists_nat_gt (2 * (m + 1) * (T Ω).toReal / ε)
      have hNpos' : (0 : ℝ) < N := lt_of_le_of_lt (by positivity) hN
      have hNpos : 0 < N := by exact_mod_cast hNpos'
      have h1 := hstar N hNpos (ε / (16 * N * ((T Ω).toReal + 1))) (by positivity)
      have e1 : 8 * (N : ℝ) * (ε / (16 * N * ((T Ω).toReal + 1))) * (T Ω).toReal =
          ε / 2 * ((T Ω).toReal / ((T Ω).toReal + 1)) := by
        field_simp
        ring
      have e2 : (T Ω).toReal / ((T Ω).toReal + 1) ≤ 1 := by
        rw [div_le_one (by positivity)]; linarith
      have e4 : ε / 2 * ((T Ω).toReal / ((T Ω).toReal + 1)) ≤ ε / 2 :=
        mul_le_of_le_one_right (by positivity) e2
      have e3 : (m + 1) * (T Ω).toReal / N ≤ ε / 2 := by
        rw [div_le_iff₀ hNpos']
        rw [div_lt_iff₀ hε] at hN
        linarith
      rw [e1] at h1
      linarith
    exact (ENNReal.ofReal_le_ofReal hΛ).trans (ENNReal.ofReal_toReal hPtop).le

theorem dualTV_far_calibration [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (n : M → ℤ) (ΩR : Set M) (ρ : M → ℝ) (r₁ : ℝ)
    (hρ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ρ) (hmc : ∀ p : M, r₁ ≤ ρ p → 0 < g.levelMeanCurv ρ p)
    (hH : ∀ K : Set M, IsCompact K → ∃ C : ℝ, ∀ x ∈ K, r₁ ≤ ρ x → |g.levelMeanCurv ρ x| ≤ C)
    (hΩR : IsOpen ΩR) (hnm : ∀ j : ℤ, sepChartMeas {x | n x = j})
    {N₀ : ℕ} (q₀ : Fin N₀ → M) (φp : Fin N₀ → M → ℝ) (hφp : calPartition q₀ φp ΩR)
    (O₀ : Set M) (hO₀ : IsOpen O₀) (hO₀1 : ∀ x ∈ O₀, ∑ j, φp j x = 1)
    (hnO : ∀ x : M, r₁ < ρ x → n x ≠ 0 → x ∈ O₀) :
    dualRiemVar g (fun _ => (1 : ℂ)) (fun x => ((if r₁ < ρ x then 0 else n x : ℤ) : ℝ)) ΩR ∅ +
        ENNReal.ofReal (calVolSum g q₀ φp {x | r₁ < ρ x ∧ n x ≠ 0}
          (fun x => g.levelMeanCurv ρ x)) ≤
      dualRiemVar g (fun _ => (1 : ℂ)) (fun x => (n x : ℝ)) ΩR ∅ :=
by
  classical
  set T := dualRiemVar g (fun _ => (1 : ℂ)) (fun x => (n x : ℝ)) ΩR ∅ with hTdef
  set Gc := calVolSum g q₀ φp {x | r₁ < ρ x ∧ n x ≠ 0} (fun x => g.levelMeanCurv ρ x) with hGcdef
  by_cases hTt : T = ⊤
  · rw [hTt]; exact le_top
  obtain ⟨n', hn'⟩ : ∃ n' : M → ℤ, n' = fun x => if r₁ < ρ x then 0 else n x := ⟨_, rfl⟩
  have hgoal : (fun x => ((if r₁ < ρ x then 0 else n x : ℤ) : ℝ)) = fun x => (n' x : ℝ) := by
    rw [hn']
  rw [hgoal]
  have hρc : Continuous ρ := hρ.continuous
  have hU1 : IsOpen {x : M | r₁ < ρ x} := isOpen_lt continuous_const hρc
  
  have hT : ∀ (p : M) (S : Set M), chartAt E3 p '' (S ∩ (chartAt E3 p).source) =
      (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S := by
    intro p S
    rw [Set.inter_comm, OpenPartialHomeomorph.image_source_inter_eq']
  have hmeasρ : ∀ p : M,
      MeasurableSet ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | r₁ < ρ x}) :=
    fun p => ((chartAt E3 p).isOpen_inter_preimage_symm hU1).measurableSet
  have hmeasP : ∀ (p : M) (P : ℤ → Prop),
      MeasurableSet ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | P (n x)}) := by
    intro p P
    have e : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | P (n x)} =
        ⋃ j ∈ {j : ℤ | P j}, (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | n x = j} := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_setOf_eq, Set.mem_iUnion,
        exists_prop]
      constructor
      · rintro ⟨h1, h2⟩
        exact ⟨_, h2, h1, rfl⟩
      · rintro ⟨j, hj, h1, h2⟩
        exact ⟨h1, h2 ▸ hj⟩
    rw [e]
    refine MeasurableSet.biUnion (Set.to_countable _) (fun j _ => ?_)
    have h := hnm j p
    rw [hT] at h
    exact h
  have hcm : ∀ (P₁ P₂ : ℤ → Prop) (S : Set M),
      (∀ x, x ∈ S ↔ (r₁ < ρ x ∧ P₁ (n x)) ∨ (¬ r₁ < ρ x ∧ P₂ (n x))) → sepChartMeas S := by
    intro P₁ P₂ S hS p
    rw [hT]
    have e : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S =
        (((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | r₁ < ρ x}) ∩
          ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | P₁ (n x)})) ∪
        (((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | P₂ (n x)}) \
          ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | r₁ < ρ x})) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_setOf_eq, Set.mem_union,
        Set.mem_diff, hS]
      tauto
    rw [e]
    exact ((hmeasρ p).inter (hmeasP p P₁)).union ((hmeasP p P₂).diff (hmeasρ p))
  have hn'm : ∀ j : ℤ, sepChartMeas {x | n' x = j} := by
    intro j
    refine hcm (fun _ => 0 = j) (fun z => z = j) _ (fun x => ?_)
    rw [hn']
    simp only [Set.mem_setOf_eq]
    split_ifs with h <;> tauto
  have hDm : sepChartMeas {x | r₁ < ρ x ∧ n x ≠ 0} :=
    hcm (fun z => z ≠ 0) (fun _ => False) _ (fun x => by simp only [Set.mem_setOf_eq]; tauto)
  
  have hloc : ∀ p : M, MeasureTheory.LocallyIntegrableOn
      (fun y => (n ((chartAt E3 p).symm y) : ℝ)) (chartAt E3 p '' (ΩR ∩ (chartAt E3 p).source)) := by
    intro p
    by_contra hne
    apply hTt
    apply eq_top_iff.2
    have hadm : (∀ k : Fin 1, IsOpen ((fun _ : Fin 1 => ΩR ∩ (chartAt E3 p).source) k) ∧
        (fun _ : Fin 1 => ΩR ∩ (chartAt E3 p).source) k ⊆
          ΩR ∩ (chartAt E3 ((fun _ : Fin 1 => p) k)).source) ∧
        Pairwise (fun k l : Fin 1 => Disjoint ((fun _ : Fin 1 => ΩR ∩ (chartAt E3 p).source) k)
          ((fun _ : Fin 1 => ΩR ∩ (chartAt E3 p).source) l)) :=
      ⟨fun _ => ⟨hΩR.inter (chartAt E3 p).open_source, fun x hx => hx⟩,
        fun i j hij => absurd (Subsingleton.elim i j) hij⟩
    have hle := le_iSup_of_le (f := fun m : ℕ => ⨆ (pp : Fin m → M) (W : Fin m → Set M)
        (_ : (∀ k, IsOpen (W k) ∧ W k ⊆ ΩR ∩ (chartAt E3 (pp k)).source) ∧
          Pairwise (fun k l => Disjoint (W k) (W l))),
        ∑ k, dualVarG (g.coeff (chartAt E3 (pp k)).symm) (dualOmega (fun _ => (1 : ℂ)) (pp k))
          (fun y => (n ((chartAt E3 (pp k)).symm y) : ℝ)) (chartAt E3 (pp k) '' W k)
          (chartAt E3 (pp k) '' (∅ ∩ (chartAt E3 (pp k)).source))) 1
      (le_iSup_of_le (fun _ : Fin 1 => p) (le_iSup_of_le (fun _ : Fin 1 => ΩR ∩ (chartAt E3 p).source)
        (le_iSup_of_le hadm le_rfl)))
    rw [Fin.sum_univ_one] at hle
    refine le_trans ?_ (le_trans hle (le_of_eq ?_))
    · unfold dualVarG
      exact le_sup_of_le_left (le_iSup_of_le hne le_rfl)
    · rw [hTdef]
      rfl
  have hint : ∀ (p : M) (K : Set E3), IsCompact K →
      K ⊆ chartAt E3 p '' (ΩR ∩ (chartAt E3 p).source) →
      MeasureTheory.IntegrableOn (fun y => (n ((chartAt E3 p).symm y) : ℝ)) K := by
    intro p K hK hKs
    have ho : IsOpen (chartAt E3 p '' (ΩR ∩ (chartAt E3 p).source)) :=
      (chartAt E3 p).isOpen_image_of_subset_source (hΩR.inter (chartAt E3 p).open_source)
        Set.inter_subset_right
    exact (MeasureTheory.locallyIntegrableOn_iff ho.isLocallyClosed).1 (hloc p) K hKs hK
  have hintn' : ∀ (p : M) (K : Set E3), IsCompact K →
      K ⊆ chartAt E3 p '' (ΩR ∩ (chartAt E3 p).source) →
      MeasureTheory.IntegrableOn (fun y => (n' ((chartAt E3 p).symm y) : ℝ)) K := by
    intro p K hK hKs
    have h1 := (hint p K hK hKs).indicator ((hmeasρ p).compl)
    refine h1.congr_fun (fun y hy => ?_) hK.isClosed.measurableSet
    have hyt : y ∈ (chartAt E3 p).target := by
      obtain ⟨x, hx, rfl⟩ := hKs hy
      exact (chartAt E3 p).map_source hx.2
    rw [hn']
    by_cases h : r₁ < ρ ((chartAt E3 p).symm y)
    · have hmem : y ∉ ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | r₁ < ρ x})ᶜ :=
        fun hc => hc ⟨hyt, h⟩
      rw [Set.indicator_of_notMem hmem]
      simp [h]
    · have hmem : y ∈ ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | r₁ < ρ x})ᶜ :=
        fun hc => h hc.2
      rw [Set.indicator_of_mem hmem]
      simp [h]
  have hintp : ∀ (p : M) (K : Set E3), IsCompact K →
      K ⊆ chartAt E3 p '' (ΩR ∩ (chartAt E3 p).source) →
      MeasureTheory.IntegrableOn (fun y => ((max (n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ)) K := by
    intro p K hK hKs
    exact (MeasureTheory.Integrable.pos_part (hint p K hK hKs)).congr
      (Filter.Eventually.of_forall fun y => by simp only [Int.cast_max, Int.cast_zero])
  have hintm : ∀ (p : M) (K : Set E3), IsCompact K →
      K ⊆ chartAt E3 p '' (ΩR ∩ (chartAt E3 p).source) →
      MeasureTheory.IntegrableOn (fun y => ((max (-n ((chartAt E3 p).symm y)) 0 : ℤ) : ℝ)) K := by
    intro p K hK hKs
    exact (MeasureTheory.Integrable.neg_part (hint p K hK hKs)).congr
      (Filter.Eventually.of_forall fun y => by
        simp only [Int.cast_max, Int.cast_neg, Int.cast_zero])
  
  have hGc0 : 0 ≤ Gc := by
    refine Finset.sum_nonneg fun j _ => MeasureTheory.setIntegral_nonneg (hDm (q₀ j)) ?_
    rintro y ⟨x, ⟨⟨hx1, -⟩, hxs⟩, rfl⟩
    rw [(chartAt E3 (q₀ j)).left_inv hxs]
    exact mul_nonneg (mul_nonneg (hφp.2.1 j x) (hmc x hx1.le).le) (Real.sqrt_nonneg _)
  
  have hreal : ∀ (m : ℕ) (pp : Fin m → M) (W : Fin m → Set M),
      (∀ k, IsOpen (W k) ∧ W k ⊆ ΩR ∩ (chartAt E3 (pp k)).source) →
      Pairwise (fun k l => Disjoint (W k) (W l)) →
      ∀ Y : Fin m → E3 → E3, (∀ k, ContDiff ℝ ∞ (Y k) ∧ HasCompactSupport (Y k) ∧
        tsupport (Y k) ⊆ chartAt E3 (pp k) '' W k ∧ ∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
          g.coeff (chartAt E3 (pp k)).symm y i j * Y k y i * Y k y j ≤ 1) →
      Gc + ∑ k, ∫ y, (n' ((chartAt E3 (pp k)).symm y) : ℝ) *
          sepDensDiv (g.coeff (chartAt E3 (pp k)).symm) (Y k) y ≤ T.toReal := by
    intro m pp W hW hWd Y hY
    obtain ⟨V, K, hV, hV1, hKc, hKΩ, -, hid⟩ :=
      sepRiemPer_witness_field g ΩR hΩR m pp W hW hWd Y hY
    obtain ⟨N, q, φ, O', hφ, hO'o, hKO', hφ1, hvol⟩ :=
      calPartition_extend g ΩR hΩR q₀ φp hφp O₀ hO₀ hO₀1 K hKc hKΩ
    have hGc' : Gc = calVolSum g q φ {x | r₁ < ρ x ∧ n x ≠ 0} (fun x => g.levelMeanCurv ρ x) :=
      (hvol _ _ (fun x hx => hnO x hx.1 hx.2)).symm
    have hYt : ∀ k, tsupport (Y k) ⊆ (chartAt E3 (pp k)).target := fun k =>
      (hY k).2.2.1.trans (Set.image_subset_iff.2 fun x hx =>
        (chartAt E3 (pp k)).map_source ((hW k).2 hx).2)
    have hφK : ∀ j, IsCompact (chartAt E3 (q j) '' tsupport (φ j)) ∧
        chartAt E3 (q j) '' tsupport (φ j) ⊆ chartAt E3 (q j) '' (ΩR ∩ (chartAt E3 (q j)).source) :=
      fun j => ⟨(hφ.2.2.2 j).1.image_of_continuousOn ((chartAt E3 (q j)).continuousOn.mono
        (fun x hx => ((hφ.2.2.2 j).2 hx).2)), Set.image_mono (hφ.2.2.2 j).2⟩
    have hHj : ∀ j, ∃ C : ℝ, ∀ x ∈ tsupport (φ j), r₁ < ρ x → |g.levelMeanCurv ρ x| ≤ C := by
      intro j
      obtain ⟨C, hC⟩ := hH _ (hφ.2.2.2 j).1
      exact ⟨C, fun x hx h => hC x hx h.le⟩
    
    have hlay := dual_witness_layer g ΩR pp Y (fun k => ⟨(hY k).1, (hY k).2.1, hYt k⟩) q φ hφ V hV
      (hid N q φ hφ (fun x hx => hφ1 x (hKO' (Or.inl hx)))) n' hn'm
      (fun k => hintn' (pp k) _ (hY k).2.1.isCompact ((hY k).2.2.1.trans (Set.image_mono (hW k).2)))
      (fun j => hintn' (q j) _ (hφK j).1 (hφK j).2)
    
    have hVm : calSmoothField (fun x => -V x) := by
      intro p
      refine ((hV p).neg).congr (fun y _ => ?_)
      simp [map_neg]
    have hVm1 : ∀ x, g.g x (-V x) (-V x) ≤ 1 := fun x => by simpa using hV1 x
    have hOO : ∀ x, x ∈ O₀ → x ∈ O' := fun x hx => hKO' (Or.inr hx)
    refine le_of_forall_pos_le_add fun ε hε => ?_
    have h2p := dual_cal_step_fn g ρ r₁ hρ hmc ΩR q φ hφ O' hO'o hφ1 (fun x => max (n x) 0)
      (fun x => le_max_right _ _)
      (fun j => hcm (fun z => max z 0 = j) (fun z => max z 0 = j) _
        (fun x => by simp only [Set.mem_setOf_eq]; tauto))
      (fun x hx hw => hOO x (hnO x hx (fun h0 => hw (by simp [h0]))))
      (fun j => hintp (q j) _ (hφK j).1 (hφK j).2) hHj V hV hV1 (ε / 2) (by linarith)
    have h2m := dual_cal_step_fn g ρ r₁ hρ hmc ΩR q φ hφ O' hO'o hφ1 (fun x => max (-n x) 0)
      (fun x => le_max_right _ _)
      (fun j => hcm (fun z => max (-z) 0 = j) (fun z => max (-z) 0 = j) _
        (fun x => by simp only [Set.mem_setOf_eq]; tauto))
      (fun x hx hw => hOO x (hnO x hx (fun h0 => hw (by simp [h0]))))
      (fun j => hintm (q j) _ (hφK j).1 (hφK j).2) hHj (fun x => -V x) hVm hVm1 (ε / 2)
      (by linarith)
    beta_reduce at h2p h2m
    obtain ⟨hIp, V₁, hV₁, hV₁1, hcalp⟩ := h2p
    obtain ⟨hIm, V₂, hV₂, hV₂1, hcalm⟩ := h2m
    have hptp : ∀ z, (if r₁ < ρ z then (0 : ℝ) else ((max (n z) 0 : ℤ) : ℝ)) =
        ((max (n' z) 0 : ℤ) : ℝ) := by
      intro z; by_cases h : r₁ < ρ z <;> simp [hn', h]
    have hptm : ∀ z, (if r₁ < ρ z then (0 : ℝ) else ((max (-n z) 0 : ℤ) : ℝ)) =
        ((max (-n' z) 0 : ℤ) : ℝ) := by
      intro z; by_cases h : r₁ < ρ z <;> simp [hn', h]
    simp only [hptp] at hcalp
    simp only [hptm] at hcalm
    
    have hadd : ∀ j, ∫ y in chartAt E3 (q j) '' ({x | r₁ < ρ x ∧ n x ≠ 0} ∩ (chartAt E3 (q j)).source),
          φ j ((chartAt E3 (q j)).symm y) * g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
            Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det =
        (∫ y in chartAt E3 (q j) '' ({x : M | r₁ < ρ x ∧ max (n x) 0 ≠ 0} ∩ (chartAt E3 (q j)).source),
          φ j ((chartAt E3 (q j)).symm y) * g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
            Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det) +
        ∫ y in chartAt E3 (q j) '' ({x : M | r₁ < ρ x ∧ max (-n x) 0 ≠ 0} ∩ (chartAt E3 (q j)).source),
          φ j ((chartAt E3 (q j)).symm y) * g.levelMeanCurv ρ ((chartAt E3 (q j)).symm y) *
            Real.sqrt (g.coeff (chartAt E3 (q j)).symm y).det := by
      intro j
      have hDeq : {x | r₁ < ρ x ∧ n x ≠ 0} = {x : M | r₁ < ρ x ∧ max (n x) 0 ≠ 0} ∪
          {x : M | r₁ < ρ x ∧ max (-n x) 0 ≠ 0} := by
        ext x
        simp only [Set.mem_setOf_eq, Set.mem_union]
        constructor
        · rintro ⟨h1, h2⟩
          by_cases h : 0 < n x
          · left; exact ⟨h1, by omega⟩
          · right; exact ⟨h1, by omega⟩
        · rintro (⟨h1, h2⟩ | ⟨h1, h2⟩) <;> exact ⟨h1, by omega⟩
      have hDmm : MeasurableSet (chartAt E3 (q j) ''
          ({x : M | r₁ < ρ x ∧ max (-n x) 0 ≠ 0} ∩ (chartAt E3 (q j)).source)) :=
        hcm (fun z => max (-z) 0 ≠ 0) (fun _ => False) _
          (fun x => by simp only [Set.mem_setOf_eq]; tauto) (q j)
      rw [hDeq, Set.union_inter_distrib_right, Set.image_union]
      refine MeasureTheory.setIntegral_union ?_ hDmm (hIp j) (hIm j)
      rw [hT, hT]
      refine Set.disjoint_left.2 fun y hy hy' => ?_
      have a := hy.2.2
      have b := hy'.2.2
      omega
    have hGsum : calVolSum g q φ {x : M | r₁ < ρ x ∧ max (n x) 0 ≠ 0} (fun x => g.levelMeanCurv ρ x) +
        calVolSum g q φ {x : M | r₁ < ρ x ∧ max (-n x) 0 ≠ 0} (fun x => g.levelMeanCurv ρ x) =
        calVolSum g q φ {x | r₁ < ρ x ∧ n x ≠ 0} (fun x => g.levelMeanCurv ρ x) := by
      unfold calVolSum
      rw [← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun j _ => (hadd j).symm
    
    have h3 := (ENNReal.ofReal_le_iff_le_toReal hTt).1
      (dual_ge_divSum_pair g ΩR hΩR q φ hφ n hnm hloc V₁ V₂ hV₁ hV₂ hV₁1 hV₂1)
    linarith
  
  have hω : ∀ (p : M) (y : E3) (i : Fin 3), dualOmega (fun _ => (1 : ℂ)) p y i = 0 := by
    intro p y i
    simp [dualOmega, partialDeriv]
  have sumsup : ∀ (m : ℕ) (f : Fin m → (E3 → E3) → ENNReal) (a c : ENNReal),
      (∀ X : Fin m → E3 → E3, a + ∑ k, f k (X k) ≤ c) → a + ∑ k, ⨆ Z, f k Z ≤ c := by
    intro m
    induction m with
    | zero =>
      intro f a c h
      simpa using h (fun k => k.elim0)
    | succ m ih =>
      intro f a c h
      rw [Fin.sum_univ_succ, ← add_assoc, ENNReal.add_iSup, ENNReal.iSup_add]
      refine iSup_le fun Z => ?_
      refine ih (fun k => f k.succ) (a + f 0 Z) c fun X => ?_
      have := h (Fin.cons Z X)
      rw [Fin.sum_univ_succ] at this
      simpa [add_assoc] using this
  have trunc : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (v : E3 → ℝ)
      (U' Kc : Set E3) (Z : E3 → E3), (∀ y i, om y i = 0) → Kc = ∅ →
      ∃ Z' : E3 → E3, (ContDiff ℝ ∞ Z' ∧ HasCompactSupport Z' ∧ tsupport Z' ⊆ U' ∧
        ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Z' y i * Z' y j ≤ 1) ∧
        0 ≤ ∫ y, v y * sepDensDiv G Z' y ∧
        (⨆ (_ : (∀ y, y ∉ Kc → ContDiffAt ℝ ∞ Z y) ∧ HasCompactSupport Z ∧
            tsupport Z ⊆ U' ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Z y i * Z y j ≤ 1) ∧
            ∃ C : ℝ, ∀ y, |sepDensDiv G Z y| ≤ C),
          ENNReal.ofReal (∫ y, (v y * sepDensDiv G Z y +
            Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Z y i))) ≤
          ENNReal.ofReal (∫ y, v y * sepDensDiv G Z' y) := by
    intro G om v U' Kc Z hom hKc
    subst hKc
    have hsimp : ∀ X : E3 → E3, (fun y => v y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) = fun y => v y * sepDensDiv G X y := by
      intro X; funext y; simp [hom]
    have h0int : ∫ y, v y * sepDensDiv G (0 : E3 → E3) y = 0 := by
      have h0 : ∀ y, sepDensDiv G (0 : E3 → E3) y = 0 := by
        intro y; simp [sepDensDiv, partialDeriv]
      simp [h0]
    by_cases hc : (ContDiff ℝ ∞ Z ∧ HasCompactSupport Z ∧ tsupport Z ⊆ U' ∧
        ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Z y i * Z y j ≤ 1) ∧
        0 ≤ ∫ y, v y * sepDensDiv G Z y
    · refine ⟨Z, hc.1, hc.2, iSup_le fun _ => ?_⟩
      rw [hsimp]
    · have h0adm : ContDiff ℝ ∞ (0 : E3 → E3) ∧ HasCompactSupport (0 : E3 → E3) ∧
          tsupport (0 : E3 → E3) ⊆ U' ∧
          ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (0 : E3 → E3) y i * (0 : E3 → E3) y j ≤ 1 := by
        refine ⟨contDiff_const, HasCompactSupport.zero, ?_, fun y => by simp⟩
        rw [tsupport_zero]
        exact Set.empty_subset _
      refine ⟨0, h0adm, by rw [h0int], iSup_le fun hadm => ?_⟩
      rw [hsimp]
      have hcd : ContDiff ℝ ∞ Z := contDiff_iff_contDiffAt.2 fun y => hadm.1 y (Set.notMem_empty y)
      have hneg : ∫ y, v y * sepDensDiv G Z y ≤ 0 := by
        by_contra h
        exact hc ⟨⟨hcd, hadm.2.1, hadm.2.2.1, hadm.2.2.2.1⟩, le_of_lt (not_le.1 h)⟩
      rw [ENNReal.ofReal_of_nonpos hneg]
      exact zero_le _
  have key : ∀ (m : ℕ) (pp : Fin m → M) (W : Fin m → Set M),
      ((∀ k, IsOpen (W k) ∧ W k ⊆ ΩR ∩ (chartAt E3 (pp k)).source) ∧
        Pairwise (fun k l => Disjoint (W k) (W l))) →
      ENNReal.ofReal Gc + ∑ k, dualVarG (g.coeff (chartAt E3 (pp k)).symm)
        (dualOmega (fun _ => (1 : ℂ)) (pp k)) (fun y => (n' ((chartAt E3 (pp k)).symm y) : ℝ))
        (chartAt E3 (pp k) '' W k) (chartAt E3 (pp k) '' (∅ ∩ (chartAt E3 (pp k)).source)) ≤ T := by
    intro m pp W hW
    have hguard : ∀ k, MeasureTheory.LocallyIntegrableOn
        (fun y => (n' ((chartAt E3 (pp k)).symm y) : ℝ)) (chartAt E3 (pp k) '' W k) := by
      intro k
      have hWo : IsOpen (chartAt E3 (pp k) '' W k) :=
        (chartAt E3 (pp k)).isOpen_image_of_subset_source (hW.1 k).1
          (fun x hx => ((hW.1 k).2 hx).2)
      refine (MeasureTheory.locallyIntegrableOn_iff hWo.isLocallyClosed).2 fun K hKs hK => ?_
      exact hintn' (pp k) K hK (hKs.trans (Set.image_mono (hW.1 k).2))
    simp only [dualVarG, hguard, not_true_eq_false, iSup_false, bot_sup_eq]
    refine sumsup m _ _ _ fun X => ?_
    beta_reduce
    choose Y hYadm hYnn hYle using fun k => trunc (g.coeff (chartAt E3 (pp k)).symm)
      (dualOmega (fun _ => (1 : ℂ)) (pp k)) (fun y => (n' ((chartAt E3 (pp k)).symm y) : ℝ))
      (chartAt E3 (pp k) '' W k) (chartAt E3 (pp k) '' (∅ ∩ (chartAt E3 (pp k)).source)) (X k)
      (hω (pp k)) (by simp)
    have h8 := hreal m pp W hW.1 hW.2 Y hYadm
    calc _ ≤ ENNReal.ofReal Gc + ∑ k, ENNReal.ofReal (∫ y, (n' ((chartAt E3 (pp k)).symm y) : ℝ) *
            sepDensDiv (g.coeff (chartAt E3 (pp k)).symm) (Y k) y) := by
          gcongr with k
          exact hYle k
      _ = ENNReal.ofReal (Gc + ∑ k, ∫ y, (n' ((chartAt E3 (pp k)).symm y) : ℝ) *
            sepDensDiv (g.coeff (chartAt E3 (pp k)).symm) (Y k) y) := by
          rw [ENNReal.ofReal_add hGc0 (Finset.sum_nonneg fun k _ => hYnn k),
            ENNReal.ofReal_sum_of_nonneg fun k _ => hYnn k]
      _ ≤ ENNReal.ofReal T.toReal := ENNReal.ofReal_le_ofReal h8
      _ = T := ENNReal.ofReal_toReal hTt
  have hcT : ENNReal.ofReal Gc ≤ T := by
    have h := key 0 (fun k => k.elim0) (fun k => k.elim0) ⟨fun k => k.elim0, fun k => k.elim0⟩
    simpa using h
  have hle : dualRiemVar g (fun _ => (1 : ℂ)) (fun x => (n' x : ℝ)) ΩR ∅ ≤
      T - ENNReal.ofReal Gc := by
    unfold dualRiemVar
    refine iSup_le fun m => iSup_le fun pp => iSup_le fun W => iSup_le fun hW => ?_
    exact ENNReal.le_sub_of_add_le_left ENNReal.ofReal_ne_top (key m pp W hW)
  calc _ ≤ (T - ENNReal.ofReal Gc) + ENNReal.ofReal Gc := by gcongr
    _ = T := tsub_add_cancel_of_le hcT

theorem dual_far_vanish [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds) (Ψ : C(M, Circle))
    (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (Ω Kv Kc : Set M) (hΩ : IsOpen Ω) (hKv : IsCompact Kv) (hKvΩ : Kv ⊆ Ω)
    (φ₀ : M → ℝ) (hφ₀ : ∀ x : M, Circle.exp (φ₀ x) = Ψ x) (hφ₀m : dualChartMeas φ₀)
    (n : M → ℤ) (hn0 : ∀ x : M, x ∉ Kv → n x = 0)
    (hnm : ∀ j : ℤ, sepChartMeas {x | n x = j})
    (hfin : dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc
      < ⊤)
    (hmin : ∀ n' : M → ℤ, (∀ x : M, x ∉ Kv → n' x = 0) →
      (∀ j : ℤ, sepChartMeas {x | n' x = j}) →
      dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc ≤
        dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ)) Ω Kc)
    (a b : ℝ) (ha : 2 ≤ a) (hab : a + 1 < b)
    (hbar : ∀ w : M → ℝ, (∀ z : E3, 1 < ‖z‖ → w ((hAF.ends k).Φ z) = ‖z‖) →
      ∀ y : E3, a < ‖y‖ → 0 < g.levelMeanCurv w ((hAF.ends k).Φ y))
    (hΨa : ∀ y : E3, a < ‖y‖ → Ψ ((hAF.ends k).Φ y) = 1)
    (hφ₀a : ∀ y : E3, a < ‖y‖ → φ₀ ((hAF.ends k).Φ y) = 0)
    (hKvb : ∀ y : E3, b < ‖y‖ → (hAF.ends k).Φ y ∉ Kv)
    (hKca : ∀ y : E3, a < ‖y‖ → (hAF.ends k).Φ y ∉ Kc)
    (hΩa : ∀ y : E3, a < ‖y‖ → ‖y‖ < b + 1 → (hAF.ends k).Φ y ∈ Ω) :
    sepChartNull {x : M | x ∈ (hAF.ends k).Φ '' {y : E3 | a + 1 < ‖y‖} ∧ n x ≠ 0} :=
by
  classical
  
  obtain ⟨ρ, hρ, hiff, hval, hlow, hmc, hHb⟩ := dual_radial_function g hAF k a ha hbar
  have hρc : Continuous ρ := hρ.continuous
  have hopenρ : ∀ c : ℝ, IsOpen {x : M | c < ρ x} := fun c => isOpen_lt continuous_const hρc
  have hmc1 : ∀ p : M, a + 1 ≤ ρ p → 0 < g.levelMeanCurv ρ p := fun p hp => hmc p (by linarith)
  have hH1 : ∀ K : Set M, IsCompact K → ∃ C : ℝ, ∀ x ∈ K, a + 1 ≤ ρ x →
      |g.levelMeanCurv ρ x| ≤ C := by
    intro K hK
    obtain ⟨C, hC⟩ := hHb K hK
    exact ⟨C, fun x hx hx' => hC x hx (by linarith)⟩
  have hfarA : ∀ (c : ℝ) (x : M), a + 1 / 4 ≤ c → c < ρ x →
      ∃ y : E3, a < ‖y‖ ∧ (hAF.ends k).Φ y = x := by
    intro c x hc hx
    obtain ⟨y, hy, hyx⟩ := (hiff c x hc).1 hx
    exact ⟨y, by have : c < ‖y‖ := hy; linarith, hyx⟩
  have hKcρ : ∀ x ∈ Kc, ρ x ≤ a + 1 / 8 := by
    intro x hx
    apply hlow
    rintro ⟨y, hy, rfl⟩
    exact hKca y hy hx
  
  have hT : ∀ (p : M) (S : Set M), chartAt E3 p '' (S ∩ (chartAt E3 p).source) =
      (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' S := by
    intro p S
    rw [Set.inter_comm, OpenPartialHomeomorph.image_source_inter_eq']
  have hmeasρ : ∀ (p : M) (c : ℝ),
      MeasurableSet ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | c < ρ x}) :=
    fun p c => ((chartAt E3 p).isOpen_inter_preimage_symm (hopenρ c)).measurableSet
  have hmeasn : ∀ (p : M) (j : ℤ),
      MeasurableSet ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | n x = j}) := by
    intro p j
    have h := hnm j p
    rw [hT] at h
    exact h
  
  have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
  have hK0 : IsCompact ((hAF.ends k).Φ '' {y : E3 | a + 1 ≤ ‖y‖ ∧ ‖y‖ ≤ b}) := by
    have hc : IsCompact {y : E3 | a + 1 ≤ ‖y‖ ∧ ‖y‖ ≤ b} := by
      refine (isCompact_closedBall (0 : E3) b).of_isClosed_subset ?_ ?_
      · exact (isClosed_le continuous_const continuous_norm).inter
          (isClosed_le continuous_norm continuous_const)
      · intro y hy
        rw [mem_closedBall_zero_iff]
        exact hy.2
    have hsub : {y : E3 | a + 1 ≤ ‖y‖ ∧ ‖y‖ ≤ b} ⊆ (hAF.ends k).Φ.source := by
      intro y hy
      rw [hsrc]
      show (1 : ℝ) < ‖y‖
      linarith [hy.1]
    have hcont : ContinuousOn ((hAF.ends k).Φ : E3 → M) (hAF.ends k).Φ.source :=
      (hAF.ends k).Φ.contMDiffOn_toFun.continuousOn
    exact hc.image_of_continuousOn (hcont.mono hsub)
  have hΩso : IsOpen {x : M | x ∈ Ω ∧ a + 3 / 4 < ρ x} := hΩ.inter (hopenρ _)
  have hK0s : (hAF.ends k).Φ '' {y : E3 | a + 1 ≤ ‖y‖ ∧ ‖y‖ ≤ b} ⊆
      {x : M | x ∈ Ω ∧ a + 3 / 4 < ρ x} := by
    rintro _ ⟨y, ⟨hy1, hy2⟩, rfl⟩
    refine ⟨hΩa y (by linarith) (by linarith), ?_⟩
    rw [hval y (by linarith)]
    linarith
  have hempty : calPartition (fun i : Fin 0 => i.elim0) (fun i : Fin 0 => i.elim0)
      {x : M | x ∈ Ω ∧ a + 3 / 4 < ρ x} :=
    ⟨fun j => j.elim0, fun j => j.elim0, fun x => by simp, fun j => j.elim0⟩
  obtain ⟨N0, q0, φ0, O0, hφ0, hO0, hKO, hO01, -⟩ :=
    calPartition_extend g _ hΩso _ _ hempty ∅ isOpen_empty (by simp) _ hK0 hK0s
  have hnO : ∀ x : M, a + 1 < ρ x → n x ≠ 0 → x ∈ O0 := by
    intro x hx hnx
    obtain ⟨y, hy, rfl⟩ := (hiff (a + 1) x (by linarith)).1 hx
    apply hKO
    left
    refine ⟨y, ⟨le_of_lt hy, ?_⟩, rfl⟩
    by_contra hb
    push_neg at hb
    exact hnx (hn0 _ (hKvb y hb))
  have hφ0R : ∀ s : ℝ, s ≤ a + 3 / 4 → calPartition q0 φ0 {x : M | x ∈ Ω ∧ s < ρ x} := by
    intro s hs
    refine ⟨hφ0.1, hφ0.2.1, hφ0.2.2.1, fun j => ⟨(hφ0.2.2.2 j).1, fun x hx => ?_⟩⟩
    have h := (hφ0.2.2.2 j).2 hx
    exact ⟨⟨h.1.1, lt_of_le_of_lt hs h.1.2⟩, h.2⟩
  
  set G : ℝ := calVolSum g q0 φ0 {x : M | a + 1 < ρ x ∧ n x ≠ 0}
    (fun x => g.levelMeanCurv ρ x) with hGdef
  set c : ENNReal := ENNReal.ofReal (2 * Real.pi) * ENNReal.ofReal G with hcdef
  
  obtain ⟨n', hn'⟩ : ∃ n' : M → ℤ, n' = fun x => if a + 1 < ρ x then 0 else n x := ⟨_, rfl⟩
  have hn'0 : ∀ x : M, x ∉ Kv → n' x = 0 := by
    intro x hx
    simp [hn', hn0 x hx]
  have hn'm : ∀ j : ℤ, sepChartMeas {x | n' x = j} := by
    intro j p
    rw [hT]
    by_cases hj : j = 0
    · have heq : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x | n' x = j} =
          ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | a + 1 < ρ x}) ∪
            ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | n x = j}) := by
        subst hj
        ext y
        simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_setOf_eq, Set.mem_union, hn']
        by_cases h : a + 1 < ρ ((chartAt E3 p).symm y) <;> simp [h] <;> tauto
      rw [heq]
      exact (hmeasρ p _).union (hmeasn p j)
    · have heq : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x | n' x = j} =
          ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | n x = j}) \
            ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | a + 1 < ρ x}) := by
        ext y
        simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_setOf_eq, Set.mem_diff, hn']
        by_cases h : a + 1 < ρ ((chartAt E3 p).symm y)
        · simp [h, Ne.symm hj]
          tauto
        · simp [h]
      rw [heq]
      exact (hmeasn p j).diff (hmeasρ p _)
  have hmin' := hmin n' hn'0 hn'm
  have hfin' : dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc
      ≠ ⊤ := hfin.ne
  
  have hband : ∀ t δ : ℝ, 0 < δ → a + 1 / 4 ≤ t - δ → t + δ ≤ a + 3 / 4 →
      c ≤ dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ))
        {x | x ∈ Ω ∧ t - δ < ρ x ∧ ρ x < t + δ} Kc := by
    intro t δ hδ h1 h2
    have hΩRo : IsOpen {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x} := hΩ.inter (hopenρ _)
    have hΨR : ∀ x ∈ {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x}, (Ψ x : ℂ) = 1 := by
      intro x hx
      obtain ⟨y, hy, rfl⟩ := hfarA (t + δ / 8) x (by linarith) hx.2
      rw [hΨa y hy]
      simp
    have hφR : ∀ x ∈ {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x}, φ₀ x = 0 := by
      intro x hx
      obtain ⟨y, hy, rfl⟩ := hfarA (t + δ / 8) x (by linarith) hx.2
      exact hφ₀a y hy
    have hKcR : Disjoint {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x} Kc := by
      refine Set.disjoint_left.2 fun x hx hxK => ?_
      have := hKcρ x hxK
      have := hx.2
      linarith
    have hU1 := dualRiemVar_untwist g (fun x => (Ψ x : ℂ)) φ₀ n _ Kc hΩRo hΨR hφR hKcR
    have hU2 := dualRiemVar_untwist g (fun x => (Ψ x : ℂ)) φ₀ n' _ Kc hΩRo hΨR hφR hKcR
    have hcal : dualRiemVar g (fun _ => (1 : ℂ)) (fun x => (n' x : ℝ))
          {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x} ∅ + ENNReal.ofReal G ≤
        dualRiemVar g (fun _ => (1 : ℂ)) (fun x => (n x : ℝ))
          {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x} ∅ := by
      have h := dualTV_far_calibration g n _ ρ (a + 1) hρ hmc1 hH1 hΩRo hnm q0 φ0
        (hφ0R _ (by linarith)) O0 hO0 hO01 hnO
      rw [hn']
      exact h
    have hR : dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ))
          {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x} Kc + c ≤
        dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ))
          {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x} Kc := by
      rw [hU1, hU2, hcdef, ← mul_add]
      exact mul_le_mul_left' hcal _
    have hsplit := dualRiemVar_band_split g (fun x => (Ψ x : ℂ)) hΨs
      (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ)) ρ hρ
      Ω Kc t δ hδ (fun x hx => by have := hKcρ x hx; linarith)
      (fun x hx => by
        have hnot : ¬ (a + 1 < ρ x) := by linarith
        simp [hn', hnot])
    have hLR : Pairwise (fun i j : Fin 2 => Disjoint
        (![{x : M | x ∈ Ω ∧ ρ x < t - δ / 8}, {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x}] i)
        (![{x : M | x ∈ Ω ∧ ρ x < t - δ / 8}, {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x}] j)) := by
      have hd : Disjoint {x : M | x ∈ Ω ∧ ρ x < t - δ / 8} {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x} :=
        Set.disjoint_left.2 fun x hx hx' => by
          have := hx.2
          have := hx'.2
          linarith
      intro i j hij
      fin_cases i <;> fin_cases j
      · exact absurd rfl hij
      · exact hd
      · exact hd.symm
      · exact absurd rfl hij
    have hsup := dualRiemVar_disjoint_sum_le g (fun x => (Ψ x : ℂ))
      (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc
      ![{x : M | x ∈ Ω ∧ ρ x < t - δ / 8}, {x : M | x ∈ Ω ∧ t + δ / 8 < ρ x}]
      (fun i => by fin_cases i <;> exact fun x hx => hx.1) hLR
    rw [Fin.sum_univ_two] at hsup
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.head_cons] at hsup
    have key : dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc
          + c ≤
        dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc +
          dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ))
            {x | x ∈ Ω ∧ t - δ < ρ x ∧ ρ x < t + δ} Kc := by
      calc _ ≤ dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ)) Ω Kc
            + c := add_le_add hmin' le_rfl
        _ ≤ (dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ))
                {x | x ∈ Ω ∧ ρ x < t - δ / 8} Kc +
              dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ))
                {x | x ∈ Ω ∧ t - δ < ρ x ∧ ρ x < t + δ} Kc +
              dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ))
                {x | x ∈ Ω ∧ t + δ / 8 < ρ x} Kc) + c := add_le_add hsplit le_rfl
        _ = (dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ))
                {x | x ∈ Ω ∧ ρ x < t - δ / 8} Kc +
              (dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ))
                {x | x ∈ Ω ∧ t + δ / 8 < ρ x} Kc + c)) +
              dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ))
                {x | x ∈ Ω ∧ t - δ < ρ x ∧ ρ x < t + δ} Kc := by ring
        _ ≤ (dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ))
                {x | x ∈ Ω ∧ ρ x < t - δ / 8} Kc +
              dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ))
                {x | x ∈ Ω ∧ t + δ / 8 < ρ x} Kc) +
              dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ))
                {x | x ∈ Ω ∧ t - δ < ρ x ∧ ρ x < t + δ} Kc :=
            add_le_add (add_le_add le_rfl hR) le_rfl
        _ ≤ _ := add_le_add hsup le_rfl
    exact (ENNReal.add_le_add_iff_left hfin').1 key
  
  have hN : ∀ N : ℕ, 0 < N → (N : ENNReal) * c ≤
      dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc := by
    intro N hNpos
    have hNr : (0 : ℝ) < N := by exact_mod_cast hNpos
    set δ : ℝ := 1 / (4 * N) with hδdef
    have hδ : 0 < δ := by positivity
    have hδN : (N : ℝ) * δ = 1 / 4 := by
      rw [hδdef]
      field_simp
    have hi : ∀ i : Fin N, a + 1 / 4 ≤ a + 1 / 4 + (2 * (i : ℝ) + 1) * δ - δ ∧
        a + 1 / 4 + (2 * (i : ℝ) + 1) * δ + δ ≤ a + 3 / 4 := by
      intro i
      have hi0 : (0 : ℝ) ≤ (i : ℝ) := Nat.cast_nonneg _
      have hiN : (i : ℝ) + 1 ≤ N := by exact_mod_cast i.isLt
      constructor
      · nlinarith
      · nlinarith
    have hdisj : Pairwise (fun i j : Fin N => Disjoint
        {x : M | x ∈ Ω ∧ a + 1 / 4 + (2 * (i : ℝ) + 1) * δ - δ < ρ x ∧
          ρ x < a + 1 / 4 + (2 * (i : ℝ) + 1) * δ + δ}
        {x : M | x ∈ Ω ∧ a + 1 / 4 + (2 * (j : ℝ) + 1) * δ - δ < ρ x ∧
          ρ x < a + 1 / 4 + (2 * (j : ℝ) + 1) * δ + δ}) := by
      have hlt : ∀ i j : Fin N, i < j →
          a + 1 / 4 + (2 * (i : ℝ) + 1) * δ + δ ≤ a + 1 / 4 + (2 * (j : ℝ) + 1) * δ - δ := by
        intro i j hij
        have h' : (i : ℕ) + 1 ≤ (j : ℕ) := hij
        have h'' : (i : ℝ) + 1 ≤ (j : ℝ) := by exact_mod_cast h'
        nlinarith
      intro i j hij
      rcases lt_or_gt_of_ne hij with h | h
      · refine Set.disjoint_left.2 fun x hx hx' => ?_
        have := hlt i j h
        have := hx.2.2
        have := hx'.2.1
        linarith
      · refine Set.disjoint_left.2 fun x hx hx' => ?_
        have := hlt j i h
        have := hx.2.1
        have := hx'.2.2
        linarith
    have hsum := dualRiemVar_disjoint_sum_le g (fun x => (Ψ x : ℂ))
      (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc
      (fun i : Fin N => {x : M | x ∈ Ω ∧ a + 1 / 4 + (2 * (i : ℝ) + 1) * δ - δ < ρ x ∧
          ρ x < a + 1 / 4 + (2 * (i : ℝ) + 1) * δ + δ})
      (fun i x hx => hx.1) hdisj
    calc (N : ENNReal) * c = ∑ _i : Fin N, c := by
          rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
      _ ≤ _ := Finset.sum_le_sum (fun i _ => hband _ δ hδ (hi i).1 (hi i).2)
      _ ≤ _ := hsum
  
  have hc0 : c = 0 := by
    by_contra hc
    obtain ⟨m, hm⟩ := ENNReal.exists_nat_mul_gt hc hfin'
    have hmpos : 0 < m := by
      rcases Nat.eq_zero_or_pos m with h | h
      · subst h
        simp at hm
      · exact h
    exact absurd (lt_of_lt_of_le hm (hN m hmpos)) (lt_irrefl _)
  have hG : G ≤ 0 := by
    have h2pi : ENNReal.ofReal (2 * Real.pi) ≠ 0 :=
      (ENNReal.ofReal_pos.2 Real.two_pi_pos).ne'
    rw [hcdef, mul_eq_zero] at hc0
    rcases hc0 with h | h
    · exact absurd h h2pi
    · exact ENNReal.ofReal_eq_zero.1 h
  
  have hDm : sepChartMeas {x : M | a + 1 < ρ x ∧ n x ≠ 0} := by
    intro p
    rw [hT]
    have heq : (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | a + 1 < ρ x ∧ n x ≠ 0} =
        ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | a + 1 < ρ x}) \
          ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' {x : M | n x = 0}) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_setOf_eq, Set.mem_diff]
      tauto
    rw [heq]
    exact (hmeasρ p _).diff (hmeasn p 0)
  have hnullD := calVolSum_levelMeanCurv_null g ρ (a + 1) _ hρ hmc1 q0 φ0 hφ0
    {x : M | a + 1 < ρ x ∧ n x ≠ 0} hDm (fun x hx => hx.1)
    (fun x hx => hO01 x (hnO x hx.1 hx.2)) hG
  intro p
  refine measure_mono_null (Set.image_mono (Set.inter_subset_inter_left _ ?_)) (hnullD p)
  rintro x ⟨hx, hnx⟩
  exact ⟨(hiff (a + 1) x (by linarith)).2 hx, hnx⟩

theorem dualVarG_lift_twist (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (T : Set E3) (hT : IsOpen T)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) T)
    (hdet : ∀ y ∈ T, 0 < (G y).det)
    (om : E3 → Fin 3 → ℝ) (ℓ : E3 → ℝ) (hℓ : ContDiffOn ℝ ∞ ℓ T)
    (hom : ∀ y ∈ T, ∀ i : Fin 3, om y i = partialDeriv i ℓ y)
    (u v : E3 → ℝ) (V Kc : Set E3) (hV : IsOpen V) (hVT : V ⊆ T) (hVKc : Disjoint V Kc)
    (huv : ∀ y ∈ V, u y = ℓ y + 2 * Real.pi * v y) :
    dualVarG G om u V Kc = ENNReal.ofReal (2 * Real.pi) * dualVarG G (fun _ _ => (0 : ℝ)) v V ∅ :=
by
  have hpi : (0 : ℝ) < 2 * Real.pi := by positivity
  have hc0 : ENNReal.ofReal (2 * Real.pi) ≠ 0 := by
    rw [ne_eq, ENNReal.ofReal_eq_zero, not_le]
    exact hpi
  
  have hsq : ∀ y ∈ T, ContDiffAt ℝ ∞ (fun z => Real.sqrt (G z).det) y := by
    intro y hy
    have h : ∀ a b : Fin 3, ContDiffAt ℝ ∞ (fun z => G z a b) y :=
      fun a b => (hG a b).contDiffAt (hT.mem_nhds hy)
    have hdet' : ContDiffAt ℝ ∞ (fun z => (G z).det) y := by
      have e1 : (fun z => (G z).det) = fun z => G z 0 0 * G z 1 1 * G z 2 2
          - G z 0 0 * G z 1 2 * G z 2 1 - G z 0 1 * G z 1 0 * G z 2 2
          + G z 0 1 * G z 1 2 * G z 2 0 + G z 0 2 * G z 1 0 * G z 2 1
          - G z 0 2 * G z 1 1 * G z 2 0 := funext fun z => Matrix.det_fin_three (G z)
      rw [e1]
      exact (((((((h 0 0).mul (h 1 1)).mul (h 2 2)).sub (((h 0 0).mul (h 1 2)).mul (h 2 1))).sub
        (((h 0 1).mul (h 1 0)).mul (h 2 2))).add (((h 0 1).mul (h 1 2)).mul (h 2 0))).add
        (((h 0 2).mul (h 1 0)).mul (h 2 1))).sub (((h 0 2).mul (h 1 1)).mul (h 2 0))
    exact hdet'.sqrt (hdet y hy).ne'
  have hℓT : ∀ y ∈ T, ContDiffAt ℝ ∞ ℓ y := fun y hy => hℓ.contDiffAt (hT.mem_nhds hy)
  
  have key : ∀ X : E3 → E3, ContDiff ℝ ∞ X → HasCompactSupport X → tsupport X ⊆ T →
      (∀ y, y ∉ tsupport X → sepDensDiv G X y = 0) ∧
      Integrable (fun y => ℓ y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) ∧
      ∫ y, (ℓ y * sepDensDiv G X y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) = 0 := by
    intro X hX hXc hXT
    have hXi : ∀ i : Fin 3, ContDiff ℝ ∞ (fun z => X z i) := by
      intro i
      have := (EuclideanSpace.proj i : E3 →L[ℝ] ℝ).contDiff.comp hX
      exact this
    have hev : ∀ y, y ∉ tsupport X → ∀ φ : E3 → ℝ, (∀ z, X z = 0 → φ z = 0) →
        φ =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) := by
      intro y hy φ hφ
      filter_upwards [notMem_tsupport_iff_eventuallyEq.1 hy] with z hz
      exact hφ z hz
    have hpd0 : ∀ y, y ∉ tsupport X → ∀ φ : E3 → ℝ, (∀ z, X z = 0 → φ z = 0) →
        ∀ i, partialDeriv i φ y = 0 := by
      intro y hy φ hφ i
      unfold partialDeriv
      rw [(hev y hy φ hφ).fderiv_eq]
      simp
    have hD0 : ∀ y, y ∉ tsupport X → sepDensDiv G X y = 0 := by
      intro y hy
      unfold sepDensDiv
      exact Finset.sum_eq_zero (fun i _ => hpd0 y hy _ (fun z hz => by simp [hz]) i)
    have hsmT : ∀ i, ∀ y ∈ T, ContDiffAt ℝ ∞ (fun z => Real.sqrt (G z).det * X z i) y :=
      fun i y hy => (hsq y hy).mul (hXi i).contDiffAt
    have hF : ∀ i, ContDiff ℝ ∞ (fun z => ℓ z * (Real.sqrt (G z).det * X z i)) := by
      intro i
      rw [contDiff_iff_contDiffAt]
      intro y
      by_cases hy : y ∈ tsupport X
      · exact (hℓT y (hXT hy)).mul (hsmT i y (hXT hy))
      · exact contDiffAt_const.congr_of_eventuallyEq (hev y hy _ (fun z hz => by simp [hz]))
    have hpdF : ∀ i, ∀ y ∈ T, partialDeriv i (fun z => ℓ z * (Real.sqrt (G z).det * X z i)) y =
        ℓ y * partialDeriv i (fun z => Real.sqrt (G z).det * X z i) y +
          Real.sqrt (G y).det * X y i * partialDeriv i ℓ y := by
      intro i y hy
      have h1 := ((hℓT y hy).differentiableAt (by simp)).hasFDerivAt
      have h2 := ((hsmT i y hy).differentiableAt (by simp)).hasFDerivAt
      have h3 : HasFDerivAt (fun z => ℓ z * (Real.sqrt (G z).det * X z i))
          (ℓ y • fderiv ℝ (fun z => Real.sqrt (G z).det * X z i) y +
            (Real.sqrt (G y).det * X y i) • fderiv ℝ ℓ y) y := h1.mul h2
      unfold partialDeriv
      rw [h3.fderiv]
      simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
    have hR : ∀ y, ℓ y * sepDensDiv G X y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i =
        ∑ i : Fin 3, partialDeriv i (fun z => ℓ z * (Real.sqrt (G z).det * X z i)) y := by
      intro y
      by_cases hy : y ∈ tsupport X
      · have hyT := hXT hy
        unfold sepDensDiv
        rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
        refine Finset.sum_congr rfl (fun i _ => ?_)
        rw [hpdF i y hyT, hom y hyT i]
        ring
      · have h1 : ∑ i : Fin 3, partialDeriv i (fun z => ℓ z * (Real.sqrt (G z).det * X z i)) y
            = 0 := Finset.sum_eq_zero fun i _ => hpd0 y hy _ (fun z hz => by simp [hz]) i
        rw [h1, hD0 y hy, image_eq_zero_of_notMem_tsupport hy]
        simp
    have hFc : ∀ i, HasCompactSupport (fun z => ℓ z * (Real.sqrt (G z).det * X z i)) := by
      intro i
      refine hXc.mono' ?_
      intro z hz
      rw [Function.mem_support] at hz
      apply subset_tsupport
      rw [Function.mem_support]
      intro hX0
      exact hz (by simp [hX0])
    have hdF : ∀ i, Integrable (fun y =>
        partialDeriv i (fun z => ℓ z * (Real.sqrt (G z).det * X z i)) y) := by
      intro i
      have hc : Continuous (fun y =>
          fderiv ℝ (fun z => ℓ z * (Real.sqrt (G z).det * X z i)) y (e i)) :=
        ((hF i).continuous_fderiv (by simp)).clm_apply continuous_const
      exact hc.integrable_of_hasCompactSupport ((hFc i).fderiv_apply ℝ (e i))
    have hint0 : ∀ i, ∫ y, partialDeriv i (fun z => ℓ z * (Real.sqrt (G z).det * X z i)) y = 0 := by
      intro i
      have h := integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable (μ := volume)
        (f := fun _ : E3 => (1 : ℝ)) (g := fun z => ℓ z * (Real.sqrt (G z).det * X z i))
        (v := e i) ?_ ?_ ?_ (differentiable_const _) ((hF i).differentiable (by simp))
      · simpa [partialDeriv] using h
      · simp
      · simpa [partialDeriv] using hdF i
      · simpa using (hF i).continuous.integrable_of_hasCompactSupport (hFc i)
    have hfun : (fun y => ℓ y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) = fun y =>
        ∑ i : Fin 3, partialDeriv i (fun z => ℓ z * (Real.sqrt (G z).det * X z i)) y := funext hR
    refine ⟨hD0, ?_, ?_⟩
    · rw [hfun]
      exact integrable_finset_sum _ (fun i _ => hdF i)
    · rw [hfun, integral_finset_sum _ (fun i _ => hdF i)]
      exact Finset.sum_eq_zero (fun i _ => hint0 i)
  
  have step : ∀ X : E3 → E3, ContDiff ℝ ∞ X → HasCompactSupport X → tsupport X ⊆ V →
      ENNReal.ofReal (∫ y, (u y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) =
      ENNReal.ofReal (2 * Real.pi) * ENNReal.ofReal (∫ y, (v y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, (fun _ _ => (0 : ℝ)) y i * X y i)) := by
    intro X hX hXc hXV
    obtain ⟨hD0, hRi, hR0⟩ := key X hX hXc (hXV.trans hVT)
    have hrhs : (fun y => v y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, (fun _ _ => (0 : ℝ)) y i * X y i) =
        fun y => v y * sepDensDiv G X y := by
      funext y
      simp
    have hpt : (fun y => u y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) =
        fun y => 2 * Real.pi * (v y * sepDensDiv G X y) + (ℓ y * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) := by
      funext y
      by_cases hy : y ∈ tsupport X
      · rw [huv y (hXV hy)]
        ring
      · rw [hD0 y hy]
        ring
    rw [hrhs, hpt]
    have hval : ∫ y, (2 * Real.pi * (v y * sepDensDiv G X y) + (ℓ y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) =
        2 * Real.pi * ∫ y, v y * sepDensDiv G X y := by
      by_cases hvi : Integrable (fun y => v y * sepDensDiv G X y)
      · rw [integral_add (hvi.const_mul _) hRi, hR0, add_zero, integral_const_mul]
      · have hni : ¬ Integrable (fun y => 2 * Real.pi * (v y * sepDensDiv G X y) +
            (ℓ y * sepDensDiv G X y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) := by
          intro hI
          apply hvi
          refine ((hI.sub hRi).div_const (2 * Real.pi)).congr (Eventually.of_forall fun y => ?_)
          simp only [Pi.sub_apply, add_sub_cancel_right]
          exact mul_div_cancel_left₀ _ hpi.ne'
        rw [integral_undef hni, integral_undef hvi, mul_zero]
    rw [hval, ENNReal.ofReal_mul hpi.le]
  
  have hadm : ∀ X : E3 → E3,
      ((∀ y, y ∉ Kc → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ V ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) ↔
      ((∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ V ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) := by
    intro X
    constructor
    · rintro ⟨h1, h2, h3, h4, h5⟩
      refine ⟨fun y _ => ?_, h2, h3, h4, h5⟩
      by_cases hy : y ∈ Kc
      · have hyV : y ∉ V := Set.disjoint_right.1 hVKc hy
        have hyX : y ∉ tsupport X := fun h => hyV (h3 h)
        refine (contDiffAt_const (c := (0 : E3))).congr_of_eventuallyEq ?_
        filter_upwards [notMem_tsupport_iff_eventuallyEq.1 hyX] with z hz
        exact hz
      · exact h1 y hy
    · rintro ⟨h1, h2, h3, h4, h5⟩
      exact ⟨fun y _ => h1 y (fun h => h), h2, h3, h4, h5⟩
  
  have hguard : LocallyIntegrableOn u V ↔ LocallyIntegrableOn v V := by
    rw [locallyIntegrableOn_iff hV.isLocallyClosed, locallyIntegrableOn_iff hV.isLocallyClosed]
    have hℓc : ContinuousOn ℓ V := hℓ.continuousOn.mono hVT
    constructor
    · intro h k hkV hk
      have h1 : IntegrableOn (fun y => (u y - ℓ y) / (2 * Real.pi)) k :=
        ((h k hkV hk).sub ((hℓc.mono hkV).integrableOn_compact hk)).div_const _
      refine h1.congr_fun (fun y hy => ?_) hk.isClosed.measurableSet
      show (u y - ℓ y) / (2 * Real.pi) = v y
      rw [huv y (hkV hy), add_sub_cancel_left, mul_div_cancel_left₀ _ hpi.ne']
    · intro h k hkV hk
      have h1 : IntegrableOn (fun y => ℓ y + 2 * Real.pi * v y) k :=
        ((hℓc.mono hkV).integrableOn_compact hk).add ((h k hkV hk).const_mul _)
      refine h1.congr_fun (fun y hy => ?_) hk.isClosed.measurableSet
      show ℓ y + 2 * Real.pi * v y = u y
      rw [huv y (hkV hy)]
  
  unfold dualVarG
  by_cases hu : LocallyIntegrableOn u V
  · have hv := hguard.1 hu
    rw [iSup_neg (not_not_intro hu), iSup_neg (not_not_intro hv), bot_sup_eq, bot_sup_eq,
      ENNReal.mul_iSup]
    refine iSup_congr (fun X => ?_)
    rw [ENNReal.mul_iSup]
    refine iSup_congr_Prop (hadm X) (fun hX => ?_)
    obtain ⟨h1, h2, h3, _, _⟩ := hX
    have hXs : ContDiff ℝ ∞ X := contDiff_iff_contDiffAt.2 (fun y => h1 y (fun h => h))
    exact step X hXs h2 h3
  · have hv : ¬ LocallyIntegrableOn v V := fun h => hu (hguard.2 h)
    rw [iSup_pos hu, iSup_pos hv, top_sup_eq, top_sup_eq, ENNReal.mul_top hc0]

theorem dual_chart_competitor [T2Space M] (p : M) (n : M → ℤ)
    (hnm : ∀ j : ℤ, sepChartMeas {x | n x = j}) (B L : Set E3) (hB : IsOpen B)
    (hBt : B ⊆ (chartAt E3 p).target) (hL : IsCompact L) (hLB : L ⊆ B) (v v' : E3 → ℝ)
    (hvint : ∀ y ∈ B, ∃ m : ℤ, v y = m) (hv'int : ∀ y ∈ B, ∃ m : ℤ, v' y = m)
    (hvm : ∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ v y}))
    (hv'm : ∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ v' y})) :
    ∃ n' : M → ℤ, (∀ j : ℤ, sepChartMeas {x | n' x = j}) ∧
      (∀ x : M, x ∉ (chartAt E3 p).symm '' L → n' x = n x) ∧
      ∀ y ∈ L, ((n' ((chartAt E3 p).symm y) : ℤ) : ℝ) =
        ((n ((chartAt E3 p).symm y) : ℤ) : ℝ) + v' y - v y :=
by
  classical
  set κ := chartAt E3 p with hκ
  
  have hkey : ∀ (q : M) (A : Set M), chartAt E3 q '' (A ∩ (chartAt E3 q).source) =
      (chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' A := by
    intro q A
    ext y
    constructor
    · rintro ⟨x, ⟨hxA, hxs⟩, rfl⟩
      refine ⟨(chartAt E3 q).map_source hxs, ?_⟩
      show (chartAt E3 q).symm (chartAt E3 q x) ∈ A
      rw [(chartAt E3 q).left_inv hxs]
      exact hxA
    · rintro ⟨hyt, hyA⟩
      exact ⟨(chartAt E3 q).symm y, ⟨hyA, (chartAt E3 q).map_target hyt⟩,
        (chartAt E3 q).right_inv hyt⟩
  have hiff : ∀ A : Set M, sepChartMeas A ↔
      ∀ q : M, MeasurableSet ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' A) := by
    intro A
    unfold sepChartMeas
    simp only [hkey]
  have hdiff : ∀ A A' : Set M, sepChartMeas A → sepChartMeas A' → sepChartMeas (A \ A') := by
    intro A A' hA hA'
    rw [hiff] at hA hA' ⊢
    intro q
    have : (chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' (A \ A') =
        ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' A) \
          ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' A') := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_diff]
      tauto
    rw [this]
    exact (hA q).diff (hA' q)
  have hinter : ∀ A A' : Set M, sepChartMeas A → sepChartMeas A' → sepChartMeas (A ∩ A') := by
    intro A A' hA hA'
    rw [hiff] at hA hA' ⊢
    intro q
    have : (chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' (A ∩ A') =
        ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' A) ∩
          ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' A') := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage]
      tauto
    rw [this]
    exact (hA q).inter (hA' q)
  have hunion : ∀ A A' : Set M, sepChartMeas A → sepChartMeas A' → sepChartMeas (A ∪ A') := by
    intro A A' hA hA'
    rw [hiff] at hA hA' ⊢
    intro q
    have : (chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' (A ∪ A') =
        ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' A) ∪
          ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' A') := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_union]
      tauto
    rw [this]
    exact (hA q).union (hA' q)
  have hiU : ∀ F : ℤ → Set M, (∀ k, sepChartMeas (F k)) → sepChartMeas (⋃ k, F k) := by
    intro F hF
    rw [hiff]
    intro q
    rw [Set.preimage_iUnion, Set.inter_iUnion]
    exact MeasurableSet.iUnion fun k => (hiff (F k)).1 (hF k) q
  
  have himg : ∀ A : Set E3, A ⊆ κ.target → MeasurableSet A → sepChartMeas (κ.symm '' A) := by
    intro A hAt hA
    unfold sepChartMeas
    intro q
    have hset : chartAt E3 q '' (κ.symm '' A ∩ (chartAt E3 q).source) =
        (fun y => chartAt E3 q (κ.symm y)) ''
          (A ∩ (κ.target ∩ κ.symm ⁻¹' (chartAt E3 q).source)) := by
      ext z
      constructor
      · rintro ⟨x, ⟨⟨y, hy, rfl⟩, hxs⟩, rfl⟩
        exact ⟨y, ⟨hy, hAt hy, hxs⟩, rfl⟩
      · rintro ⟨y, ⟨hy, _, hys⟩, rfl⟩
        exact ⟨κ.symm y, ⟨⟨y, hy, rfl⟩, hys⟩, rfl⟩
    have hO : IsOpen (κ.target ∩ κ.symm ⁻¹' (chartAt E3 q).source) :=
      κ.isOpen_inter_preimage_symm (chartAt E3 q).open_source
    have hcont : ContinuousOn (fun y => chartAt E3 q (κ.symm y))
        (κ.target ∩ κ.symm ⁻¹' (chartAt E3 q).source) :=
      (chartAt E3 q).continuousOn.comp (κ.continuousOn_symm.mono Set.inter_subset_left)
        (fun y hy => hy.2)
    have hinj : Set.InjOn (fun y => chartAt E3 q (κ.symm y))
        (κ.target ∩ κ.symm ⁻¹' (chartAt E3 q).source) := by
      intro y1 h1 y2 h2 h
      have h' : κ.symm y1 = κ.symm y2 := (chartAt E3 q).injOn h1.2 h2.2 h
      rw [← κ.right_inv h1.1, ← κ.right_inv h2.1, h']
    rw [hset]
    exact (hA.inter hO.measurableSet).image_of_continuousOn_injOn
      (hcont.mono Set.inter_subset_right) (hinj.mono Set.inter_subset_right)
  
  have hfl : ∀ (w : E3 → ℝ), (∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ w y})) → ∀ a : ℤ,
      MeasurableSet (B ∩ {y | ⌊w y⌋ = a}) := by
    intro w hw a
    have : B ∩ {y | ⌊w y⌋ = a} =
        (B ∩ {y | (a : ℝ) ≤ w y}) \ (B ∩ {y | ((a + 1 : ℤ) : ℝ) ≤ w y}) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_diff, Int.floor_eq_iff, not_and,
        not_le]
      push_cast
      constructor
      · rintro ⟨hy, h1, h2⟩
        exact ⟨⟨hy, h1⟩, fun _ => h2⟩
      · rintro ⟨⟨hy, h1⟩, h2⟩
        exact ⟨hy, h1, h2 hy⟩
    rw [this]
    exact (hw a).diff (hw ((a + 1 : ℤ) : ℝ))
  have hDm : ∀ k : ℤ, MeasurableSet (L ∩ {y | ⌊v' y⌋ - ⌊v y⌋ = k}) := by
    intro k
    have : L ∩ {y | ⌊v' y⌋ - ⌊v y⌋ = k} =
        L ∩ ⋃ a : ℤ, ((B ∩ {y | ⌊v y⌋ = a}) ∩ (B ∩ {y | ⌊v' y⌋ = a + k})) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_iUnion]
      constructor
      · rintro ⟨hy, h⟩
        exact ⟨hy, ⌊v y⌋, ⟨hLB hy, rfl⟩, hLB hy, by omega⟩
      · rintro ⟨hy, a, ⟨_, h1⟩, _, h2⟩
        exact ⟨hy, by omega⟩
    rw [this]
    exact hL.isClosed.measurableSet.inter
      (MeasurableSet.iUnion fun a => (hfl v hvm a).inter (hfl v' hv'm (a + k)))
  have hLt : L ⊆ κ.target := hLB.trans hBt
  refine ⟨fun x => if x ∈ κ.symm '' L then n x + (⌊v' (κ x)⌋ - ⌊v (κ x)⌋) else n x,
    ?_, ?_, ?_⟩
  · intro j
    have hS : sepChartMeas (κ.symm '' L) := himg L hLt hL.isClosed.measurableSet
    have hT : ∀ k : ℤ, sepChartMeas (κ.symm '' (L ∩ {y | ⌊v' y⌋ - ⌊v y⌋ = k})) :=
      fun k => himg _ (Set.inter_subset_left.trans hLt) (hDm k)
    have heq : {x | (if x ∈ κ.symm '' L then n x + (⌊v' (κ x)⌋ - ⌊v (κ x)⌋) else n x) = j} =
        ({x | n x = j} \ κ.symm '' L) ∪
          ⋃ k : ℤ, ({x | n x = j - k} ∩ κ.symm '' (L ∩ {y | ⌊v' y⌋ - ⌊v y⌋ = k})) := by
      ext x
      simp only [Set.mem_setOf_eq, Set.mem_union, Set.mem_diff, Set.mem_iUnion,
        Set.mem_inter_iff]
      by_cases hx : x ∈ κ.symm '' L
      · rw [if_pos hx]
        obtain ⟨y0, hy0, rfl⟩ := hx
        have hk0 : κ (κ.symm y0) = y0 := κ.right_inv (hLt hy0)
        rw [hk0]
        constructor
        · intro h
          right
          exact ⟨⌊v' y0⌋ - ⌊v y0⌋, by omega, y0, ⟨hy0, rfl⟩, rfl⟩
        · rintro (⟨_, hn⟩ | ⟨k, hk, y1, ⟨hy1, hD⟩, hy1e⟩)
          · exact absurd ⟨y0, hy0, rfl⟩ hn
          · have h10 : y1 = y0 := by
              rw [← κ.right_inv (hLt hy1), hy1e, hk0]
            subst h10
            have hD' : ⌊v' y1⌋ - ⌊v y1⌋ = k := hD
            omega
      · rw [if_neg hx]
        constructor
        · intro h
          exact Or.inl ⟨h, hx⟩
        · rintro (⟨h, _⟩ | ⟨k, _, y1, ⟨hy1, _⟩, hy1e⟩)
          · exact h
          · exact absurd ⟨y1, hy1, hy1e⟩ hx
    rw [heq]
    exact hunion _ _ (hdiff _ _ (hnm j) hS) (hiU _ fun k => hinter _ _ (hnm (j - k)) (hT k))
  · intro x hx
    simp only [if_neg hx]
  · intro y hy
    have hyS : κ.symm y ∈ κ.symm '' L := ⟨y, hy, rfl⟩
    simp only [if_pos hyS, κ.right_inv (hLt hy)]
    obtain ⟨m, hm⟩ := hvint y (hLB hy)
    obtain ⟨m', hm'⟩ := hv'int y (hLB hy)
    rw [hm, hm', Int.floor_intCast, Int.floor_intCast]
    push_cast
    ring

theorem dualVarG_sum_le (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (u : E3 → ℝ) (n : ℕ) (A : Fin n → Set E3) (hdisj : Pairwise (fun k l => Disjoint (A k) (A l))) : ∑ k, dualVarG G om u (A k) ∅ ≤ dualVarG G om u (⋃ k, A k) ∅ :=
by
  classical
  
  have s2 : ∀ (ι : Fin n → Type) (_hne : ∀ k, Nonempty (ι k)) (f : (k : Fin n) → ι k → ENNReal)
      (T : ENNReal), (∀ σ : (k : Fin n) → ι k, ∑ k, f k (σ k) ≤ T) → ∑ k, ⨆ i, f k i ≤ T := by
    intro ι hne f T h
    let σ₀ : (k : Fin n) → ι k := fun k => Classical.choice (hne k)
    have ha : ∀ k, ⨆ i, f k i ≤ ⨆ σ : ((k : Fin n) → ι k), f k (σ k) := by
      intro k
      refine iSup_le fun i => le_iSup_of_le (Function.update σ₀ k i) ?_
      simp
    have hb : ∑ k, ⨆ σ : ((k : Fin n) → ι k), f k (σ k) =
        ⨆ σ : ((k : Fin n) → ι k), ∑ k, f k (σ k) := by
      refine ENNReal.finsetSum_iSup (fun σ τ => ?_)
      refine ⟨fun a => if f a (σ a) ≤ f a (τ a) then τ a else σ a, fun a => ?_⟩
      by_cases hle : f a (σ a) ≤ f a (τ a)
      · simp only [if_pos hle]; exact ⟨hle, le_rfl⟩
      · simp only [if_neg hle]; exact ⟨le_rfl, le_of_not_ge hle⟩
    calc ∑ k, ⨆ i, f k i ≤ ∑ k, ⨆ σ : ((k : Fin n) → ι k), f k (σ k) :=
          Finset.sum_le_sum fun k _ => ha k
      _ = _ := hb
      _ ≤ T := iSup_le h
  
  have densCongr : ∀ (X X' : E3 → E3) (y : E3), X =ᶠ[𝓝 y] X' →
      sepDensDiv G X y = sepDensDiv G X' y := by
    intro X X' y h
    unfold sepDensDiv partialDeriv
    refine Finset.sum_congr rfl fun i _ => ?_
    have h' : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y]
        (fun z => Real.sqrt (G z).det * X' z i) := by
      filter_upwards [h] with z hz
      rw [hz]
    rw [h'.fderiv_eq]
  have densZero : ∀ (X : E3 → E3) (y : E3), y ∉ tsupport X → sepDensDiv G X y = 0 := by
    intro X y hy
    have hX : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    unfold partialDeriv
    have h : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hX] with z hz
      simp [hz]
    rw [h.fderiv_eq]
    simp
  have densZero0 : ∀ y, sepDensDiv G (0 : E3 → E3) y = 0 := fun y => densZero 0 y (by simp)
  
  have intCongr : ∀ (X X' : E3 → E3) (y : E3), X =ᶠ[𝓝 y] X' →
      u y * sepDensDiv G X y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i =
        u y * sepDensDiv G X' y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X' y i := by
    intro X X' y h
    rw [densCongr X X' y h, h.eq_of_nhds]
  have intZero : ∀ (X : E3 → E3) (y : E3), y ∉ tsupport X →
      u y * sepDensDiv G X y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i = 0 := by
    intro X y hy
    rw [densZero X y hy, image_eq_zero_of_notMem_tsupport hy]
    simp
  
  have germSum : ∀ (Φ : (E3 → E3) → E3 → ℝ),
      (∀ (X X' : E3 → E3) (y : E3), X =ᶠ[𝓝 y] X' → Φ X y = Φ X' y) →
      (∀ (X : E3 → E3) (y : E3), y ∉ tsupport X → Φ X y = 0) →
      ∀ (Y : Fin n → E3 → E3),
      Pairwise (fun k l => Disjoint (tsupport (Y k)) (tsupport (Y l))) →
      ∀ y, Φ (fun z => ∑ k, Y k z) y = ∑ k, Φ (Y k) y := by
    intro Φ hC hZ Y hd y
    by_cases h : ∃ k, y ∈ tsupport (Y k)
    · obtain ⟨k₀, hk₀⟩ := h
      have hnot : ∀ l, l ≠ k₀ → y ∉ tsupport (Y l) := fun l hl hy =>
        Set.disjoint_left.mp (hd hl) hy hk₀
      have hev : ∀ᶠ z in 𝓝 y, ∀ l, l ≠ k₀ → Y l z = 0 := by
        rw [Filter.eventually_all]
        intro l
        by_cases hl : l = k₀
        · exact Filter.Eventually.of_forall fun z h => absurd hl h
        · have := notMem_tsupport_iff_eventuallyEq.mp (hnot l hl)
          filter_upwards [this] with z hz _
          simpa using hz
      have hZ' : (fun z => ∑ k, Y k z) =ᶠ[𝓝 y] Y k₀ := by
        filter_upwards [hev] with z hz
        exact Finset.sum_eq_single k₀ (fun l _ hl => hz l hl)
          (fun h => absurd (Finset.mem_univ _) h)
      rw [hC _ _ y hZ']
      exact (Finset.sum_eq_single k₀ (fun l _ hl => hZ _ y (hnot l hl))
        (fun h => absurd (Finset.mem_univ _) h)).symm
    · push_neg at h
      have hev : ∀ᶠ z in 𝓝 y, ∀ l, Y l z = 0 := by
        rw [Filter.eventually_all]
        intro l
        filter_upwards [notMem_tsupport_iff_eventuallyEq.mp (h l)] with z hz
        simpa using hz
      have hZ' : (fun z => ∑ k, Y k z) =ᶠ[𝓝 y] 0 := by
        filter_upwards [hev] with z hz
        simp [hz]
      rw [hZ _ y (notMem_tsupport_iff_eventuallyEq.mpr hZ')]
      exact (Finset.sum_eq_zero fun l _ => hZ _ y (h l)).symm
  
  have s4 : ∀ (Y : Fin n → E3 → E3), (∀ k, (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ (Y k) y) ∧
      HasCompactSupport (Y k) ∧ tsupport (Y k) ⊆ A k ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y k y i * Y k y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G (Y k) y| ≤ C) →
      (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ (fun z => ∑ k, Y k z) y) ∧
      HasCompactSupport (fun z => ∑ k, Y k z) ∧
      tsupport (fun z => ∑ k, Y k z) ⊆ ⋃ k, A k ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (∑ k, Y k y) i * (∑ k, Y k y) j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G (fun z => ∑ k, Y k z) y| ≤ C := by
    intro Y hY
    have hd : Pairwise (fun k l => Disjoint (tsupport (Y k)) (tsupport (Y l))) :=
      fun k l hkl => (hdisj hkl).mono (hY k).2.2.1 (hY l).2.2.1
    have hvan : ∀ x, x ∉ ⋃ k, tsupport (Y k) → (∑ k, Y k x) = 0 := by
      intro x hx
      exact Finset.sum_eq_zero fun k _ =>
        image_eq_zero_of_notMem_tsupport fun hk => hx (Set.mem_iUnion.2 ⟨k, hk⟩)
    have hKc : IsClosed (⋃ k, tsupport (Y k)) :=
      isClosed_iUnion_of_finite fun k => isClosed_tsupport _
    have hKk : IsCompact (⋃ k, tsupport (Y k)) := isCompact_iUnion fun k => (hY k).2.1.isCompact
    refine ⟨fun y _ => ContDiffAt.sum fun k _ => (hY k).1 y (Set.notMem_empty y),
      HasCompactSupport.intro' hKk hKc hvan, ?_, ?_, ?_⟩
    · refine (closure_minimal ?_ hKc).trans (Set.iUnion_mono fun k => (hY k).2.2.1)
      intro x hx
      by_contra hxK
      exact hx (hvan x hxK)
    · intro y
      by_cases h : ∃ k, Y k y ≠ 0
      · obtain ⟨k₀, hk₀⟩ := h
        have hyA : y ∈ A k₀ := (hY k₀).2.2.1 (subset_tsupport _ hk₀)
        have hsum : (∑ k, Y k y) = Y k₀ y := by
          refine Finset.sum_eq_single k₀ (fun l _ hl => ?_) (fun h => absurd (Finset.mem_univ _) h)
          by_contra hne
          have hyl : y ∈ A l := (hY l).2.2.1 (subset_tsupport _ hne)
          exact Set.disjoint_left.mp (hdisj hl) hyl hyA
        rw [hsum]
        exact (hY k₀).2.2.2.1 y
      · push_neg at h
        have hsum : (∑ k, Y k y) = 0 := Finset.sum_eq_zero fun k _ => h k
        rw [hsum]
        simp
    · choose C hC using fun k => (hY k).2.2.2.2
      refine ⟨∑ k, C k, fun y => ?_⟩
      have e : sepDensDiv G (fun z => ∑ k, Y k z) y = ∑ k, sepDensDiv G (Y k) y :=
        germSum (sepDensDiv G) densCongr densZero Y hd y
      rw [e]
      exact (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun k _ => hC k y)
  
  have adm0 : ∀ U : Set E3, (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ (0 : E3 → E3) y) ∧
      HasCompactSupport (0 : E3 → E3) ∧ tsupport (0 : E3 → E3) ⊆ U ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (0 : E3 → E3) y i * (0 : E3 → E3) y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G (0 : E3 → E3) y| ≤ C := by
    intro U
    refine ⟨fun y _ => contDiffAt_const, HasCompactSupport.zero, by simp, fun y => by simp,
      0, fun y => by simp [densZero0]⟩
  
  by_cases hloc : MeasureTheory.LocallyIntegrableOn u (⋃ k, A k)
  swap
  · have htop : dualVarG G om u (⋃ k, A k) ∅ = ⊤ := by
      unfold dualVarG
      rw [eq_top_iff]
      exact le_sup_of_le_left (le_iSup_of_le hloc le_rfl)
    rw [htop]
    exact le_top
  have hrw : ∀ k, dualVarG G om u (A k) ∅ = ⨆ (Y : {X : E3 → E3 //
      (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ A k ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C}),
      ENNReal.ofReal (∫ y, (u y * sepDensDiv G Y.1 y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y.1 y i)) := by
    intro k
    have hk : MeasureTheory.LocallyIntegrableOn u (A k) := hloc.mono_set (Set.subset_iUnion A k)
    unfold dualVarG
    rw [iSup_neg (not_not.mpr hk), bot_sup_eq]
    exact iSup_subtype'
  rw [Finset.sum_congr rfl fun k _ => hrw k]
  refine s2 (fun k => {X : E3 → E3 //
      (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ A k ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C})
    (fun k => ⟨⟨0, adm0 _⟩⟩)
    (fun k Y => ENNReal.ofReal (∫ y, (u y * sepDensDiv G Y.1 y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y.1 y i))) _ ?_
  intro σ
  show ∑ k, ENNReal.ofReal (∫ y, (u y * sepDensDiv G (σ k).1 y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (σ k).1 y i)) ≤ _
  
  let a : Fin n → ℝ := fun k => ∫ y, (u y * sepDensDiv G (σ k).1 y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (σ k).1 y i)
  let Y : Fin n → E3 → E3 := fun k => if 0 < a k then (σ k).1 else 0
  have hYpos : ∀ k, 0 < a k → Y k = (σ k).1 := fun k hk => if_pos hk
  have hYneg : ∀ k, ¬ 0 < a k → Y k = 0 := fun k hk => if_neg hk
  have F1 : ∀ k, (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ (Y k) y) ∧
      HasCompactSupport (Y k) ∧ tsupport (Y k) ⊆ A k ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y k y i * Y k y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G (Y k) y| ≤ C := by
    intro k
    by_cases hk : 0 < a k
    · rw [hYpos k hk]; exact (σ k).2
    · rw [hYneg k hk]; exact adm0 _
  have hint0 : (fun y => u y * sepDensDiv G (0 : E3 → E3) y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (0 : E3 → E3) y i) = fun _ => (0 : ℝ) :=
    funext fun y => intZero 0 y (by simp)
  have F3 : ∀ k, ∫ y, (u y * sepDensDiv G (Y k) y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y k y i) = if 0 < a k then a k else 0 := by
    intro k
    by_cases hk : 0 < a k
    · rw [if_pos hk, hYpos k hk]
    · rw [if_neg hk, hYneg k hk, hint0]
      simp
  have F3n : ∀ k, 0 ≤ ∫ y, (u y * sepDensDiv G (Y k) y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y k y i) := by
    intro k
    rw [F3 k]
    split_ifs with hk
    · exact hk.le
    · exact le_rfl
  have F4 : ∀ k, ENNReal.ofReal (∫ y, (u y * sepDensDiv G (σ k).1 y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (σ k).1 y i)) ≤
      ENNReal.ofReal (∫ y, (u y * sepDensDiv G (Y k) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y k y i)) := by
    intro k
    by_cases hk : 0 < a k
    · rw [F3 k, if_pos hk]
    · have : ENNReal.ofReal (∫ y, (u y * sepDensDiv G (σ k).1 y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (σ k).1 y i)) = 0 :=
        ENNReal.ofReal_of_nonpos (not_lt.mp hk)
      rw [this]
      exact zero_le _
  have F5 : ∀ k, MeasureTheory.Integrable (fun y => u y * sepDensDiv G (Y k) y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y k y i) := by
    intro k
    by_cases hk : 0 < a k
    · rw [hYpos k hk]
      exact MeasureTheory.Integrable.of_integral_ne_zero (ne_of_gt hk)
    · rw [hYneg k hk, hint0]
      exact MeasureTheory.integrable_zero _ _ _
  have hd : Pairwise (fun k l => Disjoint (tsupport (Y k)) (tsupport (Y l))) :=
    fun k l hkl => (hdisj hkl).mono (F1 k).2.2.1 (F1 l).2.2.1
  have hZ := s4 Y F1
  have hint : ∫ y, (u y * sepDensDiv G (fun z => ∑ k, Y k z) y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (fun z => ∑ k, Y k z) y i) =
      ∑ k, ∫ y, (u y * sepDensDiv G (Y k) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y k y i) := by
    calc ∫ y, (u y * sepDensDiv G (fun z => ∑ k, Y k z) y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (fun z => ∑ k, Y k z) y i)
        = ∫ y, ∑ k, (u y * sepDensDiv G (Y k) y +
            Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y k y i) := by
          congr 1
          funext y
          exact germSum (fun X y => u y * sepDensDiv G X y +
            Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) intCongr intZero Y hd y
      _ = _ := MeasureTheory.integral_finset_sum _ fun k _ => F5 k
  calc ∑ k, ENNReal.ofReal (∫ y, (u y * sepDensDiv G (σ k).1 y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (σ k).1 y i))
      ≤ ∑ k, ENNReal.ofReal (∫ y, (u y * sepDensDiv G (Y k) y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y k y i)) :=
        Finset.sum_le_sum fun k _ => F4 k
    _ = ENNReal.ofReal (∑ k, ∫ y, (u y * sepDensDiv G (Y k) y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y k y i)) :=
        (ENNReal.ofReal_sum_of_nonneg fun k _ => F3n k).symm
    _ = ENNReal.ofReal (∫ y, (u y * sepDensDiv G (fun z => ∑ k, Y k z) y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (fun z => ∑ k, Y k z) y i)) := by
        rw [hint]
    _ ≤ dualVarG G om u (⋃ k, A k) ∅ := by
        unfold dualVarG
        exact le_sup_of_le_right (le_iSup₂_of_le (fun z => ∑ k, Y k z) hZ le_rfl)

theorem dualVarG_union_le (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (U : Set E3) (hU : IsOpen U) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) U) (hdet : ∀ y ∈ U, 0 < (G y).det) (hom : ∀ i : Fin 3, ContinuousOn (fun y => om y i) U) (u : E3 → ℝ) (A B Kc : Set E3) (hA : IsOpen A) (hB : IsOpen B) (hAU : A ⊆ U) (hBU : B ⊆ U) (hAKc : Disjoint A Kc) : dualVarG G om u (A ∪ B) Kc ≤ dualVarG G om u A Kc + dualVarG G om u B Kc :=
by
  classical
  
  have hdetC : ContDiffOn ℝ ∞ (fun z => (G z).det) U := by
    have heq : (fun z => (G z).det) = fun z =>
        G z 0 0 * G z 1 1 * G z 2 2 - G z 0 0 * G z 1 2 * G z 2 1
          - G z 0 1 * G z 1 0 * G z 2 2 + G z 0 1 * G z 1 2 * G z 2 0
          + G z 0 2 * G z 1 0 * G z 2 1 - G z 0 2 * G z 1 1 * G z 2 0 := by
      funext z; exact Matrix.det_fin_three _
    rw [heq]
    have h := hG
    exact (((((((h 0 0).mul (h 1 1)).mul (h 2 2)).sub (((h 0 0).mul (h 1 2)).mul (h 2 1))).sub
      (((h 0 1).mul (h 1 0)).mul (h 2 2))).add (((h 0 1).mul (h 1 2)).mul (h 2 0))).add
      (((h 0 2).mul (h 1 0)).mul (h 2 1))).sub (((h 0 2).mul (h 1 1)).mul (h 2 0))
  have hsq : ContDiffOn ℝ ∞ (fun z => Real.sqrt (G z).det) U :=
    hdetC.sqrt (fun x hx => (hdet x hx).ne')
  
  have hZ : ∀ (Y : E3 → E3) (y : E3), y ∉ tsupport Y → sepDensDiv G Y y = 0 := by
    intro Y y hy
    have hY0 : Y =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    show ∑ i : Fin 3, fderiv ℝ (fun z => Real.sqrt (G z).det * Y z i) y (e i) = 0
    refine Finset.sum_eq_zero fun i _ => ?_
    have h0 : (fun z => Real.sqrt (G z).det * Y z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hY0] with z hz
      simp [hz]
    rw [h0.fderiv_eq]
    simp
  
  have hmem : ∀ (W : Set E3) (Y : E3 → E3), ((∀ y, y ∉ Kc → ContDiffAt ℝ ∞ Y y) ∧
      HasCompactSupport Y ∧ tsupport Y ⊆ W ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y y i * Y y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G Y y| ≤ C) →
      ENNReal.ofReal (∫ y, (u y * sepDensDiv G Y y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y y i)) ≤ dualVarG G om u W Kc := by
    intro W Y hY
    unfold dualVarG
    exact le_sup_of_le_right (le_iSup₂_of_le Y hY le_rfl)
  
  have hLI : LocallyIntegrableOn u A → LocallyIntegrableOn u B →
      LocallyIntegrableOn u (A ∪ B) := by
    intro h1 h2 x hx
    rw [IsOpen.nhdsWithin_eq (hA.union hB) hx]
    rcases hx with hx | hx
    · have h := h1 x hx
      rwa [IsOpen.nhdsWithin_eq hA hx] at h
    · have h := h2 x hx
      rwa [IsOpen.nhdsWithin_eq hB hx] at h
  by_cases hloc : LocallyIntegrableOn u (A ∪ B)
  swap
  · have hor : ¬ LocallyIntegrableOn u A ∨ ¬ LocallyIntegrableOn u B := by
      by_contra h
      push_neg at h
      exact hloc (hLI h.1 h.2)
    rcases hor with h | h
    · have htop : dualVarG G om u A Kc = ⊤ := by
        unfold dualVarG
        rw [iSup_pos h, top_sup_eq]
      rw [htop, top_add]
      exact le_top
    · have htop : dualVarG G om u B Kc = ⊤ := by
        unfold dualVarG
        rw [iSup_pos h, top_sup_eq]
      rw [htop, add_top]
      exact le_top
  rw [dualVarG]
  refine sup_le (iSup_le fun h => absurd hloc h) (iSup₂_le fun X hX => ?_)
  obtain ⟨hXs, hXc, hXT, hXq, C, hC⟩ := hX
  
  obtain ⟨ψ₁, ψ₂, hψ₁s, hψ₂s, hψ₁0, hψ₂0, hsum1, hsumT, hψ₁A, hψ₂B⟩ :
      ∃ ψ₁ ψ₂ : E3 → ℝ, ContDiff ℝ ∞ ψ₁ ∧ ContDiff ℝ ∞ ψ₂ ∧ (∀ x, 0 ≤ ψ₁ x) ∧
        (∀ x, 0 ≤ ψ₂ x) ∧ (∀ x, ψ₁ x + ψ₂ x ≤ 1) ∧ (∀ x ∈ tsupport X, ψ₁ x + ψ₂ x = 1) ∧
        tsupport ψ₁ ⊆ A ∧ tsupport ψ₂ ⊆ B := by
    let V : Bool → Set E3 := fun b => cond b A B
    have hVo : ∀ b, IsOpen (V b) := by
      intro b; cases b
      · exact hB
      · exact hA
    have hcov : tsupport X ⊆ ⋃ b, V b := by
      intro x hx
      rcases hXT hx with h | h
      · exact Set.mem_iUnion.2 ⟨true, h⟩
      · exact Set.mem_iUnion.2 ⟨false, h⟩
    obtain ⟨f, hf⟩ :=
      SmoothPartitionOfUnity.exists_isSubordinate 𝓘(ℝ, E3) hXc.isClosed V hVo hcov
    refine ⟨f true, f false, contMDiff_iff_contDiff.mp (f true).contMDiff,
      contMDiff_iff_contDiff.mp (f false).contMDiff, f.nonneg true, f.nonneg false, ?_, ?_,
      hf true, hf false⟩
    · intro x
      have h := f.sum_le_one x
      rw [finsum_eq_sum_of_fintype, Fintype.sum_bool] at h
      exact h
    · intro x hx
      have h := f.sum_eq_one hx
      rw [finsum_eq_sum_of_fintype, Fintype.sum_bool] at h
      exact h
  have hψ₁1 : ∀ x, ψ₁ x ≤ 1 := fun x => by linarith [hsum1 x, hψ₂0 x]
  have hψ₂1 : ∀ x, ψ₂ x ≤ 1 := fun x => by linarith [hsum1 x, hψ₁0 x]
  have hSK : ∀ y, y ∈ tsupport ψ₁ → y ∉ Kc :=
    fun y hy hk => Set.disjoint_left.1 hAKc (hψ₁A hy) hk
  have hSU : ∀ y, y ∈ tsupport ψ₁ → U ∈ 𝓝 y := fun y hy => hU.mem_nhds (hAU (hψ₁A hy))
  have hgerm : ∀ y, y ∉ tsupport ψ₁ → ψ₁ =ᶠ[𝓝 y] 0 :=
    fun y hy => notMem_tsupport_iff_eventuallyEq.mp hy
  have hXi : ∀ y, y ∉ Kc → ∀ i : Fin 3, ContDiffAt ℝ ∞ (fun z => X z i) y :=
    fun y hy i => (contDiffAt_piLp _).1 (hXs y hy) i
  
  have hq : ∀ ψ : E3 → ℝ, (∀ x, 0 ≤ ψ x) → (∀ x, ψ x ≤ 1) → ∀ y,
      ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (ψ y • X y) i * (ψ y • X y) j ≤ 1 := by
    intro ψ hψ0 hψ1 y
    have heq : ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (ψ y • X y) i * (ψ y • X y) j =
        ψ y ^ 2 * ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j := by
      simp only [PiLp.smul_apply, smul_eq_mul, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
      ring
    rw [heq]
    have h1 := hXq y
    have h2 := hψ0 y
    have h3 := hψ1 y
    have h4 : ψ y ^ 2 ≤ 1 := by nlinarith
    nlinarith [mul_nonneg (sq_nonneg (ψ y)) (sub_nonneg.2 h1)]
  
  have hc1 : ∀ i : Fin 3, ContDiff ℝ ∞ (fun z => Real.sqrt (G z).det * (ψ₁ z • X z) i) := by
    intro i
    rw [contDiff_iff_contDiffAt]
    intro y
    by_cases hy : y ∈ tsupport ψ₁
    · have h1 : ContDiffAt ℝ ∞ (fun z => Real.sqrt (G z).det) y := hsq.contDiffAt (hSU y hy)
      have h3 : ContDiffAt ℝ ∞ (fun z => ψ₁ z * X z i) y :=
        hψ₁s.contDiffAt.mul (hXi y (hSK y hy) i)
      have hfe : (fun z => Real.sqrt (G z).det * (ψ₁ z • X z) i) =
          fun z => Real.sqrt (G z).det * (ψ₁ z * X z i) := by
        funext z; simp [PiLp.smul_apply, smul_eq_mul]
      rw [hfe]
      exact h1.mul h3
    · refine contDiffAt_const.congr_of_eventuallyEq (f := fun _ => (0 : ℝ)) ?_
      filter_upwards [hgerm y hy] with z hz
      simp [hz]
  have hY1c : HasCompactSupport (fun z => ψ₁ z • X z) := by
    have := hXc.smul_left (f := ψ₁)
    exact this
  have hY1T : tsupport (fun z => ψ₁ z • X z) ⊆ A := (tsupport_smul_subset_left ψ₁ X).trans hψ₁A
  have hd1c : Continuous (sepDensDiv G (fun z => ψ₁ z • X z)) := by
    show Continuous fun y => ∑ i : Fin 3,
      fderiv ℝ (fun z => Real.sqrt (G z).det * (ψ₁ z • X z) i) y (e i)
    refine continuous_finset_sum _ fun i _ => ?_
    exact ((hc1 i).continuous_fderiv (by simp)).clm_apply continuous_const
  have hd1s : HasCompactSupport (sepDensDiv G (fun z => ψ₁ z • X z)) := by
    refine HasCompactSupport.mono' hY1c ?_
    intro y hy
    by_contra h
    exact hy (hZ _ y h)
  obtain ⟨C₁, hC₁⟩ := hd1c.bounded_above_of_compact_support hd1s
  have htc : Continuous (fun y => Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₁ y • X y) i) := by
    rw [continuous_iff_continuousAt]
    intro y
    by_cases hy : y ∈ tsupport ψ₁
    · have h1 : ContinuousAt (fun z => Real.sqrt (G z).det) y :=
        (hsq.contDiffAt (hSU y hy)).continuousAt
      have h2 : ∀ i : Fin 3, ContinuousAt (fun z => om z i * (ψ₁ z • X z) i) y := by
        intro i
        have ha : ContinuousAt (fun z => om z i) y := (hom i).continuousAt (hSU y hy)
        have hb' : ContinuousAt (fun z => ψ₁ z * X z i) y :=
          hψ₁s.continuous.continuousAt.mul (hXi y (hSK y hy) i).continuousAt
        have hb : ContinuousAt (fun z => (ψ₁ z • X z) i) y := by
          simpa [PiLp.smul_apply, smul_eq_mul] using hb'
        exact ha.mul hb
      have h3 : ContinuousAt (fun z => ∑ i : Fin 3, om z i * (ψ₁ z • X z) i) y := by
        simp only [Fin.sum_univ_three]
        exact ((h2 0).add (h2 1)).add (h2 2)
      exact h1.mul h3
    · refine continuousAt_const.congr (f := fun _ => (0 : ℝ)) ?_
      filter_upwards [hgerm y hy] with z hz
      simp [hz]
  have hts : HasCompactSupport
      (fun y => Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₁ y • X y) i) := by
    refine HasCompactSupport.mono' hY1c ?_
    intro y hy
    by_contra h
    apply hy
    have h0 : ψ₁ y • X y = 0 :=
      image_eq_zero_of_notMem_tsupport (f := fun z => ψ₁ z • X z) h
    show Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₁ y • X y) i = 0
    rw [h0]
    simp
  
  have hsplit : ∀ y, sepDensDiv G (fun z => X z - ψ₁ z • X z) y =
      sepDensDiv G X y - sepDensDiv G (fun z => ψ₁ z • X z) y := by
    intro y
    unfold sepDensDiv partialDeriv
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun i _ => ?_
    have hfun : (fun z => Real.sqrt (G z).det * (X z - ψ₁ z • X z) i) =
        (fun z => Real.sqrt (G z).det * X z i) -
          (fun z => Real.sqrt (G z).det * (ψ₁ z • X z) i) := by
      funext z; simp [mul_sub]
    rw [hfun]
    by_cases hy : y ∈ tsupport ψ₁
    · have hd1 : DifferentiableAt ℝ (fun z => Real.sqrt (G z).det * X z i) y :=
        ((hsq.contDiffAt (hSU y hy)).mul (hXi y (hSK y hy) i)).differentiableAt (by simp)
      have hd2 : DifferentiableAt ℝ (fun z => Real.sqrt (G z).det * (ψ₁ z • X z) i) y :=
        (hc1 i).differentiable (by simp) y
      rw [fderiv_sub hd1 hd2, ContinuousLinearMap.sub_apply]
    · have e1 : ((fun z => Real.sqrt (G z).det * X z i) -
          (fun z => Real.sqrt (G z).det * (ψ₁ z • X z) i)) =ᶠ[𝓝 y]
            (fun z => Real.sqrt (G z).det * X z i) := by
        filter_upwards [hgerm y hy] with z hz
        simp [hz]
      have e2 : (fun z => Real.sqrt (G z).det * (ψ₁ z • X z) i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
        filter_upwards [hgerm y hy] with z hz
        simp [hz]
      rw [e1.fderiv_eq, e2.fderiv_eq]
      simp
  have hD2 : (fun z => ψ₂ z • X z) = fun z => X z - ψ₁ z • X z := by
    funext z
    by_cases hz : z ∈ tsupport X
    · have h := hsumT z hz
      have h' : ψ₂ z = 1 - ψ₁ z := by linarith
      rw [h', sub_smul, one_smul]
    · have h0 : X z = 0 := image_eq_zero_of_notMem_tsupport hz
      simp [h0]
  
  have adm₁ : (∀ y, y ∉ Kc → ContDiffAt ℝ ∞ (fun z => ψ₁ z • X z) y) ∧
      HasCompactSupport (fun z => ψ₁ z • X z) ∧ tsupport (fun z => ψ₁ z • X z) ⊆ A ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (ψ₁ y • X y) i * (ψ₁ y • X y) j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G (fun z => ψ₁ z • X z) y| ≤ C := by
    refine ⟨fun y hy => hψ₁s.contDiffAt.smul (hXs y hy), hY1c, hY1T, hq ψ₁ hψ₁0 hψ₁1,
      C₁, fun y => ?_⟩
    have h := hC₁ y
    rwa [Real.norm_eq_abs] at h
  have hdiv2 : ∀ y, sepDensDiv G (fun z => ψ₂ z • X z) y =
      sepDensDiv G X y - sepDensDiv G (fun z => ψ₁ z • X z) y := by
    intro y
    rw [hD2]
    exact hsplit y
  have adm₂ : (∀ y, y ∉ Kc → ContDiffAt ℝ ∞ (fun z => ψ₂ z • X z) y) ∧
      HasCompactSupport (fun z => ψ₂ z • X z) ∧ tsupport (fun z => ψ₂ z • X z) ⊆ B ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (ψ₂ y • X y) i * (ψ₂ y • X y) j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G (fun z => ψ₂ z • X z) y| ≤ C := by
    have hc2 : HasCompactSupport (fun z => ψ₂ z • X z) := by
      have := hXc.smul_left (f := ψ₂)
      exact this
    refine ⟨fun y hy => hψ₂s.contDiffAt.smul (hXs y hy), hc2,
      (tsupport_smul_subset_left ψ₂ X).trans hψ₂B, hq ψ₂ hψ₂0 hψ₂1, C + C₁, fun y => ?_⟩
    rw [hdiv2 y]
    have h1 := abs_le.mp (hC y)
    have h2' := hC₁ y
    rw [Real.norm_eq_abs] at h2'
    have h2 := abs_le.mp h2'
    rw [abs_le]
    constructor <;> linarith [h1.1, h1.2, h2.1, h2.2]
  
  have hP : ∀ y, u y * sepDensDiv G (fun z => ψ₂ z • X z) y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₂ y • X y) i =
      (u y * sepDensDiv G X y + Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) -
      (u y * sepDensDiv G (fun z => ψ₁ z • X z) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₁ y • X y) i) := by
    intro y
    have h2 : ψ₂ y • X y = X y - ψ₁ y • X y := congrFun hD2 y
    rw [hdiv2 y, h2]
    simp only [PiLp.sub_apply, PiLp.smul_apply, smul_eq_mul, Fin.sum_univ_three]
    ring
  have hK1 : IsCompact (tsupport (fun z => ψ₁ z • X z)) := hY1c
  have hu1 : IntegrableOn u (tsupport (fun z => ψ₁ z • X z)) :=
    hloc.integrableOn_compact_subset (hY1T.trans Set.subset_union_left) hK1
  have hint1a : Integrable (fun y => u y * sepDensDiv G (fun z => ψ₁ z • X z) y) := by
    have h : Integrable (fun y => sepDensDiv G (fun z => ψ₁ z • X z) y * u y)
        (volume.restrict (tsupport (fun z => ψ₁ z • X z))) :=
      Integrable.bdd_mul hu1 hd1c.aestronglyMeasurable (ae_of_all _ hC₁)
    have h' : IntegrableOn (fun y => u y * sepDensDiv G (fun z => ψ₁ z • X z) y)
        (tsupport (fun z => ψ₁ z • X z)) :=
      h.congr (ae_of_all _ fun y => mul_comm _ _)
    refine h'.integrable_of_forall_notMem_eq_zero ?_
    intro y hy
    rw [hZ _ y hy, mul_zero]
  have hI1 : Integrable (fun y => u y * sepDensDiv G (fun z => ψ₁ z • X z) y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₁ y • X y) i) :=
    hint1a.add (htc.integrable_of_hasCompactSupport hts)
  
  by_cases hI : Integrable (fun y => u y * sepDensDiv G X y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)
  · have hI2 : Integrable (fun y => u y * sepDensDiv G (fun z => ψ₂ z • X z) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₂ y • X y) i) := by
      refine (hI.sub hI1).congr (ae_of_all _ fun y => ?_)
      exact (hP y).symm
    have hsum : (∫ y, (u y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) =
        (∫ y, (u y * sepDensDiv G (fun z => ψ₁ z • X z) y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₁ y • X y) i)) +
        ∫ y, (u y * sepDensDiv G (fun z => ψ₂ z • X z) y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₂ y • X y) i) := by
      rw [← integral_add hI1 hI2]
      congr 1
      funext y
      rw [hP y]
      ring
    rw [hsum]
    exact le_trans ENNReal.ofReal_add_le (add_le_add (hmem A _ adm₁) (hmem B _ adm₂))
  · rw [integral_undef hI, ENNReal.ofReal_zero]
    exact zero_le _

theorem dualVarG_chart_le [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M) (Ψ : M → ℂ)
    (hΨ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ Ψ) (φ : M → ℝ) (hφ : dualChartMeas φ) (p q : M)
    (W : Set M) (hW : IsOpen W) (hWp : W ⊆ (chartAt E3 p).source)
    (hWq : W ⊆ (chartAt E3 q).source) :
    dualVarG (g.coeff (chartAt E3 q).symm) (dualOmega Ψ q) (fun y => φ ((chartAt E3 q).symm y))
        (chartAt E3 q '' W) ∅ ≤
      dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p) (fun y => φ ((chartAt E3 p).symm y))
        (chartAt E3 p '' W) ∅ :=
by
  classical
  
  have jacdet : ∀ (Y : E3 → E3) (x : E3), (jacMat Y x).det = (fderiv ℝ Y x).det := by
    intro Y x
    have h : jacMat Y x = LinearMap.toMatrix (EuclideanSpace.basisFun (Fin 3) ℝ).toBasis
        (EuclideanSpace.basisFun (Fin 3) ℝ).toBasis (fderiv ℝ Y x : E3 →ₗ[ℝ] E3) := by
      ext i a
      rw [LinearMap.toMatrix_apply]
      simp [jacMat, e]
    rw [h, LinearMap.det_toMatrix]
  
  have densZero : ∀ (G' : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (y : E3),
      y ∉ tsupport X → sepDensDiv G' X y = 0 := by
    intro G' X y hy
    have hX : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    unfold partialDeriv
    have h : (fun z => Real.sqrt (G' z).det * X z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hX] with z hz
      simp [hz]
    rw [h.fderiv_eq]
    simp
  
  have linexp : ∀ (L : E3 →L[ℝ] E3) (v : E3) (i : Fin 3), L v i = ∑ a : Fin 3, L (e a) i * v a := by
    intro L v i
    have hv : v = ∑ a : Fin 3, v a • e a := by
      ext k
      fin_cases k <;> simp [e, Fin.sum_univ_three, EuclideanSpace.single_apply]
    conv_lhs => rw [hv]
    simp [map_sum, map_smul, Fin.sum_univ_three, mul_comm]
  
  have bdd : ∀ (r : M) (Y : E3 → E3), ContDiff ℝ ∞ Y → HasCompactSupport Y →
      tsupport Y ⊆ (chartAt E3 r).target →
      (∀ i : Fin 3, ContDiff ℝ ∞ (fun z => Real.sqrt (g.coeff (chartAt E3 r).symm z).det * Y z i)) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv (g.coeff (chartAt E3 r).symm) Y y| ≤ C := by
    intro r Y hY hYc hYt
    have h1 : ∀ i : Fin 3,
        ContDiff ℝ ∞ (fun z => Real.sqrt (g.coeff (chartAt E3 r).symm z).det * Y z i) := by
      intro i
      rw [contDiff_iff_contDiffAt]
      intro y
      by_cases hy : y ∈ (chartAt E3 r).target
      · have hent : ∀ a b : Fin 3,
            ContDiffAt ℝ ∞ (fun w => g.coeff (chartAt E3 r).symm w a b) y := fun a b =>
          (g.smooth r a b).contDiffAt ((chartAt E3 r).open_target.mem_nhds hy)
        have hdet : ContDiffAt ℝ ∞ (fun w => (g.coeff (chartAt E3 r).symm w).det) y := by
          simp only [Matrix.det_fin_three]
          have h00 := hent 0 0
          have h01 := hent 0 1
          have h02 := hent 0 2
          have h10 := hent 1 0
          have h11 := hent 1 1
          have h12 := hent 1 2
          have h20 := hent 2 0
          have h21 := hent 2 1
          have h22 := hent 2 2
          fun_prop
        have hsq : ContDiffAt ℝ ∞ (fun w => Real.sqrt (g.coeff (chartAt E3 r).symm w).det) y :=
          hdet.sqrt (coeff_chart_symm_posDef g r y hy).det_pos.ne'
        have hYi : ContDiff ℝ ∞ (fun w => Y w i) :=
          (EuclideanSpace.proj (𝕜 := ℝ) i).contDiff.comp hY
        exact hsq.mul hYi.contDiffAt
      · have hyY : y ∉ tsupport Y := fun h => hy (hYt h)
        have hev : Y =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hyY
        refine (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
        filter_upwards [hev] with z hz
        simp [hz]
    refine ⟨h1, ?_⟩
    have hc : Continuous (sepDensDiv (g.coeff (chartAt E3 r).symm) Y) := by
      show Continuous fun y => ∑ i : Fin 3,
        fderiv ℝ (fun z => Real.sqrt (g.coeff (chartAt E3 r).symm z).det * Y z i) y (e i)
      exact continuous_finset_sum _ fun i _ =>
        ((h1 i).continuous_fderiv (by simp)).clm_apply continuous_const
    have hcs : HasCompactSupport (sepDensDiv (g.coeff (chartAt E3 r).symm) Y) :=
      HasCompactSupport.intro (K := tsupport Y) hYc (fun y hy => densZero _ _ _ hy)
    obtain ⟨C, hC⟩ := hc.bounded_above_of_compact_support hcs
    exact ⟨C, fun y => by have := hC y; rwa [Real.norm_eq_abs] at this⟩
  
  have hOp : IsOpen (chartAt E3 p '' W) := (chartAt E3 p).isOpen_image_of_subset_source hW hWp
  have hOq : IsOpen (chartAt E3 q '' W) := (chartAt E3 q).isOpen_image_of_subset_source hW hWq
  set τ : E3 → E3 := fun z => chartAt E3 q ((chartAt E3 p).symm z) with hτdef
  set σ : E3 → E3 := fun z => chartAt E3 p ((chartAt E3 q).symm z) with hσdef
  have hOpt : ∀ y ∈ chartAt E3 p '' W,
      y ∈ (chartAt E3 p).target ∧ (chartAt E3 p).symm y ∈ W := by
    rintro _ ⟨x, hx, rfl⟩
    exact ⟨(chartAt E3 p).map_source (hWp hx), by rw [(chartAt E3 p).left_inv (hWp hx)]; exact hx⟩
  have hOqt : ∀ z ∈ chartAt E3 q '' W,
      z ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm z ∈ W := by
    rintro _ ⟨x, hx, rfl⟩
    exact ⟨(chartAt E3 q).map_source (hWq hx), by rw [(chartAt E3 q).left_inv (hWq hx)]; exact hx⟩
  have hτx : ∀ x ∈ W, τ (chartAt E3 p x) = chartAt E3 q x := by
    intro x hx
    simp only [hτdef, (chartAt E3 p).left_inv (hWp hx)]
  have hτO : ∀ y ∈ chartAt E3 p '' W, τ y ∈ chartAt E3 q '' W := by
    rintro _ ⟨x, hx, rfl⟩
    rw [hτx x hx]
    exact ⟨x, hx, rfl⟩
  have hσO : ∀ z ∈ chartAt E3 q '' W, σ z ∈ chartAt E3 p '' W := by
    rintro _ ⟨x, hx, rfl⟩
    refine ⟨x, hx, ?_⟩
    simp only [hσdef, (chartAt E3 q).left_inv (hWq hx)]
  have hστ : ∀ y ∈ chartAt E3 p '' W, σ (τ y) = y := by
    rintro _ ⟨x, hx, rfl⟩
    rw [hτx x hx]
    simp only [hσdef, (chartAt E3 q).left_inv (hWq hx)]
  have hτσ : ∀ z ∈ chartAt E3 q '' W, τ (σ z) = z := by
    rintro _ ⟨x, hx, rfl⟩
    have h1 : σ (chartAt E3 q x) = chartAt E3 p x := by
      simp only [hσdef, (chartAt E3 q).left_inv (hWq hx)]
    rw [h1, hτx x hx]
  have hτs : ContDiffOn ℝ ∞ τ (chartAt E3 p '' W) := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (chartAt E3 q ∘ (chartAt E3 p).symm)
        (chartAt E3 p '' W) :=
      (contMDiffOn_chart (x := q)).comp ((contMDiffOn_chart_symm (x := p)).mono
        (fun y hy => (hOpt y hy).1)) (fun y hy => hWq (hOpt y hy).2)
    exact contMDiffOn_iff_contDiffOn.mp h1
  have hσc : ContinuousOn σ (chartAt E3 q '' W) :=
    (chartAt E3 p).continuousOn.comp ((chartAt E3 q).continuousOn_symm.mono
      (fun z hz => (hOqt z hz).1)) (fun z hz => hWp (hOqt z hz).2)
  have hinj : Set.InjOn τ (chartAt E3 p '' W) := by
    intro y₁ h₁ y₂ h₂ h
    rw [← hστ y₁ h₁, ← hστ y₂ h₂, h]
  have himg : τ '' (chartAt E3 p '' W) = chartAt E3 q '' W := by
    ext z
    constructor
    · rintro ⟨y, hy, rfl⟩
      exact hτO y hy
    · intro hz
      exact ⟨σ z, hσO z hz, hτσ z hz⟩
  have hu : ∀ y ∈ chartAt E3 p '' W,
      φ ((chartAt E3 p).symm y) = φ ((chartAt E3 q).symm (τ y)) := by
    rintro _ ⟨x, hx, rfl⟩
    rw [hτx x hx, (chartAt E3 q).left_inv (hWq hx), (chartAt E3 p).left_inv (hWp hx)]
  
  have hpt : ∀ y ∈ chartAt E3 p '' W,
      DifferentiableAt ℝ τ y ∧
      (jacMat τ y).det ≠ 0 ∧
      Real.sqrt (g.coeff (chartAt E3 p).symm y).det =
        |(jacMat τ y).det| * Real.sqrt (g.coeff (chartAt E3 q).symm (τ y)).det ∧
      ∀ v : Fin 3 → ℝ,
        ∑ i : Fin 3, ∑ j : Fin 3, g.coeff (chartAt E3 p).symm y i j * v i * v j =
          ∑ a : Fin 3, ∑ b : Fin 3, g.coeff (chartAt E3 q).symm (τ y) a b *
            (∑ i : Fin 3, jacMat τ y a i * v i) * (∑ j : Fin 3, jacMat τ y b j * v j) := by
    intro y hy
    obtain ⟨hyt, hyW⟩ := hOpt y hy
    obtain ⟨hd, hlaw, -⟩ := sep_chart_transition g p q y hyt (hWq hyW)
    have hlaw' : ∀ i j : Fin 3, g.coeff (chartAt E3 p).symm y i j = ∑ a : Fin 3, ∑ b : Fin 3,
        jacMat τ y a i * g.coeff (chartAt E3 q).symm (τ y) a b * jacMat τ y b j := hlaw
    have hmat : g.coeff (chartAt E3 p).symm y =
        (jacMat τ y).transpose * g.coeff (chartAt E3 q).symm (τ y) * jacMat τ y := by
      ext i j
      rw [hlaw' i j]
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Fin.sum_univ_three]
      ring
    have hdet : (g.coeff (chartAt E3 p).symm y).det =
        (jacMat τ y).det ^ 2 * (g.coeff (chartAt E3 q).symm (τ y)).det := by
      rw [hmat, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose]
      ring
    have hposp : 0 < (g.coeff (chartAt E3 p).symm y).det :=
      (coeff_chart_symm_posDef g p y hyt).det_pos
    refine ⟨hd, ?_, ?_, ?_⟩
    · intro h0
      rw [hdet, h0] at hposp
      simp at hposp
    · rw [hdet, Real.sqrt_mul (sq_nonneg _), Real.sqrt_sq_eq_abs]
    · intro v
      simp only [hlaw', Fin.sum_univ_three]
      ring
  have hlaw : ∀ z ∈ chartAt E3 p '' W, ∀ i j : Fin 3,
      g.coeff (chartAt E3 p).symm z i j = ∑ a : Fin 3, ∑ b : Fin 3,
        fderiv ℝ τ z (e i) a * g.coeff (chartAt E3 q).symm (τ z) a b * fderiv ℝ τ z (e j) b :=
    fun z hz => (sep_chart_transition g p q z (hOpt z hz).1 (hWq (hOpt z hz).2)).2.1
  have hposq : ∀ z ∈ chartAt E3 p '' W, 0 ≤ (g.coeff (chartAt E3 q).symm (τ z)).det :=
    fun z hz => (coeff_chart_symm_posDef g q (τ z) (hOqt _ (hτO z hz)).1).det_pos.le
  
  have hre : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => (Ψ x).re) :=
    (Complex.reCLM.contMDiff).comp hΨ
  have him : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => (Ψ x).im) :=
    (Complex.imCLM.contMDiff).comp hΨ
  have hcov : ∀ y ∈ chartAt E3 p '' W, ∀ i : Fin 3,
      dualOmega Ψ p y i = ∑ a : Fin 3, fderiv ℝ τ y (e i) a * dualOmega Ψ q (τ y) a := by
    intro y hy i
    obtain ⟨hyt, hyW⟩ := hOpt y hy
    obtain ⟨-, -, h3⟩ := sep_chart_transition g p q y hyt (hWq hyW)
    have hr := h3 _ hre i
    have hi := h3 _ him i
    beta_reduce at hr hi
    have hval : (chartAt E3 q).symm (τ y) = (chartAt E3 p).symm y :=
      (chartAt E3 q).left_inv (hWq hyW)
    unfold dualOmega
    rw [hr, hi, hval]
    simp only [Fin.sum_univ_three]
    ring
  
  unfold dualVarG
  refine sup_le ?_ ?_
  · 
    refine iSup_le fun hq => le_sup_of_le_left (le_iSup_of_le (fun hp => hq ?_) le_rfl)
    rw [locallyIntegrableOn_iff hOq.isLocallyClosed]
    intro k hk hkc
    have hk'c : IsCompact (σ '' k) := hkc.image_of_continuousOn (hσc.mono hk)
    have hk'O : σ '' k ⊆ chartAt E3 p '' W := by
      rintro _ ⟨z, hz, rfl⟩
      exact hσO z (hk hz)
    have hk'm : MeasurableSet (σ '' k) := hk'c.measurableSet
    have himk : τ '' (σ '' k) = k := by
      ext z
      constructor
      · rintro ⟨_, ⟨w, hw, rfl⟩, rfl⟩
        rw [hτσ w (hk hw)]
        exact hw
      · intro hz
        exact ⟨σ z, ⟨z, hz, rfl⟩, hτσ z (hk hz)⟩
    have hint : IntegrableOn (fun y => φ ((chartAt E3 p).symm y)) (σ '' k) :=
      hp.integrableOn_compact_subset hk'O hk'c
    have hdc : ContinuousOn (fun y => |(fderiv ℝ τ y).det|) (chartAt E3 p '' W) :=
      (ContinuousLinearMap.continuous_det.comp_continuousOn
        (hτs.continuousOn_fderiv_of_isOpen hOp (by simp))).abs
    have h2 : IntegrableOn (fun y => |(fderiv ℝ τ y).det| * φ ((chartAt E3 p).symm y))
        (σ '' k) :=
      IntegrableOn.continuousOn_mul (hdc.mono hk'O) hint hk'c
    have h3 : IntegrableOn (fun y => |(fderiv ℝ τ y).det| • φ ((chartAt E3 q).symm (τ y)))
        (σ '' k) :=
      h2.congr_fun (fun y hy => by simp only [smul_eq_mul]; rw [hu y (hk'O hy)]) hk'm
    rw [← himk]
    exact (integrableOn_image_iff_integrableOn_abs_det_fderiv_smul volume hk'm
      (fun y hy => (hpt y (hk'O hy)).1.hasFDerivAt.hasFDerivWithinAt) (hinj.mono hk'O)
      (fun z => φ ((chartAt E3 q).symm z))).2 h3
  · 
    refine iSup₂_le fun X hX => ?_
    obtain ⟨hXd, hXc, hXt, hXn, -⟩ := hX
    have hXs : ContDiff ℝ ∞ X := contDiff_iff_contDiffAt.2 fun y => hXd y (Set.notMem_empty y)
    obtain ⟨X', hX's, hX'c, hX't, -, hP5, hP6⟩ :=
      transport_field_exists τ σ (chartAt E3 p '' W) (chartAt E3 q '' W) hOp hτs hσc hσO hστ
        (fun y hy => (hpt y hy).2.1) X hXs hXc hXt
    have hbound : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3,
        g.coeff (chartAt E3 p).symm y i j * X' y i * X' y j ≤ 1 := by
      intro y
      by_cases hy : y ∈ chartAt E3 p '' W
      · have hq := (hpt y hy).2.2.2 (fun i => X' y i)
        simp only at hq
        rw [hq]
        have h5 : ∀ a : Fin 3, (∑ i : Fin 3, jacMat τ y a i * X' y i) = X (τ y) a :=
          fun a => (hP5 y hy a).symm
        simp only [h5]
        exact hXn (τ y)
      · rw [hP6 y hy]
        simp
    have hbdd := (bdd p X' hX's hX'c (hX't.trans fun y hy => (hOpt y hy).1)).2
    have hWq' := (bdd q X hXs hXc (hXt.trans fun z hz => (hOqt z hz).1)).1
    have hP5' : ∀ y ∈ chartAt E3 p '' W, ∀ a : Fin 3,
        X (τ y) a = ∑ i : Fin 3, fderiv ℝ τ y (e i) a * X' y i := by
      intro y hy a
      rw [hP5 y hy a]
      rfl
    have hvec : ∀ z ∈ chartAt E3 p '' W, fderiv ℝ τ z (X' z) = X (τ z) := by
      intro z hz
      refine PiLp.ext fun i => ?_
      rw [linexp, hP5' z hz i]
    
    have hrel : ∀ y ∈ chartAt E3 p '' W,
        φ ((chartAt E3 p).symm y) * sepDensDiv (g.coeff (chartAt E3 p).symm) X' y +
            Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
              ∑ i : Fin 3, dualOmega Ψ p y i * X' y i =
          |(fderiv ℝ τ y).det| *
            (φ ((chartAt E3 q).symm (τ y)) * sepDensDiv (g.coeff (chartAt E3 q).symm) X (τ y) +
              Real.sqrt (g.coeff (chartAt E3 q).symm (τ y)).det *
                ∑ i : Fin 3, dualOmega Ψ q (τ y) i * X (τ y) i) := by
      intro y hy
      obtain ⟨-, hJ0, hsq, -⟩ := hpt y hy
      have hdet : (fderiv ℝ τ y).det ≠ 0 := by rw [← jacdet]; exact hJ0
      have hdens := sepDensDiv_transition_pointwise (chartAt E3 p '' W) hOp τ hτs
        (g.coeff (chartAt E3 p).symm) (g.coeff (chartAt E3 q).symm) X' X hlaw hposq hvec y hy hdet
        (fun i => ((hWq' i).differentiable (by simp)) (τ y))
      have htw : ∑ i : Fin 3, dualOmega Ψ p y i * X' y i =
          ∑ a : Fin 3, dualOmega Ψ q (τ y) a * X (τ y) a := by
        simp only [hcov y hy, hP5' y hy, Fin.sum_univ_three]
        ring
      rw [hu y hy, hdens, hsq, jacdet, htw]
      ring
    
    have hq0 : ∀ z ∉ chartAt E3 q '' W,
        φ ((chartAt E3 q).symm z) * sepDensDiv (g.coeff (chartAt E3 q).symm) X z +
          Real.sqrt (g.coeff (chartAt E3 q).symm z).det *
            ∑ i : Fin 3, dualOmega Ψ q z i * X z i = 0 := by
      intro z hz
      have hzX : z ∉ tsupport X := fun h => hz (hXt h)
      rw [densZero _ _ _ hzX, image_eq_zero_of_notMem_tsupport hzX]
      simp
    have hp0 : ∀ y ∉ chartAt E3 p '' W,
        φ ((chartAt E3 p).symm y) * sepDensDiv (g.coeff (chartAt E3 p).symm) X' y +
          Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
            ∑ i : Fin 3, dualOmega Ψ p y i * X' y i = 0 := by
      intro y hy
      have hyX : y ∉ tsupport X' := fun h => hy (hX't h)
      rw [densZero _ _ _ hyX, image_eq_zero_of_notMem_tsupport hyX]
      simp
    have hcv : (∫ z, (φ ((chartAt E3 q).symm z) * sepDensDiv (g.coeff (chartAt E3 q).symm) X z +
          Real.sqrt (g.coeff (chartAt E3 q).symm z).det *
            ∑ i : Fin 3, dualOmega Ψ q z i * X z i)) =
        ∫ y, (φ ((chartAt E3 p).symm y) * sepDensDiv (g.coeff (chartAt E3 p).symm) X' y +
          Real.sqrt (g.coeff (chartAt E3 p).symm y).det *
            ∑ i : Fin 3, dualOmega Ψ p y i * X' y i) := by
      rw [← setIntegral_eq_integral_of_forall_compl_eq_zero hq0,
        ← setIntegral_eq_integral_of_forall_compl_eq_zero hp0, ← himg,
        integral_image_eq_integral_abs_det_fderiv_smul volume hOp.measurableSet
          (fun y hy => (hpt y hy).1.hasFDerivAt.hasFDerivWithinAt) hinj
          (fun z => φ ((chartAt E3 q).symm z) * sepDensDiv (g.coeff (chartAt E3 q).symm) X z +
            Real.sqrt (g.coeff (chartAt E3 q).symm z).det *
              ∑ i : Fin 3, dualOmega Ψ q z i * X z i)]
      refine setIntegral_congr_fun hOp.measurableSet fun y hy => ?_
      simp only [smul_eq_mul]
      rw [hrel y hy]
    exact le_sup_of_le_right (le_iSup₂_of_le X'
      ⟨fun y _ => hX's.contDiffAt, hX'c, hX't, hbound, hbdd⟩ (congrArg ENNReal.ofReal hcv).le)

theorem dualRiemVar_add_chart_le [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Ψ : M → ℂ) (hΨ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ Ψ)
    (φ₁ φ₂ : M → ℝ) (hφ₁ : dualChartMeas φ₁) (hφ₂ : dualChartMeas φ₂) (Ω Kc : Set M) (p : M)
    (K' V₁ V₂ : Set E3) (hK' : IsCompact K') (hV₁ : IsOpen V₁) (hV₂ : IsOpen V₂)
    (hK'V₂ : K' ⊆ V₂) (hV₂c : IsCompact (closure V₂)) (hV₂V₁ : closure V₂ ⊆ V₁)
    (hV₁Ω : V₁ ⊆ chartAt E3 p '' ((Ω \ Kc) ∩ (chartAt E3 p).source))
    (heq : ∀ x : M, x ∉ (chartAt E3 p).symm '' K' → φ₁ x = φ₂ x) :
    dualRiemVar g Ψ φ₂ Ω Kc +
        dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
          (fun y => φ₁ ((chartAt E3 p).symm y)) V₂ ∅ ≤
      dualRiemVar g Ψ φ₁ Ω Kc +
        dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
          (fun y => φ₂ ((chartAt E3 p).symm y)) V₁ ∅ +
        dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
          (fun y => φ₁ ((chartAt E3 p).symm y)) (V₁ \ K') ∅ :=
by
  classical
  haveI : Nonempty M := ⟨p⟩
  
  have monoD : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (u : E3 → ℝ)
      (A B Kc' : Set E3), A ⊆ B → dualVarG G om u A Kc' ≤ dualVarG G om u B Kc' := by
    intro G om u A B Kc' hAB
    unfold dualVarG
    refine sup_le_sup ?_ ?_
    · exact iSup_le fun hA => le_iSup_of_le (fun hB => hA (hB.mono_set hAB)) le_rfl
    · exact iSup₂_mono' fun X hX => ⟨X, ⟨hX.1, hX.2.1, hX.2.2.1.trans hAB, hX.2.2.2⟩, le_rfl⟩
  have densZero : ∀ (G' : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (y : E3),
      y ∉ tsupport X → sepDensDiv G' X y = 0 := by
    intro G' X y hy
    have hX : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    unfold partialDeriv
    have h : (fun z => Real.sqrt (G' z).det * X z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hX] with z hz
      simp [hz]
    rw [h.fderiv_eq]
    simp
  have congrD : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (u₁ u₂ : E3 → ℝ)
      (A Kc' : Set E3), IsOpen A → (∀ y ∈ A, u₁ y = u₂ y) →
      dualVarG G om u₁ A Kc' ≤ dualVarG G om u₂ A Kc' := by
    intro G om u₁ u₂ A Kc' hA h
    unfold dualVarG
    refine sup_le_sup ?_ ?_
    · refine iSup_le fun h1 => le_iSup_of_le (fun h2 => h1 ?_) le_rfl
      rw [locallyIntegrableOn_iff hA.isLocallyClosed] at h2 ⊢
      intro k hk hkc
      exact (h2 k hk hkc).congr_fun (fun y hy => (h y (hk hy)).symm) hkc.isClosed.measurableSet
    · refine iSup₂_mono' fun X hX => ⟨X, hX, le_of_eq ?_⟩
      refine congrArg ENNReal.ofReal (integral_congr_ae (Filter.Eventually.of_forall fun y => ?_))
      dsimp only
      by_cases hy : y ∈ A
      · rw [h y hy]
      · rw [densZero G X y (fun h' => hy (hX.2.2.1 h'))]
        simp
  have cutLe : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (u : E3 → ℝ)
      (A Kc' : Set E3), Disjoint A Kc' → dualVarG G om u A Kc' ≤ dualVarG G om u A ∅ := by
    intro G om u A Kc' hAK
    unfold dualVarG
    refine sup_le_sup le_rfl ?_
    refine iSup₂_mono' fun X hX => ⟨X, ⟨fun y _ => ?_, hX.2⟩, le_rfl⟩
    by_cases hy : y ∈ Kc'
    · have hyX : y ∉ tsupport X := fun h' => Set.disjoint_left.1 hAK (hX.2.2.1 h') hy
      exact (contDiffAt_const (c := (0 : E3))).congr_of_eventuallyEq
        (notMem_tsupport_iff_eventuallyEq.mp hyX)
    · exact hX.1 y hy
  have cutGe : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (u : E3 → ℝ)
      (A Kc' : Set E3), dualVarG G om u A ∅ ≤ dualVarG G om u A Kc' := by
    intro G om u A Kc'
    unfold dualVarG
    exact sup_le_sup le_rfl (iSup₂_mono' fun X hX =>
      ⟨X, ⟨fun y _ => hX.1 y (Set.notMem_empty y), hX.2⟩, le_rfl⟩)
  
  have homC : ∀ (q : M) (i : Fin 3),
      ContinuousOn (fun y => dualOmega Ψ q y i) (chartAt E3 q).target := by
    intro q i
    have hc : ContDiffOn ℝ ∞ (fun y => Ψ ((chartAt E3 q).symm y)) (chartAt E3 q).target :=
      contMDiffOn_iff_contDiffOn.mp (hΨ.comp_contMDiffOn contMDiffOn_chart_symm)
    have hre : ContDiffOn ℝ ∞ (fun y => (Ψ ((chartAt E3 q).symm y)).re) (chartAt E3 q).target :=
      Complex.reCLM.contDiff.comp_contDiffOn hc
    have him : ContDiffOn ℝ ∞ (fun y => (Ψ ((chartAt E3 q).symm y)).im) (chartAt E3 q).target :=
      Complex.imCLM.contDiff.comp_contDiffOn hc
    have hre' : ContinuousOn
        (fun y => partialDeriv i (fun z => (Ψ ((chartAt E3 q).symm z)).re) y)
        (chartAt E3 q).target :=
      (hre.continuousOn_fderiv_of_isOpen (chartAt E3 q).open_target (by simp)).clm_apply
        continuousOn_const
    have him' : ContinuousOn
        (fun y => partialDeriv i (fun z => (Ψ ((chartAt E3 q).symm z)).im) y)
        (chartAt E3 q).target :=
      (him.continuousOn_fderiv_of_isOpen (chartAt E3 q).open_target (by simp)).clm_apply
        continuousOn_const
    exact (hre.continuousOn.mul him').sub (him.continuousOn.mul hre')
  
  have chartOpen : ∀ (q : M) (S : Set M), IsOpen S → S ⊆ (chartAt E3 q).source →
      IsOpen (chartAt E3 q '' S) := fun q S hS hSs =>
    (chartAt E3 q).isOpen_image_of_subset_source hS hSs
  have chartTgt : ∀ (q : M) (S : Set M), S ⊆ (chartAt E3 q).source →
      chartAt E3 q '' S ⊆ (chartAt E3 q).target := by
    rintro q S hSs _ ⟨x, hx, rfl⟩
    exact (chartAt E3 q).map_source (hSs hx)
  have hGsm : ∀ (q : M) (i j : Fin 3),
      ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 q).symm y i j) (chartAt E3 q).target :=
    fun q i j => g.smooth q i j
  have posDefC : ∀ (q : M) (y : E3), y ∈ (chartAt E3 q).target →
      (g.coeff (chartAt E3 q).symm y).PosDef := by
    intro q y hy
    have hq : (chartAt E3 q).symm y ∈ (chartAt E3 q).source := (chartAt E3 q).map_target hy
    have hf : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y :=
      mdifferentiableAt_atlas_symm (chart_mem_atlas E3 q) hy
    have hg : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y) :=
      mdifferentiableAt_atlas (chart_mem_atlas E3 q) hq
    have hcomp : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 q) ∘ (chartAt E3 q).symm) y =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y)).comp
          (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y) := mfderiv_comp y hg hf
    have hid : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ((chartAt E3 q) ∘ (chartAt E3 q).symm) y =
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) id y := by
      apply Filter.EventuallyEq.mfderiv_eq
      filter_upwards [(chartAt E3 q).eventually_right_inverse hy] with z hz
      exact hz
    rw [mfderiv_id] at hid
    have hinv : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q) ((chartAt E3 q).symm y)
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y w) = w := by
      intro w
      have h1 := congrArg (fun L => L w) (hcomp.symm.trans hid)
      simpa using h1
    have hDinj : ∀ w : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y w = 0 → w = 0 := by
      intro w hw
      rw [← hinv w, hw, map_zero]
    apply Matrix.PosDef.of_dotProduct_mulVec_pos
    · apply Matrix.IsHermitian.ext
      intro i j
      simp only [RiemannianMetric3.coeff, coeffMatrix, star_trivial]
      exact g.symm _ _ _
    · intro x hx
      have hvx : (∑ i, x i • e i : E3) ≠ 0 := by
        intro h0
        apply hx
        funext j
        have h1 := congrArg (fun u : E3 => u j) h0
        fin_cases j <;> simpa [e, Fin.sum_univ_three, EuclideanSpace.single_apply] using h1
      have hDv := fun h => hvx (hDinj _ h)
      have hpos := g.posDef ((chartAt E3 q).symm y) _ hDv
      have hkey : star x ⬝ᵥ (g.coeff (chartAt E3 q).symm y).mulVec x =
          g.g ((chartAt E3 q).symm y)
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y (∑ i, x i • e i : E3))
            (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) (chartAt E3 q).symm y (∑ i, x i • e i : E3)) := by
        simp only [map_sum, map_smul, ContinuousLinearMap.sum_apply,
          ContinuousLinearMap.smul_apply, smul_eq_mul, Fin.sum_univ_three, map_add,
          ContinuousLinearMap.add_apply, dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial,
          RiemannianMetric3.coeff, coeffMatrix]
        ring
      rw [hkey]
      exact hpos
  have hGdet : ∀ (q : M), ∀ y ∈ (chartAt E3 q).target,
      0 < (g.coeff (chartAt E3 q).symm y).det :=
    fun q y hy => (posDefC q y hy).det_pos
  
  have hV₁t : V₁ ⊆ (chartAt E3 p).target := by
    intro z hz
    obtain ⟨x, hx, rfl⟩ := hV₁Ω hz
    exact (chartAt E3 p).map_source hx.2
  have hV₁src' : (chartAt E3 p).symm '' V₁ ⊆ (Ω \ Kc) ∩ (chartAt E3 p).source := by
    rintro _ ⟨z, hz, rfl⟩
    obtain ⟨x, hx, rfl⟩ := hV₁Ω hz
    rw [(chartAt E3 p).left_inv hx.2]
    exact hx
  have hV₁src : (chartAt E3 p).symm '' V₁ ⊆ Ω ∩ (chartAt E3 p).source :=
    fun x hx => ⟨(hV₁src' hx).1.1, (hV₁src' hx).2⟩
  have hV₂1 : V₂ ⊆ V₁ := subset_closure.trans hV₂V₁
  have hcl1 : closure V₂ ⊆ (chartAt E3 p).target := hV₂V₁.trans hV₁t
  have hV₁'o : IsOpen ((chartAt E3 p).symm '' V₁) :=
    (chartAt E3 p).isOpen_image_symm_of_subset_target hV₁ hV₁t
  have hV₂'o : IsOpen ((chartAt E3 p).symm '' V₂) :=
    (chartAt E3 p).isOpen_image_symm_of_subset_target hV₂ (hV₂1.trans hV₁t)
  have hC₂c : IsClosed ((chartAt E3 p).symm '' closure V₂) :=
    (hV₂c.image_of_continuousOn ((chartAt E3 p).continuousOn_symm.mono hcl1)).isClosed
  have hC₂V₁' : (chartAt E3 p).symm '' closure V₂ ⊆ (chartAt E3 p).symm '' V₁ :=
    Set.image_mono hV₂V₁
  have hV₂'C₂ : (chartAt E3 p).symm '' V₂ ⊆ (chartAt E3 p).symm '' closure V₂ :=
    Set.image_mono subset_closure
  have hV₂'src : (chartAt E3 p).symm '' V₂ ⊆ Ω ∩ (chartAt E3 p).source :=
    (Set.image_mono hV₂1).trans hV₁src
  have hR5 : ∀ x, x ∉ (chartAt E3 p).symm '' closure V₂ → φ₁ x = φ₂ x :=
    fun x hx => heq x (fun h => hx (Set.image_mono (hK'V₂.trans subset_closure) h))
  have himV₁ : chartAt E3 p '' ((chartAt E3 p).symm '' V₁) = V₁ :=
    (chartAt E3 p).toPartialEquiv.image_symm_image_of_subset_target hV₁t
  have himV₂ : chartAt E3 p '' ((chartAt E3 p).symm '' V₂) = V₂ :=
    (chartAt E3 p).toPartialEquiv.image_symm_image_of_subset_target (hV₂1.trans hV₁t)
  
  have hcut : ∀ (q : M) (S : Set M), S ⊆ (chartAt E3 q).source →
      S ⊆ (chartAt E3 p).symm '' V₁ →
      Disjoint (chartAt E3 q '' S) (chartAt E3 q '' (Kc ∩ (chartAt E3 q).source)) := by
    intro q S hSs hSV
    rw [Set.disjoint_left]
    rintro _ ⟨x, hx, rfl⟩ ⟨x', ⟨hx'K, hx's⟩, hxx'⟩
    have hxx : x' = x := (chartAt E3 q).injOn hx's (hSs hx) hxx'
    rw [hxx] at hx'K
    exact (hV₁src' (hSV hx)).1.2 hx'K
  
  have key : ∀ (n : ℕ) (pf : Fin n → M) (W : Fin n → Set M),
      ((∀ k, IsOpen (W k) ∧ W k ⊆ Ω ∩ (chartAt E3 (pf k)).source) ∧
        Pairwise (fun k l => Disjoint (W k) (W l))) →
      ∑ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y)) (chartAt E3 (pf k) '' W k)
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) +
        dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
          (fun y => φ₁ ((chartAt E3 p).symm y)) V₂ ∅ ≤
      dualRiemVar g Ψ φ₁ Ω Kc +
        dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
          (fun y => φ₂ ((chartAt E3 p).symm y)) V₁ ∅ := by
    intro n pf W hW
    have hWo : ∀ k, IsOpen (W k) := fun k => (hW.1 k).1
    have hWs : ∀ k, W k ⊆ (chartAt E3 (pf k)).source :=
      fun k => (hW.1 k).2.trans Set.inter_subset_right
    have hWΩ : ∀ k, W k ⊆ Ω := fun k => (hW.1 k).2.trans Set.inter_subset_left
    have hAo : ∀ k, IsOpen (W k ∩ (chartAt E3 p).symm '' V₁) := fun k => (hWo k).inter hV₁'o
    have hBo : ∀ k, IsOpen (W k \ (chartAt E3 p).symm '' closure V₂) :=
      fun k => (hWo k).sdiff hC₂c
    have hAs : ∀ k, W k ∩ (chartAt E3 p).symm '' V₁ ⊆ (chartAt E3 (pf k)).source :=
      fun k => Set.inter_subset_left.trans (hWs k)
    have hBs : ∀ k, W k \ (chartAt E3 p).symm '' closure V₂ ⊆ (chartAt E3 (pf k)).source :=
      fun k => Set.diff_subset.trans (hWs k)
    have hAp : ∀ k, W k ∩ (chartAt E3 p).symm '' V₁ ⊆ (chartAt E3 p).source :=
      fun k => Set.inter_subset_right.trans (hV₁src.trans Set.inter_subset_right)
    have hcutA : ∀ k, Disjoint (chartAt E3 (pf k) '' (W k ∩ (chartAt E3 p).symm '' V₁))
        (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) :=
      fun k => hcut (pf k) _ (hAs k) Set.inter_subset_right
    
    have h7 : ∀ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y)) (chartAt E3 (pf k) '' W k)
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) ≤
        dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k ∩ (chartAt E3 p).symm '' V₁))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) +
        dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) := by
      intro k
      refine (monoD _ _ _ _ _ _ ?_).trans (dualVarG_union_le _ _ _ (chartAt E3 (pf k)).open_target
        (hGsm (pf k)) (hGdet (pf k)) (homC (pf k)) _ _ _ _ (chartOpen _ _ (hAo k) (hAs k))
        (chartOpen _ _ (hBo k) (hBs k)) (chartTgt _ _ (hAs k)) (chartTgt _ _ (hBs k)) (hcutA k))
      rintro _ ⟨x, hx, rfl⟩
      by_cases hxC : x ∈ (chartAt E3 p).symm '' closure V₂
      · exact Or.inl ⟨x, ⟨hx, hC₂V₁' hxC⟩, rfl⟩
      · exact Or.inr ⟨x, ⟨hx, hxC⟩, rfl⟩
    
    have h8 : ∀ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) ≤
        dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₁ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) := by
      intro k
      refine congrD _ _ _ _ _ _ (chartOpen _ _ (hBo k) (hBs k)) ?_
      rintro _ ⟨x, hx, rfl⟩
      rw [(chartAt E3 (pf k)).left_inv (hBs k hx)]
      exact (hR5 x hx.2).symm
    
    have h9 : ∀ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k ∩ (chartAt E3 p).symm '' V₁))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) ≤
        dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
          (fun y => φ₂ ((chartAt E3 p).symm y))
          (chartAt E3 p '' (W k ∩ (chartAt E3 p).symm '' V₁)) ∅ :=
      fun k => (cutLe _ _ _ _ _ (hcutA k)).trans
        (dualVarG_chart_le g Ψ hΨ φ₂ hφ₂ p (pf k) _ (hAo k) (hAp k) (hAs k))
    
    have h9b : ∑ k, dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
          (fun y => φ₂ ((chartAt E3 p).symm y))
          (chartAt E3 p '' (W k ∩ (chartAt E3 p).symm '' V₁)) ∅ ≤
        dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
          (fun y => φ₂ ((chartAt E3 p).symm y)) V₁ ∅ := by
      refine (dualVarG_sum_le _ _ _ n
        (fun k => chartAt E3 p '' (W k ∩ (chartAt E3 p).symm '' V₁)) ?_).trans
        (monoD _ _ _ _ _ _ ?_)
      · intro k l hkl
        rw [Set.disjoint_left]
        rintro _ ⟨x, hx, rfl⟩ ⟨x', hx', hxx'⟩
        have hxx : x' = x := (chartAt E3 p).injOn (hAp l hx') (hAp k hx) hxx'
        subst hxx
        exact Set.disjoint_left.1 (hW.2 hkl) hx.1 hx'.1
      · refine Set.iUnion_subset fun k => ?_
        exact (Set.image_mono Set.inter_subset_right).trans himV₁.le
    
    have h10 : ∑ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₁ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) +
        dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
          (fun y => φ₁ ((chartAt E3 p).symm y)) V₂ ∅ ≤ dualRiemVar g Ψ φ₁ Ω Kc := by
      obtain ⟨W', hW'c, hW'l⟩ : ∃ W' : Fin (n + 1) → Set M,
          (∀ k, W' (Fin.castSucc k) = W k \ (chartAt E3 p).symm '' closure V₂) ∧
          W' (Fin.last n) = (chartAt E3 p).symm '' V₂ :=
        ⟨Fin.snoc (α := fun _ => Set M) (fun k => W k \ (chartAt E3 p).symm '' closure V₂)
          ((chartAt E3 p).symm '' V₂), fun k => by simp, by simp⟩
      obtain ⟨pf', hpc, hpl⟩ : ∃ pf' : Fin (n + 1) → M,
          (∀ k, pf' (Fin.castSucc k) = pf k) ∧ pf' (Fin.last n) = p :=
        ⟨Fin.snoc (α := fun _ => M) pf p, fun k => by simp, by simp⟩
      have dl : ∀ k, Disjoint (W k \ (chartAt E3 p).symm '' closure V₂)
          ((chartAt E3 p).symm '' V₂) := by
        intro k
        rw [Set.disjoint_left]
        intro x hx hx'
        exact hx.2 (hV₂'C₂ hx')
      have hadm : (∀ i, IsOpen (W' i) ∧ W' i ⊆ Ω ∩ (chartAt E3 (pf' i)).source) ∧
          Pairwise (fun i j => Disjoint (W' i) (W' j)) := by
        refine ⟨fun i => ?_, fun i j hij => ?_⟩
        · rcases Fin.eq_castSucc_or_eq_last i with ⟨k, rfl⟩ | rfl
          · rw [hW'c, hpc]
            exact ⟨hBo k, fun x hx => ⟨hWΩ k hx.1, hWs k hx.1⟩⟩
          · rw [hW'l, hpl]
            exact ⟨hV₂'o, hV₂'src⟩
        · rcases Fin.eq_castSucc_or_eq_last i with ⟨k, rfl⟩ | rfl
          · rcases Fin.eq_castSucc_or_eq_last j with ⟨l, rfl⟩ | rfl
            · rw [hW'c, hW'c]
              have hkl : k ≠ l := fun h => hij (by rw [h])
              exact (hW.2 hkl).mono Set.diff_subset Set.diff_subset
            · rw [hW'c, hW'l]
              exact dl k
          · rcases Fin.eq_castSucc_or_eq_last j with ⟨l, rfl⟩ | rfl
            · rw [hW'c, hW'l]
              exact (dl l).symm
            · exact absurd rfl hij
      have hsum : ∑ i, dualVarG (g.coeff (chartAt E3 (pf' i)).symm) (dualOmega Ψ (pf' i))
          (fun y => φ₁ ((chartAt E3 (pf' i)).symm y)) (chartAt E3 (pf' i) '' W' i)
          (chartAt E3 (pf' i) '' (Kc ∩ (chartAt E3 (pf' i)).source)) =
          ∑ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
            (fun y => φ₁ ((chartAt E3 (pf k)).symm y))
            (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
            (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) +
          dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
            (fun y => φ₁ ((chartAt E3 p).symm y)) V₂
            (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)) := by
        rw [Fin.sum_univ_castSucc]
        simp only [hW'c, hW'l, hpc, hpl, himV₂]
      refine (add_le_add le_rfl
        (cutGe _ _ _ _ (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)))).trans ?_
      rw [← hsum]
      unfold dualRiemVar
      exact le_iSup_of_le (n + 1) (le_iSup_of_le pf' (le_iSup_of_le W'
        (le_iSup_of_le hadm le_rfl)))
    
    have step1 : ∑ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y)) (chartAt E3 (pf k) '' W k)
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) ≤
        ∑ k, (dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k ∩ (chartAt E3 p).symm '' V₁))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) +
        dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₁ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source))) :=
      Finset.sum_le_sum fun k _ => (h7 k).trans (add_le_add le_rfl (h8 k))
    rw [Finset.sum_add_distrib] at step1
    refine (add_le_add step1 le_rfl).trans ?_
    rw [add_assoc, add_comm (dualRiemVar g Ψ φ₁ Ω Kc)]
    exact add_le_add ((Finset.sum_le_sum fun k _ => h9 k).trans h9b) h10
  
  have c0 : dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
        (fun y => φ₁ ((chartAt E3 p).symm y)) V₂ ∅ ≤
      dualRiemVar g Ψ φ₁ Ω Kc +
        dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
          (fun y => φ₂ ((chartAt E3 p).symm y)) V₁ ∅ := by
    have h := key 0 Fin.elim0 Fin.elim0 ⟨fun k => k.elim0, fun k => k.elim0⟩
    simpa using h
  refine le_trans ?_ le_self_add
  generalize dualRiemVar g Ψ φ₁ Ω Kc = S₁ at key c0 ⊢
  unfold dualRiemVar
  rw [ENNReal.iSup_add]
  refine iSup_le fun n => ?_
  rw [ENNReal.iSup_add]
  refine iSup_le fun pf => ?_
  rw [ENNReal.iSup_add]
  refine iSup_le fun W => ?_
  by_cases h : (∀ k, IsOpen (W k) ∧ W k ⊆ Ω ∩ (chartAt E3 (pf k)).source) ∧
      Pairwise (fun k l => Disjoint (W k) (W l))
  · rw [iSup_pos h]
    exact key n pf W h
  · rw [iSup_neg h, bot_eq_zero, zero_add]
    exact c0

theorem dualVarG_le_of_local_compare (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (U V K' : Set E3)
    (hU : IsOpen U) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) U)
    (hdet : ∀ y ∈ U, 0 < (G y).det) (v₁ v₂ : E3 → ℝ) (hV : IsOpen V) (hVU : V ⊆ U)
    (hK' : IsCompact K') (hK'V : K' ⊆ V) (heq : ∀ y : E3, y ∉ K' → v₁ y = v₂ y)
    (hfin : dualVarG G (fun _ _ => (0 : ℝ)) v₁ V ∅ < ⊤)
    (hcmp : ∀ V₁ V₂ : Set E3, IsOpen V₁ → IsOpen V₂ → K' ⊆ V₂ → IsCompact (closure V₂) →
      closure V₂ ⊆ V₁ → V₁ ⊆ V →
      dualVarG G (fun _ _ => (0 : ℝ)) v₁ V₂ ∅ ≤
        dualVarG G (fun _ _ => (0 : ℝ)) v₂ V₁ ∅ +
          dualVarG G (fun _ _ => (0 : ℝ)) v₁ (V₁ \ K') ∅) :
    dualVarG G (fun _ _ => (0 : ℝ)) v₁ V ∅ ≤ dualVarG G (fun _ _ => (0 : ℝ)) v₂ V ∅ :=
by
  classical
  have hK'c : IsClosed K' := hK'.isClosed
  
  have densZero : ∀ (X : E3 → E3) (y : E3), y ∉ tsupport X → sepDensDiv G X y = 0 := by
    intro X y hy
    have hX : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    unfold partialDeriv
    have h : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hX] with z hz
      simp [hz]
    rw [h.fderiv_eq]
    simp
  
  have mono : ∀ (u : E3 → ℝ) (A B : Set E3), A ⊆ B →
      dualVarG G (fun _ _ => (0 : ℝ)) u A ∅ ≤ dualVarG G (fun _ _ => (0 : ℝ)) u B ∅ := by
    intro u A B hAB
    unfold dualVarG
    refine sup_le_sup ?_ ?_
    · exact iSup_le fun hA => le_iSup_of_le (fun hB => hA (hB.mono_set hAB)) le_rfl
    · exact iSup₂_mono' fun X hX => ⟨X, ⟨hX.1, hX.2.1, hX.2.2.1.trans hAB, hX.2.2.2⟩, le_rfl⟩
  
  have congrD : ∀ (u₁ u₂ : E3 → ℝ) (A : Set E3), IsOpen A → (∀ y ∈ A, u₁ y = u₂ y) →
      dualVarG G (fun _ _ => (0 : ℝ)) u₁ A ∅ = dualVarG G (fun _ _ => (0 : ℝ)) u₂ A ∅ := by
    intro u₁ u₂ A hA h
    have hLI : LocallyIntegrableOn u₁ A ↔ LocallyIntegrableOn u₂ A := by
      rw [locallyIntegrableOn_iff hA.isLocallyClosed, locallyIntegrableOn_iff hA.isLocallyClosed]
      constructor
      · intro H k hk hkc
        exact (H k hk hkc).congr_fun (fun y hy => h y (hk hy)) hkc.isClosed.measurableSet
      · intro H k hk hkc
        exact (H k hk hkc).congr_fun (fun y hy => (h y (hk hy)).symm) hkc.isClosed.measurableSet
    unfold dualVarG
    congr 1
    · simp only [hLI]
    · refine iSup_congr fun X => iSup_congr fun hX => ?_
      congr 1
      refine integral_congr_ae (Eventually.of_forall fun y => ?_)
      dsimp only
      by_cases hyA : y ∈ A
      · rw [h y hyA]
      · have hz := densZero X y (fun hy => hyA (hX.2.2.1 hy))
        rw [hz]
        simp
  
  have two : ∀ (u : E3 → ℝ) (A B : Set E3), Disjoint A B →
      dualVarG G (fun _ _ => (0 : ℝ)) u A ∅ + dualVarG G (fun _ _ => (0 : ℝ)) u B ∅ ≤
        dualVarG G (fun _ _ => (0 : ℝ)) u (A ∪ B) ∅ := by
    intro u A B hAB
    have h := dualVarG_sum_le G (fun _ _ => (0 : ℝ)) u 2 ![A, B] (by
      intro k l hkl
      fin_cases k <;> fin_cases l <;> simp_all [hAB, hAB.symm])
    have hU2 : (⋃ k, ![A, B] k) = A ∪ B := by
      ext x
      simp [Fin.exists_fin_two]
    rw [Fin.sum_univ_two, hU2] at h
    simpa using h
  
  have union : ∀ (u : E3 → ℝ) (A B : Set E3), IsOpen A → IsOpen B → A ⊆ U → B ⊆ U →
      dualVarG G (fun _ _ => (0 : ℝ)) u (A ∪ B) ∅ ≤
        dualVarG G (fun _ _ => (0 : ℝ)) u A ∅ + dualVarG G (fun _ _ => (0 : ℝ)) u B ∅ :=
    fun u A B hA hB hAU hBU =>
      dualVarG_union_le G (fun _ _ => (0 : ℝ)) U hU hG hdet (fun _ => continuousOn_const) u A B ∅
        hA hB hAU hBU (Set.disjoint_empty A)
  
  have hLocV : LocallyIntegrableOn v₁ V := by
    by_contra hn
    have htop : dualVarG G (fun _ _ => (0 : ℝ)) v₁ V ∅ = ⊤ := by
      unfold dualVarG
      rw [iSup_pos hn, top_sup_eq]
    exact hfin.ne htop
  
  have collar : ∀ ε : ENNReal, 0 < ε → ∃ C : Set E3, IsOpen C ∧ K' ⊆ C ∧ C ⊆ V ∧
      dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅ < ε := by
    intro ε hε
    by_contra hH
    push_neg at hH
    set δ : ENNReal := min ε 1 / 2 with hδ
    have hm0 : min ε 1 ≠ 0 := (lt_min hε one_pos).ne'
    have hmt : min ε 1 ≠ ⊤ := ne_top_of_le_ne_top ENNReal.one_ne_top (min_le_right _ _)
    have hδ0 : δ ≠ 0 := (ENNReal.half_pos hm0).ne'
    have hδε : δ < ε := lt_of_lt_of_le (ENNReal.half_lt_self hm0 hmt) (min_le_left _ _)
    have claim : ∀ n : ℕ, ∃ C : Set E3, IsOpen C ∧ K' ⊆ C ∧ C ⊆ V ∧
        (n : ENNReal) * δ + dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅ ≤
          dualVarG G (fun _ _ => (0 : ℝ)) v₁ (V \ K') ∅ := by
      intro n
      induction n with
      | zero => exact ⟨V, hV, hK'V, subset_rfl, by simp⟩
      | succ n ih =>
        obtain ⟨C, hCo, hK'C, hCV, hC⟩ := ih
        have h1 : δ < dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅ :=
          lt_of_lt_of_le hδε (hH C hCo hK'C hCV)
        have hloc : LocallyIntegrableOn v₁ (C \ K') :=
          hLocV.mono_set (Set.diff_subset.trans hCV)
        unfold dualVarG at h1
        rw [iSup_neg (not_not.mpr hloc), bot_sup_eq] at h1
        obtain ⟨X, h1⟩ := lt_iSup_iff.mp h1
        obtain ⟨hX, h1⟩ := lt_iSup_iff.mp h1
        have hT : IsCompact (tsupport X) := hX.2.1
        have hCK : IsOpen (C \ K') := hCo.sdiff hK'c
        obtain ⟨O, hOo, hTO, hOC, -⟩ :=
          exists_open_between_and_isCompact_closure hT hCK hX.2.2.1
        refine ⟨C \ closure O, hCo.sdiff isClosed_closure, ?_, Set.diff_subset.trans hCV, ?_⟩
        · intro x hx
          exact ⟨hK'C hx, fun hxO => (hOC hxO).2 hx⟩
        · have hδO : δ ≤ dualVarG G (fun _ _ => (0 : ℝ)) v₁ O ∅ := by
            unfold dualVarG
            refine le_sup_of_le_right ?_
            refine le_trans h1.le ?_
            exact le_iSup₂_of_le X ⟨hX.1, hX.2.1, hTO, hX.2.2.2⟩ le_rfl
          have hdisj : Disjoint O ((C \ closure O) \ K') := by
            rw [Set.disjoint_left]
            intro x hxO hx
            exact hx.1.2 (subset_closure hxO)
          have hsub : O ∪ ((C \ closure O) \ K') ⊆ C \ K' := by
            intro x hx
            rcases hx with hx | hx
            · exact hOC (subset_closure hx)
            · exact ⟨hx.1.1, hx.2⟩
          have h2 := (two v₁ _ _ hdisj).trans (mono v₁ _ _ hsub)
          calc ((n + 1 : ℕ) : ENNReal) * δ +
                dualVarG G (fun _ _ => (0 : ℝ)) v₁ ((C \ closure O) \ K') ∅
              = (n : ENNReal) * δ +
                  (δ + dualVarG G (fun _ _ => (0 : ℝ)) v₁ ((C \ closure O) \ K') ∅) := by
                push_cast; ring
            _ ≤ (n : ENNReal) * δ + dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅ := by
                gcongr
                exact (add_le_add hδO le_rfl).trans h2
            _ ≤ _ := hC
    obtain ⟨n, hn⟩ := ENNReal.exists_nat_mul_gt hδ0 hfin.ne
    obtain ⟨C, -, -, -, hC⟩ := claim n
    have hle : (n : ENNReal) * δ ≤ dualVarG G (fun _ _ => (0 : ℝ)) v₁ V ∅ :=
      le_trans le_self_add (hC.trans (mono v₁ _ _ Set.diff_subset))
    exact absurd hn (not_lt.mpr hle)
  
  refine ENNReal.le_of_forall_pos_le_add fun ε hε _ => ?_
  have hε' : (0 : ENNReal) < (ε : ENNReal) / 2 :=
    ENNReal.half_pos (ENNReal.coe_pos.mpr hε).ne'
  obtain ⟨C, hCo, hK'C, hCV, hx⟩ := collar _ hε'
  obtain ⟨B, hBo, hK'B, hBC, -⟩ := exists_open_between_and_isCompact_closure hK' hCo hK'C
  obtain ⟨A, hAo, hK'A, hAB, hAc⟩ := exists_open_between_and_isCompact_closure hK' hBo hK'B
  have hBV : B ⊆ V := (subset_closure.trans hBC).trans hCV
  have hAV : A ⊆ V := (subset_closure.trans hAB).trans hBV
  have hd : dualVarG G (fun _ _ => (0 : ℝ)) v₁ V ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) v₁ A ∅ + dualVarG G (fun _ _ => (0 : ℝ)) v₁ (V \ K') ∅ := by
    refine (mono v₁ V (A ∪ (V \ K')) ?_).trans
      (union v₁ A (V \ K') hAo (hV.sdiff hK'c) (hAV.trans hVU) (Set.diff_subset.trans hVU))
    intro y hy
    by_cases h : y ∈ K'
    · exact Or.inl (hK'A h)
    · exact Or.inr ⟨hy, h⟩
  have he : dualVarG G (fun _ _ => (0 : ℝ)) v₁ (V \ K') ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅ +
        dualVarG G (fun _ _ => (0 : ℝ)) v₁ (V \ closure B) ∅ := by
    refine (mono v₁ _ ((C \ K') ∪ (V \ closure B)) ?_).trans
      (union v₁ _ _ (hCo.sdiff hK'c) (hV.sdiff isClosed_closure)
        (Set.diff_subset.trans (hCV.trans hVU)) (Set.diff_subset.trans hVU))
    rintro y ⟨hyV, hyK⟩
    by_cases h : y ∈ closure B
    · exact Or.inl ⟨hBC h, hyK⟩
    · exact Or.inr ⟨hyV, h⟩
  have hf : dualVarG G (fun _ _ => (0 : ℝ)) v₁ A ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) v₂ B ∅ + dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅ :=
    (hcmp B A hBo hAo hK'A hAc hAB hBV).trans
      (add_le_add le_rfl (mono v₁ _ _ (Set.diff_subset_diff_left (subset_closure.trans hBC))))
  have hg : dualVarG G (fun _ _ => (0 : ℝ)) v₁ (V \ closure B) ∅ =
      dualVarG G (fun _ _ => (0 : ℝ)) v₂ (V \ closure B) ∅ := by
    refine congrD v₁ v₂ _ (hV.sdiff isClosed_closure) ?_
    intro y hy
    exact heq y (fun hyK => hy.2 (subset_closure (hK'B hyK)))
  have hh : dualVarG G (fun _ _ => (0 : ℝ)) v₂ B ∅ +
      dualVarG G (fun _ _ => (0 : ℝ)) v₂ (V \ closure B) ∅ ≤
        dualVarG G (fun _ _ => (0 : ℝ)) v₂ V ∅ := by
    refine (two v₂ _ _ ?_).trans (mono v₂ _ _ (Set.union_subset hBV Set.diff_subset))
    rw [Set.disjoint_left]
    intro y hyB hy
    exact hy.2 (subset_closure hyB)
  have he' : dualVarG G (fun _ _ => (0 : ℝ)) v₁ (V \ K') ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅ +
        dualVarG G (fun _ _ => (0 : ℝ)) v₂ (V \ closure B) ∅ := by
    rw [← hg]; exact he
  have hxle : dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅ ≤ (ε : ENNReal) / 2 := hx.le
  calc dualVarG G (fun _ _ => (0 : ℝ)) v₁ V ∅
      ≤ dualVarG G (fun _ _ => (0 : ℝ)) v₁ A ∅ +
          dualVarG G (fun _ _ => (0 : ℝ)) v₁ (V \ K') ∅ := hd
    _ ≤ (dualVarG G (fun _ _ => (0 : ℝ)) v₂ B ∅ +
          dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅) +
        (dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅ +
          dualVarG G (fun _ _ => (0 : ℝ)) v₂ (V \ closure B) ∅) := add_le_add hf he'
    _ = (dualVarG G (fun _ _ => (0 : ℝ)) v₂ B ∅ +
          dualVarG G (fun _ _ => (0 : ℝ)) v₂ (V \ closure B) ∅) +
        (dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅ +
          dualVarG G (fun _ _ => (0 : ℝ)) v₁ (C \ K') ∅) := by ring
    _ ≤ dualVarG G (fun _ _ => (0 : ℝ)) v₂ V ∅ + ((ε : ENNReal) / 2 + (ε : ENNReal) / 2) :=
        add_le_add hh (add_le_add hxle hxle)
    _ = dualVarG G (fun _ _ => (0 : ℝ)) v₂ V ∅ + ε := by rw [ENNReal.add_halves]

theorem dual_chart_reduce [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (Ω Kv Kc : Set M) (hΩ : IsOpen Ω) (hKv : IsCompact Kv) (hKvΩ : Kv ⊆ Ω)
    (φ₀ : M → ℝ) (hφ₀ : ∀ x : M, Circle.exp (φ₀ x) = Ψ x) (hφ₀m : dualChartMeas φ₀)
    (n : M → ℤ) (hn0 : ∀ x : M, x ∉ Kv → n x = 0)
    (hnm : ∀ j : ℤ, sepChartMeas {x | n x = j})
    (hfin : dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc
      < ⊤)
    (hmin : ∀ n' : M → ℤ, (∀ x : M, x ∉ Kv → n' x = 0) →
      (∀ j : ℤ, sepChartMeas {x | n' x = j}) →
      dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc ≤
        dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ)) Ω Kc)
    (O : Set M) (hO : IsOpen O) (hOKv : O ⊆ Kv) (hOKc : Disjoint O Kc) (p : M)
    (B : Set E3) (hB : IsOpen B) (hBO : B ⊆ chartAt E3 p '' (O ∩ (chartAt E3 p).source))
    (ℓ : E3 → ℝ) (hℓ : ContDiffOn ℝ ∞ ℓ B)
    (hℓΨ : ∀ y ∈ B, Circle.exp (ℓ y) = Ψ ((chartAt E3 p).symm y))
    (v : E3 → ℝ) (hv : ∀ y : E3, v y = (φ₀ ((chartAt E3 p).symm y) +
      2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ) - ℓ y) / (2 * Real.pi)) :
    (∀ y ∈ B, ∃ m : ℤ, v y = m) ∧ (∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ v y})) ∧
    (∀ W : Set E3, IsOpen W → IsCompact (closure W) → closure W ⊆ B →
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) v W ∅ < ⊤) ∧
    ∀ (v' : E3 → ℝ) (W L : Set E3), (∀ y ∈ B, ∃ m : ℤ, v' y = m) →
      (∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ v' y})) → IsOpen W → IsCompact (closure W) →
      closure W ⊆ B → IsCompact L → L ⊆ W → (∀ y : E3, y ∉ L → v' y = v y) →
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) v W ∅ ≤
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) v' W ∅ :=
by
  classical
  have hpi : (2 * Real.pi) ≠ 0 := by positivity
  have hpi0 : (0 : ℝ) < 2 * Real.pi := by positivity
  
  have hBt : B ⊆ (chartAt E3 p).target := by
    intro y hy
    obtain ⟨x, ⟨_, hxs⟩, rfl⟩ := hBO hy
    exact (chartAt E3 p).map_source hxs
  have hBsymm : ∀ y ∈ B, (chartAt E3 p).symm y ∈ O ∧
      (chartAt E3 p).symm y ∈ (chartAt E3 p).source := by
    intro y hy
    obtain ⟨x, ⟨hxO, hxs⟩, rfl⟩ := hBO hy
    rw [(chartAt E3 p).left_inv hxs]
    exact ⟨hxO, hxs⟩
  
  have hB6 : ∀ y : E3, φ₀ ((chartAt E3 p).symm y) +
      2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ) = ℓ y + 2 * Real.pi * v y := by
    intro y
    rw [hv y, mul_div_cancel₀ _ hpi]
    ring
  
  have hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 p).symm y i j) B :=
    fun i j => (g.smooth p i j).mono hBt
  have hdet : ∀ y ∈ B, 0 < (g.coeff (chartAt E3 p).symm y).det :=
    fun y hy => (coeff_chart_symm_posDef g p y (hBt hy)).det_pos
  
  have hB7 : ∀ y ∈ B, ∀ i : Fin 3,
      dualOmega (fun x => (Ψ x : ℂ)) p y i = partialDeriv i ℓ y := by
    intro y hy i
    have hre : ∀ z ∈ B, ((Ψ ((chartAt E3 p).symm z) : ℂ)).re = Real.cos (ℓ z) := by
      intro z hz
      rw [← hℓΨ z hz, Circle.coe_exp, Complex.exp_ofReal_mul_I_re]
    have him : ∀ z ∈ B, ((Ψ ((chartAt E3 p).symm z) : ℂ)).im = Real.sin (ℓ z) := by
      intro z hz
      rw [← hℓΨ z hz, Circle.coe_exp, Complex.exp_ofReal_mul_I_im]
    have hBn : B ∈ 𝓝 y := hB.mem_nhds hy
    have hev_re : (fun z => ((Ψ ((chartAt E3 p).symm z) : ℂ)).re) =ᶠ[𝓝 y]
        (fun z => Real.cos (ℓ z)) := Filter.eventually_of_mem hBn hre
    have hev_im : (fun z => ((Ψ ((chartAt E3 p).symm z) : ℂ)).im) =ᶠ[𝓝 y]
        (fun z => Real.sin (ℓ z)) := Filter.eventually_of_mem hBn him
    have hℓd : HasFDerivAt ℓ (fderiv ℝ ℓ y) y :=
      ((hℓ.contDiffAt hBn).differentiableAt (by simp)).hasFDerivAt
    have hd_re : fderiv ℝ (fun z => ((Ψ ((chartAt E3 p).symm z) : ℂ)).re) y =
        -Real.sin (ℓ y) • fderiv ℝ ℓ y := by
      rw [hev_re.fderiv_eq]
      exact hℓd.cos.fderiv
    have hd_im : fderiv ℝ (fun z => ((Ψ ((chartAt E3 p).symm z) : ℂ)).im) y =
        Real.cos (ℓ y) • fderiv ℝ ℓ y := by
      rw [hev_im.fderiv_eq]
      exact hℓd.sin.fderiv
    simp only [dualOmega, partialDeriv]
    rw [hd_re, hd_im, hre y hy, him y hy]
    simp only [ContinuousLinearMap.smul_apply, smul_eq_mul]
    linear_combination (fderiv ℝ ℓ y (e i)) * Real.cos_sq_add_sin_sq (ℓ y)
  
  have hmeas : ∀ m : M → ℤ, (∀ j : ℤ, sepChartMeas {x | m x = j}) →
      dualChartMeas (fun x => φ₀ x + 2 * Real.pi * (m x : ℝ)) := by
    intro m hm q
    let N : E3 → ℤ := fun y =>
      if y ∈ (chartAt E3 q).target then m ((chartAt E3 q).symm y) else 0
    have hN : Measurable N := by
      refine measurable_to_countable' (fun j => ?_)
      have hset : N ⁻¹' {j} = ((chartAt E3 q) '' ({x | m x = j} ∩ (chartAt E3 q).source)) ∪
          (((chartAt E3 q).target)ᶜ ∩ {_y | (0 : ℤ) = j}) := by
        ext y
        rw [Set.mem_union,
          (chartAt E3 q).image_eq_target_inter_inv_preimage Set.inter_subset_right]
        by_cases hy : y ∈ (chartAt E3 q).target
        · simp [N, hy, (chartAt E3 q).map_target hy]
        · simp [N, hy]
      rw [hset]
      exact (hm j q).union
        ((chartAt E3 q).open_target.measurableSet.compl.inter (MeasurableSet.const _))
    have heq : (chartAt E3 q).target.indicator (fun y => φ₀ ((chartAt E3 q).symm y) +
        2 * Real.pi * (m ((chartAt E3 q).symm y) : ℝ)) = fun y =>
        (chartAt E3 q).target.indicator (fun y => φ₀ ((chartAt E3 q).symm y)) y +
          2 * Real.pi * ((N y : ℤ) : ℝ) := by
      funext y
      by_cases hy : y ∈ (chartAt E3 q).target
      · simp [Set.indicator_of_mem hy, N, hy]
      · simp [Set.indicator_of_notMem hy, N, hy]
    show Measurable ((chartAt E3 q).target.indicator (fun y => φ₀ ((chartAt E3 q).symm y) +
        2 * Real.pi * (m ((chartAt E3 q).symm y) : ℝ)))
    rw [heq]
    exact (hφ₀m q).add (measurable_const.mul
      ((Measurable.of_discrete (f := fun k : ℤ => (k : ℝ))).comp hN))
  have hφs : dualChartMeas (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) := hmeas n hnm
  
  have hint : ∀ y ∈ B, ∃ m : ℤ, v y = m := by
    intro y hy
    have h1 : Circle.exp (φ₀ ((chartAt E3 p).symm y) +
        2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ)) = Circle.exp (ℓ y) := by
      rw [hℓΨ y hy, ← hφ₀ ((chartAt E3 p).symm y), Circle.exp_add,
        show 2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ) =
          (n ((chartAt E3 p).symm y) : ℝ) * (2 * Real.pi) by ring,
        Circle.exp_int_mul_two_pi, mul_one]
    obtain ⟨m, hm⟩ := Circle.exp_eq_exp.1 h1
    refine ⟨m, ?_⟩
    rw [hv y, hm, show ℓ y + (m : ℝ) * (2 * Real.pi) - ℓ y = (m : ℝ) * (2 * Real.pi) by ring,
      mul_div_assoc, div_self hpi, mul_one]
  
  have hmeasv : ∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ v y}) := by
    intro t
    have hℓm : Measurable (B.piecewise ℓ (fun _ => (0 : ℝ))) :=
      hℓ.continuousOn.measurable_piecewise continuousOn_const hB.measurableSet
    let vh : E3 → ℝ := fun y => ((chartAt E3 p).target.indicator (fun y =>
      φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ)) y -
        B.piecewise ℓ (fun _ => (0 : ℝ)) y) / (2 * Real.pi)
    have hvhm : Measurable vh := ((hφs p).sub hℓm).div_const _
    have hvh : ∀ y ∈ B, vh y = v y := by
      intro y hy
      simp only [vh, Set.indicator_of_mem (hBt hy), Set.piecewise_eq_of_mem _ _ _ hy, hv y]
    have hset : B ∩ {y | t ≤ v y} = B ∩ vh ⁻¹' Set.Ici t := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_preimage, Set.mem_Ici]
      constructor
      · rintro ⟨hy, h⟩
        exact ⟨hy, by rw [hvh y hy]; exact h⟩
      · rintro ⟨hy, h⟩
        exact ⟨hy, by rw [← hvh y hy]; exact h⟩
    rw [hset]
    exact hB.measurableSet.inter (measurableSet_Ici.preimage hvhm)
  
  have hfam : ∀ W : Set E3, IsOpen W → W ⊆ B →
      dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega (fun x => (Ψ x : ℂ)) p)
        (fun y => φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ))
        W (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)) ≤
      dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc := by
    intro W hW hWB
    have hWt : W ⊆ (chartAt E3 p).target := hWB.trans hBt
    have hWo : IsOpen ((chartAt E3 p).symm '' W) :=
      (chartAt E3 p).isOpen_image_symm_of_subset_target hW hWt
    have hWsub : (chartAt E3 p).symm '' W ⊆ Ω ∩ (chartAt E3 p).source := by
      rintro _ ⟨y, hy, rfl⟩
      exact ⟨hKvΩ (hOKv (hBsymm y (hWB hy)).1), (hBsymm y (hWB hy)).2⟩
    have himg : (chartAt E3 p) '' ((chartAt E3 p).symm '' W) = W :=
      (chartAt E3 p).toPartialEquiv.image_symm_image_of_subset_target hWt
    unfold dualRiemVar
    refine le_iSup_of_le 1 (le_iSup_of_le (fun _ => p)
      (le_iSup_of_le (fun _ => (chartAt E3 p).symm '' W)
        (le_iSup_of_le ⟨fun _ => ⟨hWo, hWsub⟩,
          fun k l hkl => (hkl (Subsingleton.elim k l)).elim⟩ ?_)))
    simp only [Fin.sum_univ_one]
    rw [himg]
  have hc0 : ENNReal.ofReal (2 * Real.pi) ≠ 0 := by
    rw [ne_eq, ENNReal.ofReal_eq_zero, not_le]
    exact hpi0
  have hctop : ENNReal.ofReal (2 * Real.pi) ≠ ⊤ := ENNReal.ofReal_ne_top
  
  have htwist : ∀ (V Kc' : Set E3) (u w : E3 → ℝ), IsOpen V → V ⊆ B → Disjoint V Kc' →
      (∀ y ∈ V, u y = ℓ y + 2 * Real.pi * w y) →
      dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega (fun x => (Ψ x : ℂ)) p) u V Kc' =
        ENNReal.ofReal (2 * Real.pi) *
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) w V ∅ :=
    fun V Kc' u w hV hVB hVK huv =>
      dualVarG_lift_twist _ B hB hG hdet _ ℓ hℓ hB7 u w V Kc' hV hVB hVK huv
  
  have hcut : ∀ V ⊆ B, Disjoint V (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)) := by
    intro V hVB
    rw [Set.disjoint_left]
    rintro y hyV ⟨x, ⟨hxK, hxs⟩, rfl⟩
    have hx := (hBsymm _ (hVB hyV)).1
    rw [(chartAt E3 p).left_inv hxs] at hx
    exact Set.disjoint_left.1 hOKc hx hxK
  
  have hfinW : ∀ W : Set E3, IsOpen W → W ⊆ B →
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) v W ∅ < ⊤ := by
    intro W hW hWB
    have h1 := hfam W hW hWB
    rw [htwist W (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source))
      (fun y => φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ))
      v hW hWB (hcut W hWB) (fun y _ => hB6 y)] at h1
    have h2 := lt_of_le_of_lt h1 hfin
    rw [lt_top_iff_ne_top] at h2 ⊢
    intro hT
    rw [hT, ENNReal.mul_top hc0] at h2
    exact h2 rfl
  refine ⟨hint, hmeasv, fun W hW _ hWB => hfinW W hW (subset_closure.trans hWB), ?_⟩
  
  intro v' W L hv'int hv'm hW hWc hWB hL hLW hv'v
  have hWB' : W ⊆ B := subset_closure.trans hWB
  obtain ⟨n', hn'm, hn'off, hn'L⟩ := dual_chart_competitor p n hnm B L hB hBt hL
    (hLW.trans hWB') v v' hint hv'int hmeasv hv'm
  have hLsymm : (chartAt E3 p).symm '' L ⊆ O := by
    rintro _ ⟨y, hy, rfl⟩
    exact (hBsymm y (hWB' (hLW hy))).1
  have hn'0 : ∀ x : M, x ∉ Kv → n' x = 0 := by
    intro x hx
    rw [hn'off x (fun h => hx (hOKv (hLsymm h)))]
    exact hn0 x hx
  have hle := hmin n' hn'0 hn'm
  have hchart' : ∀ y ∈ B, φ₀ ((chartAt E3 p).symm y) +
      2 * Real.pi * (n' ((chartAt E3 p).symm y) : ℝ) = ℓ y + 2 * Real.pi * v' y := by
    intro y hy
    by_cases hyL : y ∈ L
    · rw [hn'L y hyL]
      linear_combination hB6 y
    · have hnot : (chartAt E3 p).symm y ∉ (chartAt E3 p).symm '' L := by
        rintro ⟨z, hz, hzy⟩
        have hzy' : z = y := by
          calc z = (chartAt E3 p) ((chartAt E3 p).symm z) :=
                ((chartAt E3 p).right_inv (hBt (hWB' (hLW hz)))).symm
            _ = (chartAt E3 p) ((chartAt E3 p).symm y) := by rw [hzy]
            _ = y := (chartAt E3 p).right_inv (hBt hy)
        exact hyL (hzy' ▸ hz)
      rw [hn'off _ hnot, hv'v y hyL]
      exact hB6 y
  have hφ'm := hmeas n' hn'm
  have hcmp : ∀ V₁ V₂ : Set E3, IsOpen V₁ → IsOpen V₂ → L ⊆ V₂ → IsCompact (closure V₂) →
      closure V₂ ⊆ V₁ → V₁ ⊆ W →
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) v V₂ ∅ ≤
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) v' V₁ ∅ +
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) v (V₁ \ L) ∅ := by
    intro V₁ V₂ hV₁ hV₂ hLV₂ hV₂c hV₂V₁ hV₁W
    have hV₁B : V₁ ⊆ B := hV₁W.trans hWB'
    have hV₂B : V₂ ⊆ B := subset_closure.trans (hV₂V₁.trans hV₁B)
    have hV₁Ω : V₁ ⊆ chartAt E3 p '' ((Ω \ Kc) ∩ (chartAt E3 p).source) := by
      intro y hy
      obtain ⟨x, ⟨hxO, hxs⟩, rfl⟩ := hBO (hV₁B hy)
      exact ⟨x, ⟨⟨hKvΩ (hOKv hxO), Set.disjoint_left.1 hOKc hxO⟩, hxs⟩, rfl⟩
    have heqφ : ∀ x : M, x ∉ (chartAt E3 p).symm '' L →
        φ₀ x + 2 * Real.pi * (n x : ℝ) = φ₀ x + 2 * Real.pi * (n' x : ℝ) := by
      intro x hx
      rw [hn'off x hx]
    have h8 := dualRiemVar_add_chart_le g (fun x => (Ψ x : ℂ)) hΨs
      (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ))
      hφs hφ'm Ω Kc p L V₁ V₂ hL hV₁ hV₂ hLV₂ hV₂c hV₂V₁ hV₁Ω heqφ
    beta_reduce at h8
    rw [htwist V₂ ∅
        (fun y => φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ))
        v hV₂ hV₂B (Set.disjoint_empty _) (fun y _ => hB6 y),
      htwist V₁ ∅
        (fun y => φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (n' ((chartAt E3 p).symm y) : ℝ))
        v' hV₁ hV₁B (Set.disjoint_empty _) (fun y hy => hchart' y (hV₁B hy)),
      htwist (V₁ \ L) ∅
        (fun y => φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ))
        v (hV₁.sdiff hL.isClosed) (Set.diff_subset.trans hV₁B) (Set.disjoint_empty _)
        (fun y _ => hB6 y)] at h8
    have h9 := le_trans (add_le_add hle le_rfl) h8
    rw [add_assoc, ENNReal.add_le_add_iff_left hfin.ne, ← mul_add,
      ENNReal.mul_le_mul_left hc0 hctop] at h9
    exact h9
  exact dualVarG_le_of_local_compare (g.coeff (chartAt E3 p).symm) B W L hB hG hdet v v' hW
    hWB' hL hLW (fun y hy => (hv'v y hy).symm) (hfinW W hW hWB') hcmp

theorem dualVarG_zero_indicator_eq_sepPerG (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3)
    (hV : IsOpen V) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V)
    (hpd : ∀ y ∈ V, (G y).PosDef) (E W : Set E3) (hE : MeasurableSet E) (hWV : W ⊆ V) :
    dualVarG G (fun _ _ => (0 : ℝ)) (E.indicator (fun _ => (1 : ℝ))) W ∅ = sepPerG G E W :=
by
  classical
  
  have s1 : ∀ X : E3 → E3, ContDiff ℝ ∞ X → tsupport X ⊆ V → ∀ i : Fin 3,
      ContDiff ℝ ∞ (fun z => Real.sqrt (G z).det * X z i) := by
    intro X hX hXV i
    rw [contDiff_iff_contDiffAt]
    intro y
    by_cases hy : y ∈ V
    · have h : ∀ a b : Fin 3, ContDiffAt ℝ ∞ (fun z => G z a b) y :=
        fun a b => (hG a b).contDiffAt (hV.mem_nhds hy)
      have hdet : ContDiffAt ℝ ∞ (fun z => (G z).det) y := by
        simp only [Matrix.det_fin_three]
        have hA := ((h 0 0).mul (h 1 1)).mul (h 2 2)
        have hB := ((h 0 0).mul (h 1 2)).mul (h 2 1)
        have hC := ((h 0 1).mul (h 1 0)).mul (h 2 2)
        have hD := ((h 0 1).mul (h 1 2)).mul (h 2 0)
        have hF := ((h 0 2).mul (h 1 0)).mul (h 2 1)
        have hH := ((h 0 2).mul (h 1 1)).mul (h 2 0)
        exact ((((hA.sub hB).sub hC).add hD).add hF).sub hH
      have hsq : ContDiffAt ℝ ∞ (fun z => Real.sqrt (G z).det) y :=
        hdet.sqrt (hpd y hy).det_pos.ne'
      have hXi : ContDiffAt ℝ ∞ (fun z => X z i) y :=
        ((EuclideanSpace.proj i : E3 →L[ℝ] ℝ).contDiff.comp hX).contDiffAt
      exact hsq.mul hXi
    · have hy' : y ∉ tsupport X := fun h => hy (hXV h)
      have hev : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.1 hy'
      refine (contDiffAt_const (c := (0 : ℝ))).congr_of_eventuallyEq ?_
      filter_upwards [hev] with z hz
      simp [hz]
  
  have s2 : ∀ X : E3 → E3, HasCompactSupport X →
      (∀ i : Fin 3, ContDiff ℝ ∞ (fun z => Real.sqrt (G z).det * X z i)) →
      ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C := by
    intro X hXc hX
    have hb : ∀ i : Fin 3, ∃ C : ℝ, ∀ y,
        ‖fderiv ℝ (fun z => Real.sqrt (G z).det * X z i) y (e i)‖ ≤ C := by
      intro i
      have hc : HasCompactSupport (fun z => Real.sqrt (G z).det * X z i) := by
        refine hXc.mono' ?_
        intro z hz
        apply subset_tsupport
        intro h0
        apply hz
        simp [h0]
      have hcont : Continuous
          (fun y => fderiv ℝ (fun z => Real.sqrt (G z).det * X z i) y (e i)) :=
        ((hX i).continuous_fderiv (by simp)).clm_apply continuous_const
      exact hcont.bounded_above_of_compact_support (hc.fderiv_apply (𝕜 := ℝ) (e i))
    choose C hC using hb
    refine ⟨∑ i, C i, fun y => ?_⟩
    unfold sepDensDiv
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
    have := hC i y
    rw [Real.norm_eq_abs] at this
    exact this
  have hLI : MeasureTheory.LocallyIntegrableOn (E.indicator (fun _ => (1 : ℝ))) W :=
    ((MeasureTheory.locallyIntegrable_const (1 : ℝ)).indicator hE).locallyIntegrableOn W
  have s4 : ∀ X : E3 → E3, (∫ y, (E.indicator (fun _ => (1 : ℝ)) y * sepDensDiv G X y +
      Real.sqrt (G y).det * ∑ i : Fin 3, (fun _ _ => (0 : ℝ)) y i * X y i)) =
      ∫ y in E, sepDensDiv G X y := by
    intro X
    rw [← MeasureTheory.integral_indicator hE]
    congr 1
    funext y
    by_cases hy : y ∈ E <;> simp [hy]
  unfold dualVarG sepPerG
  rw [iSup_neg (not_not.2 hLI), bot_sup_eq]
  refine iSup_congr fun X => ?_
  refine iSup_congr_Prop ?_ ?_
  · constructor
    · rintro ⟨h1, h2, h3, h4, _⟩
      exact ⟨contDiff_iff_contDiffAt.2 fun y => h1 y (Set.notMem_empty y), h2, h3, h4⟩
    · rintro ⟨h1, h2, h3, h4⟩
      exact ⟨fun y _ => h1.contDiffAt, h2, h3, h4, s2 X h2 (s1 X h1 (h3.trans hWV))⟩
  · intro _
    exact congrArg ENNReal.ofReal (s4 X)

theorem dualVarG_zero_add_le (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (f h : E3 → ℝ)
    (W : Set E3) :
    dualVarG G (fun _ _ => (0 : ℝ)) (fun y => f y + h y) W ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ + dualVarG G (fun _ _ => (0 : ℝ)) h W ∅ :=
by
  classical
  have hsupp : ∀ (X : E3 → E3) (y : E3), y ∉ tsupport X → sepDensDiv G X y = 0 := by
    intro X y hy
    have hX : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    have hev : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) := by
      filter_upwards [hX] with z hz
      simp [hz]
    unfold partialDeriv
    rw [hev.fderiv_eq]
    simp
  have hmeas : ∀ X : E3 → E3, Measurable (sepDensDiv G X) := by
    intro X
    unfold sepDensDiv partialDeriv
    exact Finset.measurable_sum _ fun i _ => measurable_fderiv_apply_const ℝ _ _
  have hint : ∀ (v : E3 → ℝ) (X : E3 → E3), MeasureTheory.LocallyIntegrableOn v W →
      HasCompactSupport X → tsupport X ⊆ W → (∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) →
      MeasureTheory.Integrable (fun y => v y * sepDensDiv G X y) := by
    intro v X hv hXc hXW hC
    obtain ⟨C, hC⟩ := hC
    have hK : MeasureTheory.IntegrableOn v (tsupport X) :=
      hv.integrableOn_compact_subset hXW hXc.isCompact
    have h1 : MeasureTheory.IntegrableOn (fun y => sepDensDiv G X y * v y) (tsupport X) :=
      MeasureTheory.Integrable.bdd_mul hK (hmeas X).aestronglyMeasurable
        (Filter.Eventually.of_forall fun y => by rw [Real.norm_eq_abs]; exact hC y)
    have h2 : MeasureTheory.IntegrableOn (fun y => v y * sepDensDiv G X y) (tsupport X) := by
      simpa only [mul_comm] using h1
    exact h2.integrable_of_forall_notMem_eq_zero fun y hy => by rw [hsupp X y hy, mul_zero]
  have hJ : ∀ (v : E3 → ℝ) (X : E3 → E3),
      (∫ y, (v y * sepDensDiv G X y + Real.sqrt (G y).det *
        ∑ i, (fun _ _ => (0 : ℝ)) y i * X y i)) = ∫ y, v y * sepDensDiv G X y := by
    intro v X
    simp
  have hle : ∀ (v : E3 → ℝ) (X : E3 → E3),
      ((∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
        tsupport X ⊆ W ∧ (∀ y, ∑ i, ∑ j, G y i j * X y i * X y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) →
      ENNReal.ofReal (∫ y, v y * sepDensDiv G X y) ≤ dualVarG G (fun _ _ => (0 : ℝ)) v W ∅ := by
    intro v X hX
    unfold dualVarG
    rw [← hJ v X]
    exact le_sup_of_le_right (le_iSup₂_of_le X hX le_rfl)
  by_cases hf : MeasureTheory.LocallyIntegrableOn f W
  swap
  · have htop : dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ = ⊤ := by
      unfold dualVarG
      rw [eq_top_iff]
      exact le_sup_of_le_left (le_iSup_of_le hf le_rfl)
    rw [htop, top_add]
    exact le_top
  by_cases hh : MeasureTheory.LocallyIntegrableOn h W
  swap
  · have htop : dualVarG G (fun _ _ => (0 : ℝ)) h W ∅ = ⊤ := by
      unfold dualVarG
      rw [eq_top_iff]
      exact le_sup_of_le_left (le_iSup_of_le hh le_rfl)
    rw [htop, add_top]
    exact le_top
  have hfh : MeasureTheory.LocallyIntegrableOn (fun y => f y + h y) W := hf.add hh
  have hfX := hle f
  have hhX := hle h
  generalize dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ = A at hfX ⊢
  generalize dualVarG G (fun _ _ => (0 : ℝ)) h W ∅ = B at hhX ⊢
  unfold dualVarG
  refine sup_le (iSup_le fun hn => absurd hfh hn) (iSup₂_le fun X hX => ?_)
  have hXc := hX.2.1
  have hXW := hX.2.2.1
  have hC := hX.2.2.2.2
  simp only [zero_mul, Finset.sum_const_zero, mul_zero, add_zero]
  have e1 : (fun y => (f y + h y) * sepDensDiv G X y) =
      fun y => f y * sepDensDiv G X y + h y * sepDensDiv G X y :=
    funext fun y => add_mul _ _ _
  rw [e1, MeasureTheory.integral_add (hint f X hf hXc hXW hC) (hint h X hh hXc hXW hC)]
  exact ENNReal.ofReal_add_le.trans (add_le_add (hfX X hX) (hhX X hX))

theorem dualVarG_zero_congr (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (f h : E3 → ℝ)
    (W : Set E3) (hW : IsOpen W) (hfh : ∀ y ∈ W, f y = h y) :
    dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ = dualVarG G (fun _ _ => (0 : ℝ)) h W ∅ :=
by
  have s1 : MeasureTheory.LocallyIntegrableOn f W ↔ MeasureTheory.LocallyIntegrableOn h W := by
    rw [MeasureTheory.locallyIntegrableOn_iff hW.isLocallyClosed,
      MeasureTheory.locallyIntegrableOn_iff hW.isLocallyClosed]
    constructor
    · intro H k hk hkc
      exact (H k hk hkc).congr_fun (fun y hy => hfh y (hk hy)) hkc.measurableSet
    · intro H k hk hkc
      exact (H k hk hkc).congr_fun (fun y hy => (hfh y (hk hy)).symm) hkc.measurableSet
  have s3 : ∀ X : E3 → E3, tsupport X ⊆ W → ∀ y, y ∉ W → sepDensDiv G X y = 0 := by
    intro X hX y hy
    have hy' : y ∉ tsupport X := fun h' => hy (hX h')
    have hev : X =ᶠ[nhds y] 0 := (notMem_tsupport_iff_eventuallyEq).1 hy'
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    have hev' : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[nhds y] (fun _ => (0 : ℝ)) := by
      filter_upwards [hev] with z hz
      simp [hz]
    unfold partialDeriv
    rw [Filter.EventuallyEq.fderiv_eq hev', fderiv_const_apply]
    rfl
  unfold dualVarG
  congr 1
  · exact iSup_congr_Prop (not_congr s1) (fun _ => rfl)
  · refine iSup_congr fun X => iSup_congr fun hX => ?_
    congr 1
    congr 1
    funext y
    by_cases hy : y ∈ W
    · rw [hfh y hy]
    · rw [s3 X hX.2.2.1 y hy, mul_zero, mul_zero]

theorem intVar_superlevel_perMin (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3)
    (hV : IsOpen V) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ V, (G y).PosDef)
    (v : E3 → ℝ) (hint : ∀ y ∈ V, ∃ m : ℤ, v y = m)
    (hvm : ∀ t : ℝ, MeasurableSet (V ∩ {y | t ≤ v y}))
    (hfin : ∀ W : Set E3, IsOpen W → IsCompact (closure W) → closure W ⊆ V →
      dualVarG G (fun _ _ => (0 : ℝ)) v W ∅ < ⊤)
    (hmin : ∀ (v' : E3 → ℝ) (W L : Set E3), (∀ y ∈ V, ∃ m : ℤ, v' y = m) →
      (∀ t : ℝ, MeasurableSet (V ∩ {y | t ≤ v' y})) → IsOpen W → IsCompact (closure W) →
      closure W ⊆ V → IsCompact L → L ⊆ W → (∀ y : E3, y ∉ L → v' y = v y) →
      dualVarG G (fun _ _ => (0 : ℝ)) v W ∅ ≤ dualVarG G (fun _ _ => (0 : ℝ)) v' W ∅) :
    (∀ j : ℤ, sepIsPerMin G (V ∩ {y | (j : ℝ) ≤ v y}) V) ∧
    ∀ W : Set E3, IsOpen W → IsCompact (closure W) → closure W ⊆ V →
      ∑' j : ℤ, sepPerG G (V ∩ {y | (j : ℝ) ≤ v y}) W < ⊤ :=
by
  classical
  have hI : ∀ (S : Set E3) (y : E3),
      S.indicator (fun _ => (1 : ℝ)) y = if y ∈ S then (1 : ℝ) else 0 :=
    fun S y => Set.indicator_apply S _ y
  have key : ∀ W : Set E3, IsOpen W → IsCompact (closure W) → closure W ⊆ V →
      (∀ j : ℤ, dualVarG G (fun _ _ => (0 : ℝ))
          (fun y => v y - (V ∩ {y | (j : ℝ) ≤ v y}).indicator (fun _ => (1 : ℝ)) y) W ∅ +
          sepPerG G (V ∩ {y | (j : ℝ) ≤ v y}) W ≤ dualVarG G (fun _ _ => (0 : ℝ)) v W ∅) ∧
      ∑' j : ℤ, sepPerG G (V ∩ {y | (j : ℝ) ≤ v y}) W ≤
        dualVarG G (fun _ _ => (0 : ℝ)) v W ∅ := by
    intro W hW hWc hWV
    have hWV' : W ⊆ V := subset_closure.trans hWV
    have hsplit := fun (f : E3 → ℝ) (s : ℝ) =>
      dualVarG_zero_min_max_split G V hV hG hsymm hpd W hW hWc hWV f s
    have hper : ∀ j : ℤ, dualVarG G (fun _ _ => (0 : ℝ))
        ((V ∩ {y | (j : ℝ) ≤ v y}).indicator (fun _ => (1 : ℝ))) W ∅ =
        sepPerG G (V ∩ {y | (j : ℝ) ≤ v y}) W :=
      fun j => dualVarG_zero_indicator_eq_sepPerG G V hV hG hpd _ W (hvm j) hWV'
    
    have hexch : ∀ j : ℤ, dualVarG G (fun _ _ => (0 : ℝ))
          (fun y => v y - (V ∩ {y | (j : ℝ) ≤ v y}).indicator (fun _ => (1 : ℝ)) y) W ∅ +
          sepPerG G (V ∩ {y | (j : ℝ) ≤ v y}) W ≤ dualVarG G (fun _ _ => (0 : ℝ)) v W ∅ := by
      intro j
      have h1 := hsplit v ((j : ℝ) - 1)
      have h2 := hsplit (fun y => max (v y) ((j : ℝ) - 1) - ((j : ℝ) - 1)) 1
      beta_reduce at h2
      have e3 : (fun y => max (max (v y) ((j : ℝ) - 1) - ((j : ℝ) - 1)) 1 - 1) =
          fun y => max (v y) (j : ℝ) - (j : ℝ) := by
        funext y
        simp only [max_def]
        split_ifs <;> linarith
      have e4 : dualVarG G (fun _ _ => (0 : ℝ))
          (fun y => min (max (v y) ((j : ℝ) - 1) - ((j : ℝ) - 1)) 1) W ∅ =
          sepPerG G (V ∩ {y | (j : ℝ) ≤ v y}) W := by
        rw [← hper j]
        apply dualVarG_zero_congr G _ _ W hW
        intro y hy
        obtain ⟨m, hm⟩ := hint y (hWV' hy)
        rw [hI, hm]
        by_cases hc : j ≤ m
        · have hc' : (j : ℝ) ≤ m := by exact_mod_cast hc
          have hc1 : (j : ℝ) - 1 ≤ m := by linarith
          have hc2 : (1 : ℝ) ≤ m - ((j : ℝ) - 1) := by linarith
          rw [if_pos ⟨hWV' hy, by show (j : ℝ) ≤ v y; rw [hm]; exact hc'⟩]
          rw [max_eq_left hc1, min_eq_right hc2]
        · have hc' : (m : ℝ) ≤ (j : ℝ) - 1 := by
            have : m ≤ j - 1 := by omega
            exact_mod_cast this
          rw [if_neg (fun h => hc (by
            have h2 : (j : ℝ) ≤ v y := h.2
            rw [hm] at h2
            exact_mod_cast h2))]
          rw [max_eq_right hc', sub_self, min_eq_left zero_le_one]
      rw [e3, e4] at h2
      have e5 : dualVarG G (fun _ _ => (0 : ℝ))
          (fun y => v y - (V ∩ {y | (j : ℝ) ≤ v y}).indicator (fun _ => (1 : ℝ)) y) W ∅ =
          dualVarG G (fun _ _ => (0 : ℝ))
          (fun y => min (v y) ((j : ℝ) - 1) + (max (v y) (j : ℝ) - (j : ℝ))) W ∅ := by
        apply dualVarG_zero_congr G _ _ W hW
        intro y hy
        obtain ⟨m, hm⟩ := hint y (hWV' hy)
        rw [hI, hm]
        by_cases hc : j ≤ m
        · have hc' : (j : ℝ) ≤ m := by exact_mod_cast hc
          have hc1 : (j : ℝ) - 1 ≤ m := by linarith
          rw [if_pos ⟨hWV' hy, by show (j : ℝ) ≤ v y; rw [hm]; exact hc'⟩]
          rw [max_eq_left hc', min_eq_right hc1]
          ring
        · have hc' : (m : ℝ) ≤ (j : ℝ) - 1 := by
            have : m ≤ j - 1 := by omega
            exact_mod_cast this
          have hc1 : (m : ℝ) ≤ (j : ℝ) := by linarith
          rw [if_neg (fun h => hc (by
            have h2 : (j : ℝ) ≤ v y := h.2
            rw [hm] at h2
            exact_mod_cast h2))]
          rw [max_eq_right hc1, min_eq_left hc']
          ring
      have hadd := dualVarG_zero_add_le G (fun y => min (v y) ((j : ℝ) - 1))
        (fun y => max (v y) (j : ℝ) - (j : ℝ)) W
      beta_reduce at hadd
      rw [e5]
      calc _ ≤ (dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (v y) ((j : ℝ) - 1)) W ∅ +
              dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (v y) (j : ℝ) - (j : ℝ)) W ∅) +
              sepPerG G (V ∩ {y | (j : ℝ) ≤ v y}) W := by gcongr
        _ = dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (v y) ((j : ℝ) - 1)) W ∅ +
              (sepPerG G (V ∩ {y | (j : ℝ) ≤ v y}) W +
              dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (v y) (j : ℝ) - (j : ℝ)) W ∅) := by
            ring
        _ ≤ dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (v y) ((j : ℝ) - 1)) W ∅ +
              dualVarG G (fun _ _ => (0 : ℝ))
                (fun y => max (v y) ((j : ℝ) - 1) - ((j : ℝ) - 1)) W ∅ := by gcongr
        _ ≤ _ := h1
    
    obtain ⟨P, hP⟩ : ∃ P : ℤ → ENNReal, ∀ j, P j = sepPerG G (V ∩ {y | (j : ℝ) ≤ v y}) W :=
      ⟨_, fun j => rfl⟩
    obtain ⟨T, hT⟩ : ∃ T : ℤ → ENNReal, ∀ a, T a =
        dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (v y) (a : ℝ)) W ∅ := ⟨_, fun a => rfl⟩
    have hTle : ∀ a, T a ≤ dualVarG G (fun _ _ => (0 : ℝ)) v W ∅ := by
      intro a
      rw [hT]
      exact le_self_add.trans (hsplit v (a : ℝ))
    have hpeel : ∀ b : ℤ, T b + P (b + 1) ≤ T (b + 1) := by
      intro b
      have h := hsplit (fun y => min (v y) ((b : ℝ) + 1)) b
      beta_reduce at h
      have e1 : (fun y => min (min (v y) ((b : ℝ) + 1)) (b : ℝ)) =
          fun y => min (v y) (b : ℝ) := by
        funext y
        rw [min_assoc, min_eq_right (by linarith : (b : ℝ) ≤ (b : ℝ) + 1)]
      have e2 : dualVarG G (fun _ _ => (0 : ℝ))
          (fun y => max (min (v y) ((b : ℝ) + 1)) (b : ℝ) - (b : ℝ)) W ∅ = P (b + 1) := by
        rw [hP, ← hper (b + 1)]
        apply dualVarG_zero_congr G _ _ W hW
        intro y hy
        obtain ⟨m, hm⟩ := hint y (hWV' hy)
        rw [hI, hm]
        by_cases hc : b + 1 ≤ m
        · have hc' : (b : ℝ) + 1 ≤ m := by exact_mod_cast hc
          rw [if_pos ⟨hWV' hy, by
            show (((b + 1 : ℤ)) : ℝ) ≤ v y
            rw [hm]; push_cast; exact hc'⟩]
          rw [min_eq_right hc', max_eq_left (by linarith : (b : ℝ) ≤ (b : ℝ) + 1)]
          ring
        · have hc' : (m : ℝ) ≤ b := by
            have : m ≤ b := by omega
            exact_mod_cast this
          rw [if_neg (fun h => hc (by
            have h2 : (((b + 1 : ℤ)) : ℝ) ≤ v y := h.2
            rw [hm] at h2
            exact_mod_cast h2))]
          rw [min_eq_left (by linarith : (m : ℝ) ≤ (b : ℝ) + 1), max_eq_right hc', sub_self]
      rw [e1, e2] at h
      rw [hT, hT]
      have hc : (((b + 1 : ℤ)) : ℝ) = (b : ℝ) + 1 := by push_cast; ring
      rw [hc]
      exact h
    have hind : ∀ n : ℕ, ∀ a : ℤ, T a + ∑ i ∈ Finset.range n, P (a + 1 + i) ≤ T (a + n) := by
      intro n
      induction n with
      | zero => intro a; simp
      | succ n ih =>
        intro a
        rw [Finset.sum_range_succ, ← add_assoc]
        calc T a + ∑ i ∈ Finset.range n, P (a + 1 + i) + P (a + 1 + n)
            ≤ T (a + n) + P (a + n + 1) := by
              rw [show a + 1 + (n : ℤ) = a + n + 1 by ring]
              exact add_le_add (ih a) le_rfl
          _ ≤ T (a + n + 1) := hpeel (a + n)
          _ = T (a + ((n + 1 : ℕ) : ℤ)) := by congr 1; omega
    have hfin_sum : ∀ S : Finset ℤ, ∑ j ∈ S, P j ≤ dualVarG G (fun _ _ => (0 : ℝ)) v W ∅ := by
      intro S
      obtain ⟨N, hN⟩ : ∃ N : ℕ, ∀ j ∈ S, j.natAbs ≤ N :=
        ⟨S.sup Int.natAbs, fun j hj => Finset.le_sup (f := Int.natAbs) hj⟩
      have hsub : S ⊆ (Finset.range (2 * N + 1)).image
          (fun i : ℕ => (-(N : ℤ) - 1) + 1 + i) := by
        intro j hj
        have hjN : j.natAbs ≤ N := hN j hj
        have hj1 : |j| ≤ (N : ℤ) := by rw [Int.abs_eq_natAbs]; exact_mod_cast hjN
        have hj2 := abs_le.mp hj1
        have ht : (((j + N).toNat : ℕ) : ℤ) = j + N := Int.toNat_of_nonneg (by linarith [hj2.1])
        rw [Finset.mem_image]
        refine ⟨(j + N).toNat, Finset.mem_range.2 ?_, ?_⟩
        · omega
        · omega
      calc ∑ j ∈ S, P j
          ≤ ∑ j ∈ (Finset.range (2 * N + 1)).image (fun i : ℕ => (-(N : ℤ) - 1) + 1 + i), P j :=
            Finset.sum_le_sum_of_subset hsub
        _ = ∑ i ∈ Finset.range (2 * N + 1), P ((-(N : ℤ) - 1) + 1 + i) := by
            rw [Finset.sum_image]
            intro x _ y _ hxy
            have hxy' : (-(N : ℤ) - 1) + 1 + (x : ℤ) = (-(N : ℤ) - 1) + 1 + (y : ℤ) := hxy
            omega
        _ ≤ T (-(N : ℤ) - 1) + ∑ i ∈ Finset.range (2 * N + 1), P ((-(N : ℤ) - 1) + 1 + i) :=
            le_add_self
        _ ≤ T ((-(N : ℤ) - 1) + ((2 * N + 1 : ℕ) : ℤ)) := hind _ _
        _ ≤ _ := hTle _
    refine ⟨hexch, ?_⟩
    have hPfun : (fun j : ℤ => sepPerG G (V ∩ {y | (j : ℝ) ≤ v y}) W) = P :=
      funext fun j => (hP j).symm
    rw [hPfun, ENNReal.tsum_eq_iSup_sum]
    exact iSup_le hfin_sum
  
  refine ⟨fun j => ⟨hvm j, fun W hW hWc hWV => ?_, fun F' W K hF' hW hWc hWV hK hKW hsd => ?_⟩,
    fun W hW hWc hWV => lt_of_le_of_lt (key W hW hWc hWV).2 (hfin W hW hWc hWV)⟩
  · exact lt_of_le_of_lt ((ENNReal.le_tsum (f := fun j : ℤ =>
      sepPerG G (V ∩ {y | (j : ℝ) ≤ v y}) W) j).trans (key W hW hWc hWV).2) (hfin W hW hWc hWV)
  · have hWV' : W ⊆ V := subset_closure.trans hWV
    have hx := (key W hW hWc hWV).1 j
    set E : Set E3 := V ∩ {y | (j : ℝ) ≤ v y} with hE
    have hEm : MeasurableSet E := hvm j
    obtain ⟨v', hv'⟩ : ∃ v' : E3 → ℝ, ∀ y, v' y = v y + F'.indicator (fun _ => (1 : ℝ)) y -
        E.indicator (fun _ => (1 : ℝ)) y := ⟨_, fun y => rfl⟩
    have hint' : ∀ y ∈ V, ∃ m : ℤ, v' y = m := by
      intro y hy
      obtain ⟨m, hm⟩ := hint y hy
      rw [hv', hm, hI, hI]
      by_cases hF : y ∈ F' <;> by_cases hE' : y ∈ E
      · exact ⟨m, by rw [if_pos hF, if_pos hE']; ring⟩
      · exact ⟨m + 1, by rw [if_pos hF, if_neg hE']; push_cast; ring⟩
      · exact ⟨m - 1, by rw [if_neg hF, if_pos hE']; push_cast; ring⟩
      · exact ⟨m, by rw [if_neg hF, if_neg hE']; ring⟩
    have hmeas' : ∀ t : ℝ, MeasurableSet (V ∩ {y | t ≤ v' y}) := by
      intro t
      have hS : V ∩ {y | t ≤ v' y} =
          ((V ∩ {y | t ≤ v y}) ∩ ((F' ∩ E) ∪ (F'ᶜ ∩ Eᶜ))) ∪
          ((V ∩ {y | t - 1 ≤ v y}) ∩ (F' ∩ Eᶜ)) ∪
          ((V ∩ {y | t + 1 ≤ v y}) ∩ (F'ᶜ ∩ E)) := by
        ext y
        by_cases hF : y ∈ F' <;> by_cases hE' : y ∈ E
        · have hiff : t ≤ v' y ↔ t ≤ v y := by
            rw [hv', hI, hI, if_pos hF, if_pos hE']
            constructor <;> intro h <;> linarith
          simp only [Set.mem_inter_iff, Set.mem_union, Set.mem_compl_iff, Set.mem_setOf_eq, hiff]
          tauto
        · have hiff : t ≤ v' y ↔ t - 1 ≤ v y := by
            rw [hv', hI, hI, if_pos hF, if_neg hE']
            constructor <;> intro h <;> linarith
          simp only [Set.mem_inter_iff, Set.mem_union, Set.mem_compl_iff, Set.mem_setOf_eq, hiff]
          tauto
        · have hiff : t ≤ v' y ↔ t + 1 ≤ v y := by
            rw [hv', hI, hI, if_neg hF, if_pos hE']
            constructor <;> intro h <;> linarith
          simp only [Set.mem_inter_iff, Set.mem_union, Set.mem_compl_iff, Set.mem_setOf_eq, hiff]
          tauto
        · have hiff : t ≤ v' y ↔ t ≤ v y := by
            rw [hv', hI, hI, if_neg hF, if_neg hE']
            constructor <;> intro h <;> linarith
          simp only [Set.mem_inter_iff, Set.mem_union, Set.mem_compl_iff, Set.mem_setOf_eq, hiff]
          tauto
      rw [hS]
      exact (((hvm t).inter ((hF'.inter hEm).union (hF'.compl.inter hEm.compl))).union
        ((hvm (t - 1)).inter (hF'.inter hEm.compl))).union
        ((hvm (t + 1)).inter (hF'.compl.inter hEm))
    have hoff : ∀ y : E3, y ∉ K → v' y = v y := by
      intro y hy
      have hy' : y ∉ symmDiff E F' := fun h => hy (hsd h)
      rw [Set.mem_symmDiff] at hy'
      rw [hv', hI, hI]
      by_cases hF : y ∈ F' <;> by_cases hE' : y ∈ E
      · rw [if_pos hF, if_pos hE']; ring
      · exact absurd (Or.inr ⟨hF, hE'⟩) hy'
      · exact absurd (Or.inl ⟨hE', hF⟩) hy'
      · rw [if_neg hF, if_neg hE']; ring
    have hle1 := hmin v' W K hint' hmeas' hW hWc hWV hK hKW hoff
    have hv'eq : v' = fun y => v y - E.indicator (fun _ => (1 : ℝ)) y +
        F'.indicator (fun _ => (1 : ℝ)) y := by
      funext y; rw [hv']; ring
    have hle2 := dualVarG_zero_add_le G (fun y => v y - E.indicator (fun _ => (1 : ℝ)) y)
      (F'.indicator fun _ => (1 : ℝ)) W
    beta_reduce at hle2
    rw [dualVarG_zero_indicator_eq_sepPerG G V hV hG hpd F' W hF' hWV'] at hle2
    rw [hv'eq] at hle1
    have hne : dualVarG G (fun _ _ => (0 : ℝ))
        (fun y => v y - E.indicator (fun _ => (1 : ℝ)) y) W ∅ ≠ ⊤ :=
      ne_top_of_le_ne_top (hfin W hW hWc hWV).ne (le_self_add.trans hx)
    exact ENNReal.le_of_add_le_add_left hne (hx.trans (hle1.trans hle2))

theorem sep_translate_overlap_exists (A C : Set E3) (x : E3) (s k : ℝ)
    (hA : MeasurableSet A) (hC : MeasurableSet C) (hs : 0 < s) (hk : 0 < k)
    (hAB : A ⊆ Metric.ball x s) (hCB : C ⊆ Metric.ball x s)
    (hAk : ENNReal.ofReal (k * s ^ 3) ≤ volume A)
    (hCk : ENNReal.ofReal (k * s ^ 3) ≤ volume C) :
    ∃ h : E3, ‖h‖ < 2 * s ∧
      ENNReal.ofReal (3 * k ^ 2 * s ^ 3 / (64 * Real.pi)) ≤
        volume (A ∩ (fun y => y + h) ⁻¹' C) :=
by
  classical
  set f : E3 → ENNReal := fun h => volume (A ∩ (fun y => y + h) ⁻¹' C) with hf
  have hT : MeasurableSet {p : E3 × E3 | p.2 ∈ A ∧ p.2 + p.1 ∈ C} :=
    (measurable_snd hA).inter ((measurable_snd.add measurable_fst) hC)
  have h1 : ((volume : MeasureTheory.Measure E3).prod volume)
      {p : E3 × E3 | p.2 ∈ A ∧ p.2 + p.1 ∈ C} = ∫⁻ h, f h := by
    rw [MeasureTheory.Measure.prod_apply hT]
    rfl
  have h2 : ((volume : MeasureTheory.Measure E3).prod volume)
      {p : E3 × E3 | p.2 ∈ A ∧ p.2 + p.1 ∈ C} = volume C * volume A := by
    rw [MeasureTheory.Measure.prod_apply_symm hT]
    have hfib : ∀ y : E3, volume ((fun h : E3 => (h, y)) ⁻¹'
        {p : E3 × E3 | p.2 ∈ A ∧ p.2 + p.1 ∈ C}) = A.indicator (fun _ => volume C) y := by
      intro y
      by_cases hy : y ∈ A
      · rw [Set.indicator_of_mem hy]
        have he : (fun h : E3 => (h, y)) ⁻¹' {p : E3 × E3 | p.2 ∈ A ∧ p.2 + p.1 ∈ C} =
            (fun h => y + h) ⁻¹' C := by
          ext h; simp [hy]
        rw [he, MeasureTheory.measure_preimage_add]
      · rw [Set.indicator_of_notMem hy]
        have he : (fun h : E3 => (h, y)) ⁻¹' {p : E3 × E3 | p.2 ∈ A ∧ p.2 + p.1 ∈ C} = ∅ := by
          ext h; simp [hy]
        rw [he, MeasureTheory.measure_empty]
    simp_rw [hfib]
    rw [MeasureTheory.lintegral_indicator_const hA]
  have hint : ∫⁻ h, f h = volume A * volume C := by
    rw [← h1, h2, mul_comm]
  set H := Metric.ball (0 : E3) (2 * s) with hH
  have hsupp : ∀ h, h ∉ H → f h = 0 := by
    intro h hh
    have hemp : A ∩ (fun y => y + h) ⁻¹' C = ∅ := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_empty_iff_false, iff_false,
        not_and]
      intro hyA hyC
      apply hh
      have a1 := hAB hyA
      have a2 := hCB hyC
      rw [Metric.mem_ball, dist_eq_norm] at a1 a2
      rw [hH, mem_ball_zero_iff]
      calc ‖h‖ = ‖(y + h - x) - (y - x)‖ := by congr 1; abel
        _ ≤ ‖y + h - x‖ + ‖y - x‖ := norm_sub_le _ _
        _ < 2 * s := by linarith
    simp only [hf, hemp, MeasureTheory.measure_empty]
  have hintH : ∫⁻ h in H, f h = volume A * volume C := by
    rw [← MeasureTheory.lintegral_indicator measurableSet_ball, ← hint]
    apply MeasureTheory.lintegral_congr
    intro h
    by_cases hh : h ∈ H
    · rw [Set.indicator_of_mem hh]
    · rw [Set.indicator_of_notMem hh, hsupp h hh]
  have hlow : ENNReal.ofReal (k ^ 2 * s ^ 6) ≤ volume A * volume C := by
    have ha : 0 ≤ k * s ^ 3 := by positivity
    calc ENNReal.ofReal (k ^ 2 * s ^ 6)
        = ENNReal.ofReal (k * s ^ 3) * ENNReal.ofReal (k * s ^ 3) := by
          rw [← ENNReal.ofReal_mul ha]; congr 1; ring
      _ ≤ volume A * volume C := mul_le_mul' hAk hCk
  have hvol : volume H = ENNReal.ofReal ((2 * s) ^ 3 * (Real.pi * 4 / 3)) := by
    rw [hH, EuclideanSpace.volume_ball_fin_three, ← ENNReal.ofReal_pow (by linarith),
      ← ENNReal.ofReal_mul (by positivity)]
  by_contra hne
  push_neg at hne
  have hle : ∫⁻ h in H, f h ≤
      ∫⁻ h in H, ENNReal.ofReal (3 * k ^ 2 * s ^ 3 / (64 * Real.pi)) := by
    apply MeasureTheory.setLIntegral_mono measurable_const
    intro h hh
    rw [hH, mem_ball_zero_iff] at hh
    exact (hne h hh).le
  rw [MeasureTheory.setLIntegral_const, hvol, ← ENNReal.ofReal_mul (by positivity),
    hintH] at hle
  have heq : 3 * k ^ 2 * s ^ 3 / (64 * Real.pi) * ((2 * s) ^ 3 * (Real.pi * 4 / 3)) =
      k ^ 2 * s ^ 6 / 2 := by
    field_simp; ring
  rw [heq] at hle
  have hlt : ENNReal.ofReal (k ^ 2 * s ^ 6 / 2) < ENNReal.ofReal (k ^ 2 * s ^ 6) := by
    rw [ENNReal.ofReal_lt_ofReal_iff (by positivity)]
    have : 0 < k ^ 2 * s ^ 6 := by positivity
    linarith
  exact absurd (hlow.trans hle) (not_le.mpr hlt)

theorem sep_affine_supp_preimage (y₀ x : E3) (L : E3 ≃L[ℝ] E3) (F : Set E3)
    (hx : ∀ N ∈ 𝓝 x, volume (N \ F) ≠ 0 ∧ volume (N ∩ F) ≠ 0) :
    ∀ N ∈ 𝓝 (L.symm (x - y₀)),
      volume (N ∩ (fun w => y₀ + L w) ⁻¹' F) ≠ 0 ∧
        volume (N \ (fun w => y₀ + L w) ⁻¹' F) ≠ 0 :=
by
  intro N hN
  have hnull : ∀ S : Set E3, volume S = 0 → volume ((fun w => y₀ + L w) '' S) = 0 := by
    intro S hS
    have h1 : (fun w => y₀ + L w) '' S = (fun h => y₀ + h) '' (L '' S) := by
      rw [Set.image_image]
    rw [h1, Set.image_add_left, MeasureTheory.measure_preimage_add,
      MeasureTheory.Measure.addHaar_image_continuousLinearEquiv, hS, mul_zero]
  have hnhds : (fun w => y₀ + L w) '' N ∈ 𝓝 x := by
    have heq : (fun w => y₀ + L w) '' N = (fun v => L.symm (v - y₀)) ⁻¹' N := by
      ext v
      constructor
      · rintro ⟨w, hw, rfl⟩
        simpa using hw
      · intro hv
        refine ⟨L.symm (v - y₀), hv, ?_⟩
        simp
    rw [heq]
    have hc : Continuous (fun v => L.symm (v - y₀)) :=
      L.symm.continuous.comp (continuous_id.sub continuous_const)
    exact hc.continuousAt.preimage_mem_nhds hN
  obtain ⟨h1, h2⟩ := hx _ hnhds
  refine ⟨fun h => h2 ?_, fun h => h1 ?_⟩
  · rw [← Set.image_inter_preimage]
    exact hnull _ h
  · rw [← Set.image_diff_preimage]
    exact hnull _ h

theorem perMin_perimeter_density_uniform (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3)
    (hV : IsOpen V) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ V, (G y).PosDef)
    (y₀ : E3) (hy₀ : y₀ ∈ V) :
    ∃ r c : ℝ, 0 < r ∧ 0 < c ∧ Metric.closedBall y₀ (2 * r) ⊆ V ∧
      ∀ F : Set E3, sepIsPerMin G F V → ∀ x ∈ Metric.closedBall y₀ r,
        (∀ N ∈ 𝓝 x, volume (N \ F) ≠ 0 ∧ volume (N ∩ F) ≠ 0) →
          ENNReal.ofReal c ≤ sepPerG G F (Metric.ball y₀ (2 * r)) :=
by
  classical
  
  obtain ⟨η₁, c₀, hη₁, hc₀, -, hdens⟩ := sepPerMin_density_lower
  
  obtain ⟨L, hL⟩ := sepPosDef_normalizer (G y₀) (hpd y₀ hy₀)
  obtain ⟨A, hAdef⟩ : ∃ A : E3 → E3, A = fun w => y₀ + L w := ⟨_, rfl⟩
  obtain ⟨G', hG'def⟩ : ∃ G' : E3 → Matrix (Fin 3) (Fin 3) ℝ,
      G' = fun z => (1 : ℝ) • pullbackMetric G A z := ⟨_, rfl⟩
  have hAc : Continuous A := by rw [hAdef]; exact continuous_const.add L.continuous
  have hAw : ∀ w, A w = y₀ + L w := fun w => by rw [hAdef]
  
  obtain ⟨-, P2, P3, P4, -⟩ :=
    sepAffinePullback G ∅ V hV MeasurableSet.empty hG hsymm hpd y₀ L 1 one_pos
  have hG'sm : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => G' z i j) (A ⁻¹' V) := by
    subst hG'def hAdef; exact P2
  have hG'sy : ∀ (z : E3) (i j : Fin 3), G' z i j = G' z j i := by
    subst hG'def hAdef; exact P3
  have hG'pd : ∀ z ∈ A ⁻¹' V, (G' z).PosDef := by
    subst hG'def hAdef; exact P4
  have hA0 : A 0 = y₀ := by rw [hAw]; simp
  have hdA : ∀ w, fderiv ℝ A w = (L : E3 →L[ℝ] E3) := by
    intro w
    rw [hAdef, fderiv_const_add]
    exact L.fderiv
  have hG'0 : ∀ i j : Fin 3, G' 0 i j = if i = j then (1 : ℝ) else 0 := by
    intro i j
    rw [hG'def]
    simp only [Matrix.smul_apply, one_smul, pullbackMetric]
    rw [hdA 0, hA0]
    simpa only [ContinuousLinearEquiv.coe_coe] using hL i j
  
  have hV'o : IsOpen (A ⁻¹' V) := hV.preimage hAc
  have h0V' : (0 : E3) ∈ A ⁻¹' V := by
    show A 0 ∈ V
    rw [hA0]; exact hy₀
  have hη : 0 < min η₁ (1 / 100) := lt_min hη₁ (by norm_num)
  have hev : ∀ᶠ w in 𝓝 (0 : E3), w ∈ A ⁻¹' V ∧
      ∀ i j : Fin 3, |G' w i j - (if i = j then (1 : ℝ) else 0)| < min η₁ (1 / 100) := by
    refine Filter.Eventually.and
      (show ∀ᶠ w in 𝓝 (0 : E3), w ∈ A ⁻¹' V from hV'o.mem_nhds h0V') ?_
    rw [Filter.eventually_all]; intro i
    rw [Filter.eventually_all]; intro j
    have hc : ContinuousAt (fun w => |G' w i j - (if i = j then (1 : ℝ) else 0)|) 0 :=
      (((hG'sm i j).continuousOn.continuousAt (hV'o.mem_nhds h0V')).sub
        continuousAt_const).abs
    have ht := hc.tendsto
    simp only [hG'0 i j, sub_self, abs_zero] at ht
    exact ht.eventually_lt_const hη
  obtain ⟨ρ, hρ, hρball⟩ := Metric.eventually_nhds_iff_ball.1 hev
  have hU'V' : ball (0 : E3) ρ ⊆ A ⁻¹' V := fun w hw => (hρball w hw).1
  have hGU : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun z => G' z i j) (ball (0 : E3) ρ) :=
    fun i j => (hG'sm i j).mono hU'V'
  have hpdU : ∀ z ∈ ball (0 : E3) ρ, (G' z).PosDef := fun z hz => hG'pd z (hU'V' hz)
  have hcl₁ : ∀ z ∈ ball (0 : E3) ρ, ∀ i j : Fin 3,
      |G' z i j - (if i = j then (1 : ℝ) else 0)| ≤ η₁ :=
    fun z hz i j => ((hρball z hz).2 i j).le.trans (min_le_left _ _)
  have hcl₂ : ∀ z ∈ ball (0 : E3) ρ, ∀ i j : Fin 3,
      |G' z i j - (if i = j then (1 : ℝ) else 0)| ≤ 1 / 100 :=
    fun z hz i j => ((hρball z hz).2 i j).le.trans (min_le_right _ _)
  
  obtain ⟨ε, hε, hεV⟩ := Metric.isOpen_iff.1 hV y₀ hy₀
  obtain ⟨Λ, hΛ⟩ : ∃ Λ : ℝ, Λ = ‖(L : E3 →L[ℝ] E3)‖ := ⟨_, rfl⟩
  obtain ⟨lam, hlam⟩ : ∃ lam : ℝ, lam = ‖(L.symm : E3 →L[ℝ] E3)‖ := ⟨_, rfl⟩
  have hΛ0 : 0 ≤ Λ := by rw [hΛ]; exact norm_nonneg _
  have hlam0 : 0 ≤ lam := by rw [hlam]; exact norm_nonneg _
  have hLb : ∀ v, ‖L v‖ ≤ Λ * ‖v‖ := fun v => by
    rw [hΛ]; exact (L : E3 →L[ℝ] E3).le_opNorm v
  have hLsb : ∀ v, ‖L.symm v‖ ≤ lam * ‖v‖ := fun v => by
    rw [hlam]; exact (L.symm : E3 →L[ℝ] E3).le_opNorm v
  obtain ⟨r, hrdef⟩ : ∃ r : ℝ, r = min (ε / 4) (ρ / (4 * (lam + 1))) := ⟨_, rfl⟩
  have hlam1 : 0 < 4 * (lam + 1) := by linarith
  have hr : 0 < r := by rw [hrdef]; exact lt_min (by linarith) (div_pos hρ hlam1)
  have hrε : r ≤ ε / 4 := by rw [hrdef]; exact min_le_left _ _
  have hrρ' : r ≤ ρ / (4 * (lam + 1)) := by rw [hrdef]; exact min_le_right _ _
  have hrρ'' : r * (4 * (lam + 1)) ≤ ρ := (le_div_iff₀ hlam1).1 hrρ'
  have hlamr : lam * r ≤ ρ / 4 := by nlinarith
  have hrρ : r ≤ ρ / 4 := by nlinarith
  obtain ⟨s₀, hs₀def⟩ : ∃ s₀ : ℝ, s₀ = r / (6 * (Λ + 1)) := ⟨_, rfl⟩
  have hΛ1 : 0 < 6 * (Λ + 1) := by linarith
  have hs₀ : 0 < s₀ := by rw [hs₀def]; exact div_pos hr hΛ1
  have hs₀r : s₀ * (6 * (Λ + 1)) = r := by rw [hs₀def]; exact div_mul_cancel₀ _ hΛ1.ne'
  have h6s : 6 * s₀ ≤ r := by nlinarith
  have hΛs : Λ * (6 * s₀) < r := by nlinarith
  have hcb : Metric.closedBall y₀ (2 * r) ⊆ V :=
    fun z hz => hεV (Metric.closedBall_subset_ball (by linarith) hz)
  refine ⟨r, c₀ ^ 2 * s₀ ^ 2 / 800, hr, by positivity, hcb, ?_⟩
  intro F hmin x hx hsupp
  
  obtain ⟨P1, -, -, -, P5⟩ := sepAffinePullback G F V hV hmin.1 hG hsymm hpd y₀ L 1 one_pos
  have hminV' : sepIsPerMin G' (A ⁻¹' F) (A ⁻¹' V) := by
    subst hG'def hAdef; exact P5 hmin
  have hminU : sepIsPerMin G' (A ⁻¹' F) (ball (0 : E3) ρ) :=
    ⟨hminV'.1, fun W hW hWc hWU => hminV'.2.1 W hW hWc (hWU.trans hU'V'),
      fun F'' W K h1 h2 h3 h4 h5 h6 h7 => hminV'.2.2 F'' W K h1 h2 h3 (h4.trans hU'V') h5 h6 h7⟩
  have hF' : MeasurableSet (A ⁻¹' F) := hminU.1
  obtain ⟨x', hx'def⟩ : ∃ x' : E3, x' = L.symm (x - y₀) := ⟨_, rfl⟩
  have hxy : ‖x - y₀‖ ≤ r := by rw [← dist_eq_norm]; exact hx
  have hx' : ‖x'‖ ≤ ρ / 4 := by
    rw [hx'def]
    calc ‖L.symm (x - y₀)‖ ≤ lam * ‖x - y₀‖ := hLsb _
      _ ≤ lam * r := mul_le_mul_of_nonneg_left hxy hlam0
      _ ≤ ρ / 4 := hlamr
  have hball6 : ball x' (6 * s₀) ⊆ ball (0 : E3) ρ := by
    intro w hw
    rw [mem_ball, dist_eq_norm] at hw
    rw [mem_ball_zero_iff]
    calc ‖w‖ = ‖(w - x') + x'‖ := by rw [sub_add_cancel]
      _ ≤ ‖w - x'‖ + ‖x'‖ := norm_add_le _ _
      _ < ρ := by linarith
  have hcbx : Metric.closedBall x' s₀ ⊆ ball (0 : E3) ρ := by
    intro w hw
    rw [mem_closedBall, dist_eq_norm] at hw
    rw [mem_ball_zero_iff]
    calc ‖w‖ = ‖(w - x') + x'‖ := by rw [sub_add_cancel]
      _ ≤ ‖w - x'‖ + ‖x'‖ := norm_add_le _ _
      _ < ρ := by linarith
  have hsupp' : ∀ N ∈ 𝓝 x', volume (N ∩ A ⁻¹' F) ≠ 0 ∧ volume (N \ A ⁻¹' F) ≠ 0 := by
    rw [hx'def]; subst hG'def hAdef; exact sep_affine_supp_preimage y₀ x L F hsupp
  
  obtain ⟨hv1, hv2⟩ := hdens G' (A ⁻¹' F) (ball (0 : E3) ρ) x' s₀ isOpen_ball hGU hG'sy hpdU
    hcl₁ hminU hs₀ hcbx hsupp'
  
  obtain ⟨h, hh, hov⟩ := sep_translate_overlap_exists (A ⁻¹' F ∩ ball x' s₀)
    (ball x' s₀ \ A ⁻¹' F) x' s₀ c₀ (hF'.inter measurableSet_ball)
    (measurableSet_ball.diff hF') hs₀ hc₀ Set.inter_subset_right Set.diff_subset hv1 hv2
  have htr := sepPerG_one_translate_le (A ⁻¹' F) x' h (2 * s₀) hF' (by linarith) hh.le
  have hsub1 : (A ⁻¹' F ∩ ball x' s₀) ∩ (fun y => y + h) ⁻¹' (ball x' s₀ \ A ⁻¹' F) ⊆
      symmDiff (A ⁻¹' F) ((fun y => y + h) ⁻¹' (A ⁻¹' F)) ∩ ball x' (2 * s₀) := by
    rintro y ⟨⟨hyF, hyB⟩, hyh⟩
    exact ⟨Set.mem_symmDiff.2 (Or.inl ⟨hyF, hyh.2⟩), ball_subset_ball (by linarith) hyB⟩
  have hchain1 : ENNReal.ofReal (3 * c₀ ^ 2 * s₀ ^ 3 / (64 * Real.pi)) ≤
      ENNReal.ofReal (2 * ‖h‖) * sepPerG (fun _ => (1 : Matrix (Fin 3) (Fin 3) ℝ)) (A ⁻¹' F)
        (ball x' (3 * (2 * s₀))) :=
    hov.trans ((measure_mono hsub1).trans htr)
  
  have h36 : (3 : ℝ) * (2 * s₀) = 6 * s₀ := by ring
  have hsubb : ball x' (3 * (2 * s₀)) ⊆ ball (0 : E3) ρ := by rw [h36]; exact hball6
  obtain ⟨hcmp, -⟩ := sepPerG_one_compare G' (ball (0 : E3) ρ) isOpen_ball hGU hcl₂ (A ⁻¹' F)
    (ball x' (3 * (2 * s₀))) hsubb
  have hmono : ∀ (H : E3 → Matrix (Fin 3) (Fin 3) ℝ) (S W₁ W₂ : Set E3), W₁ ⊆ W₂ →
      sepPerG H S W₁ ≤ sepPerG H S W₂ := by
    intro H S W₁ W₂ hW
    unfold sepPerG
    exact iSup₂_mono' fun X hX => ⟨X, ⟨hX.1, hX.2.1, hX.2.2.1.trans hW, hX.2.2.2⟩, le_rfl⟩
  have hball2 : ball x' (3 * (2 * s₀)) ⊆ A ⁻¹' ball y₀ (2 * r) := by
    intro w hw
    rw [h36, mem_ball, dist_eq_norm] at hw
    show A w ∈ ball y₀ (2 * r)
    rw [hAw, mem_ball, dist_eq_norm]
    have hLx : L x' = x - y₀ := by rw [hx'def]; exact L.apply_symm_apply _
    have heq : y₀ + L w - y₀ = L (w - x') + (x - y₀) := by
      rw [map_sub, hLx]; abel
    rw [heq]
    have hm : Λ * ‖w - x'‖ ≤ Λ * (6 * s₀) := mul_le_mul_of_nonneg_left hw.le hΛ0
    calc ‖L (w - x') + (x - y₀)‖ ≤ ‖L (w - x')‖ + ‖x - y₀‖ := norm_add_le _ _
      _ ≤ Λ * ‖w - x'‖ + ‖x - y₀‖ := by linarith [hLb (w - x')]
      _ < 2 * r := by linarith
  have hP1 : sepPerG G' (A ⁻¹' F) (A ⁻¹' ball y₀ (2 * r)) = sepPerG G F (ball y₀ (2 * r)) := by
    have := P1 (ball y₀ (2 * r)) (ball_subset_closedBall.trans hcb)
    subst hG'def hAdef
    rw [this, ENNReal.ofReal_one, one_mul]
  have hkey : ENNReal.ofReal (3 * c₀ ^ 2 * s₀ ^ 3 / (64 * Real.pi)) ≤
      ENNReal.ofReal (4 * s₀) * (2 * sepPerG G F (ball y₀ (2 * r))) := by
    refine hchain1.trans ?_
    rw [← hP1]
    exact mul_le_mul' (ENNReal.ofReal_le_ofReal (by linarith))
      (hcmp.trans (mul_le_mul' le_rfl (hmono _ _ _ _ hball2)))
  
  by_cases hX : sepPerG G F (ball y₀ (2 * r)) = ⊤
  · rw [hX]; exact le_top
  · obtain ⟨t, ht0, htX⟩ : ∃ t : ℝ, 0 ≤ t ∧ sepPerG G F (ball y₀ (2 * r)) = ENNReal.ofReal t :=
      ⟨_, ENNReal.toReal_nonneg, (ENNReal.ofReal_toReal hX).symm⟩
    rw [htX] at hkey ⊢
    rw [show (2 : ENNReal) * ENNReal.ofReal t = ENNReal.ofReal (2 * t) by
      rw [ENNReal.ofReal_mul (by norm_num), ENNReal.ofReal_ofNat]] at hkey
    rw [← ENNReal.ofReal_mul (show (0 : ℝ) ≤ 4 * s₀ by linarith)] at hkey
    rw [ENNReal.ofReal_le_ofReal_iff (by positivity)] at hkey
    rw [ENNReal.ofReal_le_ofReal_iff ht0]
    have hK : 0 ≤ c₀ ^ 2 * s₀ ^ 3 := by positivity
    have hpi0 : 0 < 64 * Real.pi := by positivity
    have h1 : c₀ ^ 2 * s₀ ^ 3 / 100 ≤ 3 * c₀ ^ 2 * s₀ ^ 3 / (64 * Real.pi) := by
      rw [div_le_div_iff₀ (by norm_num) hpi0]
      have := mul_le_mul_of_nonneg_left Real.pi_le_four hK
      nlinarith
    have h2 : c₀ ^ 2 * s₀ ^ 3 / 100 ≤ 8 * s₀ * t := by linarith
    have h3 : s₀ * (c₀ ^ 2 * s₀ ^ 2) ≤ s₀ * (800 * t) := by nlinarith
    have h4 : c₀ ^ 2 * s₀ ^ 2 ≤ 800 * t := le_of_mul_le_mul_left h3 hs₀
    linarith

theorem nested_sheets_align [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M) (p : M)
    (a : Fin 3) (u : E3 → ℝ) (r δ : ℝ) (hr : 0 < r) (hδ : 0 < δ) (hu : ContDiff ℝ ∞ u)
    (hu0 : u (sepPlaneProj a (chartAt E3 p p)) = chartAt E3 p p a)
    (hcyl : sepCyl a (chartAt E3 p p) r δ ⊆ (chartAt E3 p).target)
    (hMSE : ∀ z ∈ sepCyl a (chartAt E3 p p) r δ, z a = u (sepPlaneProj a z) →
      levelMeanCurvCoord (g.coeff (chartAt E3 p).symm)
        (fun w => w a - u (sepPlaneProj a w)) z = 0)
    (b : Fin 3) (u' : E3 → ℝ) (r' δ' : ℝ) (hr' : 0 < r') (hδ' : 0 < δ')
    (hu' : ContDiff ℝ ∞ u')
    (hu'0 : u' (sepPlaneProj b (chartAt E3 p p)) = chartAt E3 p p b)
    (hcyl' : sepCyl b (chartAt E3 p p) r' δ' ⊆ (chartAt E3 p).target)
    (hMSE' : ∀ z ∈ sepCyl b (chartAt E3 p p) r' δ', z b = u' (sepPlaneProj b z) →
      levelMeanCurvCoord (g.coeff (chartAt E3 p).symm)
        (fun w => w b - u' (sepPlaneProj b w)) z = 0)
    (E₀ E₁ : Set E3)
    (hside₀ : (volume ((sepCyl a (chartAt E3 p p) r δ ∩ {z | z a < u (sepPlaneProj a z)}) \ E₀) = 0 ∧
          volume (sepCyl a (chartAt E3 p p) r δ ∩ {z | u (sepPlaneProj a z) < z a} ∩ E₀) = 0) ∨
        (volume ((sepCyl a (chartAt E3 p p) r δ ∩ {z | u (sepPlaneProj a z) < z a}) \ E₀) = 0 ∧
          volume (sepCyl a (chartAt E3 p p) r δ ∩ {z | z a < u (sepPlaneProj a z)} ∩ E₀) = 0))
    (hside₁ : (volume ((sepCyl b (chartAt E3 p p) r' δ' ∩ {z | z b < u' (sepPlaneProj b z)}) \ E₁) = 0 ∧
          volume (sepCyl b (chartAt E3 p p) r' δ' ∩ {z | u' (sepPlaneProj b z) < z b} ∩ E₁) = 0) ∨
        (volume ((sepCyl b (chartAt E3 p p) r' δ' ∩ {z | u' (sepPlaneProj b z) < z b}) \ E₁) = 0 ∧
          volume (sepCyl b (chartAt E3 p p) r' δ' ∩ {z | z b < u' (sepPlaneProj b z)} ∩ E₁) = 0))
    (hnest : E₁ ⊆ E₀ ∨ E₀ ⊆ E₁) :
    ∃ r₁ δ₁ : ℝ, 0 < r₁ ∧ r₁ ≤ r ∧ 0 < δ₁ ∧ δ₁ ≤ δ ∧
      ((volume ((sepCyl a (chartAt E3 p p) r₁ δ₁ ∩ {z | z a < u (sepPlaneProj a z)}) \ E₁) = 0 ∧
          volume (sepCyl a (chartAt E3 p p) r₁ δ₁ ∩ {z | u (sepPlaneProj a z) < z a} ∩ E₁) = 0) ∨
        (volume ((sepCyl a (chartAt E3 p p) r₁ δ₁ ∩ {z | u (sepPlaneProj a z) < z a}) \ E₁) = 0 ∧
          volume (sepCyl a (chartAt E3 p p) r₁ δ₁ ∩ {z | z a < u (sepPlaneProj a z)} ∩ E₁) = 0)) :=
by
  classical
  set c : E3 := chartAt E3 p p with hc_def
  set ε : ℝ := min r' δ' with hε_def
  have hε : 0 < ε := lt_min hr' hδ'
  
  have hB' : Metric.ball c ε ⊆ sepCyl b c r' δ' := by
    intro z hz
    rw [Metric.mem_ball, dist_eq_norm] at hz
    have hsq : ‖z - c‖ ^ 2 = ∑ i, ((z - c) i) ^ 2 := by
      rw [EuclideanSpace.norm_sq_eq]; simp [Real.norm_eq_abs, sq_abs]
    have hsqP : ‖sepPlaneProj b (z - c)‖ ^ 2 = ∑ i, ((sepPlaneProj b (z - c)) i) ^ 2 := by
      rw [EuclideanSpace.norm_sq_eq]; simp [Real.norm_eq_abs, sq_abs]
    have hle1 : ‖sepPlaneProj b (z - c)‖ ^ 2 ≤ ‖z - c‖ ^ 2 := by
      rw [hsq, hsqP]
      refine Finset.sum_le_sum (fun i _ => ?_)
      by_cases hi : i = b
      · rw [hi]; simp [sepPlaneProj]; exact sq_nonneg _
      · simp [sepPlaneProj, hi]
    have hle2 : ((z - c) b) ^ 2 ≤ ‖z - c‖ ^ 2 := by
      rw [hsq]
      exact Finset.single_le_sum (f := fun i => ((z - c) i) ^ 2) (fun i _ => sq_nonneg _)
        (Finset.mem_univ b)
    have hn0 := norm_nonneg (z - c)
    have hn1 := norm_nonneg (sepPlaneProj b (z - c))
    have hε1 : ε ≤ r' := min_le_left _ _
    have hε2 : ε ≤ δ' := min_le_right _ _
    refine ⟨by nlinarith, ?_⟩
    have hcb : (z - c) b = z b - c b := by simp
    rw [← hcb, abs_lt]
    constructor <;> nlinarith
  have hball : Metric.ball c ε ⊆ (chartAt E3 p).target := hB'.trans hcyl'
  
  obtain ⟨hfC, hdf0⟩ : ContDiff ℝ ∞ (fun w : E3 => w b - u' (sepPlaneProj b w)) ∧
      ∀ z, fderiv ℝ (fun w : E3 => w b - u' (sepPlaneProj b w)) z ≠ 0 := by
    set f : E3 → ℝ := fun w : E3 => w b - u' (sepPlaneProj b w) with hfdef
    have hproj : ContDiff ℝ ∞ (fun w : E3 => w b) :=
      (EuclideanSpace.proj b : E3 →L[ℝ] ℝ).contDiff
    have hPb : ContDiff ℝ ∞ (fun y : E3 => y - (y b) • e b) :=
      contDiff_id.sub (hproj.smul contDiff_const)
    have hfC : ContDiff ℝ ∞ f := hproj.sub (hu'.comp hPb)
    refine ⟨hfC, fun z => ?_⟩
    have hline : ∀ t : ℝ, f (z + t • e b) = f z + t := by
      intro t
      have hP : sepPlaneProj b (z + t • e b) = sepPlaneProj b z := by
        ext i
        by_cases hi : i = b <;> simp [sepPlaneProj, hi]
      simp only [hfdef, hP]
      simp
      ring
    have h1 : HasDerivAt (fun t : ℝ => f (z + t • e b)) (fderiv ℝ f z (e b)) 0 := by
      have hℓ : HasDerivAt (fun t : ℝ => z + t • e b) (e b) 0 := by
        have := ((hasDerivAt_id (0:ℝ)).smul_const (e b)).const_add z
        rw [one_smul] at this
        exact this
      have hfd : HasFDerivAt f (fderiv ℝ f z) (z + (0:ℝ) • e b) := by
        rw [zero_smul, add_zero]
        exact (hfC.differentiable (by simp)).differentiableAt.hasFDerivAt
      exact hfd.comp_hasDerivAt (0:ℝ) hℓ
    have h2 : HasDerivAt (fun t : ℝ => f (z + t • e b)) 1 0 := by
      have : (fun t : ℝ => f (z + t • e b)) = fun t => f z + t := funext hline
      rw [this]
      exact (hasDerivAt_id' (0:ℝ)).const_add _
    have hval : fderiv ℝ f z (e b) = 1 := h1.unique h2
    intro h0
    rw [h0] at hval
    simp at hval
  have hf0 : (fun w : E3 => w b - u' (sepPlaneProj b w)) c = 0 := by
    show c b - u' (sepPlaneProj b c) = 0
    rw [hu'0]; ring
  have hfM : ∀ z ∈ Metric.ball c ε, (fun w : E3 => w b - u' (sepPlaneProj b w)) z = 0 →
      levelMeanCurvCoord (g.coeff (chartAt E3 p).symm)
        (fun w : E3 => w b - u' (sepPlaneProj b w)) z = 0 := by
    intro z hz hz0
    exact hMSE' z (hB' hz) (sub_eq_zero.mp hz0)
  
  have key : ∀ (σ τ : ℝ) (N₁ N₂ : Set E3), volume N₁ = 0 → volume N₂ = 0 →
      (∀ z, z ∈ sepCyl a c r δ → z ∈ sepCyl b c r' δ' →
        0 < σ * (z a - u (sepPlaneProj a z)) →
        τ * (z b - u' (sepPlaneProj b z)) < 0 → z ∈ N₁ ∪ N₂) →
      volume (sepCyl a c r δ ∩ Metric.ball c ε ∩ {z | 0 < σ * (z a - u (sepPlaneProj a z))} ∩
        {z | τ * (z b - u' (sepPlaneProj b z)) < 0}) = 0 := by
    intro σ τ N₁ N₂ h1 h2 hinc
    refine measure_mono_null ?_ (measure_union_null h1 h2)
    intro z hz
    exact hinc z hz.1.1.1 (hB' hz.1.1.2) hz.1.2 hz.2
  obtain ⟨σ, τ, hσ, hτ, hnull⟩ : ∃ σ τ : ℝ, (σ = 1 ∨ σ = -1) ∧ (τ = 1 ∨ τ = -1) ∧
      volume (sepCyl a c r δ ∩ Metric.ball c ε ∩ {z | 0 < σ * (z a - u (sepPlaneProj a z))} ∩
        {z | τ * (z b - u' (sepPlaneProj b z)) < 0}) = 0 := by
    rcases hnest with hn | hn <;> rcases hside₀ with ⟨hA0, hA0'⟩ | ⟨hB0, hB0'⟩ <;>
      rcases hside₁ with ⟨hA1, hA1'⟩ | ⟨hB1, hB1'⟩
    
    · refine ⟨1, 1, Or.inl rfl, Or.inl rfl, key 1 1 _ _ hA0' hA1 ?_⟩
      intro z hC hC' hd hf
      by_cases hz0 : z ∈ E₀
      · exact Or.inl ⟨⟨hC, by simp only [Set.mem_setOf_eq]; linarith⟩, hz0⟩
      · exact Or.inr ⟨⟨hC', by simp only [Set.mem_setOf_eq]; linarith⟩, fun h => hz0 (hn h)⟩
    · refine ⟨1, -1, Or.inl rfl, Or.inr rfl, key 1 (-1) _ _ hA0' hB1 ?_⟩
      intro z hC hC' hd hf
      by_cases hz0 : z ∈ E₀
      · exact Or.inl ⟨⟨hC, by simp only [Set.mem_setOf_eq]; linarith⟩, hz0⟩
      · exact Or.inr ⟨⟨hC', by simp only [Set.mem_setOf_eq]; linarith⟩, fun h => hz0 (hn h)⟩
    · refine ⟨-1, 1, Or.inr rfl, Or.inl rfl, key (-1) 1 _ _ hB0' hA1 ?_⟩
      intro z hC hC' hd hf
      by_cases hz0 : z ∈ E₀
      · exact Or.inl ⟨⟨hC, by simp only [Set.mem_setOf_eq]; linarith⟩, hz0⟩
      · exact Or.inr ⟨⟨hC', by simp only [Set.mem_setOf_eq]; linarith⟩, fun h => hz0 (hn h)⟩
    · refine ⟨-1, -1, Or.inr rfl, Or.inr rfl, key (-1) (-1) _ _ hB0' hB1 ?_⟩
      intro z hC hC' hd hf
      by_cases hz0 : z ∈ E₀
      · exact Or.inl ⟨⟨hC, by simp only [Set.mem_setOf_eq]; linarith⟩, hz0⟩
      · exact Or.inr ⟨⟨hC', by simp only [Set.mem_setOf_eq]; linarith⟩, fun h => hz0 (hn h)⟩
    
    · refine ⟨-1, -1, Or.inr rfl, Or.inr rfl, key (-1) (-1) _ _ hA0 hA1' ?_⟩
      intro z hC hC' hd hf
      by_cases hz0 : z ∈ E₀
      · exact Or.inr ⟨⟨hC', by simp only [Set.mem_setOf_eq]; linarith⟩, hn hz0⟩
      · exact Or.inl ⟨⟨hC, by simp only [Set.mem_setOf_eq]; linarith⟩, hz0⟩
    · refine ⟨-1, 1, Or.inr rfl, Or.inl rfl, key (-1) 1 _ _ hA0 hB1' ?_⟩
      intro z hC hC' hd hf
      by_cases hz0 : z ∈ E₀
      · exact Or.inr ⟨⟨hC', by simp only [Set.mem_setOf_eq]; linarith⟩, hn hz0⟩
      · exact Or.inl ⟨⟨hC, by simp only [Set.mem_setOf_eq]; linarith⟩, hz0⟩
    · refine ⟨1, -1, Or.inl rfl, Or.inr rfl, key 1 (-1) _ _ hB0 hA1' ?_⟩
      intro z hC hC' hd hf
      by_cases hz0 : z ∈ E₀
      · exact Or.inr ⟨⟨hC', by simp only [Set.mem_setOf_eq]; linarith⟩, hn hz0⟩
      · exact Or.inl ⟨⟨hC, by simp only [Set.mem_setOf_eq]; linarith⟩, hz0⟩
    · refine ⟨1, 1, Or.inl rfl, Or.inl rfl, key 1 1 _ _ hB0 hB1' ?_⟩
      intro z hC hC' hd hf
      by_cases hz0 : z ∈ E₀
      · exact Or.inr ⟨⟨hC', by simp only [Set.mem_setOf_eq]; linarith⟩, hn hz0⟩
      · exact Or.inl ⟨⟨hC, by simp only [Set.mem_setOf_eq]; linarith⟩, hz0⟩
  
  obtain ⟨r₁, δ₁, h1, h2, h3, h4, hC₁B, hmatch⟩ :=
    sheet_coincides_of_side g p a u r δ hr hδ hu hu0 hcyl hMSE ε
      (fun w : E3 => w b - u' (sepPlaneProj b w)) hε hball hfC.contDiffOn hf0
      (fun z _ => hdf0 z) hfM σ τ hσ hτ hnull
  refine ⟨r₁, δ₁, h1, h2, h3, h4, ?_⟩
  
  have hsub : sepCyl a c r₁ δ₁ ⊆ sepCyl b c r' δ' := hC₁B.trans hB'
  have hsgn : ∀ z ∈ sepCyl a c r₁ δ₁,
      (z a < u (sepPlaneProj a z) → σ * τ * (z b - u' (sepPlaneProj b z)) < 0) ∧
      (u (sepPlaneProj a z) < z a → 0 < σ * τ * (z b - u' (sepPlaneProj b z))) := by
    intro z hz
    have hm1 : z b - u' (sepPlaneProj b z) = 0 ↔ z a = u (sepPlaneProj a z) := (hmatch z hz).1
    have hm2 : 0 < τ * (z b - u' (sepPlaneProj b z)) ↔ 0 < σ * (z a - u (sepPlaneProj a z)) :=
      (hmatch z hz).2
    constructor
    · intro hd
      have hne : z b - u' (sepPlaneProj b z) ≠ 0 := fun h => hd.ne (hm1.mp h)
      rcases lt_or_gt_of_ne hne with hf | hf <;> rcases hσ with rfl | rfl <;>
        rcases hτ with rfl | rfl <;>
        first
          | linarith
          | (have := hm2.mp (by linarith); linarith)
          | (have := hm2.mpr (by linarith); linarith)
    · intro hd
      have hne : z b - u' (sepPlaneProj b z) ≠ 0 := fun h => hd.ne' (hm1.mp h)
      rcases lt_or_gt_of_ne hne with hf | hf <;> rcases hσ with rfl | rfl <;>
        rcases hτ with rfl | rfl <;>
        first
          | linarith
          | (have := hm2.mp (by linarith); linarith)
          | (have := hm2.mpr (by linarith); linarith)
  have hs : σ * τ = 1 ∨ σ * τ = -1 := by
    rcases hσ with rfl | rfl <;> rcases hτ with rfl | rfl <;> norm_num
  rcases hs with hs | hs
  · have hLo : ∀ z ∈ sepCyl a c r₁ δ₁, z a < u (sepPlaneProj a z) →
        z b < u' (sepPlaneProj b z) := by
      intro z hz hd
      have := (hsgn z hz).1 hd
      rw [hs] at this
      linarith
    have hUp : ∀ z ∈ sepCyl a c r₁ δ₁, u (sepPlaneProj a z) < z a →
        u' (sepPlaneProj b z) < z b := by
      intro z hz hd
      have := (hsgn z hz).2 hd
      rw [hs] at this
      linarith
    rcases hside₁ with ⟨hA1, hA1'⟩ | ⟨hB1, hB1'⟩
    · left
      refine ⟨measure_mono_null ?_ hA1, measure_mono_null ?_ hA1'⟩
      · intro z hz; exact ⟨⟨hsub hz.1.1, hLo z hz.1.1 hz.1.2⟩, hz.2⟩
      · intro z hz; exact ⟨⟨hsub hz.1.1, hUp z hz.1.1 hz.1.2⟩, hz.2⟩
    · right
      refine ⟨measure_mono_null ?_ hB1, measure_mono_null ?_ hB1'⟩
      · intro z hz; exact ⟨⟨hsub hz.1.1, hUp z hz.1.1 hz.1.2⟩, hz.2⟩
      · intro z hz; exact ⟨⟨hsub hz.1.1, hLo z hz.1.1 hz.1.2⟩, hz.2⟩
  · have hLo : ∀ z ∈ sepCyl a c r₁ δ₁, z a < u (sepPlaneProj a z) →
        u' (sepPlaneProj b z) < z b := by
      intro z hz hd
      have := (hsgn z hz).1 hd
      rw [hs] at this
      linarith
    have hUp : ∀ z ∈ sepCyl a c r₁ δ₁, u (sepPlaneProj a z) < z a →
        z b < u' (sepPlaneProj b z) := by
      intro z hz hd
      have := (hsgn z hz).2 hd
      rw [hs] at this
      linarith
    rcases hside₁ with ⟨hA1, hA1'⟩ | ⟨hB1, hB1'⟩
    · right
      refine ⟨measure_mono_null ?_ hA1, measure_mono_null ?_ hA1'⟩
      · intro z hz; exact ⟨⟨hsub hz.1.1, hUp z hz.1.1 hz.1.2⟩, hz.2⟩
      · intro z hz; exact ⟨⟨hsub hz.1.1, hLo z hz.1.1 hz.1.2⟩, hz.2⟩
    · left
      refine ⟨measure_mono_null ?_ hB1, measure_mono_null ?_ hB1'⟩
      · intro z hz; exact ⟨⟨hsub hz.1.1, hLo z hz.1.1 hz.1.2⟩, hz.2⟩
      · intro z hz; exact ⟨⟨hsub hz.1.1, hUp z hz.1.1 hz.1.2⟩, hz.2⟩

theorem perMin_smooth_sheet [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M) (p : M)
    (V : Set E3) (hV : IsOpen V) (hVt : V ⊆ (chartAt E3 p).target) (F : Set E3)
    (hmin : sepIsPerMin (g.coeff (chartAt E3 p).symm) F V) (y₀ : E3) (hy₀ : y₀ ∈ V)
    (h1 : ∀ N ∈ 𝓝 y₀, volume (N \ F) ≠ 0) (h0 : ∀ N ∈ 𝓝 y₀, volume (N ∩ F) ≠ 0) :
    ∃ (a : Fin 3) (u : E3 → ℝ) (r δ : ℝ), 0 < r ∧ 0 < δ ∧ ContDiff ℝ ∞ u ∧
      u (sepPlaneProj a y₀) = y₀ a ∧ sepCyl a y₀ r δ ⊆ V ∧
      (∀ z ∈ sepCyl a y₀ r δ, z a = u (sepPlaneProj a z) →
        levelMeanCurvCoord (g.coeff (chartAt E3 p).symm)
          (fun w => w a - u (sepPlaneProj a w)) z = 0) ∧
      ((volume ((sepCyl a y₀ r δ ∩ {z | z a < u (sepPlaneProj a z)}) \ F) = 0 ∧
          volume (sepCyl a y₀ r δ ∩ {z | u (sepPlaneProj a z) < z a} ∩ F) = 0) ∨
        (volume ((sepCyl a y₀ r δ ∩ {z | u (sepPlaneProj a z) < z a}) \ F) = 0 ∧
          volume (sepCyl a y₀ r δ ∩ {z | z a < u (sepPlaneProj a z)} ∩ F) = 0)) :=
by
  have hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 p).symm y i j) V :=
    fun i j => (g.smooth p i j).mono hVt
  have hsymm : ∀ (y : E3) (i j : Fin 3),
      g.coeff (chartAt E3 p).symm y i j = g.coeff (chartAt E3 p).symm y j i :=
    fun y i j => g.symm _ _ _
  have hpd : ∀ y ∈ V, (g.coeff (chartAt E3 p).symm y).PosDef :=
    fun y hy => coeff_chart_symm_posDef g p y (hVt hy)
  obtain ⟨a, u, r, δ, hr, hδ, hu1, hu0, hcyl, hside⟩ :=
    sepPerMin_C1_graph (g.coeff (chartAt E3 p).symm) V F hV hG hsymm hpd hmin y₀ hy₀ h1 h0
  obtain ⟨u', r', hr', hr'r, hu', hagree, hMSE⟩ :=
    sepPerMin_C1_graph_smooth (g.coeff (chartAt E3 p).symm) V F hV hG hsymm hpd hmin a y₀ u r δ
      hr hδ hu1 hu0 hcyl hside
  have hsub : sepCyl a y₀ r' δ ⊆ sepCyl a y₀ r δ :=
    fun z hz => ⟨lt_of_lt_of_le hz.1 hr'r, hz.2⟩
  have hbase : u' (sepPlaneProj a y₀) = y₀ a := by
    have h00 : ‖sepPlaneProj a (y₀ - y₀)‖ < r' := by
      simp [sepPlaneProj, hr']
    rw [hagree y₀ h00, hu0]
  have hI1 : sepCyl a y₀ r' δ ∩ {z | z a < u' (sepPlaneProj a z)} ⊆
      sepCyl a y₀ r δ ∩ {z | z a < u (sepPlaneProj a z)} := by
    rintro z ⟨hzC, hlt⟩
    refine ⟨hsub hzC, ?_⟩
    have h := hagree z hzC.1
    show z a < u (sepPlaneProj a z)
    have hlt' : z a < u' (sepPlaneProj a z) := hlt
    rw [← h]; exact hlt'
  have hI2 : sepCyl a y₀ r' δ ∩ {z | u' (sepPlaneProj a z) < z a} ⊆
      sepCyl a y₀ r δ ∩ {z | u (sepPlaneProj a z) < z a} := by
    rintro z ⟨hzC, hlt⟩
    refine ⟨hsub hzC, ?_⟩
    have h := hagree z hzC.1
    show u (sepPlaneProj a z) < z a
    have hlt' : u' (sepPlaneProj a z) < z a := hlt
    rw [← h]; exact hlt'
  refine ⟨a, u', r', δ, hr', hδ, hu', hbase, hsub.trans hcyl, hMSE, ?_⟩
  rcases hside with ⟨hA, hB⟩ | ⟨hA, hB⟩
  · exact Or.inl ⟨measure_mono_null (Set.diff_subset_diff_left hI1) hA,
      measure_mono_null (Set.inter_subset_inter_left _ hI2) hB⟩
  · exact Or.inr ⟨measure_mono_null (Set.diff_subset_diff_left hI2) hA,
      measure_mono_null (Set.inter_subset_inter_left _ hI1) hB⟩

theorem graph_jumpset_iff (a : Fin 3) (u : E3 → ℝ) (hu : Continuous u) (c : E3) (r δ : ℝ)
    (E : ℤ → Set E3)
    (hside : ∀ j : ℤ,
      (volume ((sepCyl a c r δ ∩ {z | z a < u (sepPlaneProj a z)}) \ E j) = 0 ∨
        volume (sepCyl a c r δ ∩ {z | z a < u (sepPlaneProj a z)} ∩ E j) = 0) ∧
      (volume ((sepCyl a c r δ ∩ {z | u (sepPlaneProj a z) < z a}) \ E j) = 0 ∨
        volume (sepCyl a c r δ ∩ {z | u (sepPlaneProj a z) < z a} ∩ E j) = 0))
    (j₀ : ℤ)
    (hj₀ : (volume ((sepCyl a c r δ ∩ {z | z a < u (sepPlaneProj a z)}) \ E j₀) = 0 ∧
          volume (sepCyl a c r δ ∩ {z | u (sepPlaneProj a z) < z a} ∩ E j₀) = 0) ∨
        (volume ((sepCyl a c r δ ∩ {z | u (sepPlaneProj a z) < z a}) \ E j₀) = 0 ∧
          volume (sepCyl a c r δ ∩ {z | z a < u (sepPlaneProj a z)} ∩ E j₀) = 0)) :
    ∀ z ∈ sepCyl a c r δ,
      ((∀ N ∈ 𝓝 z, ∃ j : ℤ, volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0) ↔
        z a = u (sepPlaneProj a z)) :=
by
  intro z hz
  have cA : Continuous (fun z : E3 => z a) := PiLp.continuous_apply 2 _ a
  have cπ : Continuous (fun z : E3 => sepPlaneProj a z) := by
    unfold sepPlaneProj
    exact continuous_id.sub (cA.smul continuous_const)
  have cuπ : Continuous (fun z : E3 => u (sepPlaneProj a z)) := hu.comp cπ
  have cC : IsOpen (sepCyl a c r δ) := by
    have h1 : IsOpen {z : E3 | ‖sepPlaneProj a (z - c)‖ < r} :=
      isOpen_lt ((cπ.comp (continuous_id.sub continuous_const)).norm) continuous_const
    have h2 : IsOpen {z : E3 | |z a - c a| < δ} :=
      isOpen_lt ((cA.sub continuous_const).abs) continuous_const
    exact h1.inter h2
  have oL : IsOpen (sepCyl a c r δ ∩ {z | z a < u (sepPlaneProj a z)}) :=
    cC.inter (isOpen_lt cA cuπ)
  have oU : IsOpen (sepCyl a c r δ ∩ {z | u (sepPlaneProj a z) < z a}) :=
    cC.inter (isOpen_lt cuπ cA)
  have sh1 : ∀ (w : E3) (t : ℝ), (w + t • e a) a = w a + t := by
    intro w t
    simp [e, EuclideanSpace.single_apply]
  have sh2 : ∀ (w : E3) (t : ℝ), sepPlaneProj a (w + t • e a) = sepPlaneProj a w := by
    intro w t
    unfold sepPlaneProj
    rw [sh1, add_smul]
    abel
  have sh3 : ∀ t : ℝ, ‖t • e a‖ = |t| := by
    intro t
    rw [norm_smul, e, EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs]
  constructor
  · intro hJ
    rcases lt_trichotomy (z a) (u (sepPlaneProj a z)) with h | h | h
    · exfalso
      obtain ⟨j, hj1, hj2⟩ := hJ _ (oL.mem_nhds ⟨hz, h⟩)
      rcases (hside j).1 with h' | h'
      · exact hj1 h'
      · exact hj2 h'
    · exact h
    · exfalso
      obtain ⟨j, hj1, hj2⟩ := hJ _ (oU.mem_nhds ⟨hz, h⟩)
      rcases (hside j).2 with h' | h'
      · exact hj1 h'
      · exact hj2 h'
  · intro heq N hN
    obtain ⟨ε, hε, hball⟩ := Metric.mem_nhds_iff.mp (Filter.inter_mem hN (cC.mem_nhds hz))
    set L := sepCyl a c r δ ∩ {z | z a < u (sepPlaneProj a z)} with hLdef
    set U := sepCyl a c r δ ∩ {z | u (sepPlaneProj a z) < z a} with hUdef
    have hs : 0 < ε / 2 := by linarith
    have hmemB : ∀ t : ℝ, |t| < ε → z + t • e a ∈ Metric.ball z ε := by
      intro t ht
      rw [Metric.mem_ball, dist_eq_norm, add_sub_cancel_left, sh3]
      exact ht
    have hlt : |ε / 2| < ε := by rw [abs_of_pos hs]; linarith
    have hlt' : |-(ε / 2)| < ε := by rw [abs_neg]; exact hlt
    have hzm : z + (-(ε / 2)) • e a ∈ Metric.ball z ε ∩ L := by
      refine ⟨hmemB _ hlt', (hball (hmemB _ hlt')).2, ?_⟩
      show (z + (-(ε / 2)) • e a) a < u (sepPlaneProj a (z + (-(ε / 2)) • e a))
      rw [sh1, sh2, ← heq]
      linarith
    have hzp : z + (ε / 2) • e a ∈ Metric.ball z ε ∩ U := by
      refine ⟨hmemB _ hlt, (hball (hmemB _ hlt)).2, ?_⟩
      show u (sepPlaneProj a (z + (ε / 2) • e a)) < (z + (ε / 2) • e a) a
      rw [sh1, sh2, ← heq]
      linarith
    have pL : 0 < volume (Metric.ball z ε ∩ L) :=
      (Metric.isOpen_ball.inter oL).measure_pos volume ⟨_, hzm⟩
    have pU : 0 < volume (Metric.ball z ε ∩ U) :=
      (Metric.isOpen_ball.inter oU).measure_pos volume ⟨_, hzp⟩
    have hBN : ∀ x ∈ Metric.ball z ε, x ∈ N := fun x hx => (hball hx).1
    have key1 : ∀ S F : Set E3, 0 < volume (Metric.ball z ε ∩ S) → volume (S \ F) = 0 →
        volume (N ∩ F) ≠ 0 := by
      intro S F hpos hnull hNF
      have hsub : Metric.ball z ε ∩ S ⊆ (N ∩ F) ∪ (S \ F) := by
        intro x hx
        by_cases hxF : x ∈ F
        · exact Or.inl ⟨hBN x hx.1, hxF⟩
        · exact Or.inr ⟨hx.2, hxF⟩
      have : volume (Metric.ball z ε ∩ S) = 0 :=
        measure_mono_null hsub (measure_union_null hNF hnull)
      exact (ne_of_gt hpos) this
    have key2 : ∀ S F : Set E3, 0 < volume (Metric.ball z ε ∩ S) → volume (S ∩ F) = 0 →
        volume (N \ F) ≠ 0 := by
      intro S F hpos hnull hNF
      have hsub : Metric.ball z ε ∩ S ⊆ (N \ F) ∪ (S ∩ F) := by
        intro x hx
        by_cases hxF : x ∈ F
        · exact Or.inr ⟨hx.2, hxF⟩
        · exact Or.inl ⟨hBN x hx.1, hxF⟩
      have : volume (Metric.ball z ε ∩ S) = 0 :=
        measure_mono_null hsub (measure_union_null hNF hnull)
      exact (ne_of_gt hpos) this
    refine ⟨j₀, ?_⟩
    rcases hj₀ with ⟨h1, h2⟩ | ⟨h1, h2⟩
    · exact ⟨key2 U (E j₀) pU h2, key1 L (E j₀) pL h1⟩
    · exact ⟨key2 L (E j₀) pL h2, key1 U (E j₀) pU h1⟩

theorem local_triviality_off_support (y₀ : E3) (r : ℝ) (hr : 0 < r) (E : ℤ → Set E3)
    (hfin : {j : ℤ | ∃ x ∈ Metric.closedBall y₀ r,
      ∀ N ∈ 𝓝 x, volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0}.Finite) :
    ∃ ρ : ℝ, 0 < ρ ∧ ρ ≤ r ∧ ∀ j : ℤ,
      ¬ (∀ N ∈ 𝓝 y₀, volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0) →
        (volume (Metric.ball y₀ ρ \ E j) = 0 ∨ volume (Metric.ball y₀ ρ ∩ E j) = 0) :=
by
  classical
  
  have s1 : ∀ (F : Set E3) (x : E3),
      ¬ (∀ N ∈ 𝓝 x, volume (N \ F) ≠ 0 ∧ volume (N ∩ F) ≠ 0) →
      ∃ N ∈ 𝓝 x, volume (N \ F) = 0 ∨ volume (N ∩ F) = 0 := by
    intro F x h
    push_neg at h
    obtain ⟨N, hN, h⟩ := h
    refine ⟨N, hN, ?_⟩
    by_cases h0 : volume (N \ F) = 0
    · exact Or.inl h0
    · exact Or.inr (h h0)
  
  have s2 : ∀ F : Set E3,
      (∀ x ∈ Metric.ball y₀ r, ∃ N ∈ 𝓝 x, volume (N \ F) = 0 ∨ volume (N ∩ F) = 0) →
      volume (Metric.ball y₀ r \ F) = 0 ∨ volume (Metric.ball y₀ r ∩ F) = 0 := by
    intro F hloc
    set B := Metric.ball y₀ r with hB
    set U : Set E3 := {x | ∃ N ∈ 𝓝 x, volume (N \ F) = 0} with hU
    set V : Set E3 := {x | ∃ N ∈ 𝓝 x, volume (N ∩ F) = 0} with hV
    have hUo : IsOpen U := by
      rw [isOpen_iff_mem_nhds]
      rintro x ⟨N, hN, h0⟩
      refine Filter.mem_of_superset (interior_mem_nhds.2 hN) ?_
      intro x' hx'
      exact ⟨interior N, isOpen_interior.mem_nhds hx',
        measure_mono_null (Set.diff_subset_diff_left interior_subset) h0⟩
    have hVo : IsOpen V := by
      rw [isOpen_iff_mem_nhds]
      rintro x ⟨N, hN, h0⟩
      refine Filter.mem_of_superset (interior_mem_nhds.2 hN) ?_
      intro x' hx'
      exact ⟨interior N, isOpen_interior.mem_nhds hx',
        measure_mono_null (Set.inter_subset_inter_left F interior_subset) h0⟩
    have hdisj : Disjoint U V := by
      rw [Set.disjoint_left]
      rintro x ⟨N₁, hN₁, h₁⟩ ⟨N₂, hN₂, h₂⟩
      have hsub : N₁ ∩ N₂ ⊆ (N₁ \ F) ∪ (N₂ ∩ F) := by
        rintro y ⟨hy1, hy2⟩
        by_cases hyF : y ∈ F
        · exact Or.inr ⟨hy2, hyF⟩
        · exact Or.inl ⟨hy1, hyF⟩
      have hnull : volume (N₁ ∩ N₂) = 0 := measure_mono_null hsub (measure_union_null h₁ h₂)
      have hpos : 0 < volume (N₁ ∩ N₂) :=
        Measure.measure_pos_of_mem_nhds volume (Filter.inter_mem hN₁ hN₂)
      rw [hnull] at hpos
      exact lt_irrefl _ hpos
    have hcover : B ⊆ U ∪ V := by
      intro x hx
      obtain ⟨N, hN, h | h⟩ := hloc x hx
      · exact Or.inl ⟨N, hN, h⟩
      · exact Or.inr ⟨N, hN, h⟩
    rcases (convex_ball y₀ r).isPreconnected.subset_or_subset hUo hVo hdisj hcover with
      hBU | hBV
    · left
      apply measure_null_of_locally_null
      intro x hx
      obtain ⟨N, hN, h0⟩ := hBU hx.1
      exact ⟨(B \ F) ∩ N, inter_mem_nhdsWithin _ hN,
        measure_mono_null (show (B \ F) ∩ N ⊆ N \ F from fun y hy => ⟨hy.2, hy.1.2⟩) h0⟩
    · right
      apply measure_null_of_locally_null
      intro x hx
      obtain ⟨N, hN, h0⟩ := hBV hx.1
      exact ⟨(B ∩ F) ∩ N, inter_mem_nhdsWithin _ hN,
        measure_mono_null (show (B ∩ F) ∩ N ⊆ N ∩ F from fun y hy => ⟨hy.2, hy.1.2⟩) h0⟩
  
  set S : Set ℤ := {j | (∃ x ∈ Metric.closedBall y₀ r,
      ∀ N ∈ 𝓝 x, volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0) ∧
      ¬ (∀ N ∈ 𝓝 y₀, volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0)} with hSdef
  have hS : S.Finite := hfin.subset (fun j hj => hj.1)
  have hN : ∀ j : ℤ, ∃ N ∈ 𝓝 y₀, j ∈ S →
      (volume (N \ E j) = 0 ∨ volume (N ∩ E j) = 0) := by
    intro j
    by_cases hj : j ∈ S
    · obtain ⟨N, hN, h⟩ := s1 (E j) y₀ hj.2
      exact ⟨N, hN, fun _ => h⟩
    · exact ⟨Set.univ, Filter.univ_mem, fun h => absurd h hj⟩
  choose Nf hNmem hNtriv using hN
  have hW : (⋂ j ∈ S, Nf j) ∈ 𝓝 y₀ := (Filter.biInter_mem hS).2 (fun j _ => hNmem j)
  obtain ⟨ε, hε, hεW⟩ := Metric.mem_nhds_iff.1 hW
  
  refine ⟨min ε r, lt_min hε hr, min_le_right _ _, ?_⟩
  intro j hj
  by_cases hI : ∃ x ∈ Metric.closedBall y₀ r,
      ∀ N ∈ 𝓝 x, volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0
  · have hjS : j ∈ S := ⟨hI, hj⟩
    have hsub : Metric.ball y₀ (min ε r) ⊆ Nf j := fun y hy =>
      Set.mem_iInter₂.1 (hεW (Metric.ball_subset_ball (min_le_left _ _) hy)) j hjS
    rcases hNtriv j hjS with h | h
    · exact Or.inl (measure_mono_null (Set.diff_subset_diff_left hsub) h)
    · exact Or.inr (measure_mono_null (Set.inter_subset_inter_left (E j) hsub) h)
  · have hloc : ∀ x ∈ Metric.ball y₀ r,
        ∃ N ∈ 𝓝 x, volume (N \ E j) = 0 ∨ volume (N ∩ E j) = 0 := by
      intro x hx
      exact s1 (E j) x (fun hJ => hI ⟨x, Metric.ball_subset_closedBall hx, hJ⟩)
    have hsub : Metric.ball y₀ (min ε r) ⊆ Metric.ball y₀ r :=
      Metric.ball_subset_ball (min_le_right _ _)
    rcases s2 (E j) hloc with h | h
    · exact Or.inl (measure_mono_null (Set.diff_subset_diff_left hsub) h)
    · exact Or.inr (measure_mono_null (Set.inter_subset_inter_left (E j) hsub) h)

theorem nested_perMin_single_sheet [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (p : M) (V : Set E3) (hV : IsOpen V)
    (hVt : V ⊆ (chartAt E3 p).target) (hpV : chartAt E3 p p ∈ V) (E : ℤ → Set E3)
    (hanti : ∀ j : ℤ, E (j + 1) ⊆ E j)
    (hmin : ∀ j : ℤ, sepIsPerMin (g.coeff (chartAt E3 p).symm) (E j) V)
    (hsum : ∀ W : Set E3, IsOpen W → IsCompact (closure W) → closure W ⊆ V →
      ∑' j : ℤ, sepPerG (g.coeff (chartAt E3 p).symm) (E j) W < ⊤)
    (hJ : ∀ N ∈ 𝓝 (chartAt E3 p p), ∃ j : ℤ, volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0) :
    ∃ (a : Fin 3) (u : E3 → ℝ) (r δ : ℝ), 0 < r ∧ 0 < δ ∧ ContDiff ℝ ∞ u ∧
      u (sepPlaneProj a (chartAt E3 p p)) = chartAt E3 p p a ∧
      sepCyl a (chartAt E3 p p) r δ ⊆ V ∧
      (∀ z ∈ sepCyl a (chartAt E3 p p) r δ,
        ((∀ N ∈ 𝓝 z, ∃ j : ℤ, volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0) ↔
          z a = u (sepPlaneProj a z))) ∧
      (∀ z ∈ sepCyl a (chartAt E3 p p) r δ, z a = u (sepPlaneProj a z) →
        levelMeanCurvCoord (g.coeff (chartAt E3 p).symm)
          (fun w => w a - u (sepPlaneProj a w)) z = 0) ∧
      ∀ j : ℤ,
        (volume ((sepCyl a (chartAt E3 p p) r δ ∩ {z | z a < u (sepPlaneProj a z)}) \ E j) = 0 ∨
          volume (sepCyl a (chartAt E3 p p) r δ ∩ {z | z a < u (sepPlaneProj a z)} ∩ E j)
            = 0) ∧
        (volume ((sepCyl a (chartAt E3 p p) r δ ∩ {z | u (sepPlaneProj a z) < z a}) \ E j) = 0 ∨
          volume (sepCyl a (chartAt E3 p p) r δ ∩ {z | u (sepPlaneProj a z) < z a} ∩ E j)
            = 0) :=
by
  classical
  
  have hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 p).symm y i j) V :=
    fun i j => (g.smooth p i j).mono hVt
  have hsymm : ∀ (y : E3) (i j : Fin 3),
      g.coeff (chartAt E3 p).symm y i j = g.coeff (chartAt E3 p).symm y j i :=
    fun y i j => g.symm _ _ _
  have hpd : ∀ y ∈ V, (g.coeff (chartAt E3 p).symm y).PosDef :=
    fun y hy => coeff_chart_symm_posDef g p y (hVt hy)
  
  obtain ⟨r, c, hr, hc, hcb, hdens⟩ :=
    perMin_perimeter_density_uniform (g.coeff (chartAt E3 p).symm) V hV hG hsymm hpd
      (chartAt E3 p p) hpV
  
  have h2r : (2 : ℝ) * r ≠ 0 := (mul_pos two_pos hr).ne'
  have hT : ∑' j : ℤ, sepPerG (g.coeff (chartAt E3 p).symm) (E j)
      (Metric.ball (chartAt E3 p p) (2 * r)) ≠ ⊤ :=
    (hsum _ Metric.isOpen_ball
      (by rw [closure_ball _ h2r]; exact isCompact_closedBall _ _)
      (by rw [closure_ball _ h2r]; exact hcb)).ne
  have hcne : ENNReal.ofReal c ≠ 0 := (ENNReal.ofReal_pos.2 hc).ne'
  have hfinI : {j : ℤ | ∃ x ∈ Metric.closedBall (chartAt E3 p p) r,
      ∀ N ∈ 𝓝 x, volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0}.Finite := by
    refine (ENNReal.finite_const_le_of_tsum_ne_top hT hcne).subset ?_
    rintro j ⟨x, hx, hsx⟩
    exact hdens (E j) (hmin j) x hx hsx
  
  obtain ⟨ρ, hρ, hρr, htriv⟩ := local_triviality_off_support (chartAt E3 p p) r hr E hfinI
  
  have hI0fin : {j : ℤ | ∀ N ∈ 𝓝 (chartAt E3 p p),
      volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0}.Finite :=
    hfinI.subset (fun j hj => ⟨chartAt E3 p p, Metric.mem_closedBall_self hr.le, hj⟩)
  obtain ⟨S, hS⟩ := hI0fin.exists_finset
  obtain ⟨j₀, hj₀a, hj₀b⟩ := hJ _ (Metric.ball_mem_nhds (chartAt E3 p p) hρ)
  have hj₀ : ∀ N ∈ 𝓝 (chartAt E3 p p), volume (N \ E j₀) ≠ 0 ∧ volume (N ∩ E j₀) ≠ 0 := by
    by_contra hcon
    rcases htriv j₀ hcon with h | h
    · exact hj₀a h
    · exact hj₀b h
  
  obtain ⟨a, u, r₀, δ₀, hr₀, hδ₀, hu, hu0, hC0V, hMSE0, hside0⟩ :=
    perMin_smooth_sheet g p V hV hVt (E j₀) (hmin j₀) (chartAt E3 p p) hpV
      (fun N hN => (hj₀ N hN).1) (fun N hN => (hj₀ N hN).2)
  
  have hnest_le : ∀ m : ℤ, ∀ k : ℕ, E (m + k) ⊆ E m := by
    intro m k
    induction k with
    | zero => simp
    | succ k ih =>
      have h1 := hanti (m + k)
      have h2 : m + ((k + 1 : ℕ) : ℤ) = m + k + 1 := by push_cast; ring
      rw [h2]
      exact h1.trans ih
  have hnest : ∀ j : ℤ, E j ⊆ E j₀ ∨ E j₀ ⊆ E j := by
    intro j
    rcases le_total j₀ j with h | h
    · left
      obtain ⟨k, hk⟩ := Int.eq_ofNat_of_zero_le (sub_nonneg.2 h)
      have h3 := hnest_le j₀ k
      have h4 : j₀ + (k : ℤ) = j := by omega
      rwa [h4] at h3
    · right
      obtain ⟨k, hk⟩ := Int.eq_ofNat_of_zero_le (sub_nonneg.2 h)
      have h3 := hnest_le j k
      have h4 : j + (k : ℤ) = j₀ := by omega
      rwa [h4] at h3
  
  have halign : ∀ j : ℤ, ∃ r₁ δ₁ : ℝ, 0 < r₁ ∧ r₁ ≤ r₀ ∧ 0 < δ₁ ∧ δ₁ ≤ δ₀ ∧
      ((∀ N ∈ 𝓝 (chartAt E3 p p), volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0) →
      ((volume ((sepCyl a (chartAt E3 p p) r₁ δ₁ ∩ {z | z a < u (sepPlaneProj a z)}) \ E j) = 0 ∧
          volume (sepCyl a (chartAt E3 p p) r₁ δ₁ ∩ {z | u (sepPlaneProj a z) < z a} ∩ E j) = 0) ∨
        (volume ((sepCyl a (chartAt E3 p p) r₁ δ₁ ∩ {z | u (sepPlaneProj a z) < z a}) \ E j) = 0 ∧
          volume (sepCyl a (chartAt E3 p p) r₁ δ₁ ∩ {z | z a < u (sepPlaneProj a z)} ∩ E j) = 0))) := by
    intro j
    by_cases hj : ∀ N ∈ 𝓝 (chartAt E3 p p), volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0
    · obtain ⟨b, u', r', δ', hr', hδ', hu', hu'0, hC'V, hMSE', hside'⟩ :=
        perMin_smooth_sheet g p V hV hVt (E j) (hmin j) (chartAt E3 p p) hpV
          (fun N hN => (hj N hN).1) (fun N hN => (hj N hN).2)
      obtain ⟨r₁, δ₁, h1, h2, h3, h4, h5⟩ :=
        nested_sheets_align g p a u r₀ δ₀ hr₀ hδ₀ hu hu0 (hC0V.trans hVt) hMSE0
          b u' r' δ' hr' hδ' hu' hu'0 (hC'V.trans hVt) hMSE' (E j₀) (E j) hside0 hside'
          (hnest j)
      exact ⟨r₁, δ₁, h1, h2, h3, h4, fun _ => h5⟩
    · exact ⟨r₀, δ₀, hr₀, le_rfl, hδ₀, le_rfl, fun h => absurd h hj⟩
  choose R1 D1 hR1 hR1le hD1 hD1le hS1 using halign
  
  have hkey : ∀ T : Finset ℤ, ∃ t₁ : ℝ, 0 < t₁ ∧ ∀ j ∈ T, t₁ ≤ R1 j ∧ t₁ ≤ D1 j := by
    intro T
    refine Finset.induction_on T ?_ ?_
    · exact ⟨1, one_pos, fun j hj => absurd hj (Finset.notMem_empty j)⟩
    · intro i T _ ih
      obtain ⟨t₁, ht₁, hle⟩ := ih
      refine ⟨min t₁ (min (R1 i) (D1 i)), lt_min ht₁ (lt_min (hR1 i) (hD1 i)), ?_⟩
      intro j hj
      rcases Finset.mem_insert.1 hj with rfl | hj
      · exact ⟨(min_le_right _ _).trans (min_le_left _ _),
          (min_le_right _ _).trans (min_le_right _ _)⟩
      · exact ⟨(min_le_left _ _).trans (hle j hj).1, (min_le_left _ _).trans (hle j hj).2⟩
  obtain ⟨t₁, ht₁, ht₁le⟩ := hkey S
  set t : ℝ := min (min t₁ (min r₀ δ₀)) (ρ / 2) with ht_def
  have ht : 0 < t := lt_min (lt_min ht₁ (lt_min hr₀ hδ₀)) (half_pos hρ)
  have htt₁ : t ≤ t₁ := (min_le_left _ _).trans (min_le_left _ _)
  have htr₀ : t ≤ r₀ := (min_le_left _ _).trans ((min_le_right _ _).trans (min_le_left _ _))
  have htδ₀ : t ≤ δ₀ := (min_le_left _ _).trans ((min_le_right _ _).trans (min_le_right _ _))
  have htρ : 2 * t ≤ ρ := by
    have : t ≤ ρ / 2 := min_le_right _ _
    linarith
  
  have hcylmono : ∀ r₁ r₂ δ₁ δ₂ : ℝ, r₁ ≤ r₂ → δ₁ ≤ δ₂ →
      sepCyl a (chartAt E3 p p) r₁ δ₁ ⊆ sepCyl a (chartAt E3 p p) r₂ δ₂ :=
    fun r₁ r₂ δ₁ δ₂ h1 h2 z hz => ⟨lt_of_lt_of_le hz.1 h1, lt_of_lt_of_le hz.2 h2⟩
  have hcylball : ∀ s : ℝ,
      sepCyl a (chartAt E3 p p) s s ⊆ Metric.ball (chartAt E3 p p) (2 * s) := by
    intro s z hz
    obtain ⟨h1, h2⟩ := hz
    rw [Metric.mem_ball, dist_eq_norm]
    have hdecomp : z - chartAt E3 p p = sepPlaneProj a (z - chartAt E3 p p) +
        ((z - chartAt E3 p p) a) • e a := by
      simp [sepPlaneProj]
    have hea : ‖((z - chartAt E3 p p) a) • e a‖ = |z a - chartAt E3 p p a| := by
      simp [e, norm_smul, EuclideanSpace.norm_single, Real.norm_eq_abs]
    calc ‖z - chartAt E3 p p‖
        = ‖sepPlaneProj a (z - chartAt E3 p p) + ((z - chartAt E3 p p) a) • e a‖ :=
          congrArg norm hdecomp
      _ ≤ ‖sepPlaneProj a (z - chartAt E3 p p)‖ + ‖((z - chartAt E3 p p) a) • e a‖ :=
          norm_add_le _ _
      _ < s + s := by rw [hea]; exact add_lt_add h1 h2
      _ = 2 * s := by ring
  have hC0 : sepCyl a (chartAt E3 p p) t t ⊆ sepCyl a (chartAt E3 p p) r₀ δ₀ :=
    hcylmono _ _ _ _ htr₀ htδ₀
  have hCV : sepCyl a (chartAt E3 p p) t t ⊆ V := hC0.trans hC0V
  have hCB : sepCyl a (chartAt E3 p p) t t ⊆ Metric.ball (chartAt E3 p p) ρ :=
    (hcylball t).trans (Metric.ball_subset_ball htρ)
  
  have hsideC : ∀ j : ℤ,
      (volume ((sepCyl a (chartAt E3 p p) t t ∩ {z | z a < u (sepPlaneProj a z)}) \ E j) = 0 ∨
        volume (sepCyl a (chartAt E3 p p) t t ∩ {z | z a < u (sepPlaneProj a z)} ∩ E j)
          = 0) ∧
      (volume ((sepCyl a (chartAt E3 p p) t t ∩ {z | u (sepPlaneProj a z) < z a}) \ E j) = 0 ∨
        volume (sepCyl a (chartAt E3 p p) t t ∩ {z | u (sepPlaneProj a z) < z a} ∩ E j)
          = 0) := by
    intro j
    by_cases hj : ∀ N ∈ 𝓝 (chartAt E3 p p), volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0
    · have hjS : j ∈ S := (hS j).2 hj
      have hsub : sepCyl a (chartAt E3 p p) t t ⊆ sepCyl a (chartAt E3 p p) (R1 j) (D1 j) :=
        hcylmono _ _ _ _ (htt₁.trans (ht₁le j hjS).1) (htt₁.trans (ht₁le j hjS).2)
      rcases hS1 j hj with ⟨h1, h2⟩ | ⟨h1, h2⟩
      · exact ⟨Or.inl (measure_mono_null (by intro z hz; exact ⟨⟨hsub hz.1.1, hz.1.2⟩, hz.2⟩) h1),
          Or.inr (measure_mono_null (by intro z hz; exact ⟨⟨hsub hz.1.1, hz.1.2⟩, hz.2⟩) h2)⟩
      · exact ⟨Or.inr (measure_mono_null (by intro z hz; exact ⟨⟨hsub hz.1.1, hz.1.2⟩, hz.2⟩) h2),
          Or.inl (measure_mono_null (by intro z hz; exact ⟨⟨hsub hz.1.1, hz.1.2⟩, hz.2⟩) h1)⟩
    · rcases htriv j hj with h | h
      · exact ⟨Or.inl (measure_mono_null (by intro z hz; exact ⟨hCB hz.1.1, hz.2⟩) h),
          Or.inl (measure_mono_null (by intro z hz; exact ⟨hCB hz.1.1, hz.2⟩) h)⟩
      · exact ⟨Or.inr (measure_mono_null (by intro z hz; exact ⟨hCB hz.1.1, hz.2⟩) h),
          Or.inr (measure_mono_null (by intro z hz; exact ⟨hCB hz.1.1, hz.2⟩) h)⟩
  
  have hj0C :
      (volume ((sepCyl a (chartAt E3 p p) t t ∩ {z | z a < u (sepPlaneProj a z)}) \ E j₀) = 0 ∧
          volume (sepCyl a (chartAt E3 p p) t t ∩ {z | u (sepPlaneProj a z) < z a} ∩ E j₀)
            = 0) ∨
        (volume ((sepCyl a (chartAt E3 p p) t t ∩ {z | u (sepPlaneProj a z) < z a}) \ E j₀)
            = 0 ∧
          volume (sepCyl a (chartAt E3 p p) t t ∩ {z | z a < u (sepPlaneProj a z)} ∩ E j₀)
            = 0) := by
    rcases hside0 with ⟨h1, h2⟩ | ⟨h1, h2⟩
    · exact Or.inl ⟨measure_mono_null (by intro z hz; exact ⟨⟨hC0 hz.1.1, hz.1.2⟩, hz.2⟩) h1,
        measure_mono_null (by intro z hz; exact ⟨⟨hC0 hz.1.1, hz.1.2⟩, hz.2⟩) h2⟩
    · exact Or.inr ⟨measure_mono_null (by intro z hz; exact ⟨⟨hC0 hz.1.1, hz.1.2⟩, hz.2⟩) h1,
        measure_mono_null (by intro z hz; exact ⟨⟨hC0 hz.1.1, hz.1.2⟩, hz.2⟩) h2⟩
  
  exact ⟨a, u, t, t, ht, ht, hu, hu0, hCV,
    graph_jumpset_iff a u hu.continuous (chartAt E3 p p) t t E hsideC j₀ hj0C,
    fun z hz hz' => hMSE0 z (hC0 hz) hz', hsideC⟩

theorem intVar_two_sided_layers_le (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (V : Set E3)
    (hV : IsOpen V) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) V)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ V, (G y).PosDef)
    (u : E3 → ℝ) (hint : ∀ y ∈ V, ∃ m : ℤ, u y = m)
    (hum : ∀ t : ℝ, MeasurableSet (V ∩ {y | t ≤ u y}))
    (W : Set E3) (hW : IsOpen W) (hWc : IsCompact (closure W)) (hWV : closure W ⊆ V) (N : ℕ) :
    ∑ j ∈ Finset.range N,
        (sepPerG G (V ∩ {y | (j : ℝ) + 1 ≤ u y}) W +
          sepPerG G (V ∩ {y | u y ≤ -((j : ℝ) + 1)}) W) ≤
      dualVarG G (fun _ _ => (0 : ℝ)) u W ∅ :=
by
  classical
  have hWV' : W ⊆ V := subset_closure.trans hWV
  
  have hneg_le : ∀ f : E3 → ℝ, dualVarG G (fun _ _ => (0 : ℝ)) (fun y => -f y) W ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ := by
    intro f
    unfold dualVarG
    refine sup_le ?_ ?_
    · refine iSup_le fun h => ?_
      exact le_sup_of_le_left (le_iSup_of_le (fun hf => h hf.neg) le_rfl)
    · refine iSup₂_le fun X hX => ?_
      obtain ⟨hXs, hXc, hXW, hXn, C, hC⟩ := hX
      have hdiv : ∀ y, sepDensDiv G (fun z => -X z) y = -sepDensDiv G X y := by
        intro y
        unfold sepDensDiv partialDeriv
        rw [← Finset.sum_neg_distrib]
        refine Finset.sum_congr rfl fun i _ => ?_
        have e : (fun z => Real.sqrt (G z).det * (-X z) i) =
            -(fun z => Real.sqrt (G z).det * X z i) := by
          funext z
          simp
        rw [e, fderiv_neg]
        rfl
      refine le_sup_of_le_right (le_iSup₂_of_le (fun z => -X z)
        ⟨?_, ?_, ?_, ?_, C, ?_⟩ (le_of_eq ?_))
      · intro y hy
        exact (hXs y hy).neg
      · exact hXc.neg
      · show tsupport (-X) ⊆ W
        rw [tsupport_neg]
        exact hXW
      · intro y
        simpa using hXn y
      · intro y
        rw [hdiv, abs_neg]
        exact hC y
      · congr 1
        refine integral_congr_ae (Eventually.of_forall fun y => ?_)
        simp [hdiv]
  have hneg : ∀ f : E3 → ℝ, dualVarG G (fun _ _ => (0 : ℝ)) (fun y => -f y) W ∅ =
      dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ := by
    intro f
    refine le_antisymm (hneg_le f) ?_
    have h := hneg_le (fun y => -f y)
    simpa using h
  
  have hpos : ∀ n : ℕ, ∀ f : E3 → ℝ, (∀ y ∈ V, ∃ m : ℤ, f y = m) →
      (∀ t : ℝ, MeasurableSet (V ∩ {y | t ≤ f y})) →
      ∑ j ∈ Finset.range n, sepPerG G (V ∩ {y | (j : ℝ) + 1 ≤ f y}) W ≤
        dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (f y) 0) W ∅ := by
    intro n
    induction n with
    | zero =>
      intro f _ _
      simp
    | succ n ih =>
      intro f hf hfm
      have h1 : dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (max (f y) 0) 1) W ∅ +
          dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (max (f y) 0) 1 - 1) W ∅ ≤
            dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (f y) 0) W ∅ :=
        dualVarG_zero_min_max_split G V hV hG hsymm hpd W hW hWc hWV (fun y => max (f y) 0) 1
      have ha : dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (max (f y) 0) 1) W ∅ =
          sepPerG G (V ∩ {y | (1 : ℝ) ≤ f y}) W := by
        rw [← dualVarG_zero_indicator_eq_sepPerG G V hV hG hpd _ W (hfm 1) hWV']
        apply dualVarG_zero_congr G _ _ W hW
        intro y hy
        obtain ⟨m, hm⟩ := hf y (hWV' hy)
        by_cases h : (1 : ℝ) ≤ f y
        · rw [Set.indicator_of_mem (show y ∈ V ∩ {y | (1 : ℝ) ≤ f y} from ⟨hWV' hy, h⟩)]
          rw [max_eq_left (by linarith), min_eq_right h]
        · rw [Set.indicator_of_notMem (show y ∉ V ∩ {y | (1 : ℝ) ≤ f y} from fun h' => h h'.2)]
          have hle : f y ≤ 0 := by
            rw [hm] at h ⊢
            have h2 : m < 1 := by exact_mod_cast (not_le.mp h)
            have h3 : m ≤ 0 := by omega
            exact_mod_cast h3
          rw [max_eq_right hle, min_eq_left zero_le_one]
      have hb : (fun y => max (max (f y) 0) 1 - 1) = (fun y => max (f y - 1) 0) := by
        funext y
        rw [max_assoc, show max (0 : ℝ) 1 = 1 by norm_num, ← max_sub_sub_right, sub_self]
      have hih := ih (fun y => f y - 1)
        (by
          intro y hy
          obtain ⟨m, hm⟩ := hf y hy
          exact ⟨m - 1, by show f y - 1 = _; rw [hm]; push_cast; ring⟩)
        (by
          intro t
          have e : V ∩ {y | t ≤ f y - 1} = V ∩ {y | t + 1 ≤ f y} := by
            ext y
            simp only [Set.mem_inter_iff, Set.mem_setOf_eq]
            constructor <;> rintro ⟨h1, h2⟩ <;> exact ⟨h1, by linarith⟩
          show MeasurableSet (V ∩ {y | t ≤ f y - 1})
          rw [e]
          exact hfm (t + 1))
      rw [Finset.sum_range_succ']
      have hsets : ∀ j : ℕ, V ∩ {y | ((j + 1 : ℕ) : ℝ) + 1 ≤ f y} =
          V ∩ {y | (j : ℝ) + 1 ≤ f y - 1} := by
        intro j
        ext y
        simp only [Set.mem_inter_iff, Set.mem_setOf_eq]
        push_cast
        constructor <;> rintro ⟨h1, h2⟩ <;> exact ⟨h1, by linarith⟩
      simp only [hsets]
      have h0 : V ∩ {y | ((0 : ℕ) : ℝ) + 1 ≤ f y} = V ∩ {y | (1 : ℝ) ≤ f y} := by simp
      rw [h0]
      rw [hb, ha] at h1
      calc _ ≤ dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (f y - 1) 0) W ∅ +
              sepPerG G (V ∩ {y | (1 : ℝ) ≤ f y}) W := add_le_add hih le_rfl
        _ = _ := add_comm _ _
        _ ≤ _ := h1
  
  have hnegside : ∑ j ∈ Finset.range N, sepPerG G (V ∩ {y | u y ≤ -((j : ℝ) + 1)}) W ≤
      dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (-u y) 0) W ∅ := by
    have h := hpos N (fun y => -u y)
      (by
        intro y hy
        obtain ⟨m, hm⟩ := hint y hy
        exact ⟨-m, by show -u y = _; rw [hm]; push_cast; ring⟩)
      (by
        intro t
        show MeasurableSet (V ∩ {y | t ≤ -u y})
        have e : V ∩ {y | t ≤ -u y} = V \ (V ∩ {y | ((⌊-t⌋ : ℤ) : ℝ) + 1 ≤ u y}) := by
          ext y
          simp only [Set.mem_inter_iff, Set.mem_diff, Set.mem_setOf_eq]
          constructor
          · rintro ⟨hy, h⟩
            refine ⟨hy, fun h' => ?_⟩
            have h2 : -t < (⌊-t⌋ : ℝ) + 1 := Int.lt_floor_add_one _
            linarith [h'.2]
          · rintro ⟨hy, h⟩
            refine ⟨hy, ?_⟩
            obtain ⟨m, hm⟩ := hint y hy
            rw [hm] at h ⊢
            have h2 : ¬ (⌊-t⌋ + 1 ≤ m) := fun h' => h ⟨hy, by exact_mod_cast h'⟩
            have h3 : m ≤ ⌊-t⌋ := by omega
            have h4 : (m : ℝ) ≤ -t := Int.le_floor.mp h3
            linarith
        rw [e]
        exact hV.measurableSet.diff (hum _))
    calc _ = ∑ j ∈ Finset.range N, sepPerG G (V ∩ {y | (j : ℝ) + 1 ≤ -u y}) W := by
          refine Finset.sum_congr rfl fun j _ => ?_
          have e : V ∩ {y | u y ≤ -((j : ℝ) + 1)} = V ∩ {y | (j : ℝ) + 1 ≤ -u y} := by
            ext y
            simp only [Set.mem_inter_iff, Set.mem_setOf_eq]
            constructor <;> rintro ⟨h1, h2⟩ <;> exact ⟨h1, by linarith⟩
          rw [e]
      _ ≤ _ := h
  
  have hsplit := dualVarG_zero_min_max_split G V hV hG hsymm hpd W hW hWc hWV u 0
  have e0 : dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (u y) 0 - 0) W ∅ =
      dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (u y) 0) W ∅ := by
    simp only [sub_zero]
  have emin : dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (u y) 0) W ∅ =
      dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (-u y) 0) W ∅ := by
    have h := hneg (fun y => min (u y) 0)
    beta_reduce at h
    have e : (fun y => -min (u y) 0) = (fun y => max (-u y) 0) := by
      funext y
      rw [← max_neg_neg, neg_zero]
    rw [← h, e]
  rw [Finset.sum_add_distrib]
  calc _ ≤ dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (u y) 0) W ∅ +
          dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (-u y) 0) W ∅ :=
        add_le_add (hpos N u hint hum) hnegside
    _ = dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (u y) 0) W ∅ +
          dualVarG G (fun _ _ => (0 : ℝ)) (fun y => max (u y) 0 - 0) W ∅ := by
        rw [e0, emin, add_comm]
    _ ≤ _ := hsplit

theorem cutSplit_side_pairing_le (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (B : Set E3) (hB : IsOpen B)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) B)
    (hpd : ∀ y ∈ B, (G y).PosDef)
    (w : E3 → ℝ) (hw : ContDiffOn ℝ ∞ w B) (hdw : ∀ z ∈ B, fderiv ℝ w z ≠ 0)
    (u : E3 → ℝ) (hint : ∀ y ∈ B, ∃ m : ℤ, u y = m)
    (hum : ∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ u y}))
    (W : Set E3) (hW : IsOpen W) (hWB : W ⊆ B)
    (hlay : ∀ N : ℕ, ∑ j ∈ Finset.range N,
        (sepPerG G (B ∩ {y | (j : ℝ) + 1 ≤ {y | 0 < w y}.indicator u y}) W +
          sepPerG G (B ∩ {y | {y | 0 < w y}.indicator u y ≤ -((j : ℝ) + 1)}) W) ≤
        dualVarG G (fun _ _ => (0 : ℝ)) ({y | 0 < w y}.indicator u) W ∅)
    (X : E3 → E3) (hXs : ∀ z ∈ B, 0 < w z → ContDiffAt ℝ ∞ X z)
    (hXc : HasCompactSupport X) (hXW : tsupport X ⊆ W)
    (hXn : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1)
    (hXd : ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) :
    ENNReal.ofReal (∫ y, {y | 0 < w y}.indicator u y * sepDensDiv G X y) ≤
      dualVarG G (fun _ _ => (0 : ℝ)) ({y | 0 < w y}.indicator u) W ∅ :=
by
  classical
  obtain ⟨C, hC⟩ := hXd
  set up : E3 → ℝ := {y | 0 < w y}.indicator u with hup_def
  set T : ENNReal := dualVarG G (fun _ _ => (0 : ℝ)) up W ∅ with hT_def
  
  by_cases hLI : MeasureTheory.LocallyIntegrableOn up W
  swap
  · have hT : T = ⊤ := by
      rw [hT_def]; unfold dualVarG; rw [iSup_pos hLI, top_sup_eq]
    rw [hT]; exact le_top
  by_cases hTtop : T = ⊤
  · rw [hTtop]; exact le_top
  
  have hdK : ∀ y, y ∉ tsupport X → sepDensDiv G X y = 0 := (sepDensDiv_support_integrable G X).1
  have hd : Integrable (sepDensDiv G X) := (sepDensDiv_support_integrable G X).2 hXc C hC
  have hdB : ∀ y, y ∉ B → sepDensDiv G X y = 0 :=
    fun y hy => hdK y (fun h => hy (hWB (hXW h)))
  have hfd : Integrable (fun y => up y * sepDensDiv G X y) := by
    have hK : IsCompact (tsupport X) := hXc
    have hfi : IntegrableOn up (tsupport X) := hLI.integrableOn_compact_subset hXW hK
    have hfi' : Integrable ((tsupport X).indicator up) :=
      hfi.integrable_indicator (isClosed_tsupport X).measurableSet
    have h1 : Integrable (fun y => (tsupport X).indicator up y * sepDensDiv G X y) :=
      hfi'.mul_bdd hd.aestronglyMeasurable
        (Eventually.of_forall fun y => by rw [Real.norm_eq_abs]; exact hC y)
    refine h1.congr (Eventually.of_forall fun y => ?_)
    by_cases hy : y ∈ tsupport X
    · simp only [Set.indicator_of_mem hy]
    · simp only [Set.indicator_of_notMem hy, hdK y hy, mul_zero]
  
  have hup_pos : ∀ y, 0 < w y → up y = u y :=
    fun y h => Set.indicator_of_mem (show y ∈ {y | 0 < w y} from h) u
  have hup_npos : ∀ y, ¬ 0 < w y → up y = 0 :=
    fun y h => Set.indicator_of_notMem (show y ∉ {y | 0 < w y} from h) u
  have hupint : ∀ y ∈ B, ∃ m : ℤ, up y = m := by
    intro y hy
    by_cases h : 0 < w y
    · rw [hup_pos y h]; exact hint y hy
    · exact ⟨0, by rw [hup_npos y h]; simp⟩
  have hD : IsOpen (B ∩ {y | 0 < w y}) := hw.continuousOn.isOpen_inter_preimage hB isOpen_Ioi
  
  obtain ⟨P, hPdef⟩ : ∃ P : ℕ → Set E3, ∀ j, P j = B ∩ {y | (j : ℝ) + 1 ≤ up y} :=
    ⟨fun j => B ∩ {y | (j : ℝ) + 1 ≤ up y}, fun j => rfl⟩
  obtain ⟨Q, hQdef⟩ : ∃ Q : ℕ → Set E3, ∀ j, Q j = B ∩ {y | up y ≤ -((j : ℝ) + 1)} :=
    ⟨fun j => B ∩ {y | up y ≤ -((j : ℝ) + 1)}, fun j => rfl⟩
  have hPmem : ∀ j y, y ∈ P j ↔ y ∈ B ∧ (j : ℝ) + 1 ≤ up y := fun j y => by rw [hPdef]; rfl
  have hQmem : ∀ j y, y ∈ Q j ↔ y ∈ B ∧ up y ≤ -((j : ℝ) + 1) := fun j y => by rw [hQdef]; rfl
  have hPin : ∀ j, ∀ z ∈ P j, z ∈ B ∧ 0 < w z := by
    intro j z hz
    rw [hPmem] at hz
    refine ⟨hz.1, ?_⟩
    by_contra h
    have h2 := hz.2
    rw [hup_npos z h] at h2
    have : (0 : ℝ) ≤ j := Nat.cast_nonneg j
    linarith
  have hQin : ∀ j, ∀ z ∈ Q j, z ∈ B ∧ 0 < w z := by
    intro j z hz
    rw [hQmem] at hz
    refine ⟨hz.1, ?_⟩
    by_contra h
    have h2 := hz.2
    rw [hup_npos z h] at h2
    have : (0 : ℝ) ≤ j := Nat.cast_nonneg j
    linarith
  have hPm : ∀ j, MeasurableSet (P j) := by
    intro j
    have e1 : P j = (B ∩ {y | 0 < w y}) ∩ (B ∩ {y | (j : ℝ) + 1 ≤ u y}) := by
      ext z
      constructor
      · intro hz
        have h := hPin j z hz
        rw [hPmem] at hz
        refine ⟨⟨hz.1, h.2⟩, hz.1, ?_⟩
        have h2 := hz.2
        rw [hup_pos z h.2] at h2
        exact h2
      · rintro ⟨⟨hzB, hzw⟩, -, hzu⟩
        rw [hPmem]
        refine ⟨hzB, ?_⟩
        rw [hup_pos z hzw]; exact hzu
    rw [e1]; exact hD.measurableSet.inter (hum _)
  have hQm : ∀ j, MeasurableSet (Q j) := by
    intro j
    have e1 : Q j = (B ∩ {y | 0 < w y}) \ (B ∩ {y | -(j : ℝ) ≤ u y}) := by
      ext z
      constructor
      · intro hz
        have h := hQin j z hz
        rw [hQmem] at hz
        refine ⟨⟨hz.1, h.2⟩, ?_⟩
        rintro ⟨-, hzu⟩
        have h2 := hz.2
        rw [hup_pos z h.2] at h2
        have hzu' : -(j : ℝ) ≤ u z := hzu
        linarith
      · rintro ⟨⟨hzB, hzw⟩, hzn⟩
        rw [hQmem]
        refine ⟨hzB, ?_⟩
        rw [hup_pos z hzw]
        obtain ⟨m, hm⟩ := hint z hzB
        have hlt : ¬ (-(j : ℝ) ≤ u z) := fun h => hzn ⟨hzB, h⟩
        rw [hm] at hlt ⊢
        have h0 : (m : ℝ) < -(j : ℝ) := not_le.mp hlt
        have h1 : m < -(j : ℤ) := by exact_mod_cast h0
        have h3 : m ≤ -((j : ℤ) + 1) := by omega
        exact_mod_cast h3
    rw [e1]; exact hD.measurableSet.diff (hum _)
  
  have hlayer : ∀ (E : Set E3), MeasurableSet E → (∀ z ∈ E, z ∈ B ∧ 0 < w z) →
      ∀ Y : E3 → E3, (∀ z ∈ B, 0 < w z → ContDiffAt ℝ ∞ Y z) → HasCompactSupport Y →
      tsupport Y ⊆ W → (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y y i * Y y j ≤ 1) →
      (∀ y, |sepDensDiv G Y y| ≤ C) →
      ENNReal.ofReal (∫ y in E, sepDensDiv G Y y) ≤ sepPerG G E W := by
    intro E hE hEB Y hYs hYc hYW hYn hYd
    have h := sector_field_removal G B hB hG hpd 1 (fun _ => w) (fun _ => hw) (fun _ => hdw)
      W ∅ E hW hWB isCompact_empty (Set.empty_subset _) hE
      (fun z hz _ hex => by
        obtain ⟨i, hi⟩ := hex
        exact absurd hi (not_le.mpr (hEB z hz).2))
      (fun i z hz => absurd hz (Set.notMem_empty z))
      Y (fun z hz h => hYs z hz (h 0)) hYc hYW hYn ⟨C, fun z _ _ => hYd z⟩
    have hsub : E ⊆ {z | z ∈ B ∧ ∀ i : Fin 1, 0 < w z} :=
      fun z hz => ⟨(hEB z hz).1, fun _ => (hEB z hz).2⟩
    calc ENNReal.ofReal (∫ y in E, sepDensDiv G Y y)
        = ENNReal.ofReal (∫ y in E ∩ {z | z ∈ B ∧ ∀ i : Fin 1, 0 < w z}, sepDensDiv G Y y) := by
          rw [Set.inter_eq_left.mpr hsub]
      _ ≤ sepPerG G E W := h
  
  have hneg : ∀ y, sepDensDiv G (-X) y = -sepDensDiv G X y := by
    intro y
    unfold sepDensDiv partialDeriv
    rw [← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl fun i _ => ?_
    have hfe : (fun z => Real.sqrt (G z).det * (-X) z i) =
        -(fun z => Real.sqrt (G z).det * X z i) := by
      funext z; simp [mul_neg]
    rw [hfe, fderiv_neg, ContinuousLinearMap.neg_apply]
  
  have hlay' : ∀ N : ℕ, ∑ j ∈ Finset.range N, (sepPerG G (P j) W + sepPerG G (Q j) W) ≤ T := by
    intro N
    simp only [hPdef, hQdef]
    exact hlay N
  have hPQ : ∀ j : ℕ, sepPerG G (P j) W + sepPerG G (Q j) W ≤ T := by
    intro j
    refine le_trans ?_ (hlay' (j + 1))
    exact Finset.single_le_sum (f := fun j => sepPerG G (P j) W + sepPerG G (Q j) W)
      (fun _ _ => zero_le _) (Finset.self_mem_range_succ j)
  have hPfin : ∀ j, sepPerG G (P j) W ≠ ⊤ :=
    fun j => ne_top_of_le_ne_top hTtop (le_self_add.trans (hPQ j))
  have hQfin : ∀ j, sepPerG G (Q j) W ≠ ⊤ :=
    fun j => ne_top_of_le_ne_top hTtop (le_add_self.trans (hPQ j))
  have hPr : ∀ j, (∫ y in P j, sepDensDiv G X y) ≤ (sepPerG G (P j) W).toReal := fun j =>
    (ENNReal.ofReal_le_iff_le_toReal (hPfin j)).mp
      (hlayer (P j) (hPm j) (hPin j) X hXs hXc hXW hXn hC)
  have hQr : ∀ j, -(∫ y in Q j, sepDensDiv G X y) ≤ (sepPerG G (Q j) W).toReal := by
    intro j
    have h := hlayer (Q j) (hQm j) (hQin j) (-X) (fun z hz h => (hXs z hz h).neg) hXc.neg
      (by rw [tsupport_neg]; exact hXW) (fun y => by simpa using hXn y)
      (fun y => by rw [hneg, abs_neg]; exact hC y)
    simp only [hneg, integral_neg] at h
    exact (ENNReal.ofReal_le_iff_le_toReal (hQfin j)).mp h
  
  have hSN : ∀ N : ℕ, ∑ j ∈ Finset.range N,
      ((∫ y in P j, sepDensDiv G X y) - ∫ y in Q j, sepDensDiv G X y) ≤ T.toReal := by
    intro N
    calc ∑ j ∈ Finset.range N, ((∫ y in P j, sepDensDiv G X y) - ∫ y in Q j, sepDensDiv G X y)
        ≤ ∑ j ∈ Finset.range N, ((sepPerG G (P j) W).toReal + (sepPerG G (Q j) W).toReal) :=
          Finset.sum_le_sum fun j _ => by linarith [hPr j, hQr j]
      _ = (∑ j ∈ Finset.range N, (sepPerG G (P j) W + sepPerG G (Q j) W)).toReal := by
          rw [ENNReal.toReal_sum (fun j _ => ENNReal.add_ne_top.mpr ⟨hPfin j, hQfin j⟩)]
          exact Finset.sum_congr rfl fun j _ => (ENNReal.toReal_add (hPfin j) (hQfin j)).symm
      _ ≤ T.toReal := ENNReal.toReal_mono hTtop (hlay' N)
  
  have hFint : ∀ N : ℕ, (∫ y, ∑ j ∈ Finset.range N,
      ((P j).indicator (sepDensDiv G X) y - (Q j).indicator (sepDensDiv G X) y)) =
      ∑ j ∈ Finset.range N, ((∫ y in P j, sepDensDiv G X y) - ∫ y in Q j, sepDensDiv G X y) := by
    intro N
    rw [integral_finset_sum (Finset.range N)
      (f := fun j y => (P j).indicator (sepDensDiv G X) y - (Q j).indicator (sepDensDiv G X) y)
      (fun j _ => (hd.indicator (hPm j)).sub (hd.indicator (hQm j)))]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [integral_sub (hd.indicator (hPm j)) (hd.indicator (hQm j)), integral_indicator (hPm j),
      integral_indicator (hQm j)]
  have hclamp : ∀ (m : ℤ) (N : ℕ), (∑ j ∈ Finset.range N,
      ((if (j : ℤ) + 1 ≤ m then (1 : ℝ) else 0) - (if m ≤ -((j : ℤ) + 1) then (1 : ℝ) else 0))) =
      ((max (-(N : ℤ)) (min m (N : ℤ)) : ℤ) : ℝ) := by
    intro m N
    induction N with
    | zero =>
      have h0 : max (-((0 : ℕ) : ℤ)) (min m ((0 : ℕ) : ℤ)) = 0 := by
        simp only [max_def, min_def]; split_ifs <;> omega
      rw [h0]; simp
    | succ n ih =>
      have key : max (-((n + 1 : ℕ) : ℤ)) (min m ((n + 1 : ℕ) : ℤ)) =
          max (-(n : ℤ)) (min m (n : ℤ)) + (if (n : ℤ) + 1 ≤ m then 1 else 0) -
            (if m ≤ -((n : ℤ) + 1) then 1 else 0) := by
        simp only [max_def, min_def]; split_ifs <;> omega
      rw [Finset.sum_range_succ, ih, key]
      push_cast
      ring
  have hcZ : ∀ (m : ℤ) (N : ℕ), |max (-(N : ℤ)) (min m (N : ℤ))| ≤ |m| ∧
      (m.natAbs ≤ N → max (-(N : ℤ)) (min m (N : ℤ)) = m) := by
    intro m N
    constructor
    · rw [abs_le]
      rcases abs_cases m with ⟨h, h'⟩ | ⟨h, h'⟩ <;> rw [h] <;> simp only [max_def, min_def] <;>
        constructor <;> split_ifs <;> omega
    · intro hN
      have h1 : ((m.natAbs : ℕ) : ℤ) ≤ (N : ℤ) := by exact_mod_cast hN
      rw [Int.natCast_natAbs] at h1
      obtain ⟨h2, h3⟩ := abs_le.mp h1
      simp only [max_def, min_def]; split_ifs <;> omega
  have hFpt : ∀ y ∈ B, ∀ m : ℤ, up y = m → ∀ N : ℕ,
      (∑ j ∈ Finset.range N,
        ((P j).indicator (sepDensDiv G X) y - (Q j).indicator (sepDensDiv G X) y)) =
        ((max (-(N : ℤ)) (min m (N : ℤ)) : ℤ) : ℝ) * sepDensDiv G X y := by
    intro y hy m hm N
    rw [← hclamp m N, Finset.sum_mul]
    refine Finset.sum_congr rfl fun j _ => ?_
    have hPj : y ∈ P j ↔ (j : ℤ) + 1 ≤ m := by
      rw [hPmem, hm]
      constructor
      · intro h; exact_mod_cast h.2
      · intro h; exact ⟨hy, by exact_mod_cast h⟩
    have hQj : y ∈ Q j ↔ m ≤ -((j : ℤ) + 1) := by
      rw [hQmem, hm]
      constructor
      · intro h; exact_mod_cast h.2
      · intro h; exact ⟨hy, by exact_mod_cast h⟩
    rw [Set.indicator_apply, Set.indicator_apply]
    simp only [hPj, hQj]
    split_ifs <;> ring
  have hoff : ∀ y, y ∉ B → ∀ j, (P j).indicator (sepDensDiv G X) y = 0 ∧
      (Q j).indicator (sepDensDiv G X) y = 0 := fun y hy j =>
    ⟨Set.indicator_of_notMem (fun h => hy ((hPmem j y).mp h).1) _,
      Set.indicator_of_notMem (fun h => hy ((hQmem j y).mp h).1) _⟩
  have hbound : ∀ N : ℕ, ∀ y, ‖∑ j ∈ Finset.range N,
      ((P j).indicator (sepDensDiv G X) y - (Q j).indicator (sepDensDiv G X) y)‖ ≤
      |up y * sepDensDiv G X y| := by
    intro N y
    by_cases hy : y ∈ B
    · obtain ⟨m, hm⟩ := hupint y hy
      rw [hFpt y hy m hm N, Real.norm_eq_abs, abs_mul, abs_mul, hm]
      apply mul_le_mul_of_nonneg_right _ (abs_nonneg _)
      have := (hcZ m N).1
      exact_mod_cast this
    · have hsum : (∑ j ∈ Finset.range N,
          ((P j).indicator (sepDensDiv G X) y - (Q j).indicator (sepDensDiv G X) y)) = 0 :=
        Finset.sum_eq_zero fun j _ => by rw [(hoff y hy j).1, (hoff y hy j).2, sub_self]
      rw [hsum, norm_zero]
      exact abs_nonneg _
  have hptlim : ∀ y, Tendsto (fun N : ℕ => ∑ j ∈ Finset.range N,
      ((P j).indicator (sepDensDiv G X) y - (Q j).indicator (sepDensDiv G X) y)) atTop
      (𝓝 (up y * sepDensDiv G X y)) := by
    intro y
    by_cases hy : y ∈ B
    · obtain ⟨m, hm⟩ := hupint y hy
      apply tendsto_atTop_of_eventually_const (i₀ := m.natAbs)
      intro N hN
      rw [hFpt y hy m hm N, (hcZ m N).2 hN, hm]
    · rw [hdB y hy, mul_zero]
      apply tendsto_atTop_of_eventually_const (i₀ := 0)
      intro N _
      exact Finset.sum_eq_zero fun j _ => by rw [(hoff y hy j).1, (hoff y hy j).2, sub_self]
  have hconv := tendsto_integral_of_dominated_convergence (μ := volume)
    (F := fun (N : ℕ) (y : E3) => ∑ j ∈ Finset.range N,
      ((P j).indicator (sepDensDiv G X) y - (Q j).indicator (sepDensDiv G X) y))
    (f := fun y => up y * sepDensDiv G X y)
    (fun y => |up y * sepDensDiv G X y|)
    (fun N => (integrable_finset_sum (Finset.range N)
      (fun j _ => (hd.indicator (hPm j)).sub (hd.indicator (hQm j)))).aestronglyMeasurable)
    hfd.abs (fun N => Eventually.of_forall (hbound N)) (Eventually.of_forall hptlim)
  have hlim : Tendsto (fun N : ℕ => ∑ j ∈ Finset.range N,
      ((∫ y in P j, sepDensDiv G X y) - ∫ y in Q j, sepDensDiv G X y)) atTop
      (𝓝 (∫ y, up y * sepDensDiv G X y)) :=
    hconv.congr (fun N => hFint N)
  have hle : ∫ y, up y * sepDensDiv G X y ≤ T.toReal := le_of_tendsto' hlim hSN
  calc ENNReal.ofReal (∫ y, up y * sepDensDiv G X y) ≤ ENNReal.ofReal T.toReal :=
        ENNReal.ofReal_le_ofReal hle
    _ = T := ENNReal.ofReal_toReal hTtop

theorem cutSplit_glue_field (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (B : Set E3) (hB : IsOpen B)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) B)
    (hpd : ∀ y ∈ B, (G y).PosDef)
    (w : E3 → ℝ) (hw : ContDiffOn ℝ ∞ w B) (hdw : ∀ z ∈ B, fderiv ℝ w z ≠ 0)
    (W : Set E3) (hW : IsOpen W) (hWB : W ⊆ B) (X₁ X₂ : E3 → E3)
    (hX₁ : (∀ y, ContDiffAt ℝ ∞ X₁ y) ∧ HasCompactSupport X₁ ∧ tsupport X₁ ⊆ W ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X₁ y i * X₁ y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G X₁ y| ≤ C)
    (hX₂ : (∀ y, ContDiffAt ℝ ∞ X₂ y) ∧ HasCompactSupport X₂ ∧ tsupport X₂ ⊆ W ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X₂ y i * X₂ y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G X₂ y| ≤ C) :
    ∃ X : E3 → E3,
      ((∀ y, y ∉ B ∩ {y | w y = 0} → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
        tsupport X ⊆ W ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) ∧
      ∀ y, y ∉ B ∩ {y | w y = 0} →
        sepDensDiv G X y = (if 0 < w y then sepDensDiv G X₁ y else 0) +
          (if w y < 0 then sepDensDiv G X₂ y else 0) :=
by
  classical
  
  have wall : ∀ (y₀ : E3), w y₀ = 0 → fderiv ℝ w y₀ ≠ 0 → ∀ (h h₁ h₂ : E3 → ℝ) (L : ℝ),
      0 ≤ L → (∀ z y : E3, |h₁ z - h₁ y| ≤ L * ‖z - y‖) →
      (∀ z y : E3, |h₂ z - h₂ y| ≤ L * ‖z - y‖) →
      (∀ z, 0 < w z → h z = h₁ z) → (∀ z, w z < 0 → h z = h₂ z) →
      (∀ z, w z = 0 → h z = 0) → ∀ j : Fin 3, |partialDeriv j h y₀| ≤ L := by
    intro y₀ hw0 hdw0 h h₁ h₂ L hL hL₁ hL₂ hpos hneg hzero j
    by_cases hd : DifferentiableAt ℝ h y₀
    swap
    · simp [partialDeriv, fderiv_zero_of_not_differentiableAt hd, hL]
    have hcont := hd.continuousAt
    have hh0 : h y₀ = 0 := hzero y₀ hw0
    have hc : ∀ f : E3 → ℝ, (∀ z y : E3, |f z - f y| ≤ L * ‖z - y‖) → Continuous f := by
      intro f hf
      have : LipschitzWith ⟨L, hL⟩ f := LipschitzWith.of_dist_le_mul fun z y => by
        rw [Real.dist_eq, dist_eq_norm]; exact hf z y
      exact this.continuous
    have key : ∀ (s : Set E3) (f : E3 → ℝ), y₀ ∈ closure s → (∀ z ∈ s, h z = f z) →
        Continuous f → f y₀ = 0 := by
      intro s f hcl hfs hfc
      haveI := mem_closure_iff_nhdsWithin_neBot.1 hcl
      have t1 : Tendsto h (𝓝[s] y₀) (𝓝 0) := by
        rw [← hh0]; exact hcont.tendsto.mono_left nhdsWithin_le_nhds
      have t2 : Tendsto f (𝓝[s] y₀) (𝓝 0) :=
        t1.congr' (eventually_nhdsWithin_of_forall hfs)
      have t3 : Tendsto f (𝓝[s] y₀) (𝓝 (f y₀)) :=
        hfc.continuousAt.tendsto.mono_left nhdsWithin_le_nhds
      exact tendsto_nhds_unique t3 t2
    have hcl1 : y₀ ∈ closure {z | 0 < w z} := by
      rw [mem_closure_iff_frequently]
      by_contra hn
      rw [Filter.not_frequently] at hn
      have hmax : IsLocalMax w y₀ := Filter.Eventually.mono hn fun z hz => by
        simp only [Set.mem_setOf_eq, not_lt] at hz
        rw [hw0]; exact hz
      exact hdw0 hmax.fderiv_eq_zero
    have hcl2 : y₀ ∈ closure {z | w z < 0} := by
      rw [mem_closure_iff_frequently]
      by_contra hn
      rw [Filter.not_frequently] at hn
      have hmin : IsLocalMin w y₀ := Filter.Eventually.mono hn fun z hz => by
        simp only [Set.mem_setOf_eq, not_lt] at hz
        rw [hw0]; exact hz
      exact hdw0 hmin.fderiv_eq_zero
    have h1 : h₁ y₀ = 0 := key _ h₁ hcl1 hpos (hc h₁ hL₁)
    have h2 : h₂ y₀ = 0 := key _ h₂ hcl2 hneg (hc h₂ hL₂)
    have hlip : ∀ z, ‖h z - h y₀‖ ≤ L * ‖z - y₀‖ := by
      intro z
      rw [hh0, sub_zero, Real.norm_eq_abs]
      rcases lt_trichotomy (w z) 0 with hz | hz | hz
      · have := hL₂ z y₀
        rw [h2, sub_zero] at this
        rw [hneg z hz]; exact this
      · rw [hzero z hz, abs_zero]; exact mul_nonneg hL (norm_nonneg _)
      · have := hL₁ z y₀
        rw [h1, sub_zero] at this
        rw [hpos z hz]; exact this
    have hnorm : ‖fderiv ℝ h y₀‖ ≤ L :=
      hd.hasFDerivAt.le_of_lip' hL (Filter.Eventually.of_forall hlip)
    have hop : |partialDeriv j h y₀| ≤ ‖fderiv ℝ h y₀‖ * ‖e j‖ := by
      rw [← Real.norm_eq_abs]; exact ContinuousLinearMap.le_opNorm _ _
    have hej : ‖e j‖ = 1 := by simp [EuclideanSpace.norm_single]
    rw [hej, mul_one] at hop
    linarith
  
  have lip : ∀ Y : E3 → E3, (∀ y, ContDiffAt ℝ ∞ Y y) → HasCompactSupport Y →
      tsupport Y ⊆ B → ∃ L : ℝ, 0 ≤ L ∧ ∀ (i : Fin 3) (z y : E3),
        |Real.sqrt (G z).det * Y z i - Real.sqrt (G y).det * Y y i| ≤ L * ‖z - y‖ := by
    intro Y hYs hYc hYB
    have hρ : ContDiffOn ℝ ∞ (fun z => Real.sqrt (G z).det) B := by
      have hdet : ContDiffOn ℝ ∞ (fun z => (G z).det) B := by
        simp only [Matrix.det_fin_three]
        have a := hG
        exact (((((((a 0 0).mul (a 1 1)).mul (a 2 2)).sub
          (((a 0 0).mul (a 1 2)).mul (a 2 1))).sub
          (((a 0 1).mul (a 1 0)).mul (a 2 2))).add
          (((a 0 1).mul (a 1 2)).mul (a 2 0))).add
          (((a 0 2).mul (a 1 0)).mul (a 2 1))).sub
          (((a 0 2).mul (a 1 1)).mul (a 2 0))
      exact hdet.sqrt fun z hz => (hpd z hz).det_pos.ne'
    have one : ∀ i : Fin 3, ∃ L : ℝ, 0 ≤ L ∧ ∀ z y : E3,
        |Real.sqrt (G z).det * Y z i - Real.sqrt (G y).det * Y y i| ≤ L * ‖z - y‖ := by
      intro i
      obtain ⟨f, hf⟩ : ∃ f : E3 → ℝ, f = fun z => Real.sqrt (G z).det * Y z i := ⟨_, rfl⟩
      have hfs : ContDiff ℝ ∞ f := by
        rw [contDiff_iff_contDiffAt]
        intro y
        by_cases hy : y ∈ B
        · have h1 : ContDiffAt ℝ ∞ (fun z => Real.sqrt (G z).det) y :=
            hρ.contDiffAt (hB.mem_nhds hy)
          have h2 : ContDiffAt ℝ ∞ (fun z => Y z i) y :=
            (EuclideanSpace.proj i : E3 →L[ℝ] ℝ).contDiff.comp_contDiffAt y (hYs y)
          rw [hf]; exact h1.mul h2
        · have hy' : y ∉ tsupport Y := fun h => hy (hYB h)
          have hev : Y =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.1 hy'
          have : f =ᶠ[𝓝 y] fun _ => 0 := hev.mono fun z hz => by
            rw [hf]; simp [hz]
          exact contDiffAt_const.congr_of_eventuallyEq this
      have hfc : HasCompactSupport f := by
        refine hYc.mono' ?_
        intro z hz
        apply subset_tsupport
        intro h0
        apply hz
        rw [hf]; simp [h0]
      have hfd : Continuous (fderiv ℝ f) := hfs.continuous_fderiv (by simp)
      obtain ⟨C, hC⟩ := hfd.bounded_above_of_compact_support (hfc.fderiv (𝕜 := ℝ))
      refine ⟨max C 0, le_max_right _ _, fun z y => ?_⟩
      have hmv := Convex.norm_image_sub_le_of_norm_fderiv_le (𝕜 := ℝ) (s := Set.univ)
        (fun x _ => hfs.differentiable (by simp) x)
        (fun x _ => (hC x).trans (le_max_left C 0)) convex_univ (Set.mem_univ y)
        (Set.mem_univ z)
      rw [Real.norm_eq_abs, hf] at hmv
      exact hmv
    choose Lf hLf0 hLf using one
    refine ⟨∑ k, Lf k, Finset.sum_nonneg fun k _ => hLf0 k, fun i z y => ?_⟩
    have hle : Lf i ≤ ∑ k, Lf k :=
      Finset.single_le_sum (fun k _ => hLf0 k) (Finset.mem_univ i)
    exact (hLf i z y).trans (mul_le_mul_of_nonneg_right hle (norm_nonneg _))
  
  obtain ⟨hX₁s, hX₁c, hX₁W, hX₁n, C₁, hC₁⟩ := hX₁
  obtain ⟨hX₂s, hX₂c, hX₂W, hX₂n, C₂, hC₂⟩ := hX₂
  obtain ⟨X, hXdef⟩ : ∃ X : E3 → E3,
      X = fun z => if 0 < w z then X₁ z else if w z < 0 then X₂ z else 0 := ⟨_, rfl⟩
  have Ppos : ∀ z, 0 < w z → X z = X₁ z := fun z hz => by rw [hXdef]; simp [hz]
  have Pneg : ∀ z, w z < 0 → X z = X₂ z := fun z hz => by
    rw [hXdef]; simp [hz, not_lt.mpr hz.le]
  have Pzero : ∀ z, w z = 0 → X z = 0 := fun z hz => by rw [hXdef]; simp [hz]
  have hX₁B : tsupport X₁ ⊆ B := hX₁W.trans hWB
  have hX₂B : tsupport X₂ ⊆ B := hX₂W.trans hWB
  have hwc : ContinuousOn w B := hw.continuousOn
  
  have germ : ∀ y, y ∉ B ∩ {y | w y = 0} →
      X =ᶠ[𝓝 y] (if 0 < w y then X₁ else if w y < 0 then X₂ else 0) := by
    intro y hy
    by_cases hyB : y ∈ B
    · rcases lt_trichotomy (w y) 0 with h | h | h
      · have hO : IsOpen (B ∩ w ⁻¹' Set.Iio 0) := hwc.isOpen_inter_preimage hB isOpen_Iio
        have hmem : B ∩ w ⁻¹' Set.Iio 0 ∈ 𝓝 y := hO.mem_nhds ⟨hyB, h⟩
        rw [if_neg (not_lt.mpr h.le), if_pos h]
        exact Filter.eventually_of_mem hmem fun z hz => Pneg z hz.2
      · exact absurd ⟨hyB, h⟩ hy
      · have hO : IsOpen (B ∩ w ⁻¹' Set.Ioi 0) := hwc.isOpen_inter_preimage hB isOpen_Ioi
        have hmem : B ∩ w ⁻¹' Set.Ioi 0 ∈ 𝓝 y := hO.mem_nhds ⟨hyB, h⟩
        rw [if_pos h]
        exact Filter.eventually_of_mem hmem fun z hz => Ppos z hz.2
    · have e1 : X₁ =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.1 fun h => hyB (hX₁B h)
      have e2 : X₂ =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.1 fun h => hyB (hX₂B h)
      have e0 : X =ᶠ[𝓝 y] 0 := (e1.and e2).mono fun z hz => by
        rcases lt_trichotomy (w z) 0 with h | h | h
        · rw [Pneg z h]; exact hz.2
        · rw [Pzero z h]; rfl
        · rw [Ppos z h]; exact hz.1
      refine e0.trans ?_
      split_ifs
      · exact e1.symm
      · exact e2.symm
      · exact Filter.EventuallyEq.rfl
  have hdiv0 : ∀ y, sepDensDiv G (0 : E3 → E3) y = 0 := by
    intro y; simp [sepDensDiv, partialDeriv]
  have divEq : ∀ (Y R : E3 → E3) (y : E3), Y =ᶠ[𝓝 y] R →
      sepDensDiv G Y y = sepDensDiv G R y := by
    intro Y R y hYR
    unfold sepDensDiv partialDeriv
    refine Finset.sum_congr rfl fun i _ => ?_
    have : (fun z => Real.sqrt (G z).det * Y z i) =ᶠ[𝓝 y]
        (fun z => Real.sqrt (G z).det * R z i) := hYR.mono fun z hz => by simp only [hz]
    rw [this.fderiv_eq]
  
  have hdivoff : ∀ y, y ∉ B ∩ {y | w y = 0} →
      sepDensDiv G X y = (if 0 < w y then sepDensDiv G X₁ y else 0) +
        (if w y < 0 then sepDensDiv G X₂ y else 0) := by
    intro y hy
    rw [divEq X _ y (germ y hy)]
    rcases lt_trichotomy (w y) 0 with h | h | h
    · simp [h, not_lt.mpr h.le]
    · simp [h, hdiv0]
    · simp [h, not_lt.mpr h.le]
  
  have hK : IsCompact (tsupport X₁ ∪ tsupport X₂) := hX₁c.union hX₂c
  have hKc : IsClosed (tsupport X₁ ∪ tsupport X₂) :=
    (isClosed_tsupport _).union (isClosed_tsupport _)
  have hout : ∀ x, x ∉ tsupport X₁ ∪ tsupport X₂ → X x = 0 := by
    intro x hx
    have h1 : X₁ x = 0 := image_eq_zero_of_notMem_tsupport fun h => hx (Or.inl h)
    have h2 : X₂ x = 0 := image_eq_zero_of_notMem_tsupport fun h => hx (Or.inr h)
    rcases lt_trichotomy (w x) 0 with h | h | h
    · rw [Pneg x h, h2]
    · rw [Pzero x h]
    · rw [Ppos x h, h1]
  have hsupp : Function.support X ⊆ tsupport X₁ ∪ tsupport X₂ := fun x hx => by
    by_contra hn; exact hx (hout x hn)
  have hXc : HasCompactSupport X := HasCompactSupport.intro' hK hKc hout
  have hXW : tsupport X ⊆ W := (closure_minimal hsupp hKc).trans (Set.union_subset hX₁W hX₂W)
  have hXn : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1 := by
    intro y
    rcases lt_trichotomy (w y) 0 with h | h | h
    · rw [Pneg y h]; exact hX₂n y
    · rw [Pzero y h]; simp
    · rw [Ppos y h]; exact hX₁n y
  have hXs : ∀ y, y ∉ B ∩ {y | w y = 0} → ContDiffAt ℝ ∞ X y := by
    intro y hy
    refine ContDiffAt.congr_of_eventuallyEq ?_ (germ y hy)
    split_ifs
    · exact hX₁s y
    · exact hX₂s y
    · exact contDiff_const.contDiffAt
  
  obtain ⟨L₁, hL₁0, hL₁⟩ := lip X₁ hX₁s hX₁c hX₁B
  obtain ⟨L₂, hL₂0, hL₂⟩ := lip X₂ hX₂s hX₂c hX₂B
  refine ⟨X, ⟨hXs, hXc, hXW, hXn, |C₁| + |C₂| + 3 * max L₁ L₂, fun y => ?_⟩, hdivoff⟩
  have hLm : 0 ≤ max L₁ L₂ := le_max_of_le_left hL₁0
  have hA1 := abs_nonneg C₁
  have hA2 := abs_nonneg C₂
  by_cases hy : y ∈ B ∩ {y | w y = 0}
  · have hpd' : ∀ i : Fin 3,
        |partialDeriv i (fun z => Real.sqrt (G z).det * X z i) y| ≤ max L₁ L₂ := by
      intro i
      exact wall y hy.2 (hdw y hy.1) (fun z => Real.sqrt (G z).det * X z i)
        (fun z => Real.sqrt (G z).det * X₁ z i) (fun z => Real.sqrt (G z).det * X₂ z i)
        (max L₁ L₂) hLm
        (fun z y' => (hL₁ i z y').trans
          (mul_le_mul_of_nonneg_right (le_max_left _ _) (norm_nonneg _)))
        (fun z y' => (hL₂ i z y').trans
          (mul_le_mul_of_nonneg_right (le_max_right _ _) (norm_nonneg _)))
        (fun z hz => by simp only [Ppos z hz]) (fun z hz => by simp only [Pneg z hz])
        (fun z hz => by simp [Pzero z hz]) i
    have hs : |sepDensDiv G X y| ≤
        ∑ i : Fin 3, |partialDeriv i (fun z => Real.sqrt (G z).det * X z i) y| :=
      Finset.abs_sum_le_sum_abs _ _
    rw [Fin.sum_univ_three] at hs
    have := hpd' 0
    have := hpd' 1
    have := hpd' 2
    linarith
  · rw [hdivoff y hy]
    have b1 : |(if 0 < w y then sepDensDiv G X₁ y else 0)| ≤ |C₁| := by
      split_ifs
      · exact (hC₁ y).trans (le_abs_self _)
      · simp
    have b2 : |(if w y < 0 then sepDensDiv G X₂ y else 0)| ≤ |C₂| := by
      split_ifs
      · exact (hC₂ y).trans (le_abs_self _)
      · simp
    have := abs_add_le (if 0 < w y then sepDensDiv G X₁ y else 0)
      (if w y < 0 then sepDensDiv G X₂ y else 0)
    nlinarith

theorem dualVarG_zero_cut_split (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (B : Set E3) (hB : IsOpen B)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) B)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ B, (G y).PosDef)
    (w : E3 → ℝ) (hw : ContDiffOn ℝ ∞ w B) (hdw : ∀ z ∈ B, fderiv ℝ w z ≠ 0)
    (v : E3 → ℝ) (hint : ∀ y ∈ B, ∃ m : ℤ, v y = m)
    (hvm : ∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ v y}))
    (W : Set E3) (hW : IsOpen W) (hWc : IsCompact (closure W)) (hWB : closure W ⊆ B) :
    dualVarG G (fun _ _ => (0 : ℝ)) v W (B ∩ {y | w y = 0}) =
      dualVarG G (fun _ _ => (0 : ℝ)) ({y | 0 < w y}.indicator v) W ∅ +
        dualVarG G (fun _ _ => (0 : ℝ)) ({y | w y < 0}.indicator v) W ∅ :=
by
  classical
  have hWB' : W ⊆ B := subset_closure.trans hWB
  
  have hKc0 : volume (B ∩ {y | w y = 0}) = 0 := submersion_zero_null B hB w hw hdw
  have haeKc : ∀ᵐ y ∂volume, y ∉ B ∩ {y | w y = 0} := measure_eq_zero_iff_ae_notMem.mp hKc0
  
  have hunfold : ∀ (f : E3 → ℝ) (K : Set E3), LocallyIntegrableOn f W →
      dualVarG G (fun _ _ => (0 : ℝ)) f W K =
        ⨆ (X : E3 → E3) (_ : (∀ y, y ∉ K → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
          tsupport X ⊆ W ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C),
          ENNReal.ofReal (∫ y, f y * sepDensDiv G X y) := by
    intro f K hf
    unfold dualVarG
    rw [iSup_neg (not_not.mpr hf), bot_sup_eq]
    simp only [zero_mul, Finset.sum_const_zero, mul_zero, add_zero]
  have htop : ∀ (f : E3 → ℝ) (K : Set E3), ¬ LocallyIntegrableOn f W →
      dualVarG G (fun _ _ => (0 : ℝ)) f W K = ⊤ := by
    intro f K hf
    unfold dualVarG
    rw [iSup_pos hf, top_sup_eq]
  
  have hdiv0 : ∀ y, sepDensDiv G (0 : E3 → E3) y = 0 := by
    intro y
    simp [sepDensDiv, partialDeriv]
  
  have hint_mul : ∀ (f : E3 → ℝ) (X : E3 → E3), LocallyIntegrableOn f W → HasCompactSupport X →
      tsupport X ⊆ W → (∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) →
      Integrable (fun y => f y * sepDensDiv G X y) := by
    intro f X hf hXc hXW hXd
    obtain ⟨C, hC⟩ := hXd
    have hK : IsCompact (tsupport X) := hXc
    have hfi : IntegrableOn f (tsupport X) := hf.integrableOn_compact_subset hXW hK
    have hfi' : Integrable ((tsupport X).indicator f) :=
      hfi.integrable_indicator (isClosed_tsupport X).measurableSet
    have hd := (sepDensDiv_support_integrable G X).2 hXc C hC
    have h1 : Integrable (fun y => (tsupport X).indicator f y * sepDensDiv G X y) :=
      hfi'.mul_bdd hd.aestronglyMeasurable
        (Eventually.of_forall fun y => by rw [Real.norm_eq_abs]; exact hC y)
    refine h1.congr (Eventually.of_forall fun y => ?_)
    by_cases hy : y ∈ tsupport X
    · simp only [Set.indicator_of_mem hy]
    · simp only [Set.indicator_of_notMem hy, (sepDensDiv_support_integrable G X).1 y hy,
        mul_zero]
  
  have hDp : IsOpen (B ∩ {y | 0 < w y}) := hw.continuousOn.isOpen_inter_preimage hB isOpen_Ioi
  have hDm : IsOpen (B ∩ {y | w y < 0}) := hw.continuousOn.isOpen_inter_preimage hB isOpen_Iio
  
  have hpt : ∀ y, (0 < w y → {y | 0 < w y}.indicator v y = v y ∧
        {y | w y < 0}.indicator v y = 0) ∧
      (w y < 0 → {y | 0 < w y}.indicator v y = 0 ∧ {y | w y < 0}.indicator v y = v y) ∧
      (w y = 0 → {y | 0 < w y}.indicator v y = 0 ∧ {y | w y < 0}.indicator v y = 0) := by
    intro y
    refine ⟨fun h => ⟨Set.indicator_of_mem (show y ∈ {y | 0 < w y} from h) v,
        Set.indicator_of_notMem (show y ∉ {y | w y < 0} from fun h' => lt_asymm h h') v⟩,
      fun h => ⟨Set.indicator_of_notMem (show y ∉ {y | 0 < w y} from fun h' => lt_asymm h h') v,
        Set.indicator_of_mem (show y ∈ {y | w y < 0} from h) v⟩,
      fun h => ⟨Set.indicator_of_notMem
          (show y ∉ {y | 0 < w y} from fun h' => (show 0 < w y from h').ne' h) v,
        Set.indicator_of_notMem
          (show y ∉ {y | w y < 0} from fun h' => (show w y < 0 from h').ne h) v⟩⟩
  
  have hLIOind : ∀ S : Set E3, MeasurableSet (B ∩ S) → LocallyIntegrableOn v W →
      LocallyIntegrableOn (S.indicator v) W := by
    intro S hS hv
    rw [locallyIntegrableOn_iff hW.isLocallyClosed] at hv ⊢
    intro k hkW hk
    have h1 : IntegrableOn ((B ∩ S).indicator v) k := (hv k hkW hk).indicator hS
    refine h1.congr_fun (fun y hy => ?_) hk.isClosed.measurableSet
    have hyB : y ∈ B := hWB' (hkW hy)
    by_cases hyS : y ∈ S
    · rw [Set.indicator_of_mem (show y ∈ B ∩ S from ⟨hyB, hyS⟩), Set.indicator_of_mem hyS]
    · rw [Set.indicator_of_notMem (show y ∉ B ∩ S from fun h => hyS h.2),
        Set.indicator_of_notMem hyS]
  have hLIOsum : LocallyIntegrableOn ({y | 0 < w y}.indicator v) W →
      LocallyIntegrableOn ({y | w y < 0}.indicator v) W → LocallyIntegrableOn v W := by
    intro hp hm
    rw [locallyIntegrableOn_iff hW.isLocallyClosed] at hp hm ⊢
    intro k hkW hk
    have hs : IntegrableOn (fun y => {y | 0 < w y}.indicator v y + {y | w y < 0}.indicator v y) k :=
      (hp k hkW hk).add (hm k hkW hk)
    refine hs.congr_fun_ae ?_
    filter_upwards [ae_restrict_mem hk.isClosed.measurableSet, ae_restrict_of_ae haeKc]
      with y hyk hyK
    have hyB : y ∈ B := hWB' (hkW hyk)
    have hw0 : w y ≠ 0 := fun h => hyK ⟨hyB, h⟩
    show {y | 0 < w y}.indicator v y + {y | w y < 0}.indicator v y = v y
    rcases lt_or_gt_of_ne hw0 with h | h
    · rw [((hpt y).2.1 h).1, ((hpt y).2.1 h).2, zero_add]
    · rw [((hpt y).1 h).1, ((hpt y).1 h).2, add_zero]
  
  have hindint : ∀ S : Set E3, ∀ y ∈ B, ∃ m : ℤ, S.indicator v y = m := by
    intro S y hy
    by_cases h : y ∈ S
    · rw [Set.indicator_of_mem h]; exact hint y hy
    · exact ⟨0, by rw [Set.indicator_of_notMem h]; simp⟩
  have hindm : ∀ S : Set E3, MeasurableSet (B ∩ S) → ∀ t : ℝ,
      MeasurableSet (B ∩ {y | t ≤ S.indicator v y}) := by
    intro S hS t
    have e : B ∩ {y | t ≤ S.indicator v y} = ((B ∩ S) ∩ (B ∩ {y | t ≤ v y})) ∪
        ((B \ (B ∩ S)) ∩ {_y | t ≤ (0 : ℝ)}) := by
      ext y
      by_cases hy : y ∈ S
      · simp only [Set.mem_inter_iff, Set.mem_union, Set.mem_diff, Set.mem_setOf_eq,
          Set.indicator_of_mem hy]
        tauto
      · simp only [Set.mem_inter_iff, Set.mem_union, Set.mem_diff, Set.mem_setOf_eq,
          Set.indicator_of_notMem hy]
        tauto
    rw [e]
    exact (hS.inter (hvm t)).union ((hB.measurableSet.diff hS).inter (MeasurableSet.const _))
  
  have hside : ∀ w' : E3 → ℝ, ContDiffOn ℝ ∞ w' B → (∀ z ∈ B, fderiv ℝ w' z ≠ 0) →
      ∀ X : E3 → E3, (∀ z ∈ B, 0 < w' z → ContDiffAt ℝ ∞ X z) → HasCompactSupport X →
      tsupport X ⊆ W → (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) →
      (∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) →
      ENNReal.ofReal (∫ y, {y | 0 < w' y}.indicator v y * sepDensDiv G X y) ≤
        dualVarG G (fun _ _ => (0 : ℝ)) ({y | 0 < w' y}.indicator v) W ∅ := by
    intro w' hw' hdw' X hXs hXc hXW hXn hXd
    have hD' : MeasurableSet (B ∩ {y | 0 < w' y}) :=
      (hw'.continuousOn.isOpen_inter_preimage hB isOpen_Ioi).measurableSet
    exact cutSplit_side_pairing_le G B hB hG hpd w' hw' hdw' v hint hvm W hW hWB'
      (intVar_two_sided_layers_le G B hB hG hsymm hpd _ (hindint _) (hindm _ hD') W hW hWc hWB)
      X hXs hXc hXW hXn hXd
  have hdwn : ∀ z ∈ B, fderiv ℝ (fun y => -w y) z ≠ 0 := by
    intro z hz
    rw [show (fun y => -w y) = -w from rfl, fderiv_neg]
    exact neg_ne_zero.mpr (hdw z hz)
  
  by_cases hv : LocallyIntegrableOn v W
  swap
  · rw [htop v _ hv]
    have hor : ¬ LocallyIntegrableOn ({y | 0 < w y}.indicator v) W ∨
        ¬ LocallyIntegrableOn ({y | w y < 0}.indicator v) W := by
      by_contra h
      push_neg at h
      exact hv (hLIOsum h.1 h.2)
    rcases hor with h | h
    · rw [htop _ ∅ h, top_add]
    · rw [htop _ ∅ h, add_top]
  have hvp : LocallyIntegrableOn ({y | 0 < w y}.indicator v) W := hLIOind _ hDp.measurableSet hv
  have hvn : LocallyIntegrableOn ({y | w y < 0}.indicator v) W := hLIOind _ hDm.measurableSet hv
  apply le_antisymm
  · 
    rw [hunfold v _ hv]
    refine iSup₂_le fun X hX => ?_
    obtain ⟨hXs, hXc, hXW, hXn, hXd⟩ := hX
    have hsplit : ∫ y, v y * sepDensDiv G X y =
        (∫ y, {y | 0 < w y}.indicator v y * sepDensDiv G X y) +
          ∫ y, {y | w y < 0}.indicator v y * sepDensDiv G X y := by
      rw [← integral_add (hint_mul _ X hvp hXc hXW hXd) (hint_mul _ X hvn hXc hXW hXd)]
      refine integral_congr_ae (haeKc.mono fun y hy => ?_)
      dsimp only
      rcases lt_trichotomy (w y) 0 with h | h | h
      · rw [((hpt y).2.1 h).1, ((hpt y).2.1 h).2]; ring
      · have hyB : y ∉ B := fun hB' => hy ⟨hB', h⟩
        have hyK : y ∉ tsupport X := fun h' => hyB (hWB' (hXW h'))
        rw [(sepDensDiv_support_integrable G X).1 y hyK]; ring
      · rw [((hpt y).1 h).1, ((hpt y).1 h).2]; ring
    rw [hsplit]
    refine ENNReal.ofReal_add_le.trans (add_le_add ?_ ?_)
    · exact hside w hw hdw X (fun z _ hwz => hXs z (fun h => hwz.ne' h.2)) hXc hXW hXn hXd
    · have hn := hside (fun y => -w y) hw.neg hdwn X (fun z _ hwz => hXs z (fun h => by
        have h2 : w z = 0 := h.2
        have h3 : 0 < -w z := hwz
        linarith)) hXc hXW hXn hXd
      simp only [neg_pos] at hn
      exact hn
  · 
    rw [hunfold _ ∅ hvp, hunfold _ ∅ hvn, hunfold v _ hv]
    have h0adm : (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ (0 : E3 → E3) y) ∧
        HasCompactSupport (0 : E3 → E3) ∧ tsupport (0 : E3 → E3) ⊆ W ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (0 : E3 → E3) y i * (0 : E3 → E3) y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G (0 : E3 → E3) y| ≤ C := by
      refine ⟨fun y _ => contDiff_const.contDiffAt, HasCompactSupport.zero, ?_, fun y => ?_,
        0, fun y => ?_⟩
      · rw [tsupport_zero]; exact Set.empty_subset _
      · simp
      · rw [hdiv0 y, abs_zero]
    have htrunc : ∀ (f : E3 → ℝ) (X : E3 → E3),
        ((∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ W ∧
          (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) →
        ∃ X' : E3 → E3,
          ((∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ X' y) ∧ HasCompactSupport X' ∧
            tsupport X' ⊆ W ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X' y i * X' y j ≤ 1) ∧
            ∃ C : ℝ, ∀ y, |sepDensDiv G X' y| ≤ C) ∧
          ENNReal.ofReal (∫ y, f y * sepDensDiv G X y) =
            ENNReal.ofReal (∫ y, f y * sepDensDiv G X' y) ∧
          0 ≤ ∫ y, f y * sepDensDiv G X' y := by
      intro f X hX
      by_cases h : 0 ≤ ∫ y, f y * sepDensDiv G X y
      · exact ⟨X, hX, rfl, h⟩
      · refine ⟨0, h0adm, ?_, ?_⟩
        · rw [ENNReal.ofReal_of_nonpos (le_of_lt (not_le.mp h))]
          simp only [hdiv0, mul_zero, integral_zero, ENNReal.ofReal_zero]
        · simp only [hdiv0, mul_zero, integral_zero, le_refl]
    refine ENNReal.biSup_add_biSup_le' ⟨0, h0adm⟩ ⟨0, h0adm⟩ (fun X₁ hX₁ X₂ hX₂ => ?_)
    obtain ⟨Y₁, hY₁, e₁, p₁⟩ := htrunc _ X₁ hX₁
    obtain ⟨Y₂, hY₂, e₂, p₂⟩ := htrunc _ X₂ hX₂
    obtain ⟨X, hXadm, hXdiv⟩ := cutSplit_glue_field G B hB hG hpd w hw hdw W hW hWB' Y₁ Y₂
      ⟨fun y => hY₁.1 y (Set.notMem_empty y), hY₁.2⟩ ⟨fun y => hY₂.1 y (Set.notMem_empty y), hY₂.2⟩
    rw [e₁, e₂, ← ENNReal.ofReal_add p₁ p₂]
    refine le_iSup₂_of_le X hXadm (le_of_eq ?_)
    congr 1
    rw [← integral_add (hint_mul _ Y₁ hvp hY₁.2.1 hY₁.2.2.1 hY₁.2.2.2.2)
      (hint_mul _ Y₂ hvn hY₂.2.1 hY₂.2.2.1 hY₂.2.2.2.2)]
    refine integral_congr_ae (haeKc.mono fun y hy => ?_)
    dsimp only
    rw [hXdiv y hy]
    rcases lt_trichotomy (w y) 0 with h | h | h
    · rw [if_neg (not_lt.mpr h.le), if_pos h, ((hpt y).2.1 h).1, ((hpt y).2.1 h).2]; ring
    · have h1 : ¬ 0 < w y := by rw [h]; exact lt_irrefl 0
      have h2 : ¬ w y < 0 := by rw [h]; exact lt_irrefl 0
      rw [if_neg h1, if_neg h2, ((hpt y).2.2 h).1, ((hpt y).2.2 h).2]; ring
    · rw [if_pos h, if_neg (not_lt.mpr h.le), ((hpt y).1 h).1, ((hpt y).1 h).2]; ring

theorem dualVarG_union_le_of_null (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ)
    (U : Set E3) (hU : IsOpen U) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) U)
    (hpd : ∀ y ∈ U, (G y).PosDef) (u : E3 → ℝ) (A B Kc : Set E3) (hA : IsOpen A)
    (hB : IsOpen B) (hAU : A ⊆ U) (hBU : B ⊆ U)
    (hnull : MeasureTheory.volume (A ∩ Kc) = 0) (hom : ∀ y ∈ A, ∀ i : Fin 3, om y i = 0) :
    dualVarG G om u (A ∪ B) Kc ≤ dualVarG G om u A Kc + dualVarG G om u B Kc :=
by
  classical
  
  have s1 : ∀ (ψ h : E3 → ℝ) (y : E3), DifferentiableAt ℝ ψ y → ∀ (Mb : ℝ),
      (∀ z, |h z| ≤ Mb) → ∀ (i : Fin 3),
      |partialDeriv i (fun z => ψ z * h z) y - ψ y * partialDeriv i h y| ≤
        Mb * ‖fderiv ℝ ψ y‖ := by
    intro ψ h y hψ Mb hM i
    have hM0 : 0 ≤ Mb := le_trans (abs_nonneg _) (hM y)
    have he : ‖e i‖ = 1 := by simp [e, EuclideanSpace.norm_single]
    have hop : |fderiv ℝ ψ y (e i)| ≤ ‖fderiv ℝ ψ y‖ := by
      have := (fderiv ℝ ψ y).le_opNorm (e i)
      rw [he, mul_one, Real.norm_eq_abs] at this
      exact this
    unfold partialDeriv
    by_cases hh : DifferentiableAt ℝ h y
    · have hfm : (fun z => ψ z * h z) = ψ * h := rfl
      rw [hfm, fderiv_mul hψ hh]
      simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
      rw [show ψ y * (fderiv ℝ h y) (e i) + h y * (fderiv ℝ ψ y) (e i) -
          ψ y * (fderiv ℝ h y) (e i) = h y * (fderiv ℝ ψ y) (e i) by ring, abs_mul]
      exact mul_le_mul (hM y) hop (abs_nonneg _) hM0
    · rw [fderiv_zero_of_not_differentiableAt hh]
      simp only [ContinuousLinearMap.zero_apply, mul_zero, sub_zero]
      by_cases hψy : ψ y ≠ 0
      · have hnd : ¬ DifferentiableAt ℝ (fun z => ψ z * h z) y := by
          intro hd
          apply hh
          have h1 : DifferentiableAt ℝ (fun z => (ψ z * h z) * (ψ z)⁻¹) y :=
            hd.mul (hψ.inv hψy)
          refine h1.congr_of_eventuallyEq ?_
          filter_upwards [hψ.continuousAt.eventually_ne hψy] with z hz
          field_simp
        rw [fderiv_zero_of_not_differentiableAt hnd]
        simp only [ContinuousLinearMap.zero_apply, abs_zero]
        positivity
      · push_neg at hψy
        by_cases hd : DifferentiableAt ℝ (fun z => ψ z * h z) y
        · have hℓ : HasDerivAt (fun t : ℝ => y + t • e i) (e i) 0 := by
            simpa using ((hasDerivAt_id (0:ℝ)).smul_const (e i)).const_add y
          have hℓ0 : y = y + (0 : ℝ) • e i := by simp
          have h1 : HasDerivAt (fun t : ℝ => ψ (y + t • e i) * h (y + t • e i))
              (fderiv ℝ (fun z => ψ z * h z) y (e i)) 0 :=
            hd.hasFDerivAt.comp_hasDerivAt_of_eq 0 hℓ hℓ0
          have h2 : HasDerivAt (fun t : ℝ => ψ (y + t • e i)) (fderiv ℝ ψ y (e i)) 0 :=
            hψ.hasFDerivAt.comp_hasDerivAt_of_eq 0 hℓ hℓ0
          have t1 := h1.tendsto_slope_zero
          have t2 := h2.tendsto_slope_zero
          simp only [zero_add, zero_smul, add_zero, hψy, zero_mul, sub_zero, smul_eq_mul] at t1 t2
          have t1' := t1.abs
          have t2' := (t2.abs).const_mul Mb
          have key : |fderiv ℝ (fun z => ψ z * h z) y (e i)| ≤
              Mb * |fderiv ℝ ψ y (e i)| := by
            refine le_of_tendsto_of_tendsto' t1' t2' fun t => ?_
            have hb := hM (y + t • e i)
            rw [abs_mul, abs_mul, abs_mul]
            have h3 : 0 ≤ |t⁻¹| * |ψ (y + t • e i)| := by positivity
            nlinarith
          exact key.trans (mul_le_mul_of_nonneg_left hop hM0)
        · rw [fderiv_zero_of_not_differentiableAt hd]
          simp only [ContinuousLinearMap.zero_apply, abs_zero]
          positivity
  
  have s2 : ∀ (T : Set E3),
      (∀ i j : Fin 3, ContinuousOn (fun y => G y i j) T) →
      (∀ y ∈ T, ∀ v : E3, v ≠ 0 → 0 < ∑ i : Fin 3, ∑ j : Fin 3, G y i j * v i * v j) →
      ∀ (X : E3 → E3), HasCompactSupport X → tsupport X ⊆ T →
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) →
      ∃ Mb : ℝ, ∀ (z : E3) (i : Fin 3), |Real.sqrt (G z).det * X z i| ≤ Mb := by
    intro T hG hpos X hXc hXT hXn
    have hK0c : IsCompact (tsupport X) := hXc.isCompact
    rcases (tsupport X).eq_empty_or_nonempty with hE | hNE
    · refine ⟨0, fun z i => ?_⟩
      have hz : z ∉ tsupport X := by rw [hE]; exact Set.notMem_empty z
      have h0 : X z i = 0 := by simp [image_eq_zero_of_notMem_tsupport hz]
      rw [h0, mul_zero, abs_zero]
    · have hGK : ∀ i j : Fin 3, ContinuousOn (fun y => G y i j) (tsupport X) :=
        fun i j => (hG i j).mono hXT
      have hdet : ContinuousOn (fun z => Real.sqrt (G z).det) (tsupport X) := by
        have heq : (fun z => (G z).det) = fun z =>
            G z 0 0 * G z 1 1 * G z 2 2 - G z 0 0 * G z 1 2 * G z 2 1
              - G z 0 1 * G z 1 0 * G z 2 2 + G z 0 1 * G z 1 2 * G z 2 0
              + G z 0 2 * G z 1 0 * G z 2 1 - G z 0 2 * G z 1 1 * G z 2 0 := by
          funext z; exact Matrix.det_fin_three _
        have h1 : ContinuousOn (fun z => (G z).det) (tsupport X) := by
          rw [heq]
          have h := hGK
          exact (((((((h 0 0).mul (h 1 1)).mul (h 2 2)).sub
            (((h 0 0).mul (h 1 2)).mul (h 2 1))).sub
            (((h 0 1).mul (h 1 0)).mul (h 2 2))).add (((h 0 1).mul (h 1 2)).mul (h 2 0))).add
            (((h 0 2).mul (h 1 0)).mul (h 2 1))).sub (((h 0 2).mul (h 1 1)).mul (h 2 0))
        exact Real.continuous_sqrt.comp_continuousOn h1
      obtain ⟨S, hS⟩ := hK0c.exists_bound_of_continuousOn hdet
      have hcoord : ∀ i : Fin 3, Continuous fun v : E3 => v i := fun i => by fun_prop
      have hQc : ContinuousOn
          (fun p : E3 × E3 => ∑ i : Fin 3, ∑ j : Fin 3, G p.1 i j * p.2 i * p.2 j)
          (tsupport X ×ˢ sphere (0 : E3) 1) := by
        refine continuousOn_finset_sum _ fun i _ => continuousOn_finset_sum _ fun j _ => ?_
        refine (((hGK i j).comp continuousOn_fst (fun p hp => hp.1)).mul ?_).mul ?_
        · exact ((hcoord i).comp continuous_snd).continuousOn
        · exact ((hcoord j).comp continuous_snd).continuousOn
      have hPc : IsCompact (tsupport X ×ˢ sphere (0 : E3) 1) :=
        hK0c.prod (isCompact_sphere 0 1)
      have hPne : (tsupport X ×ˢ sphere (0 : E3) 1).Nonempty :=
        hNE.prod (NormedSpace.sphere_nonempty.2 zero_le_one)
      obtain ⟨⟨z₀, v₀⟩, hp₀, hmin⟩ := hPc.exists_isMinOn hPne hQc
      have hv₀ : v₀ ≠ 0 := by
        intro h
        have h1 := hp₀.2
        rw [h] at h1
        simp at h1
      have hlam0 : 0 < ∑ i : Fin 3, ∑ j : Fin 3, G z₀ i j * v₀ i * v₀ j :=
        hpos z₀ (hXT hp₀.1) v₀ hv₀
      obtain ⟨lam, hlamdef⟩ : ∃ l : ℝ, l = ∑ i : Fin 3, ∑ j : Fin 3, G z₀ i j * v₀ i * v₀ j :=
        ⟨_, rfl⟩
      rw [← hlamdef] at hlam0
      have hXb : ∀ z i, |X z i| ≤ 1 + 1 / lam := by
        intro z i
        have hl1 : 0 < 1 / lam := one_div_pos.2 hlam0
        by_cases hz : X z = 0
        · have h0 : X z i = 0 := by simp [hz]
          rw [h0, abs_zero]; linarith
        · have hzK : z ∈ tsupport X := subset_tsupport X (Function.mem_support.2 hz)
          have hwn : 0 < ‖X z‖ := norm_pos_iff.2 hz
          have hvs : ‖X z‖⁻¹ • X z ∈ sphere (0 : E3) 1 := by
            rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm,
              inv_mul_cancel₀ hwn.ne']
          have hQw : ∑ a : Fin 3, ∑ b : Fin 3, G z a b * X z a * X z b =
              ‖X z‖ ^ 2 * ∑ a : Fin 3, ∑ b : Fin 3,
                G z a b * (‖X z‖⁻¹ • X z) a * (‖X z‖⁻¹ • X z) b := by
            simp only [PiLp.smul_apply, smul_eq_mul, Finset.mul_sum]
            refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
            field_simp
          have hle := isMinOn_iff.mp hmin (z, ‖X z‖⁻¹ • X z) ⟨hzK, hvs⟩
          simp only at hle
          rw [← hlamdef] at hle
          have hQ1 := hXn z
          have hsq : ‖X z‖ ^ 2 ≤ 1 / lam := by
            rw [le_div_iff₀ hlam0]
            nlinarith [sq_nonneg ‖X z‖]
          have hi : |X z i| ≤ ‖X z‖ := by
            have := PiLp.norm_apply_le (X z) i
            rwa [Real.norm_eq_abs] at this
          nlinarith [sq_nonneg (‖X z‖ - 1)]
      refine ⟨|S| * (1 + 1 / lam), fun z i => ?_⟩
      have hl1 : 0 < 1 / lam := one_div_pos.2 hlam0
      by_cases hz : z ∈ tsupport X
      · rw [abs_mul]
        have h1 : |Real.sqrt (G z).det| ≤ |S| := by
          have := hS z hz
          rw [Real.norm_eq_abs] at this
          exact this.trans (le_abs_self S)
        exact mul_le_mul h1 (hXb z i) (abs_nonneg _) (abs_nonneg _)
      · have h0 : X z i = 0 := by simp [image_eq_zero_of_notMem_tsupport hz]
        rw [h0, mul_zero, abs_zero]
        exact mul_nonneg (abs_nonneg _) (by linarith)
  
  have s3 : ∀ (T : Set E3), IsOpen T →
      ContDiffOn ℝ ∞ (fun z => Real.sqrt (G z).det) T →
      ∀ (X : E3 → E3), (∀ y, y ∉ Kc → ContDiffAt ℝ ∞ X y) →
      tsupport X ⊆ T → ∀ (ψ₁ ψ₂ : E3 → ℝ), ContDiff ℝ ∞ ψ₁ → ContDiff ℝ ∞ ψ₂ →
      (∀ y ∈ tsupport X, ψ₁ y + ψ₂ y = 1) → ∀ (y : E3), y ∉ Kc ∩ tsupport ψ₁ →
      sepDensDiv G X y =
        sepDensDiv G (fun z => ψ₁ z • X z) y + sepDensDiv G (fun z => ψ₂ z • X z) y := by
    intro T hT hsq X hXs hXT ψ₁ ψ₂ hψ₁ hψ₂ hsum y hy
    unfold sepDensDiv partialDeriv
    rw [← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun i _ => ?_
    by_cases hyX : y ∈ tsupport X
    · by_cases hyK : y ∈ Kc
      · have hy1 : y ∉ tsupport ψ₁ := fun h => hy ⟨hyK, h⟩
        have hψ0 : ψ₁ =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy1
        have e1 : (fun z => Real.sqrt (G z).det * (ψ₁ z • X z) i) =ᶠ[𝓝 y]
            fun _ => (0 : ℝ) :=
          hψ0.mono fun z hz => by simp [hz]
        have e2 : (fun z => Real.sqrt (G z).det * (ψ₂ z • X z) i) =ᶠ[𝓝 y]
            fun z => Real.sqrt (G z).det * X z i := by
          refine hψ0.mono fun z hz => ?_
          by_cases hzX : z ∈ tsupport X
          · have h1 := hsum z hzX
            have h2 : ψ₁ z = 0 := hz
            have h3 : ψ₂ z = 1 := by linarith
            simp [h3]
          · simp [image_eq_zero_of_notMem_tsupport hzX]
        rw [e1.fderiv_eq, e2.fderiv_eq]
        simp
      · have hyT : y ∈ T := hXT hyX
        have hsqy : DifferentiableAt ℝ (fun z => Real.sqrt (G z).det) y :=
          (hsq.contDiffAt (hT.mem_nhds hyT)).differentiableAt (by simp)
        have hXi : DifferentiableAt ℝ (fun z => X z i) y :=
          (((contDiffAt_piLp _).1 (hXs y hyK)) i).differentiableAt (by simp)
        have f1 : (fun z => Real.sqrt (G z).det * (ψ₁ z • X z) i) =
            fun z => ψ₁ z * (Real.sqrt (G z).det * X z i) := by
          funext z; simp only [PiLp.smul_apply, smul_eq_mul]; ring
        have f2 : (fun z => Real.sqrt (G z).det * (ψ₂ z • X z) i) =
            fun z => ψ₂ z * (Real.sqrt (G z).det * X z i) := by
          funext z; simp only [PiLp.smul_apply, smul_eq_mul]; ring
        have d1 : DifferentiableAt ℝ (fun z => ψ₁ z * (Real.sqrt (G z).det * X z i)) y :=
          (hψ₁.differentiable (by simp) y).mul (hsqy.mul hXi)
        have d2 : DifferentiableAt ℝ (fun z => ψ₂ z * (Real.sqrt (G z).det * X z i)) y :=
          (hψ₂.differentiable (by simp) y).mul (hsqy.mul hXi)
        have hf : (fun z => Real.sqrt (G z).det * X z i) =
            (fun z => ψ₁ z * (Real.sqrt (G z).det * X z i)) +
              (fun z => ψ₂ z * (Real.sqrt (G z).det * X z i)) := by
          funext z
          simp only [Pi.add_apply]
          by_cases hzX : z ∈ tsupport X
          · have h1 := hsum z hzX
            have : ψ₁ z * (Real.sqrt (G z).det * X z i) +
                ψ₂ z * (Real.sqrt (G z).det * X z i)
                = (ψ₁ z + ψ₂ z) * (Real.sqrt (G z).det * X z i) := by ring
            rw [this, h1, one_mul]
          · simp [image_eq_zero_of_notMem_tsupport hzX]
        rw [f1, f2, hf, fderiv_add d1 d2, ContinuousLinearMap.add_apply]
    · have hX0 : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hyX
      have e0 : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) :=
        hX0.mono fun z hz => by simp [hz]
      have e1 : (fun z => Real.sqrt (G z).det * (ψ₁ z • X z) i) =ᶠ[𝓝 y]
          fun _ => (0 : ℝ) :=
        hX0.mono fun z hz => by simp [hz]
      have e2 : (fun z => Real.sqrt (G z).det * (ψ₂ z • X z) i) =ᶠ[𝓝 y]
          fun _ => (0 : ℝ) :=
        hX0.mono fun z hz => by simp [hz]
      rw [e0.fderiv_eq, e1.fderiv_eq, e2.fderiv_eq]
      simp
  
  have hdet : ∀ y ∈ U, 0 < (G y).det := fun y hy => (hpd y hy).det_pos
  have hdetC : ContDiffOn ℝ ∞ (fun z => (G z).det) U := by
    have heq : (fun z => (G z).det) = fun z =>
        G z 0 0 * G z 1 1 * G z 2 2 - G z 0 0 * G z 1 2 * G z 2 1
          - G z 0 1 * G z 1 0 * G z 2 2 + G z 0 1 * G z 1 2 * G z 2 0
          + G z 0 2 * G z 1 0 * G z 2 1 - G z 0 2 * G z 1 1 * G z 2 0 := by
      funext z; exact Matrix.det_fin_three _
    rw [heq]
    have h := hG
    exact (((((((h 0 0).mul (h 1 1)).mul (h 2 2)).sub (((h 0 0).mul (h 1 2)).mul (h 2 1))).sub
      (((h 0 1).mul (h 1 0)).mul (h 2 2))).add (((h 0 1).mul (h 1 2)).mul (h 2 0))).add
      (((h 0 2).mul (h 1 0)).mul (h 2 1))).sub (((h 0 2).mul (h 1 1)).mul (h 2 0))
  have hsq : ContDiffOn ℝ ∞ (fun z => Real.sqrt (G z).det) U :=
    hdetC.sqrt (fun x hx => (hdet x hx).ne')
  have hQpos : ∀ y ∈ U, ∀ v : E3, v ≠ 0 →
      0 < ∑ i : Fin 3, ∑ j : Fin 3, G y i j * v i * v j := by
    intro y hy v hv
    have hx : (fun i => v i : Fin 3 → ℝ) ≠ 0 := by
      intro h
      apply hv
      ext i
      exact congrFun h i
    have h := (hpd y hy).dotProduct_mulVec_pos hx
    have key : star (fun i => v i : Fin 3 → ℝ) ⬝ᵥ (G y).mulVec (fun i => v i) =
        ∑ i : Fin 3, ∑ j : Fin 3, G y i j * v i * v j := by
      simp only [dotProduct, Matrix.mulVec, Pi.star_apply, star_trivial, Fin.sum_univ_three]
      ring
    rw [key] at h
    exact h
  have hZ : ∀ (Y : E3 → E3) (y : E3), y ∉ tsupport Y → sepDensDiv G Y y = 0 := by
    intro Y y hy
    have hY0 : Y =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    show ∑ i : Fin 3, fderiv ℝ (fun z => Real.sqrt (G z).det * Y z i) y (e i) = 0
    refine Finset.sum_eq_zero fun i _ => ?_
    have h0 : (fun z => Real.sqrt (G z).det * Y z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hY0] with z hz
      simp [hz]
    rw [h0.fderiv_eq]
    simp
  have hmem : ∀ (W : Set E3) (Y : E3 → E3), ((∀ y, y ∉ Kc → ContDiffAt ℝ ∞ Y y) ∧
      HasCompactSupport Y ∧ tsupport Y ⊆ W ∧
      (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y y i * Y y j ≤ 1) ∧
      ∃ C : ℝ, ∀ y, |sepDensDiv G Y y| ≤ C) →
      ENNReal.ofReal (∫ y, (u y * sepDensDiv G Y y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * Y y i)) ≤ dualVarG G om u W Kc := by
    intro W Y hY
    unfold dualVarG
    exact le_sup_of_le_right (le_iSup₂_of_le Y hY le_rfl)
  have key3 : ∀ (C D : ℝ) (a b : Fin 3 → ℝ) (c : ℝ), 0 ≤ c → c ≤ 1 → |∑ i, b i| ≤ C →
      (∀ i, |a i - c * b i| ≤ D) → |∑ i, a i| ≤ C + 3 * D := by
    intro C D a b c hc0 hc1 hb ha
    rw [Fin.sum_univ_three] at hb ⊢
    have hcb : |c * (b 0 + b 1 + b 2)| ≤ C := by
      rw [abs_mul, abs_of_nonneg hc0]
      nlinarith [abs_nonneg (b 0 + b 1 + b 2)]
    have hexp : c * (b 0 + b 1 + b 2) = c * b 0 + c * b 1 + c * b 2 := by ring
    rw [hexp] at hcb
    have h0 := ha 0
    have h1 := ha 1
    have h2 := ha 2
    rw [abs_le] at h0 h1 h2 hcb ⊢
    constructor <;> linarith
  
  have hLI : LocallyIntegrableOn u A → LocallyIntegrableOn u B →
      LocallyIntegrableOn u (A ∪ B) := by
    intro h1 h2 x hx
    rw [IsOpen.nhdsWithin_eq (hA.union hB) hx]
    rcases hx with hx | hx
    · have h := h1 x hx
      rwa [IsOpen.nhdsWithin_eq hA hx] at h
    · have h := h2 x hx
      rwa [IsOpen.nhdsWithin_eq hB hx] at h
  by_cases hloc : LocallyIntegrableOn u (A ∪ B)
  swap
  · have hor : ¬ LocallyIntegrableOn u A ∨ ¬ LocallyIntegrableOn u B := by
      by_contra h
      push_neg at h
      exact hloc (hLI h.1 h.2)
    rcases hor with h | h
    · have htop : dualVarG G om u A Kc = ⊤ := by
        unfold dualVarG
        rw [iSup_pos h, top_sup_eq]
      rw [htop, top_add]
      exact le_top
    · have htop : dualVarG G om u B Kc = ⊤ := by
        unfold dualVarG
        rw [iSup_pos h, top_sup_eq]
      rw [htop, add_top]
      exact le_top
  rw [dualVarG]
  refine sup_le (iSup_le fun h => absurd hloc h) (iSup₂_le fun X hX => ?_)
  obtain ⟨hXs, hXc, hXT, hXq, C, hC⟩ := hX
  
  obtain ⟨ψ₁, ψ₂, hψ₁s, hψ₂s, hψ₁0, hψ₂0, hsum1, hsumT, hψ₁A, hψ₂B⟩ :
      ∃ ψ₁ ψ₂ : E3 → ℝ, ContDiff ℝ ∞ ψ₁ ∧ ContDiff ℝ ∞ ψ₂ ∧ (∀ x, 0 ≤ ψ₁ x) ∧
        (∀ x, 0 ≤ ψ₂ x) ∧ (∀ x, ψ₁ x + ψ₂ x ≤ 1) ∧ (∀ x ∈ tsupport X, ψ₁ x + ψ₂ x = 1) ∧
        tsupport ψ₁ ⊆ A ∧ tsupport ψ₂ ⊆ B := by
    let V : Bool → Set E3 := fun b => cond b A B
    have hVo : ∀ b, IsOpen (V b) := by
      intro b; cases b
      · exact hB
      · exact hA
    have hcov : tsupport X ⊆ ⋃ b, V b := by
      intro x hx
      rcases hXT hx with h | h
      · exact Set.mem_iUnion.2 ⟨true, h⟩
      · exact Set.mem_iUnion.2 ⟨false, h⟩
    obtain ⟨f, hf⟩ :=
      SmoothPartitionOfUnity.exists_isSubordinate 𝓘(ℝ, E3) hXc.isClosed V hVo hcov
    refine ⟨f true, f false, contMDiff_iff_contDiff.mp (f true).contMDiff,
      contMDiff_iff_contDiff.mp (f false).contMDiff, f.nonneg true, f.nonneg false, ?_, ?_,
      hf true, hf false⟩
    · intro x
      have h := f.sum_le_one x
      rw [finsum_eq_sum_of_fintype, Fintype.sum_bool] at h
      exact h
    · intro x hx
      have h := f.sum_eq_one hx
      rw [finsum_eq_sum_of_fintype, Fintype.sum_bool] at h
      exact h
  have hψ₁1 : ∀ x, ψ₁ x ≤ 1 := fun x => by linarith [hsum1 x, hψ₂0 x]
  have hψ₂1 : ∀ x, ψ₂ x ≤ 1 := fun x => by linarith [hsum1 x, hψ₁0 x]
  have hXU : tsupport X ⊆ U := hXT.trans (Set.union_subset hAU hBU)
  obtain ⟨Mb, hM⟩ := s2 U (fun i j => (hG i j).continuousOn) hQpos X hXc hXU hXq
  have hM0 : 0 ≤ Mb := le_trans (abs_nonneg _) (hM 0 0)
  have hC0 : 0 ≤ C := le_trans (abs_nonneg _) (hC 0)
  
  have adm : ∀ (ψ : E3 → ℝ) (W : Set E3), ContDiff ℝ ∞ ψ → (∀ x, 0 ≤ ψ x) →
      (∀ x, ψ x ≤ 1) → tsupport ψ ⊆ W →
      ((∀ y, y ∉ Kc → ContDiffAt ℝ ∞ (fun z => ψ z • X z) y) ∧
        HasCompactSupport (fun z => ψ z • X z) ∧
        tsupport (fun z => ψ z • X z) ⊆ W ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (ψ y • X y) i * (ψ y • X y) j ≤ 1) ∧
        ∃ C' : ℝ, ∀ y, |sepDensDiv G (fun z => ψ z • X z) y| ≤ C') := by
    intro ψ W hψ hψ0 hψ1 hψW
    have hs2 : HasCompactSupport (fun y => ψ y • X y) := by
      have := hXc.smul_left (f := ψ)
      exact this
    refine ⟨fun y hy => hψ.contDiffAt.smul (hXs y hy), hs2,
      (tsupport_smul_subset_left ψ X).trans hψW, ?_, ?_⟩
    · intro y
      have heq : ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (ψ y • X y) i * (ψ y • X y) j =
          ψ y ^ 2 * ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j := by
        simp only [PiLp.smul_apply, smul_eq_mul, Finset.mul_sum]
        refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
        ring
      rw [heq]
      have h1 := hXq y
      have h2 := hψ0 y
      have h3 := hψ1 y
      have h4 : ψ y ^ 2 ≤ 1 := by nlinarith
      nlinarith [mul_nonneg (sq_nonneg (ψ y)) (sub_nonneg.2 h1)]
    · obtain ⟨D, hD⟩ := hXc.isCompact.exists_bound_of_continuousOn
        (hψ.continuous_fderiv (by simp)).continuousOn
      refine ⟨C + 3 * (Mb * |D|), fun y => ?_⟩
      by_cases hy : y ∈ tsupport X
      · have hDy : ‖fderiv ℝ ψ y‖ ≤ |D| := (hD y hy).trans (le_abs_self D)
        have hfun : ∀ i : Fin 3, (fun z => Real.sqrt (G z).det * (ψ z • X z) i) =
            fun z => ψ z * (Real.sqrt (G z).det * X z i) := by
          intro i; funext z; simp only [PiLp.smul_apply, smul_eq_mul]; ring
        have hr : ∀ i : Fin 3,
            |partialDeriv i (fun z => Real.sqrt (G z).det * (ψ z • X z) i) y -
              ψ y * partialDeriv i (fun z => Real.sqrt (G z).det * X z i) y| ≤
                Mb * |D| := by
          intro i
          rw [hfun i]
          exact (s1 ψ _ y (hψ.differentiable (by simp) y) Mb (fun z => hM z i) i).trans
            (mul_le_mul_of_nonneg_left hDy hM0)
        exact key3 C (Mb * |D|)
          (fun i => partialDeriv i (fun z => Real.sqrt (G z).det * (ψ z • X z) i) y)
          (fun i => partialDeriv i (fun z => Real.sqrt (G z).det * X z i) y)
          (ψ y) (hψ0 y) (hψ1 y) (hC y) hr
      · rw [hZ _ y (fun h => hy (tsupport_smul_subset_right ψ X h)), abs_zero]
        have h1 : 0 ≤ Mb * |D| := mul_nonneg hM0 (abs_nonneg D)
        linarith
  have adm₁ := adm ψ₁ A hψ₁s hψ₁0 hψ₁1 hψ₁A
  have adm₂ := adm ψ₂ B hψ₂s hψ₂0 hψ₂1 hψ₂B
  obtain ⟨C₁, hC₁⟩ := adm₁.2.2.2.2
  
  have htw : ∀ y, Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i =
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₁ y • X y) i +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₂ y • X y) i := by
    intro y
    simp only [PiLp.smul_apply, smul_eq_mul, Fin.sum_univ_three]
    by_cases hy : y ∈ tsupport X
    · have h' : ψ₂ y = 1 - ψ₁ y := by linarith [hsumT y hy]
      rw [h']; ring
    · have h0 : X y = 0 := image_eq_zero_of_notMem_tsupport hy
      simp [h0]
  have hae : ∀ᵐ y, (u y * sepDensDiv G X y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) =
      (u y * sepDensDiv G (fun z => ψ₁ z • X z) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₁ y • X y) i) +
      (u y * sepDensDiv G (fun z => ψ₂ z • X z) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₂ y • X y) i) := by
    refine ae_iff.2 (measure_mono_null ?_ hnull)
    intro y hy
    simp only [Set.mem_setOf_eq] at hy
    by_contra hy'
    apply hy
    have hy'' : y ∉ Kc ∩ tsupport ψ₁ := fun h => hy' ⟨hψ₁A h.2, h.1⟩
    rw [s3 U hU hsq X hXs hXU ψ₁ ψ₂ hψ₁s hψ₂s hsumT y hy'', htw y]
    ring
  
  have htw1 : ∀ y, Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₁ y • X y) i = 0 := by
    intro y
    by_cases hyA : y ∈ A
    · simp only [hom y hyA, zero_mul, Finset.sum_const_zero, mul_zero]
    · have hy1 : ψ₁ y = 0 := by
        by_contra h
        exact hyA (hψ₁A (subset_tsupport ψ₁ (Function.mem_support.2 h)))
      simp [hy1]
  have hY1T : tsupport (fun z => ψ₁ z • X z) ⊆ A := adm₁.2.2.1
  have hK1 : IsCompact (tsupport (fun z => ψ₁ z • X z)) := adm₁.2.1
  have hu1 : IntegrableOn u (tsupport (fun z => ψ₁ z • X z)) :=
    hloc.integrableOn_compact_subset (hY1T.trans Set.subset_union_left) hK1
  have hd1m : Measurable (sepDensDiv G (fun z => ψ₁ z • X z)) := by
    have : sepDensDiv G (fun z => ψ₁ z • X z) = fun y => ∑ i : Fin 3,
        fderiv ℝ (fun z => Real.sqrt (G z).det * (ψ₁ z • X z) i) y (e i) := rfl
    rw [this]
    exact Finset.measurable_sum _ fun i _ => measurable_fderiv_apply_const ℝ _ _
  have hint1a : Integrable (fun y => u y * sepDensDiv G (fun z => ψ₁ z • X z) y) := by
    have h : Integrable (fun y => sepDensDiv G (fun z => ψ₁ z • X z) y * u y)
        (volume.restrict (tsupport (fun z => ψ₁ z • X z))) :=
      Integrable.bdd_mul hu1 hd1m.aestronglyMeasurable
        (ae_of_all _ fun y => by rw [Real.norm_eq_abs]; exact hC₁ y)
    have h' : IntegrableOn (fun y => u y * sepDensDiv G (fun z => ψ₁ z • X z) y)
        (tsupport (fun z => ψ₁ z • X z)) :=
      h.congr (ae_of_all _ fun y => mul_comm _ _)
    refine h'.integrable_of_forall_notMem_eq_zero ?_
    intro y hy
    rw [hZ _ y hy, mul_zero]
  have hI1 : Integrable (fun y => u y * sepDensDiv G (fun z => ψ₁ z • X z) y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₁ y • X y) i) :=
    hint1a.congr (ae_of_all _ fun y => by dsimp only; rw [htw1 y, add_zero])
  
  by_cases hI : Integrable (fun y => u y * sepDensDiv G X y +
      Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)
  · have hI2 : Integrable (fun y => u y * sepDensDiv G (fun z => ψ₂ z • X z) y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₂ y • X y) i) := by
      refine (hI.sub hI1).congr ?_
      filter_upwards [hae] with y hy
      simp only [Pi.sub_apply]
      rw [hy]
      ring
    have hsum : (∫ y, (u y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) =
        (∫ y, (u y * sepDensDiv G (fun z => ψ₁ z • X z) y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₁ y • X y) i)) +
        ∫ y, (u y * sepDensDiv G (fun z => ψ₂ z • X z) y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * (ψ₂ y • X y) i) :=
      (integral_congr_ae hae).trans (integral_add hI1 hI2)
    rw [hsum]
    exact le_trans ENNReal.ofReal_add_le (add_le_add (hmem A _ adm₁) (hmem B _ adm₂))
  · rw [integral_undef hI, ENNReal.ofReal_zero]
    exact zero_le _

theorem dualVarG_wall_cut_le_sides (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ)
    (B : Set E3) (hB : IsOpen B)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) B)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ B, (G y).PosDef)
    (w : E3 → ℝ) (hw : ContDiffOn ℝ ∞ w B) (hdw : ∀ z ∈ B, fderiv ℝ w z ≠ 0)
    (u : E3 → ℝ) (hint : ∀ y ∈ B, ∃ m : ℤ, u y = 2 * Real.pi * m)
    (hum : ∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ u y}))
    (Kc : Set E3) (hK : ∀ y ∈ B, y ∈ Kc ↔ w y = 0)
    (V : Set E3) (hV : IsOpen V) (hVB : V ⊆ B) (hom : ∀ y ∈ V, ∀ i : Fin 3, om y i = 0) :
    dualVarG G om u V Kc ≤
      dualVarG G (fun _ _ => (0 : ℝ)) ({y | 0 < w y}.indicator u) V ∅ +
        dualVarG G (fun _ _ => (0 : ℝ)) ({y | w y < 0}.indicator u) V ∅ :=
by
  classical
  have hpi0 : (0 : ℝ) < 2 * Real.pi := by positivity
  have hc0 : ENNReal.ofReal (2 * Real.pi) ≠ 0 := by
    rw [ne_eq, ENNReal.ofReal_eq_zero, not_le]
    exact hpi0
  
  have monoD : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (u : E3 → ℝ)
      (A B' Kc' : Set E3), A ⊆ B' → dualVarG G om u A Kc' ≤ dualVarG G om u B' Kc' := by
    intro G om u A B' Kc' hAB
    unfold dualVarG
    refine sup_le_sup ?_ ?_
    · exact iSup_le fun hA => le_iSup_of_le (fun hB => hA (hB.mono_set hAB)) le_rfl
    · exact iSup₂_mono' fun X hX => ⟨X, ⟨hX.1, hX.2.1, hX.2.2.1.trans hAB, hX.2.2.2⟩, le_rfl⟩
  have densZero : ∀ (G' : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (y : E3),
      y ∉ tsupport X → sepDensDiv G' X y = 0 := by
    intro G' X y hy
    have hX : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    unfold partialDeriv
    have h : (fun z => Real.sqrt (G' z).det * X z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hX] with z hz
      simp [hz]
    rw [h.fderiv_eq]
    simp
  
  have hscale : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (f h : E3 → ℝ)
      (V Kc₁ Kc₂ : Set E3), IsOpen V → (∀ y ∈ V, ∀ i : Fin 3, om y i = 0) →
      (∀ y ∈ V, f y = 2 * Real.pi * h y) → V ∩ Kc₁ = V ∩ Kc₂ →
      dualVarG G om f V Kc₁ =
        ENNReal.ofReal (2 * Real.pi) * dualVarG G (fun _ _ => (0 : ℝ)) h V Kc₂ := by
    intro G om f h V Kc₁ Kc₂ hV hom hfh hK
    have step : ∀ X : E3 → E3, tsupport X ⊆ V →
        ENNReal.ofReal (∫ y, (f y * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) =
        ENNReal.ofReal (2 * Real.pi) * ENNReal.ofReal (∫ y, (h y * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, (fun _ _ => (0 : ℝ)) y i * X y i)) := by
      intro X hXV
      have hpt : (fun y => f y * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) =
          fun y => 2 * Real.pi * (h y * sepDensDiv G X y +
            Real.sqrt (G y).det * ∑ i : Fin 3, (fun _ _ => (0 : ℝ)) y i * X y i) := by
        funext y
        by_cases hy : y ∈ tsupport X
        · have hyV := hXV hy
          simp only [hom y hyV, hfh y hyV, zero_mul, Finset.sum_const_zero, mul_zero, add_zero]
          ring
        · rw [densZero G X y hy, image_eq_zero_of_notMem_tsupport hy]
          simp
      rw [hpt, integral_const_mul, ENNReal.ofReal_mul hpi0.le]
    have hadm1 : ∀ (K₁ K₂ : Set E3), V ∩ K₁ = V ∩ K₂ → ∀ X : E3 → E3, tsupport X ⊆ V →
        (∀ y, y ∉ K₁ → ContDiffAt ℝ ∞ X y) → (∀ y, y ∉ K₂ → ContDiffAt ℝ ∞ X y) := by
      intro K₁ K₂ hKK X hXV h1 y hy
      by_cases hyV : y ∈ V
      · refine h1 y (fun hy1 => hy ?_)
        have h2 : y ∈ V ∩ K₂ := by
          rw [← hKK]
          exact ⟨hyV, hy1⟩
        exact h2.2
      · have hyX : y ∉ tsupport X := fun h' => hyV (hXV h')
        refine (contDiffAt_const (c := (0 : E3))).congr_of_eventuallyEq ?_
        filter_upwards [notMem_tsupport_iff_eventuallyEq.1 hyX] with z hz
        exact hz
    have hadm : ∀ X : E3 → E3,
        ((∀ y, y ∉ Kc₁ → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ V ∧
          (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) ↔
        ((∀ y, y ∉ Kc₂ → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ V ∧
          (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) := by
      intro X
      constructor
      · rintro ⟨h1, h2, h3, h4, h5⟩
        exact ⟨hadm1 Kc₁ Kc₂ hK X h3 h1, h2, h3, h4, h5⟩
      · rintro ⟨h1, h2, h3, h4, h5⟩
        exact ⟨hadm1 Kc₂ Kc₁ hK.symm X h3 h1, h2, h3, h4, h5⟩
    have hguard : MeasureTheory.LocallyIntegrableOn f V ↔
        MeasureTheory.LocallyIntegrableOn h V := by
      rw [locallyIntegrableOn_iff hV.isLocallyClosed, locallyIntegrableOn_iff hV.isLocallyClosed]
      constructor
      · intro hf k hkV hk
        have h1 : MeasureTheory.IntegrableOn (fun y => f y / (2 * Real.pi)) k :=
          (hf k hkV hk).div_const _
        refine h1.congr_fun (fun y hy => ?_) hk.isClosed.measurableSet
        show f y / (2 * Real.pi) = h y
        rw [hfh y (hkV hy), mul_div_cancel_left₀ _ hpi0.ne']
      · intro hh k hkV hk
        have h1 : MeasureTheory.IntegrableOn (fun y => 2 * Real.pi * h y) k :=
          (hh k hkV hk).const_mul _
        refine h1.congr_fun (fun y hy => ?_) hk.isClosed.measurableSet
        show 2 * Real.pi * h y = f y
        rw [hfh y (hkV hy)]
    unfold dualVarG
    by_cases hf : MeasureTheory.LocallyIntegrableOn f V
    · have hh := hguard.1 hf
      rw [iSup_neg (not_not_intro hf), iSup_neg (not_not_intro hh), bot_sup_eq, bot_sup_eq,
        ENNReal.mul_iSup]
      refine iSup_congr (fun X => ?_)
      rw [ENNReal.mul_iSup]
      refine iSup_congr_Prop (hadm X) (fun hX => ?_)
      exact step X hX.2.2.1
    · have hh : ¬ MeasureTheory.LocallyIntegrableOn h V := fun h' => hf (hguard.2 h')
      rw [iSup_pos hf, iSup_pos hh, top_sup_eq, top_sup_eq, ENNReal.mul_top hc0]
  
  set v : E3 → ℝ := fun y => u y / (2 * Real.pi) with hv_def
  have huv : ∀ y : E3, u y = 2 * Real.pi * v y := by
    intro y
    simp only [hv_def]
    field_simp
  have hvint : ∀ y ∈ B, ∃ m : ℤ, v y = m := by
    intro y hy
    obtain ⟨m, hm⟩ := hint y hy
    refine ⟨m, ?_⟩
    simp only [hv_def]
    rw [hm, mul_div_cancel_left₀ _ hpi0.ne']
  have hvm : ∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ v y}) := by
    intro t
    have e : B ∩ {y | t ≤ v y} = B ∩ {y | t * (2 * Real.pi) ≤ u y} := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, hv_def, le_div_iff₀ hpi0]
    rw [e]
    exact hum _
  have hnullV : MeasureTheory.volume (V ∩ w ⁻¹' {0}) = 0 :=
    submersion_zero_null V hV w (hw.mono hVB) (fun z hz => hdw z (hVB hz))
  
  have hEqW : ∀ W : Set E3, IsOpen W → IsCompact (closure W) → closure W ⊆ V →
      dualVarG G om u W Kc =
        dualVarG G (fun _ _ => (0 : ℝ)) ({y | 0 < w y}.indicator u) W ∅ +
          dualVarG G (fun _ _ => (0 : ℝ)) ({y | w y < 0}.indicator u) W ∅ := by
    intro W hW hWc hWcl
    have hWV : W ⊆ V := subset_closure.trans hWcl
    have hcut : W ∩ Kc = W ∩ (B ∩ {y | w y = 0}) := by
      ext y
      constructor
      · rintro ⟨hyW, hyK⟩
        exact ⟨hyW, hVB (hWV hyW), (hK y (hVB (hWV hyW))).1 hyK⟩
      · rintro ⟨hyW, hyB, hw0⟩
        exact ⟨hyW, (hK y hyB).2 hw0⟩
    have h1 := hscale G om u v W Kc (B ∩ {y | w y = 0}) hW (fun y hy => hom y (hWV hy))
      (fun y _ => huv y) hcut
    have h2 := dualVarG_zero_cut_split G B hB hG hsymm hpd w hw hdw v hvint hvm W hW hWc
      (hWcl.trans hVB)
    have h3 : ∀ S : Set E3, dualVarG G (fun _ _ => (0 : ℝ)) (S.indicator u) W ∅ =
        ENNReal.ofReal (2 * Real.pi) *
          dualVarG G (fun _ _ => (0 : ℝ)) (S.indicator v) W ∅ := by
      intro S
      refine hscale _ _ _ _ W ∅ ∅ hW (fun _ _ _ => rfl) (fun y _ => ?_) rfl
      by_cases hyS : y ∈ S
      · rw [Set.indicator_of_mem hyS, Set.indicator_of_mem hyS, huv y]
      · rw [Set.indicator_of_notMem hyS, Set.indicator_of_notMem hyS, mul_zero]
    rw [h3, h3, ← mul_add, ← h2, ← h1]
  
  have hLHS : dualVarG G om u V Kc =
      (⨆ (_ : ¬ MeasureTheory.LocallyIntegrableOn u V), (⊤ : ENNReal)) ⊔
      ⨆ (X : E3 → E3) (_ : (∀ y, y ∉ Kc → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧
        tsupport X ⊆ V ∧ (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C),
      ENNReal.ofReal (∫ y, (u y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) := rfl
  rw [hLHS]
  refine sup_le ?_ ?_
  · 
    refine iSup_le fun hnot => ?_
    have topD : ∀ f : E3 → ℝ, ¬ MeasureTheory.LocallyIntegrableOn f V →
        (⊤ : ENNReal) ≤ dualVarG G (fun _ _ => (0 : ℝ)) f V ∅ := by
      intro f hf
      unfold dualVarG
      exact le_sup_of_le_left (le_iSup_of_le hf le_rfl)
    by_cases hp : MeasureTheory.LocallyIntegrableOn ({y | 0 < w y}.indicator u) V
    · by_cases hn : MeasureTheory.LocallyIntegrableOn ({y | w y < 0}.indicator u) V
      · exfalso
        apply hnot
        rw [locallyIntegrableOn_iff hV.isLocallyClosed] at hp hn ⊢
        intro k hk hkc
        have hsum : MeasureTheory.IntegrableOn
            (fun y => {y | 0 < w y}.indicator u y + {y | w y < 0}.indicator u y) k :=
          MeasureTheory.Integrable.add (hp k hk hkc) (hn k hk hkc)
        refine hsum.congr_fun_ae ?_
        have hae : ∀ᵐ y ∂(MeasureTheory.volume.restrict k), y ∉ V ∩ w ⁻¹' {0} :=
          MeasureTheory.ae_restrict_of_ae (MeasureTheory.measure_eq_zero_iff_ae_notMem.1 hnullV)
        filter_upwards [hae, MeasureTheory.ae_restrict_mem hkc.measurableSet] with y hy hyk
        have hw0 : w y ≠ 0 := fun h0 => hy ⟨hk hyk, h0⟩
        rcases lt_or_gt_of_ne hw0 with h | h
        · have h1 : y ∉ {y | 0 < w y} := fun h' => absurd (show 0 < w y from h') (not_lt.2 h.le)
          have h2 : y ∈ {y | w y < 0} := h
          rw [Set.indicator_of_notMem h1, Set.indicator_of_mem h2, zero_add]
        · have h1 : y ∈ {y | 0 < w y} := h
          have h2 : y ∉ {y | w y < 0} := fun h' => absurd (show w y < 0 from h') (not_lt.2 h.le)
          rw [Set.indicator_of_mem h1, Set.indicator_of_notMem h2, add_zero]
      · exact (topD _ hn).trans le_add_self
    · exact (topD _ hp).trans le_self_add
  · 
    refine iSup₂_le fun X hX => ?_
    obtain ⟨hXs, hXc, hXV, hXn, hXC⟩ := hX
    obtain ⟨W, hW, hXW, hWcl, hWc⟩ :=
      exists_open_between_and_isCompact_closure hXc.isCompact hV hXV
    have hWV : W ⊆ V := subset_closure.trans hWcl
    have hle : ENNReal.ofReal (∫ y, (u y * sepDensDiv G X y +
        Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) ≤ dualVarG G om u W Kc := by
      unfold dualVarG
      exact le_sup_of_le_right (le_iSup₂_of_le X ⟨hXs, hXc, hXW, hXn, hXC⟩ le_rfl)
    rw [hEqW W hW hWc hWcl] at hle
    exact hle.trans (add_le_add (monoD _ _ _ _ _ _ hWV) (monoD _ _ _ _ _ _ hWV))

theorem wall_chart_pullback_submersion [IsManifold 𝓘(ℝ, E3) ∞ M] (p q : M) (B : Set E3)
    (hB : IsOpen B) (hBt : B ⊆ (chartAt E3 p).target)
    (w : E3 → ℝ) (hw : ContDiffOn ℝ ∞ w B) (hdw : ∀ z ∈ B, fderiv ℝ w z ≠ 0) :
    IsOpen (chartAt E3 q '' ((chartAt E3 p).symm '' B ∩ (chartAt E3 q).source)) ∧
    ContDiffOn ℝ ∞ (fun y => w (chartAt E3 p ((chartAt E3 q).symm y)))
      (chartAt E3 q '' ((chartAt E3 p).symm '' B ∩ (chartAt E3 q).source)) ∧
    ∀ y ∈ chartAt E3 q '' ((chartAt E3 p).symm '' B ∩ (chartAt E3 q).source),
      fderiv ℝ (fun y => w (chartAt E3 p ((chartAt E3 q).symm y))) y ≠ 0 :=
by
  have hS : IsOpen ((chartAt E3 p).symm '' B) :=
    (chartAt E3 p).isOpen_image_symm_of_subset_target hB hBt
  have hBqo : IsOpen (chartAt E3 q '' ((chartAt E3 p).symm '' B ∩ (chartAt E3 q).source)) :=
    (chartAt E3 q).isOpen_image_of_subset_source (hS.inter (chartAt E3 q).open_source)
      Set.inter_subset_right
  have mem : ∀ y ∈ chartAt E3 q '' ((chartAt E3 p).symm '' B ∩ (chartAt E3 q).source),
      y ∈ (chartAt E3 q).target ∧ (chartAt E3 q).symm y ∈ (chartAt E3 p).source ∧
      chartAt E3 p ((chartAt E3 q).symm y) ∈ B := by
    rintro _ ⟨x, ⟨⟨z, hz, rfl⟩, hxq⟩, rfl⟩
    refine ⟨(chartAt E3 q).map_source hxq, ?_, ?_⟩
    · rw [(chartAt E3 q).left_inv hxq]
      exact (chartAt E3 p).map_target (hBt hz)
    · rw [(chartAt E3 q).left_inv hxq, (chartAt E3 p).right_inv (hBt hz)]
      exact hz
  have hτ : ContDiffOn ℝ ∞ (fun y => chartAt E3 p ((chartAt E3 q).symm y))
      ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' (chartAt E3 p).source) := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (fun y => chartAt E3 p ((chartAt E3 q).symm y))
        ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' (chartAt E3 p).source) :=
      (contMDiffOn_chart (x := p)).comp
        ((contMDiffOn_chart_symm (x := q)).mono Set.inter_subset_left) (fun y hy => hy.2)
    exact contMDiffOn_iff_contDiffOn.mp h1
  have hσ : ContDiffOn ℝ ∞ (fun y => chartAt E3 q ((chartAt E3 p).symm y))
      ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' (chartAt E3 q).source) := by
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (fun y => chartAt E3 q ((chartAt E3 p).symm y))
        ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' (chartAt E3 q).source) :=
      (contMDiffOn_chart (x := q)).comp
        ((contMDiffOn_chart_symm (x := p)).mono Set.inter_subset_left) (fun y hy => hy.2)
    exact contMDiffOn_iff_contDiffOn.mp h1
  have hf : ContDiffOn ℝ ∞ (fun y => w (chartAt E3 p ((chartAt E3 q).symm y)))
      (chartAt E3 q '' ((chartAt E3 p).symm '' B ∩ (chartAt E3 q).source)) :=
    hw.comp (hτ.mono (fun y hy => ⟨(mem y hy).1, (mem y hy).2.1⟩)) (fun y hy => (mem y hy).2.2)
  refine ⟨hBqo, hf, ?_⟩
  intro y hy h0
  obtain ⟨hyt, hys, hzB⟩ := mem y hy
  obtain ⟨z, hzdef⟩ : ∃ z, chartAt E3 p ((chartAt E3 q).symm y) = z := ⟨_, rfl⟩
  rw [hzdef] at hzB
  have hzt := hBt hzB
  have hpz : (chartAt E3 p).symm z = (chartAt E3 q).symm y := by
    rw [← hzdef]
    exact (chartAt E3 p).left_inv hys
  have hzDp : z ∈ (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' (chartAt E3 q).source := by
    refine ⟨hzt, ?_⟩
    show (chartAt E3 p).symm z ∈ (chartAt E3 q).source
    rw [hpz]
    exact (chartAt E3 q).map_target hyt
  have hσz : chartAt E3 q ((chartAt E3 p).symm z) = y := by
    rw [hpz]
    exact (chartAt E3 q).right_inv hyt
  have hDpo : IsOpen ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' (chartAt E3 q).source) :=
    (chartAt E3 p).isOpen_inter_preimage_symm (chartAt E3 q).open_source
  have hev : (fun z' => w (chartAt E3 p ((chartAt E3 q).symm
      (chartAt E3 q ((chartAt E3 p).symm z'))))) =ᶠ[𝓝 z] w := by
    filter_upwards [hDpo.mem_nhds hzDp] with z' hz'
    rw [(chartAt E3 q).left_inv hz'.2, (chartAt E3 p).right_inv hz'.1]
  have hfd : DifferentiableAt ℝ (fun y => w (chartAt E3 p ((chartAt E3 q).symm y)))
      (chartAt E3 q ((chartAt E3 p).symm z)) := by
    rw [hσz]
    exact (hf.contDiffAt (hBqo.mem_nhds hy)).differentiableAt (by simp)
  have hσd : DifferentiableAt ℝ (fun z' => chartAt E3 q ((chartAt E3 p).symm z')) z :=
    (hσ.contDiffAt (hDpo.mem_nhds hzDp)).differentiableAt (by simp)
  apply hdw z hzB
  rw [← hev.fderiv_eq]
  have hc := fderiv_comp z hfd hσd
  rw [hσz, h0, ContinuousLinearMap.zero_comp] at hc
  exact hc

theorem dualVarG_wall_piece_le [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : M → ℂ) (φ : M → ℝ) (hφ : dualChartMeas φ) (Kc O : Set M) (hO : IsOpen O)
    (hΨO : ∀ x ∈ O, Ψ x = 1) (hφO : ∀ x ∈ O, ∃ m : ℤ, φ x = 2 * Real.pi * m)
    (p : M) (B : Set E3) (hB : IsOpen B)
    (hBO : B ⊆ chartAt E3 p '' (O ∩ (chartAt E3 p).source))
    (w : E3 → ℝ) (hw : ContDiffOn ℝ ∞ w B) (hdw : ∀ z ∈ B, fderiv ℝ w z ≠ 0)
    (hwK : ∀ y ∈ B, (chartAt E3 p).symm y ∈ Kc ↔ w y = 0)
    (q : M) (A : Set M) (hA : IsOpen A) (hAB : A ⊆ (chartAt E3 p).symm '' B)
    (hAq : A ⊆ (chartAt E3 q).source) :
    dualVarG (g.coeff (chartAt E3 q).symm) (dualOmega Ψ q) (fun y => φ ((chartAt E3 q).symm y))
        (chartAt E3 q '' A) (chartAt E3 q '' (Kc ∩ (chartAt E3 q).source)) ≤
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | 0 < w y}.indicator (fun y => φ ((chartAt E3 p).symm y))) (chartAt E3 p '' A) ∅ +
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | w y < 0}.indicator (fun y => φ ((chartAt E3 p).symm y))) (chartAt E3 p '' A) ∅ :=
by
  classical
  
  have densZero : ∀ (G' : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (y : E3),
      y ∉ tsupport X → sepDensDiv G' X y = 0 := by
    intro G' X y hy
    have hX : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    unfold partialDeriv
    have h : (fun z => Real.sqrt (G' z).det * X z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hX] with z hz
      simp [hz]
    rw [h.fderiv_eq]
    simp
  have congrD : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (u₁ u₂ : E3 → ℝ)
      (A' Kc' : Set E3), IsOpen A' → (∀ y ∈ A', u₁ y = u₂ y) →
      dualVarG G om u₁ A' Kc' ≤ dualVarG G om u₂ A' Kc' := by
    intro G om u₁ u₂ A' Kc' hA' h
    unfold dualVarG
    refine sup_le_sup ?_ ?_
    · refine iSup_le fun h1 => le_iSup_of_le (fun h2 => h1 ?_) le_rfl
      rw [locallyIntegrableOn_iff hA'.isLocallyClosed] at h2 ⊢
      intro k hk hkc
      exact (h2 k hk hkc).congr_fun (fun y hy => (h y (hk hy)).symm) hkc.isClosed.measurableSet
    · refine iSup₂_mono' fun X hX => ⟨X, hX, le_of_eq ?_⟩
      refine congrArg ENNReal.ofReal (integral_congr_ae (Filter.Eventually.of_forall fun y => ?_))
      dsimp only
      by_cases hy : y ∈ A'
      · rw [h y hy]
      · rw [densZero G X y (fun h' => hy (hX.2.2.1 h'))]
        simp
  
  have hBt : B ⊆ (chartAt E3 p).target := by
    intro y hy
    obtain ⟨x, ⟨_, hxs⟩, rfl⟩ := hBO hy
    exact (chartAt E3 p).map_source hxs
  have hBsymm : ∀ y ∈ B, (chartAt E3 p).symm y ∈ O ∧
      (chartAt E3 p).symm y ∈ (chartAt E3 p).source := by
    intro y hy
    obtain ⟨x, ⟨hxO, hxs⟩, rfl⟩ := hBO hy
    rw [(chartAt E3 p).left_inv hxs]
    exact ⟨hxO, hxs⟩
  have hAp : A ⊆ (chartAt E3 p).source := by
    intro x hx
    obtain ⟨z, hz, rfl⟩ := hAB hx
    exact (chartAt E3 p).map_target (hBt hz)
  have hAO : A ⊆ O := by
    intro x hx
    obtain ⟨z, hz, rfl⟩ := hAB hx
    exact (hBsymm z hz).1
  have hAqo : IsOpen (chartAt E3 q '' A) := (chartAt E3 q).isOpen_image_of_subset_source hA hAq
  have hApo : IsOpen (chartAt E3 p '' A) := (chartAt E3 p).isOpen_image_of_subset_source hA hAp
  
  obtain ⟨Bq, hBq⟩ : ∃ s : Set E3,
      s = chartAt E3 q '' ((chartAt E3 p).symm '' B ∩ (chartAt E3 q).source) := ⟨_, rfl⟩
  obtain ⟨hBqo, hw', hdw'⟩ := wall_chart_pullback_submersion p q B hB hBt w hw hdw
  rw [← hBq] at hBqo hw' hdw'
  have hBqpt : ∀ y ∈ Bq, ∃ z ∈ B, (chartAt E3 p).symm z ∈ (chartAt E3 q).source ∧
      y = chartAt E3 q ((chartAt E3 p).symm z) := by
    intro y hy
    rw [hBq] at hy
    obtain ⟨_, ⟨⟨z, hz, rfl⟩, hs⟩, rfl⟩ := hy
    exact ⟨z, hz, hs, rfl⟩
  have hBqt : Bq ⊆ (chartAt E3 q).target := by
    intro y hy
    obtain ⟨z, _, hs, rfl⟩ := hBqpt y hy
    exact (chartAt E3 q).map_source hs
  have hint : ∀ y ∈ Bq, ∃ m : ℤ, φ ((chartAt E3 q).symm y) = 2 * Real.pi * m := by
    intro y hy
    obtain ⟨z, hz, hs, rfl⟩ := hBqpt y hy
    rw [(chartAt E3 q).left_inv hs]
    exact hφO _ (hBsymm z hz).1
  have hum : ∀ t : ℝ, MeasurableSet (Bq ∩ {y | t ≤ φ ((chartAt E3 q).symm y)}) := by
    intro t
    have e : Bq ∩ {y | t ≤ φ ((chartAt E3 q).symm y)} = Bq ∩ {y | t ≤
        (chartAt E3 q).target.indicator (fun y => φ ((chartAt E3 q).symm y)) y} := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq]
      constructor
      · rintro ⟨hy, h⟩
        refine ⟨hy, ?_⟩
        rw [Set.indicator_of_mem (hBqt hy)]
        exact h
      · rintro ⟨hy, h⟩
        refine ⟨hy, ?_⟩
        rw [Set.indicator_of_mem (hBqt hy)] at h
        exact h
    rw [e]
    exact hBqo.measurableSet.inter (measurableSet_le measurable_const (hφ q))
  have hK : ∀ y ∈ Bq, y ∈ chartAt E3 q '' (Kc ∩ (chartAt E3 q).source) ↔
      w (chartAt E3 p ((chartAt E3 q).symm y)) = 0 := by
    intro y hy
    obtain ⟨z, hz, hs, rfl⟩ := hBqpt y hy
    rw [(chartAt E3 q).left_inv hs, (chartAt E3 p).right_inv (hBt hz), ← hwK z hz]
    constructor
    · rintro ⟨x', ⟨hx'K, hx's⟩, hxx'⟩
      have hxx : x' = (chartAt E3 p).symm z := (chartAt E3 q).injOn hx's hs hxx'
      rw [← hxx]
      exact hx'K
    · intro h
      exact ⟨_, ⟨h, hs⟩, rfl⟩
  have hAqB : chartAt E3 q '' A ⊆ Bq := by
    rw [hBq]
    exact Set.image_mono (fun x hx => ⟨hAB hx, hAq hx⟩)
  have hom : ∀ y ∈ chartAt E3 q '' A, ∀ i : Fin 3, dualOmega Ψ q y i = 0 := by
    rintro _ ⟨x, hx, rfl⟩ i
    have hy : chartAt E3 q x ∈ (chartAt E3 q).target := (chartAt E3 q).map_source (hAq hx)
    have hyO : (chartAt E3 q).symm (chartAt E3 q x) ∈ O := by
      rw [(chartAt E3 q).left_inv (hAq hx)]
      exact hAO hx
    have hSo : IsOpen ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' O) :=
      (chartAt E3 q).isOpen_inter_preimage_symm hO
    have him : ∀ z ∈ (chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' O,
        (Ψ ((chartAt E3 q).symm z)).im = 0 := by
      intro z hz
      rw [hΨO _ hz.2]
      simp
    have hev : (fun z => (Ψ ((chartAt E3 q).symm z)).im) =ᶠ[𝓝 (chartAt E3 q x)]
        (fun _ => (0 : ℝ)) :=
      Filter.eventually_of_mem (hSo.mem_nhds ⟨hy, hyO⟩) him
    have hpd0 : partialDeriv i (fun z => (Ψ ((chartAt E3 q).symm z)).im)
        (chartAt E3 q x) = 0 := by
      unfold partialDeriv
      rw [hev.fderiv_eq]
      simp
    simp only [dualOmega]
    rw [hpd0, him _ ⟨hy, hyO⟩]
    ring
  
  have h1 := dualVarG_wall_cut_le_sides (g.coeff (chartAt E3 q).symm) (dualOmega Ψ q) Bq hBqo
    (fun i j => (g.smooth q i j).mono hBqt) (fun y i j => g.symm _ _ _)
    (fun y hy => coeff_chart_symm_posDef g q y (hBqt hy))
    (fun y => w (chartAt E3 p ((chartAt E3 q).symm y))) hw' hdw'
    (fun y => φ ((chartAt E3 q).symm y)) hint hum
    (chartAt E3 q '' (Kc ∩ (chartAt E3 q).source)) hK (chartAt E3 q '' A) hAqo hAqB hom
  
  have hom1 : ∀ r : M, dualOmega (fun _ : M => (1 : ℂ)) r = fun _ _ => (0 : ℝ) := by
    intro r
    funext y i
    simp [dualOmega, partialDeriv]
  
  have side : ∀ T : Set ℝ, IsOpen T →
      dualVarG (g.coeff (chartAt E3 q).symm) (fun _ _ => (0 : ℝ))
        ({y | w (chartAt E3 p ((chartAt E3 q).symm y)) ∈ T}.indicator
          (fun y => φ ((chartAt E3 q).symm y))) (chartAt E3 q '' A) ∅ ≤
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
        ({y | w y ∈ T}.indicator (fun y => φ ((chartAt E3 p).symm y)))
        (chartAt E3 p '' A) ∅ := by
    intro T hT
    have hBTo : IsOpen (B ∩ w ⁻¹' T) := hw.continuousOn.isOpen_inter_preimage hB hT
    have hSo : IsOpen ((chartAt E3 p).symm '' (B ∩ w ⁻¹' T)) :=
      (chartAt E3 p).isOpen_image_symm_of_subset_target hBTo (Set.inter_subset_left.trans hBt)
    have memS : ∀ z ∈ B, (chartAt E3 p).symm z ∈ (chartAt E3 p).symm '' (B ∩ w ⁻¹' T) ↔
        w z ∈ T := by
      intro z hz
      constructor
      · rintro ⟨z'', ⟨hz''B, hz''T⟩, heq⟩
        have e := congrArg (chartAt E3 p) heq
        rw [(chartAt E3 p).right_inv (hBt hz''B), (chartAt E3 p).right_inv (hBt hz)] at e
        rw [← e]
        exact hz''T
      · intro h
        exact ⟨z, ⟨hz, h⟩, rfl⟩
    have hφS : dualChartMeas (((chartAt E3 p).symm '' (B ∩ w ⁻¹' T)).indicator φ) := by
      intro r
      have e : (chartAt E3 r).target.indicator
          (fun y => ((chartAt E3 p).symm '' (B ∩ w ⁻¹' T)).indicator φ ((chartAt E3 r).symm y)) =
          ((chartAt E3 r).target ∩
              (chartAt E3 r).symm ⁻¹' ((chartAt E3 p).symm '' (B ∩ w ⁻¹' T))).indicator
            ((chartAt E3 r).target.indicator (fun y => φ ((chartAt E3 r).symm y))) := by
        funext y
        by_cases hy : y ∈ (chartAt E3 r).target
        · by_cases hyS : (chartAt E3 r).symm y ∈ (chartAt E3 p).symm '' (B ∩ w ⁻¹' T)
          · simp only [Set.indicator_apply, Set.mem_inter_iff, Set.mem_preimage, hy, hyS,
              and_self, if_true]
          · simp only [Set.indicator_apply, Set.mem_inter_iff, Set.mem_preimage, hy, hyS,
              and_false, if_true, if_false]
        · simp only [Set.indicator_apply, Set.mem_inter_iff, hy, false_and, if_false]
      rw [e]
      exact (hφ r).indicator ((chartAt E3 r).isOpen_inter_preimage_symm hSo).measurableSet
    have hct := dualVarG_chart_le g (fun _ => (1 : ℂ)) contMDiff_const
      (((chartAt E3 p).symm '' (B ∩ w ⁻¹' T)).indicator φ) hφS p q A hA hAp hAq
    rw [hom1, hom1] at hct
    refine le_trans (congrD _ _ _ _ _ _ hAqo ?_) (le_trans hct (congrD _ _ _ _ _ _ hApo ?_))
    · rintro _ ⟨x, hx, rfl⟩
      obtain ⟨z, hz, rfl⟩ := hAB hx
      have hxq := hAq hx
      simp only [Set.indicator_apply, Set.mem_setOf_eq, (chartAt E3 q).left_inv hxq,
        (chartAt E3 p).right_inv (hBt hz)]
      by_cases h : w z ∈ T
      · rw [if_pos h, if_pos ((memS z hz).2 h)]
      · rw [if_neg h, if_neg (fun h' => h ((memS z hz).1 h'))]
    · rintro _ ⟨x, hx, rfl⟩
      obtain ⟨z, hz, rfl⟩ := hAB hx
      simp only [Set.indicator_apply, Set.mem_setOf_eq, (chartAt E3 p).right_inv (hBt hz)]
      by_cases h : w z ∈ T
      · rw [if_pos h, if_pos ((memS z hz).2 h)]
      · rw [if_neg h, if_neg (fun h' => h ((memS z hz).1 h'))]
  exact h1.trans (add_le_add (side _ isOpen_Ioi) (side _ isOpen_Iio))

theorem dualRiemVar_wall_add_le [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (Ψ : M → ℂ) (hΨ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ Ψ)
    (φ₁ φ₂ : M → ℝ) (hφ₁ : dualChartMeas φ₁) (hφ₂ : dualChartMeas φ₂) (Ω Kc O : Set M)
    (hO : IsOpen O) (hOΩ : O ⊆ Ω) (hΨO : ∀ x ∈ O, Ψ x = 1)
    (hφ₁O : ∀ x ∈ O, ∃ m : ℤ, φ₁ x = 2 * Real.pi * m)
    (hφ₂O : ∀ x ∈ O, ∃ m : ℤ, φ₂ x = 2 * Real.pi * m)
    (p : M) (B : Set E3) (hB : IsOpen B)
    (hBO : B ⊆ chartAt E3 p '' (O ∩ (chartAt E3 p).source))
    (w : E3 → ℝ) (hw : ContDiffOn ℝ ∞ w B) (hdw : ∀ z ∈ B, fderiv ℝ w z ≠ 0)
    (hwK : ∀ y ∈ B, (chartAt E3 p).symm y ∈ Kc ↔ w y = 0)
    (K' V₁ V₂ : Set E3) (hK' : IsCompact K') (hV₁ : IsOpen V₁) (hV₂ : IsOpen V₂)
    (hK'V₂ : K' ⊆ V₂) (hV₂c : IsCompact (closure V₂)) (hV₂V₁ : closure V₂ ⊆ V₁)
    (hV₁B : V₁ ⊆ B)
    (heq : ∀ x : M, x ∉ (chartAt E3 p).symm '' K' → φ₁ x = φ₂ x) :
    dualRiemVar g Ψ φ₂ Ω Kc +
        (dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | 0 < w y}.indicator (fun y => φ₁ ((chartAt E3 p).symm y))) V₂ ∅ +
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | w y < 0}.indicator (fun y => φ₁ ((chartAt E3 p).symm y))) V₂ ∅) ≤
      dualRiemVar g Ψ φ₁ Ω Kc +
        (dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | 0 < w y}.indicator (fun y => φ₂ ((chartAt E3 p).symm y))) V₁ ∅ +
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | w y < 0}.indicator (fun y => φ₂ ((chartAt E3 p).symm y))) V₁ ∅) +
        (dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | 0 < w y}.indicator (fun y => φ₁ ((chartAt E3 p).symm y))) (V₁ \ K') ∅ +
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | w y < 0}.indicator (fun y => φ₁ ((chartAt E3 p).symm y))) (V₁ \ K') ∅) :=
by
  classical
  haveI : Nonempty M := ⟨p⟩
  have hpi0 : (0 : ℝ) < 2 * Real.pi := by positivity
  have hc0 : ENNReal.ofReal (2 * Real.pi) ≠ 0 := by
    rw [ne_eq, ENNReal.ofReal_eq_zero, not_le]
    exact hpi0
  
  have monoD : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (u : E3 → ℝ)
      (A B' Kc' : Set E3), A ⊆ B' → dualVarG G om u A Kc' ≤ dualVarG G om u B' Kc' := by
    intro G om u A B' Kc' hAB
    unfold dualVarG
    refine sup_le_sup ?_ ?_
    · exact iSup_le fun hA => le_iSup_of_le (fun hB => hA (hB.mono_set hAB)) le_rfl
    · exact iSup₂_mono' fun X hX => ⟨X, ⟨hX.1, hX.2.1, hX.2.2.1.trans hAB, hX.2.2.2⟩, le_rfl⟩
  have densZero : ∀ (G' : E3 → Matrix (Fin 3) (Fin 3) ℝ) (X : E3 → E3) (y : E3),
      y ∉ tsupport X → sepDensDiv G' X y = 0 := by
    intro G' X y hy
    have hX : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    unfold partialDeriv
    have h : (fun z => Real.sqrt (G' z).det * X z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hX] with z hz
      simp [hz]
    rw [h.fderiv_eq]
    simp
  have congrD : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (u₁ u₂ : E3 → ℝ)
      (A Kc' : Set E3), IsOpen A → (∀ y ∈ A, u₁ y = u₂ y) →
      dualVarG G om u₁ A Kc' ≤ dualVarG G om u₂ A Kc' := by
    intro G om u₁ u₂ A Kc' hA h
    unfold dualVarG
    refine sup_le_sup ?_ ?_
    · refine iSup_le fun h1 => le_iSup_of_le (fun h2 => h1 ?_) le_rfl
      rw [locallyIntegrableOn_iff hA.isLocallyClosed] at h2 ⊢
      intro k hk hkc
      exact (h2 k hk hkc).congr_fun (fun y hy => (h y (hk hy)).symm) hkc.isClosed.measurableSet
    · refine iSup₂_mono' fun X hX => ⟨X, hX, le_of_eq ?_⟩
      refine congrArg ENNReal.ofReal (integral_congr_ae (Filter.Eventually.of_forall fun y => ?_))
      dsimp only
      by_cases hy : y ∈ A
      · rw [h y hy]
      · rw [densZero G X y (fun h' => hy (hX.2.2.1 h'))]
        simp
  
  have hscale : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (f h : E3 → ℝ)
      (V Kc₁ Kc₂ : Set E3), IsOpen V → (∀ y ∈ V, ∀ i : Fin 3, om y i = 0) →
      (∀ y ∈ V, f y = 2 * Real.pi * h y) → V ∩ Kc₁ = V ∩ Kc₂ →
      dualVarG G om f V Kc₁ =
        ENNReal.ofReal (2 * Real.pi) * dualVarG G (fun _ _ => (0 : ℝ)) h V Kc₂ := by
    intro G om f h V Kc₁ Kc₂ hV hom hfh hK
    have step : ∀ X : E3 → E3, tsupport X ⊆ V →
        ENNReal.ofReal (∫ y, (f y * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) =
        ENNReal.ofReal (2 * Real.pi) * ENNReal.ofReal (∫ y, (h y * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, (fun _ _ => (0 : ℝ)) y i * X y i)) := by
      intro X hXV
      have hpt : (fun y => f y * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) =
          fun y => 2 * Real.pi * (h y * sepDensDiv G X y +
            Real.sqrt (G y).det * ∑ i : Fin 3, (fun _ _ => (0 : ℝ)) y i * X y i) := by
        funext y
        by_cases hy : y ∈ tsupport X
        · have hyV := hXV hy
          simp only [hom y hyV, hfh y hyV, zero_mul, Finset.sum_const_zero, mul_zero, add_zero]
          ring
        · rw [densZero G X y hy, image_eq_zero_of_notMem_tsupport hy]
          simp
      rw [hpt, integral_const_mul, ENNReal.ofReal_mul hpi0.le]
    have hadm1 : ∀ (K₁ K₂ : Set E3), V ∩ K₁ = V ∩ K₂ → ∀ X : E3 → E3, tsupport X ⊆ V →
        (∀ y, y ∉ K₁ → ContDiffAt ℝ ∞ X y) → (∀ y, y ∉ K₂ → ContDiffAt ℝ ∞ X y) := by
      intro K₁ K₂ hKK X hXV h1 y hy
      by_cases hyV : y ∈ V
      · refine h1 y (fun hy1 => hy ?_)
        have h2 : y ∈ V ∩ K₂ := by
          rw [← hKK]
          exact ⟨hyV, hy1⟩
        exact h2.2
      · have hyX : y ∉ tsupport X := fun h' => hyV (hXV h')
        refine (contDiffAt_const (c := (0 : E3))).congr_of_eventuallyEq ?_
        filter_upwards [notMem_tsupport_iff_eventuallyEq.1 hyX] with z hz
        exact hz
    have hadm : ∀ X : E3 → E3,
        ((∀ y, y ∉ Kc₁ → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ V ∧
          (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) ↔
        ((∀ y, y ∉ Kc₂ → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ V ∧
          (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) := by
      intro X
      constructor
      · rintro ⟨h1, h2, h3, h4, h5⟩
        exact ⟨hadm1 Kc₁ Kc₂ hK X h3 h1, h2, h3, h4, h5⟩
      · rintro ⟨h1, h2, h3, h4, h5⟩
        exact ⟨hadm1 Kc₂ Kc₁ hK.symm X h3 h1, h2, h3, h4, h5⟩
    have hguard : MeasureTheory.LocallyIntegrableOn f V ↔
        MeasureTheory.LocallyIntegrableOn h V := by
      rw [locallyIntegrableOn_iff hV.isLocallyClosed, locallyIntegrableOn_iff hV.isLocallyClosed]
      constructor
      · intro hf k hkV hk
        have h1 : MeasureTheory.IntegrableOn (fun y => f y / (2 * Real.pi)) k :=
          (hf k hkV hk).div_const _
        refine h1.congr_fun (fun y hy => ?_) hk.isClosed.measurableSet
        show f y / (2 * Real.pi) = h y
        rw [hfh y (hkV hy), mul_div_cancel_left₀ _ hpi0.ne']
      · intro hh k hkV hk
        have h1 : MeasureTheory.IntegrableOn (fun y => 2 * Real.pi * h y) k :=
          (hh k hkV hk).const_mul _
        refine h1.congr_fun (fun y hy => ?_) hk.isClosed.measurableSet
        show 2 * Real.pi * h y = f y
        rw [hfh y (hkV hy)]
    unfold dualVarG
    by_cases hf : MeasureTheory.LocallyIntegrableOn f V
    · have hh := hguard.1 hf
      rw [iSup_neg (not_not_intro hf), iSup_neg (not_not_intro hh), bot_sup_eq, bot_sup_eq,
        ENNReal.mul_iSup]
      refine iSup_congr (fun X => ?_)
      rw [ENNReal.mul_iSup]
      refine iSup_congr_Prop (hadm X) (fun hX => ?_)
      exact step X hX.2.2.1
    · have hh : ¬ MeasureTheory.LocallyIntegrableOn h V := fun h' => hf (hguard.2 h')
      rw [iSup_pos hf, iSup_pos hh, top_sup_eq, top_sup_eq, ENNReal.mul_top hc0]
  
  have chartOpen : ∀ (q : M) (S : Set M), IsOpen S → S ⊆ (chartAt E3 q).source →
      IsOpen (chartAt E3 q '' S) := fun q S hS hSs =>
    (chartAt E3 q).isOpen_image_of_subset_source hS hSs
  have chartTgt : ∀ (q : M) (S : Set M), S ⊆ (chartAt E3 q).source →
      chartAt E3 q '' S ⊆ (chartAt E3 q).target := by
    rintro q S hSs _ ⟨x, hx, rfl⟩
    exact (chartAt E3 q).map_source (hSs hx)
  have hGsm : ∀ (q : M) (i j : Fin 3),
      ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 q).symm y i j) (chartAt E3 q).target :=
    fun q i j => g.smooth q i j
  
  have hom0q : ∀ (q : M) (y : E3), y ∈ (chartAt E3 q).target → (chartAt E3 q).symm y ∈ O →
      ∀ i : Fin 3, dualOmega Ψ q y i = 0 := by
    intro q y hy hyO i
    have hSo : IsOpen ((chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' O) :=
      (chartAt E3 q).isOpen_inter_preimage_symm hO
    have him : ∀ z ∈ (chartAt E3 q).target ∩ (chartAt E3 q).symm ⁻¹' O,
        (Ψ ((chartAt E3 q).symm z)).im = 0 := by
      intro z hz
      rw [hΨO _ hz.2]
      simp
    have hev : (fun z => (Ψ ((chartAt E3 q).symm z)).im) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) :=
      Filter.eventually_of_mem (hSo.mem_nhds ⟨hy, hyO⟩) him
    have hpd0 : partialDeriv i (fun z => (Ψ ((chartAt E3 q).symm z)).im) y = 0 := by
      unfold partialDeriv
      rw [hev.fderiv_eq]
      simp
    simp only [dualOmega]
    rw [hpd0, him y ⟨hy, hyO⟩]
    ring
  
  have hBt : B ⊆ (chartAt E3 p).target := by
    intro y hy
    obtain ⟨x, ⟨_, hxs⟩, rfl⟩ := hBO hy
    exact (chartAt E3 p).map_source hxs
  have hBsymm : ∀ y ∈ B, (chartAt E3 p).symm y ∈ O ∧
      (chartAt E3 p).symm y ∈ (chartAt E3 p).source := by
    intro y hy
    obtain ⟨x, ⟨hxO, hxs⟩, rfl⟩ := hBO hy
    rw [(chartAt E3 p).left_inv hxs]
    exact ⟨hxO, hxs⟩
  have hV₁t : V₁ ⊆ (chartAt E3 p).target := hV₁B.trans hBt
  have hV₁O : (chartAt E3 p).symm '' V₁ ⊆ O := by
    rintro _ ⟨z, hz, rfl⟩
    exact (hBsymm z (hV₁B hz)).1
  have hV₁src : (chartAt E3 p).symm '' V₁ ⊆ Ω ∩ (chartAt E3 p).source := by
    rintro _ ⟨z, hz, rfl⟩
    exact ⟨hOΩ (hBsymm z (hV₁B hz)).1, (hBsymm z (hV₁B hz)).2⟩
  have hV₂1 : V₂ ⊆ V₁ := subset_closure.trans hV₂V₁
  have hV₂B : V₂ ⊆ B := hV₂1.trans hV₁B
  have hcl1 : closure V₂ ⊆ (chartAt E3 p).target := hV₂V₁.trans hV₁t
  have hV₁'o : IsOpen ((chartAt E3 p).symm '' V₁) :=
    (chartAt E3 p).isOpen_image_symm_of_subset_target hV₁ hV₁t
  have hV₂'o : IsOpen ((chartAt E3 p).symm '' V₂) :=
    (chartAt E3 p).isOpen_image_symm_of_subset_target hV₂ (hV₂1.trans hV₁t)
  have hC₂c : IsClosed ((chartAt E3 p).symm '' closure V₂) :=
    (hV₂c.image_of_continuousOn ((chartAt E3 p).continuousOn_symm.mono hcl1)).isClosed
  have hC₂V₁' : (chartAt E3 p).symm '' closure V₂ ⊆ (chartAt E3 p).symm '' V₁ :=
    Set.image_mono hV₂V₁
  have hV₂'C₂ : (chartAt E3 p).symm '' V₂ ⊆ (chartAt E3 p).symm '' closure V₂ :=
    Set.image_mono subset_closure
  have hV₂'src : (chartAt E3 p).symm '' V₂ ⊆ Ω ∩ (chartAt E3 p).source :=
    (Set.image_mono hV₂1).trans hV₁src
  have hR5 : ∀ x, x ∉ (chartAt E3 p).symm '' closure V₂ → φ₁ x = φ₂ x :=
    fun x hx => heq x (fun h => hx (Set.image_mono (hK'V₂.trans subset_closure) h))
  have himV₁ : chartAt E3 p '' ((chartAt E3 p).symm '' V₁) = V₁ :=
    (chartAt E3 p).toPartialEquiv.image_symm_image_of_subset_target hV₁t
  have himV₂ : chartAt E3 p '' ((chartAt E3 p).symm '' V₂) = V₂ :=
    (chartAt E3 p).toPartialEquiv.image_symm_image_of_subset_target (hV₂1.trans hV₁t)
  
  have hNnull : sepChartNull ((chartAt E3 p).symm '' V₁ ∩ Kc) := by
    refine sepChartNull_of_image_null p _ (fun x hx => (hV₁src hx.1).2) ?_
    refine measure_mono_null ?_ (submersion_zero_null V₁ hV₁ w (hw.mono hV₁B)
      (fun z hz => hdw z (hV₁B hz)))
    rintro _ ⟨x, ⟨⟨z, hz, rfl⟩, hxK⟩, rfl⟩
    rw [(chartAt E3 p).right_inv (hV₁t hz)]
    exact ⟨hz, (hwK z (hV₁B hz)).1 hxK⟩
  have hnullA : ∀ (q : M) (S : Set M), S ⊆ (chartAt E3 q).source →
      S ⊆ (chartAt E3 p).symm '' V₁ →
      volume (chartAt E3 q '' S ∩ chartAt E3 q '' (Kc ∩ (chartAt E3 q).source)) = 0 := by
    intro q S hSs hSV
    refine measure_mono_null ?_ (hNnull q)
    rintro _ ⟨⟨x, hx, rfl⟩, x', ⟨hx'K, hx's⟩, hxx'⟩
    have hxx : x' = x := (chartAt E3 q).injOn hx's (hSs hx) hxx'
    refine ⟨x, ⟨⟨hSV hx, ?_⟩, hSs hx⟩, rfl⟩
    rw [← hxx]
    exact hx'K
  
  have hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 p).symm y i j) B :=
    fun i j => (g.smooth p i j).mono hBt
  have hsymmG : ∀ (y : E3) (i j : Fin 3), g.coeff (chartAt E3 p).symm y i j =
      g.coeff (chartAt E3 p).symm y j i := fun y i j => g.symm _ _ _
  have hpd : ∀ y ∈ B, (g.coeff (chartAt E3 p).symm y).PosDef :=
    fun y hy => coeff_chart_symm_posDef g p y (hBt hy)
  
  have hcut : ∀ V ⊆ B, V ∩ chartAt E3 p '' (Kc ∩ (chartAt E3 p).source) =
      V ∩ (B ∩ {y | w y = 0}) := by
    intro V hVB
    ext y
    constructor
    · rintro ⟨hyV, x, ⟨hxK, hxs⟩, rfl⟩
      refine ⟨hyV, hVB hyV, ?_⟩
      show w (chartAt E3 p x) = 0
      refine (hwK _ (hVB hyV)).1 ?_
      rw [(chartAt E3 p).left_inv hxs]
      exact hxK
    · rintro ⟨hyV, hyB, hw0⟩
      exact ⟨hyV, (chartAt E3 p).symm y, ⟨(hwK y hyB).2 hw0,
        (chartAt E3 p).map_target (hBt hyB)⟩, (chartAt E3 p).right_inv (hBt hyB)⟩
  
  have hside : dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | 0 < w y}.indicator (fun y => φ₁ ((chartAt E3 p).symm y))) V₂ ∅ +
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | w y < 0}.indicator (fun y => φ₁ ((chartAt E3 p).symm y))) V₂ ∅ ≤
      dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
        (fun y => φ₁ ((chartAt E3 p).symm y)) V₂
        (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)) := by
    set v₁ : E3 → ℝ := fun y => φ₁ ((chartAt E3 p).symm y) / (2 * Real.pi) with hv₁_def
    have huv : ∀ y : E3, φ₁ ((chartAt E3 p).symm y) = 2 * Real.pi * v₁ y := by
      intro y
      simp only [hv₁_def]
      field_simp
    have hv₁int : ∀ y ∈ B, ∃ m : ℤ, v₁ y = m := by
      intro y hy
      obtain ⟨m, hm⟩ := hφ₁O _ (hBsymm y hy).1
      refine ⟨m, ?_⟩
      simp only [hv₁_def]
      rw [hm, mul_div_cancel_left₀ _ hpi0.ne']
    have hv₁m : ∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ v₁ y}) := by
      intro t
      have e : B ∩ {y | t ≤ v₁ y} = B ∩ {y | t ≤ (chartAt E3 p).target.indicator
          (fun y => φ₁ ((chartAt E3 p).symm y)) y / (2 * Real.pi)} := by
        ext y
        constructor
        · rintro ⟨hyB, h⟩
          refine ⟨hyB, ?_⟩
          show t ≤ (chartAt E3 p).target.indicator
            (fun y => φ₁ ((chartAt E3 p).symm y)) y / (2 * Real.pi)
          rw [Set.indicator_of_mem (hBt hyB)]
          exact h
        · rintro ⟨hyB, h⟩
          refine ⟨hyB, ?_⟩
          have h' : t ≤ (chartAt E3 p).target.indicator
              (fun y => φ₁ ((chartAt E3 p).symm y)) y / (2 * Real.pi) := h
          rw [Set.indicator_of_mem (hBt hyB)] at h'
          exact h'
      rw [e]
      exact hB.measurableSet.inter (measurableSet_le measurable_const ((hφ₁ p).div_const _))
    have h1 := hscale (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
      (fun y => φ₁ ((chartAt E3 p).symm y)) v₁ V₂
      (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)) (B ∩ {y | w y = 0}) hV₂
      (fun y hy i => hom0q p y (hBt (hV₂B hy)) (hBsymm y (hV₂B hy)).1 i)
      (fun y _ => huv y) (hcut V₂ hV₂B)
    have h2 := dualVarG_zero_cut_split (g.coeff (chartAt E3 p).symm) B hB hG hsymmG hpd w hw hdw
      v₁ hv₁int hv₁m V₂ hV₂ hV₂c (hV₂V₁.trans hV₁B)
    have h3 : ∀ S : Set E3, dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
        (S.indicator (fun y => φ₁ ((chartAt E3 p).symm y))) V₂ ∅ =
        ENNReal.ofReal (2 * Real.pi) *
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) (S.indicator v₁) V₂ ∅ := by
      intro S
      refine hscale _ _ _ _ V₂ ∅ ∅ hV₂ (fun _ _ _ => rfl) (fun y _ => ?_) rfl
      by_cases hyS : y ∈ S
      · rw [Set.indicator_of_mem hyS, Set.indicator_of_mem hyS, huv y]
      · rw [Set.indicator_of_notMem hyS, Set.indicator_of_notMem hyS, mul_zero]
    rw [h3, h3, ← mul_add, ← h2, ← h1]
  
  have key : ∀ (n : ℕ) (pf : Fin n → M) (W : Fin n → Set M),
      ((∀ k, IsOpen (W k) ∧ W k ⊆ Ω ∩ (chartAt E3 (pf k)).source) ∧
        Pairwise (fun k l => Disjoint (W k) (W l))) →
      ∑ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y)) (chartAt E3 (pf k) '' W k)
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) +
        (dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | 0 < w y}.indicator (fun y => φ₁ ((chartAt E3 p).symm y))) V₂ ∅ +
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | w y < 0}.indicator (fun y => φ₁ ((chartAt E3 p).symm y))) V₂ ∅) ≤
      dualRiemVar g Ψ φ₁ Ω Kc +
        (dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | 0 < w y}.indicator (fun y => φ₂ ((chartAt E3 p).symm y))) V₁ ∅ +
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | w y < 0}.indicator (fun y => φ₂ ((chartAt E3 p).symm y))) V₁ ∅) := by
    intro n pf W hW
    have hWo : ∀ k, IsOpen (W k) := fun k => (hW.1 k).1
    have hWs : ∀ k, W k ⊆ (chartAt E3 (pf k)).source :=
      fun k => (hW.1 k).2.trans Set.inter_subset_right
    have hWΩ : ∀ k, W k ⊆ Ω := fun k => (hW.1 k).2.trans Set.inter_subset_left
    have hAo : ∀ k, IsOpen (W k ∩ (chartAt E3 p).symm '' V₁) := fun k => (hWo k).inter hV₁'o
    have hBo : ∀ k, IsOpen (W k \ (chartAt E3 p).symm '' closure V₂) :=
      fun k => (hWo k).sdiff hC₂c
    have hAs : ∀ k, W k ∩ (chartAt E3 p).symm '' V₁ ⊆ (chartAt E3 (pf k)).source :=
      fun k => Set.inter_subset_left.trans (hWs k)
    have hBs : ∀ k, W k \ (chartAt E3 p).symm '' closure V₂ ⊆ (chartAt E3 (pf k)).source :=
      fun k => Set.diff_subset.trans (hWs k)
    have hAp : ∀ k, W k ∩ (chartAt E3 p).symm '' V₁ ⊆ (chartAt E3 p).source :=
      fun k => Set.inter_subset_right.trans (hV₁src.trans Set.inter_subset_right)
    
    have h7 : ∀ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y)) (chartAt E3 (pf k) '' W k)
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) ≤
        dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k ∩ (chartAt E3 p).symm '' V₁))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) +
        dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) := by
      intro k
      have homA : ∀ y ∈ chartAt E3 (pf k) '' (W k ∩ (chartAt E3 p).symm '' V₁),
          ∀ i : Fin 3, dualOmega Ψ (pf k) y i = 0 := by
        rintro _ ⟨x, hx, rfl⟩ i
        refine hom0q (pf k) _ ((chartAt E3 (pf k)).map_source (hAs k hx)) ?_ i
        rw [(chartAt E3 (pf k)).left_inv (hAs k hx)]
        exact hV₁O hx.2
      refine (monoD _ _ _ _ _ _ ?_).trans (dualVarG_union_le_of_null _ _ _
        (chartAt E3 (pf k)).open_target (hGsm (pf k))
        (fun y hy => coeff_chart_symm_posDef g (pf k) y hy) _ _ _ _
        (chartOpen _ _ (hAo k) (hAs k)) (chartOpen _ _ (hBo k) (hBs k))
        (chartTgt _ _ (hAs k)) (chartTgt _ _ (hBs k))
        (hnullA (pf k) _ (hAs k) Set.inter_subset_right) homA)
      rintro _ ⟨x, hx, rfl⟩
      by_cases hxC : x ∈ (chartAt E3 p).symm '' closure V₂
      · exact Or.inl ⟨x, ⟨hx, hC₂V₁' hxC⟩, rfl⟩
      · exact Or.inr ⟨x, ⟨hx, hxC⟩, rfl⟩
    
    have h8 : ∀ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) ≤
        dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₁ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) := by
      intro k
      refine congrD _ _ _ _ _ _ (chartOpen _ _ (hBo k) (hBs k)) ?_
      rintro _ ⟨x, hx, rfl⟩
      rw [(chartAt E3 (pf k)).left_inv (hBs k hx)]
      exact (hR5 x hx.2).symm
    
    have h9 : ∀ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k ∩ (chartAt E3 p).symm '' V₁))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) ≤
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | 0 < w y}.indicator (fun y => φ₂ ((chartAt E3 p).symm y)))
          (chartAt E3 p '' (W k ∩ (chartAt E3 p).symm '' V₁)) ∅ +
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | w y < 0}.indicator (fun y => φ₂ ((chartAt E3 p).symm y)))
          (chartAt E3 p '' (W k ∩ (chartAt E3 p).symm '' V₁)) ∅ :=
      fun k => dualVarG_wall_piece_le g Ψ φ₂ hφ₂ Kc O hO hΨO hφ₂O p B hB hBO w hw hdw hwK
        (pf k) _ (hAo k) (fun x hx => Set.image_mono hV₁B hx.2) (hAs k)
    
    have h9b : ∀ f : E3 → ℝ, ∑ k, dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          f (chartAt E3 p '' (W k ∩ (chartAt E3 p).symm '' V₁)) ∅ ≤
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) f V₁ ∅ := by
      intro f
      refine (dualVarG_sum_le _ _ _ n
        (fun k => chartAt E3 p '' (W k ∩ (chartAt E3 p).symm '' V₁)) ?_).trans
        (monoD _ _ _ _ _ _ ?_)
      · intro k l hkl
        rw [Set.disjoint_left]
        rintro _ ⟨x, hx, rfl⟩ ⟨x', hx', hxx'⟩
        have hxx : x' = x := (chartAt E3 p).injOn (hAp l hx') (hAp k hx) hxx'
        subst hxx
        exact Set.disjoint_left.1 (hW.2 hkl) hx.1 hx'.1
      · refine Set.iUnion_subset fun k => ?_
        exact (Set.image_mono Set.inter_subset_right).trans himV₁.le
    
    have h10 : ∑ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₁ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) +
        dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
          (fun y => φ₁ ((chartAt E3 p).symm y)) V₂
          (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)) ≤ dualRiemVar g Ψ φ₁ Ω Kc := by
      obtain ⟨W', hW'c, hW'l⟩ : ∃ W' : Fin (n + 1) → Set M,
          (∀ k, W' (Fin.castSucc k) = W k \ (chartAt E3 p).symm '' closure V₂) ∧
          W' (Fin.last n) = (chartAt E3 p).symm '' V₂ :=
        ⟨Fin.snoc (α := fun _ => Set M) (fun k => W k \ (chartAt E3 p).symm '' closure V₂)
          ((chartAt E3 p).symm '' V₂), fun k => by simp, by simp⟩
      obtain ⟨pf', hpc, hpl⟩ : ∃ pf' : Fin (n + 1) → M,
          (∀ k, pf' (Fin.castSucc k) = pf k) ∧ pf' (Fin.last n) = p :=
        ⟨Fin.snoc (α := fun _ => M) pf p, fun k => by simp, by simp⟩
      have dl : ∀ k, Disjoint (W k \ (chartAt E3 p).symm '' closure V₂)
          ((chartAt E3 p).symm '' V₂) := by
        intro k
        rw [Set.disjoint_left]
        intro x hx hx'
        exact hx.2 (hV₂'C₂ hx')
      have hadm : (∀ i, IsOpen (W' i) ∧ W' i ⊆ Ω ∩ (chartAt E3 (pf' i)).source) ∧
          Pairwise (fun i j => Disjoint (W' i) (W' j)) := by
        refine ⟨fun i => ?_, fun i j hij => ?_⟩
        · rcases Fin.eq_castSucc_or_eq_last i with ⟨k, rfl⟩ | rfl
          · rw [hW'c, hpc]
            exact ⟨hBo k, fun x hx => ⟨hWΩ k hx.1, hWs k hx.1⟩⟩
          · rw [hW'l, hpl]
            exact ⟨hV₂'o, hV₂'src⟩
        · rcases Fin.eq_castSucc_or_eq_last i with ⟨k, rfl⟩ | rfl
          · rcases Fin.eq_castSucc_or_eq_last j with ⟨l, rfl⟩ | rfl
            · rw [hW'c, hW'c]
              have hkl : k ≠ l := fun h => hij (by rw [h])
              exact (hW.2 hkl).mono Set.diff_subset Set.diff_subset
            · rw [hW'c, hW'l]
              exact dl k
          · rcases Fin.eq_castSucc_or_eq_last j with ⟨l, rfl⟩ | rfl
            · rw [hW'c, hW'l]
              exact (dl l).symm
            · exact absurd rfl hij
      have hsum : ∑ i, dualVarG (g.coeff (chartAt E3 (pf' i)).symm) (dualOmega Ψ (pf' i))
          (fun y => φ₁ ((chartAt E3 (pf' i)).symm y)) (chartAt E3 (pf' i) '' W' i)
          (chartAt E3 (pf' i) '' (Kc ∩ (chartAt E3 (pf' i)).source)) =
          ∑ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
            (fun y => φ₁ ((chartAt E3 (pf k)).symm y))
            (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
            (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) +
          dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega Ψ p)
            (fun y => φ₁ ((chartAt E3 p).symm y)) V₂
            (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)) := by
        rw [Fin.sum_univ_castSucc]
        simp only [hW'c, hW'l, hpc, hpl, himV₂]
      rw [← hsum]
      unfold dualRiemVar
      exact le_iSup_of_le (n + 1) (le_iSup_of_le pf' (le_iSup_of_le W'
        (le_iSup_of_le hadm le_rfl)))
    
    have step1 : ∑ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y)) (chartAt E3 (pf k) '' W k)
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) ≤
        ∑ k, (dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k ∩ (chartAt E3 p).symm '' V₁))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) +
        dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₁ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k \ (chartAt E3 p).symm '' closure V₂))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source))) :=
      Finset.sum_le_sum fun k _ => (h7 k).trans (add_le_add le_rfl (h8 k))
    rw [Finset.sum_add_distrib] at step1
    have hAsum : ∑ k, dualVarG (g.coeff (chartAt E3 (pf k)).symm) (dualOmega Ψ (pf k))
          (fun y => φ₂ ((chartAt E3 (pf k)).symm y))
          (chartAt E3 (pf k) '' (W k ∩ (chartAt E3 p).symm '' V₁))
          (chartAt E3 (pf k) '' (Kc ∩ (chartAt E3 (pf k)).source)) ≤
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | 0 < w y}.indicator (fun y => φ₂ ((chartAt E3 p).symm y))) V₁ ∅ +
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | w y < 0}.indicator (fun y => φ₂ ((chartAt E3 p).symm y))) V₁ ∅ := by
      refine (Finset.sum_le_sum fun k _ => h9 k).trans ?_
      rw [Finset.sum_add_distrib]
      exact add_le_add (h9b _) (h9b _)
    refine (add_le_add step1 hside).trans ?_
    rw [add_assoc, add_comm (dualRiemVar g Ψ φ₁ Ω Kc)]
    exact add_le_add hAsum h10
  
  have c0 : dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | 0 < w y}.indicator (fun y => φ₁ ((chartAt E3 p).symm y))) V₂ ∅ +
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | w y < 0}.indicator (fun y => φ₁ ((chartAt E3 p).symm y))) V₂ ∅ ≤
      dualRiemVar g Ψ φ₁ Ω Kc +
        (dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | 0 < w y}.indicator (fun y => φ₂ ((chartAt E3 p).symm y))) V₁ ∅ +
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | w y < 0}.indicator (fun y => φ₂ ((chartAt E3 p).symm y))) V₁ ∅) := by
    have h := key 0 Fin.elim0 Fin.elim0 ⟨fun k => k.elim0, fun k => k.elim0⟩
    rw [Fin.sum_univ_zero, zero_add] at h
    exact h
  refine le_trans ?_ le_self_add
  generalize dualRiemVar g Ψ φ₁ Ω Kc = S₁ at key c0 ⊢
  unfold dualRiemVar
  rw [ENNReal.iSup_add]
  refine iSup_le fun n => ?_
  rw [ENNReal.iSup_add]
  refine iSup_le fun pf => ?_
  rw [ENNReal.iSup_add]
  refine iSup_le fun W => ?_
  by_cases h : (∀ k, IsOpen (W k) ∧ W k ⊆ Ω ∩ (chartAt E3 (pf k)).source) ∧
      Pairwise (fun k l => Disjoint (W k) (W l))
  · rw [iSup_pos h]
    exact key n pf W h
  · rw [iSup_neg h, bot_eq_zero, zero_add]
    exact c0

theorem dualVarG_pair_local_compare (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (U V K' : Set E3)
    (hU : IsOpen U) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) U)
    (hdet : ∀ y ∈ U, 0 < (G y).det) (a₁ b₁ a₂ b₂ : E3 → ℝ) (hV : IsOpen V) (hVU : V ⊆ U)
    (hK' : IsCompact K') (hK'V : K' ⊆ V) (ha : ∀ y : E3, y ∉ K' → a₁ y = a₂ y)
    (hb : ∀ y : E3, y ∉ K' → b₁ y = b₂ y)
    (hfin : dualVarG G (fun _ _ => (0 : ℝ)) a₁ V ∅ + dualVarG G (fun _ _ => (0 : ℝ)) b₁ V ∅ < ⊤)
    (hcmp : ∀ V₁ V₂ : Set E3, IsOpen V₁ → IsOpen V₂ → K' ⊆ V₂ → IsCompact (closure V₂) →
      closure V₂ ⊆ V₁ → V₁ ⊆ V →
      dualVarG G (fun _ _ => (0 : ℝ)) a₁ V₂ ∅ + dualVarG G (fun _ _ => (0 : ℝ)) b₁ V₂ ∅ ≤
        (dualVarG G (fun _ _ => (0 : ℝ)) a₂ V₁ ∅ + dualVarG G (fun _ _ => (0 : ℝ)) b₂ V₁ ∅) +
          (dualVarG G (fun _ _ => (0 : ℝ)) a₁ (V₁ \ K') ∅ +
            dualVarG G (fun _ _ => (0 : ℝ)) b₁ (V₁ \ K') ∅)) :
    dualVarG G (fun _ _ => (0 : ℝ)) a₁ V ∅ + dualVarG G (fun _ _ => (0 : ℝ)) b₁ V ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) a₂ V ∅ + dualVarG G (fun _ _ => (0 : ℝ)) b₂ V ∅ :=
by
  classical
  have hK'c : IsClosed K' := hK'.isClosed
  
  have densZero : ∀ (X : E3 → E3) (y : E3), y ∉ tsupport X → sepDensDiv G X y = 0 := by
    intro X y hy
    have hX : X =ᶠ[𝓝 y] 0 := notMem_tsupport_iff_eventuallyEq.mp hy
    unfold sepDensDiv
    refine Finset.sum_eq_zero fun i _ => ?_
    unfold partialDeriv
    have h : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] fun _ => (0 : ℝ) := by
      filter_upwards [hX] with z hz
      simp [hz]
    rw [h.fderiv_eq]
    simp
  
  have mono : ∀ (u : E3 → ℝ) (A B : Set E3), A ⊆ B →
      dualVarG G (fun _ _ => (0 : ℝ)) u A ∅ ≤ dualVarG G (fun _ _ => (0 : ℝ)) u B ∅ := by
    intro u A B hAB
    unfold dualVarG
    refine sup_le_sup ?_ ?_
    · exact iSup_le fun hA => le_iSup_of_le (fun hB => hA (hB.mono_set hAB)) le_rfl
    · exact iSup₂_mono' fun X hX => ⟨X, ⟨hX.1, hX.2.1, hX.2.2.1.trans hAB, hX.2.2.2⟩, le_rfl⟩
  
  have congrD : ∀ (u₁ u₂ : E3 → ℝ) (A : Set E3), IsOpen A → (∀ y ∈ A, u₁ y = u₂ y) →
      dualVarG G (fun _ _ => (0 : ℝ)) u₁ A ∅ = dualVarG G (fun _ _ => (0 : ℝ)) u₂ A ∅ := by
    intro u₁ u₂ A hA h
    have hLI : LocallyIntegrableOn u₁ A ↔ LocallyIntegrableOn u₂ A := by
      rw [locallyIntegrableOn_iff hA.isLocallyClosed, locallyIntegrableOn_iff hA.isLocallyClosed]
      constructor
      · intro H k hk hkc
        exact (H k hk hkc).congr_fun (fun y hy => h y (hk hy)) hkc.isClosed.measurableSet
      · intro H k hk hkc
        exact (H k hk hkc).congr_fun (fun y hy => (h y (hk hy)).symm) hkc.isClosed.measurableSet
    unfold dualVarG
    congr 1
    · simp only [hLI]
    · refine iSup_congr fun X => iSup_congr fun hX => ?_
      congr 1
      refine integral_congr_ae (Eventually.of_forall fun y => ?_)
      dsimp only
      by_cases hyA : y ∈ A
      · rw [h y hyA]
      · have hz := densZero X y (fun hy => hyA (hX.2.2.1 hy))
        rw [hz]
        simp
  
  have two : ∀ (u : E3 → ℝ) (A B : Set E3), Disjoint A B →
      dualVarG G (fun _ _ => (0 : ℝ)) u A ∅ + dualVarG G (fun _ _ => (0 : ℝ)) u B ∅ ≤
        dualVarG G (fun _ _ => (0 : ℝ)) u (A ∪ B) ∅ := by
    intro u A B hAB
    have h := dualVarG_sum_le G (fun _ _ => (0 : ℝ)) u 2 ![A, B] (by
      intro k l hkl
      fin_cases k <;> fin_cases l <;> simp_all [hAB, hAB.symm])
    have hU2 : (⋃ k, ![A, B] k) = A ∪ B := by
      ext x
      simp [Fin.exists_fin_two]
    rw [Fin.sum_univ_two, hU2] at h
    simpa using h
  
  have union : ∀ (u : E3 → ℝ) (A B : Set E3), IsOpen A → IsOpen B → A ⊆ U → B ⊆ U →
      dualVarG G (fun _ _ => (0 : ℝ)) u (A ∪ B) ∅ ≤
        dualVarG G (fun _ _ => (0 : ℝ)) u A ∅ + dualVarG G (fun _ _ => (0 : ℝ)) u B ∅ :=
    fun u A B hA hB hAU hBU =>
      dualVarG_union_le G (fun _ _ => (0 : ℝ)) U hU hG hdet (fun _ => continuousOn_const) u A B ∅
        hA hB hAU hBU (Set.disjoint_empty A)
  
  have collar : ∀ u : E3 → ℝ, dualVarG G (fun _ _ => (0 : ℝ)) u V ∅ < ⊤ →
      ∀ ε : ENNReal, 0 < ε → ∃ C : Set E3, IsOpen C ∧ K' ⊆ C ∧ C ⊆ V ∧
      dualVarG G (fun _ _ => (0 : ℝ)) u (C \ K') ∅ < ε := by
    intro u hfu ε hε
    have hLocV : LocallyIntegrableOn u V := by
      by_contra hn
      have htop : dualVarG G (fun _ _ => (0 : ℝ)) u V ∅ = ⊤ := by
        unfold dualVarG
        rw [iSup_pos hn, top_sup_eq]
      exact hfu.ne htop
    by_contra hH
    push_neg at hH
    set δ : ENNReal := min ε 1 / 2 with hδ
    have hm0 : min ε 1 ≠ 0 := (lt_min hε one_pos).ne'
    have hmt : min ε 1 ≠ ⊤ := ne_top_of_le_ne_top ENNReal.one_ne_top (min_le_right _ _)
    have hδ0 : δ ≠ 0 := (ENNReal.half_pos hm0).ne'
    have hδε : δ < ε := lt_of_lt_of_le (ENNReal.half_lt_self hm0 hmt) (min_le_left _ _)
    have claim : ∀ n : ℕ, ∃ C : Set E3, IsOpen C ∧ K' ⊆ C ∧ C ⊆ V ∧
        (n : ENNReal) * δ + dualVarG G (fun _ _ => (0 : ℝ)) u (C \ K') ∅ ≤
          dualVarG G (fun _ _ => (0 : ℝ)) u (V \ K') ∅ := by
      intro n
      induction n with
      | zero => exact ⟨V, hV, hK'V, subset_rfl, by simp⟩
      | succ n ih =>
        obtain ⟨C, hCo, hK'C, hCV, hC⟩ := ih
        have h1 : δ < dualVarG G (fun _ _ => (0 : ℝ)) u (C \ K') ∅ :=
          lt_of_lt_of_le hδε (hH C hCo hK'C hCV)
        have hloc : LocallyIntegrableOn u (C \ K') :=
          hLocV.mono_set (Set.diff_subset.trans hCV)
        unfold dualVarG at h1
        rw [iSup_neg (not_not.mpr hloc), bot_sup_eq] at h1
        obtain ⟨X, h1⟩ := lt_iSup_iff.mp h1
        obtain ⟨hX, h1⟩ := lt_iSup_iff.mp h1
        have hT : IsCompact (tsupport X) := hX.2.1
        have hCK : IsOpen (C \ K') := hCo.sdiff hK'c
        obtain ⟨O, hOo, hTO, hOC, -⟩ :=
          exists_open_between_and_isCompact_closure hT hCK hX.2.2.1
        refine ⟨C \ closure O, hCo.sdiff isClosed_closure, ?_, Set.diff_subset.trans hCV, ?_⟩
        · intro x hx
          exact ⟨hK'C hx, fun hxO => (hOC hxO).2 hx⟩
        · have hδO : δ ≤ dualVarG G (fun _ _ => (0 : ℝ)) u O ∅ := by
            unfold dualVarG
            refine le_sup_of_le_right ?_
            refine le_trans h1.le ?_
            exact le_iSup₂_of_le X ⟨hX.1, hX.2.1, hTO, hX.2.2.2⟩ le_rfl
          have hdisj : Disjoint O ((C \ closure O) \ K') := by
            rw [Set.disjoint_left]
            intro x hxO hx
            exact hx.1.2 (subset_closure hxO)
          have hsub : O ∪ ((C \ closure O) \ K') ⊆ C \ K' := by
            intro x hx
            rcases hx with hx | hx
            · exact hOC (subset_closure hx)
            · exact ⟨hx.1.1, hx.2⟩
          have h2 := (two u _ _ hdisj).trans (mono u _ _ hsub)
          calc ((n + 1 : ℕ) : ENNReal) * δ +
                dualVarG G (fun _ _ => (0 : ℝ)) u ((C \ closure O) \ K') ∅
              = (n : ENNReal) * δ +
                  (δ + dualVarG G (fun _ _ => (0 : ℝ)) u ((C \ closure O) \ K') ∅) := by
                push_cast; ring
            _ ≤ (n : ENNReal) * δ + dualVarG G (fun _ _ => (0 : ℝ)) u (C \ K') ∅ := by
                gcongr
                exact (add_le_add hδO le_rfl).trans h2
            _ ≤ _ := hC
    obtain ⟨n, hn⟩ := ENNReal.exists_nat_mul_gt hδ0 hfu.ne
    obtain ⟨C, -, -, -, hC⟩ := claim n
    have hle : (n : ENNReal) * δ ≤ dualVarG G (fun _ _ => (0 : ℝ)) u V ∅ :=
      le_trans le_self_add (hC.trans (mono u _ _ Set.diff_subset))
    exact absurd hn (not_lt.mpr hle)
  
  have hfa : dualVarG G (fun _ _ => (0 : ℝ)) a₁ V ∅ < ⊤ := (ENNReal.add_lt_top.mp hfin).1
  have hfb : dualVarG G (fun _ _ => (0 : ℝ)) b₁ V ∅ < ⊤ := (ENNReal.add_lt_top.mp hfin).2
  
  refine ENNReal.le_of_forall_pos_le_add fun ε hε _ => ?_
  have hη : (0 : ENNReal) < (ε : ENNReal) / 2 :=
    ENNReal.half_pos (ENNReal.coe_pos.mpr hε).ne'
  have hη' : (0 : ENNReal) < (ε : ENNReal) / 2 / 2 := ENNReal.half_pos hη.ne'
  obtain ⟨Ca, hCao, hK'Ca, hCaV, hxa⟩ := collar a₁ hfa _ hη'
  obtain ⟨Cb, hCbo, hK'Cb, hCbV, hxb⟩ := collar b₁ hfb _ hη'
  have hCo : IsOpen (Ca ∩ Cb) := hCao.inter hCbo
  have hK'C : K' ⊆ Ca ∩ Cb := Set.subset_inter hK'Ca hK'Cb
  have hCV : Ca ∩ Cb ⊆ V := Set.inter_subset_left.trans hCaV
  obtain ⟨B, hBo, hK'B, hBC, -⟩ := exists_open_between_and_isCompact_closure hK' hCo hK'C
  obtain ⟨A, hAo, hK'A, hAB, hAc⟩ := exists_open_between_and_isCompact_closure hK' hBo hK'B
  have hBV : B ⊆ V := (subset_closure.trans hBC).trans hCV
  have hAV : A ⊆ V := (subset_closure.trans hAB).trans hBV
  
  have hcut1 : V ⊆ A ∪ (V \ K') := by
    intro y hy
    by_cases h : y ∈ K'
    · exact Or.inl (hK'A h)
    · exact Or.inr ⟨hy, h⟩
  have hd : ∀ u : E3 → ℝ, dualVarG G (fun _ _ => (0 : ℝ)) u V ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) u A ∅ + dualVarG G (fun _ _ => (0 : ℝ)) u (V \ K') ∅ :=
    fun u => (mono u V _ hcut1).trans
      (union u A (V \ K') hAo (hV.sdiff hK'c) (hAV.trans hVU) (Set.diff_subset.trans hVU))
  have hcut2 : V \ K' ⊆ ((Ca ∩ Cb) \ K') ∪ (V \ closure B) := by
    rintro y ⟨hyV, hyK⟩
    by_cases h : y ∈ closure B
    · exact Or.inl ⟨hBC h, hyK⟩
    · exact Or.inr ⟨hyV, h⟩
  have he : ∀ u : E3 → ℝ, dualVarG G (fun _ _ => (0 : ℝ)) u (V \ K') ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) u ((Ca ∩ Cb) \ K') ∅ +
        dualVarG G (fun _ _ => (0 : ℝ)) u (V \ closure B) ∅ :=
    fun u => (mono u _ _ hcut2).trans
      (union u _ _ (hCo.sdiff hK'c) (hV.sdiff isClosed_closure)
        (Set.diff_subset.trans (hCV.trans hVU)) (Set.diff_subset.trans hVU))
  have hBK : B \ K' ⊆ (Ca ∩ Cb) \ K' := Set.diff_subset_diff_left (subset_closure.trans hBC)
  have hoff : ∀ y ∈ V \ closure B, y ∉ K' := fun y hy hyK => hy.2 (subset_closure (hK'B hyK))
  have hga := congrD a₁ a₂ _ (hV.sdiff isClosed_closure) (fun y hy => ha y (hoff y hy))
  have hgb := congrD b₁ b₂ _ (hV.sdiff isClosed_closure) (fun y hy => hb y (hoff y hy))
  have hBdisj : Disjoint B (V \ closure B) := by
    rw [Set.disjoint_left]
    intro y hyB hy
    exact hy.2 (subset_closure hyB)
  have hh : ∀ u : E3 → ℝ, dualVarG G (fun _ _ => (0 : ℝ)) u B ∅ +
      dualVarG G (fun _ _ => (0 : ℝ)) u (V \ closure B) ∅ ≤
        dualVarG G (fun _ _ => (0 : ℝ)) u V ∅ :=
    fun u => (two u _ _ hBdisj).trans (mono u _ _ (Set.union_subset hBV Set.diff_subset))
  have hcm := hcmp B A hBo hAo hK'A hAc hAB hBV
  have hda := hd a₁
  have hdb := hd b₁
  have hea := he a₁
  have heb := he b₁
  have hha := hh a₂
  have hhb := hh b₂
  have hBa := mono a₁ _ _ hBK
  have hBb := mono b₁ _ _ hBK
  have hxa' := (mono a₁ _ _ (Set.diff_subset_diff_left
    (Set.inter_subset_left (s := Ca) (t := Cb)))).trans hxa.le
  have hxb' := (mono b₁ _ _ (Set.diff_subset_diff_left
    (Set.inter_subset_right (s := Ca) (t := Cb)))).trans hxb.le
  rw [hga] at hea
  rw [hgb] at heb
  have hx1 : dualVarG G (fun _ _ => (0 : ℝ)) a₁ ((Ca ∩ Cb) \ K') ∅ +
      dualVarG G (fun _ _ => (0 : ℝ)) b₁ ((Ca ∩ Cb) \ K') ∅ ≤ (ε : ENNReal) / 2 := by
    calc _ ≤ (ε : ENNReal) / 2 / 2 + (ε : ENNReal) / 2 / 2 := add_le_add hxa' hxb'
      _ = (ε : ENNReal) / 2 := ENNReal.add_halves _
  have hf := hcm.trans (add_le_add le_rfl (add_le_add hBa hBb))
  revert hda hdb hea heb hha hhb hx1 hf
  generalize dualVarG G (fun _ _ => (0 : ℝ)) a₁ V ∅ = TaV
  generalize dualVarG G (fun _ _ => (0 : ℝ)) b₁ V ∅ = TbV
  generalize dualVarG G (fun _ _ => (0 : ℝ)) a₂ V ∅ = SaV
  generalize dualVarG G (fun _ _ => (0 : ℝ)) b₂ V ∅ = SbV
  generalize dualVarG G (fun _ _ => (0 : ℝ)) a₁ A ∅ = TaA
  generalize dualVarG G (fun _ _ => (0 : ℝ)) b₁ A ∅ = TbA
  generalize dualVarG G (fun _ _ => (0 : ℝ)) a₂ B ∅ = SaB
  generalize dualVarG G (fun _ _ => (0 : ℝ)) b₂ B ∅ = SbB
  generalize dualVarG G (fun _ _ => (0 : ℝ)) a₁ (V \ K') ∅ = TaVK
  generalize dualVarG G (fun _ _ => (0 : ℝ)) b₁ (V \ K') ∅ = TbVK
  generalize dualVarG G (fun _ _ => (0 : ℝ)) a₁ ((Ca ∩ Cb) \ K') ∅ = x₁
  generalize dualVarG G (fun _ _ => (0 : ℝ)) b₁ ((Ca ∩ Cb) \ K') ∅ = x₂
  generalize dualVarG G (fun _ _ => (0 : ℝ)) a₂ (V \ closure B) ∅ = SaR
  generalize dualVarG G (fun _ _ => (0 : ℝ)) b₂ (V \ closure B) ∅ = SbR
  intro hda hdb hea heb hha hhb hx1 hf
  calc TaV + TbV
      ≤ (TaA + TaVK) + (TbA + TbVK) := add_le_add hda hdb
    _ = (TaA + TbA) + (TaVK + TbVK) := add_add_add_comm _ _ _ _
    _ ≤ ((SaB + SbB) + (x₁ + x₂)) + ((x₁ + SaR) + (x₂ + SbR)) :=
        add_le_add hf (add_le_add hea heb)
    _ = ((SaB + SaR) + (SbB + SbR)) + ((x₁ + x₂) + (x₁ + x₂)) := by ring
    _ ≤ (SaV + SbV) + ((ε : ENNReal) / 2 + (ε : ENNReal) / 2) :=
        add_le_add (add_le_add hha hhb) (add_le_add hx1 hx1)
    _ = SaV + SbV + (ε : ENNReal) := by rw [ENNReal.add_halves]

theorem dual_wall_chart_reduce [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (Ω Kv Kc : Set M) (hΩ : IsOpen Ω) (hKv : IsCompact Kv) (hKvΩ : Kv ⊆ Ω)
    (φ₀ : M → ℝ) (hφ₀m : dualChartMeas φ₀)
    (n : M → ℤ) (hn0 : ∀ x : M, x ∉ Kv → n x = 0)
    (hnm : ∀ j : ℤ, sepChartMeas {x | n x = j})
    (hfin : dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc
      < ⊤)
    (hmin : ∀ n' : M → ℤ, (∀ x : M, x ∉ Kv → n' x = 0) →
      (∀ j : ℤ, sepChartMeas {x | n' x = j}) →
      dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc ≤
        dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ)) Ω Kc)
    (O : Set M) (hO : IsOpen O) (hOΩ : O ⊆ Ω) (hΨO : ∀ x ∈ O, Ψ x = 1)
    (hφ₀O : ∀ x ∈ O, φ₀ x = 0) (p : M) (B : Set E3) (hB : IsOpen B)
    (hBO : B ⊆ chartAt E3 p '' (O ∩ (chartAt E3 p).source))
    (w : E3 → ℝ) (hw : ContDiffOn ℝ ∞ w B) (hdw : ∀ z ∈ B, fderiv ℝ w z ≠ 0)
    (hwK : ∀ y ∈ B, (chartAt E3 p).symm y ∈ Kc ↔ w y = 0) :
    (∀ W : Set E3, IsOpen W → IsCompact (closure W) → closure W ⊆ B →
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
        (fun y => (n ((chartAt E3 p).symm y) : ℝ)) W (B ∩ {y | w y = 0}) < ⊤) ∧
    ∀ (v' : E3 → ℝ) (W L : Set E3), (∀ y ∈ B, ∃ m : ℤ, v' y = m) →
      (∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ v' y})) → IsOpen W → IsCompact (closure W) →
      closure W ⊆ B → IsCompact L → L ⊆ W →
      (∀ y : E3, y ∉ L → v' y = (n ((chartAt E3 p).symm y) : ℝ)) →
      (∀ y ∈ L, v' y ≠ (n ((chartAt E3 p).symm y) : ℝ) → (chartAt E3 p).symm y ∈ Kv) →
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          (fun y => (n ((chartAt E3 p).symm y) : ℝ)) W (B ∩ {y | w y = 0}) ≤
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) v' W (B ∩ {y | w y = 0}) :=
by
  classical
  have hpi0 : (0 : ℝ) < 2 * Real.pi := by positivity
  have hc0 : ENNReal.ofReal (2 * Real.pi) ≠ 0 := by
    rw [ne_eq, ENNReal.ofReal_eq_zero, not_le]
    exact hpi0
  have hctop : ENNReal.ofReal (2 * Real.pi) ≠ ⊤ := ENNReal.ofReal_ne_top
  
  have hscale : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (om : E3 → Fin 3 → ℝ) (f h : E3 → ℝ)
      (V Kc₁ Kc₂ : Set E3), IsOpen V → (∀ y ∈ V, ∀ i : Fin 3, om y i = 0) →
      (∀ y ∈ V, f y = 2 * Real.pi * h y) → V ∩ Kc₁ = V ∩ Kc₂ →
      dualVarG G om f V Kc₁ =
        ENNReal.ofReal (2 * Real.pi) * dualVarG G (fun _ _ => (0 : ℝ)) h V Kc₂ := by
    intro G om f h V Kc₁ Kc₂ hV hom hfh hK
    have hD0 : ∀ X : E3 → E3, ∀ y, y ∉ tsupport X → sepDensDiv G X y = 0 := by
      intro X y hy
      unfold sepDensDiv
      refine Finset.sum_eq_zero (fun i _ => ?_)
      unfold partialDeriv
      have hev : (fun z => Real.sqrt (G z).det * X z i) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) := by
        filter_upwards [notMem_tsupport_iff_eventuallyEq.1 hy] with z hz
        simp [hz]
      rw [hev.fderiv_eq]
      simp
    have step : ∀ X : E3 → E3, tsupport X ⊆ V →
        ENNReal.ofReal (∫ y, (f y * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i)) =
        ENNReal.ofReal (2 * Real.pi) * ENNReal.ofReal (∫ y, (h y * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, (fun _ _ => (0 : ℝ)) y i * X y i)) := by
      intro X hXV
      have hpt : (fun y => f y * sepDensDiv G X y +
          Real.sqrt (G y).det * ∑ i : Fin 3, om y i * X y i) =
          fun y => 2 * Real.pi * (h y * sepDensDiv G X y +
            Real.sqrt (G y).det * ∑ i : Fin 3, (fun _ _ => (0 : ℝ)) y i * X y i) := by
        funext y
        by_cases hy : y ∈ tsupport X
        · have hyV := hXV hy
          simp only [hom y hyV, hfh y hyV, zero_mul, Finset.sum_const_zero, mul_zero, add_zero]
          ring
        · rw [hD0 X y hy, image_eq_zero_of_notMem_tsupport hy]
          simp
      rw [hpt, integral_const_mul, ENNReal.ofReal_mul hpi0.le]
    have hadm1 : ∀ (K₁ K₂ : Set E3), V ∩ K₁ = V ∩ K₂ → ∀ X : E3 → E3, tsupport X ⊆ V →
        (∀ y, y ∉ K₁ → ContDiffAt ℝ ∞ X y) → (∀ y, y ∉ K₂ → ContDiffAt ℝ ∞ X y) := by
      intro K₁ K₂ hKK X hXV h1 y hy
      by_cases hyV : y ∈ V
      · refine h1 y (fun hy1 => hy ?_)
        have h2 : y ∈ V ∩ K₂ := by
          rw [← hKK]
          exact ⟨hyV, hy1⟩
        exact h2.2
      · have hyX : y ∉ tsupport X := fun h' => hyV (hXV h')
        refine (contDiffAt_const (c := (0 : E3))).congr_of_eventuallyEq ?_
        filter_upwards [notMem_tsupport_iff_eventuallyEq.1 hyX] with z hz
        exact hz
    have hadm : ∀ X : E3 → E3,
        ((∀ y, y ∉ Kc₁ → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ V ∧
          (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) ↔
        ((∀ y, y ∉ Kc₂ → ContDiffAt ℝ ∞ X y) ∧ HasCompactSupport X ∧ tsupport X ⊆ V ∧
          (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * X y i * X y j ≤ 1) ∧
          ∃ C : ℝ, ∀ y, |sepDensDiv G X y| ≤ C) := by
      intro X
      constructor
      · rintro ⟨h1, h2, h3, h4, h5⟩
        exact ⟨hadm1 Kc₁ Kc₂ hK X h3 h1, h2, h3, h4, h5⟩
      · rintro ⟨h1, h2, h3, h4, h5⟩
        exact ⟨hadm1 Kc₂ Kc₁ hK.symm X h3 h1, h2, h3, h4, h5⟩
    have hguard : MeasureTheory.LocallyIntegrableOn f V ↔
        MeasureTheory.LocallyIntegrableOn h V := by
      rw [locallyIntegrableOn_iff hV.isLocallyClosed, locallyIntegrableOn_iff hV.isLocallyClosed]
      constructor
      · intro hf k hkV hk
        have h1 : MeasureTheory.IntegrableOn (fun y => f y / (2 * Real.pi)) k :=
          (hf k hkV hk).div_const _
        refine h1.congr_fun (fun y hy => ?_) hk.isClosed.measurableSet
        show f y / (2 * Real.pi) = h y
        rw [hfh y (hkV hy), mul_div_cancel_left₀ _ hpi0.ne']
      · intro hh k hkV hk
        have h1 : MeasureTheory.IntegrableOn (fun y => 2 * Real.pi * h y) k :=
          (hh k hkV hk).const_mul _
        refine h1.congr_fun (fun y hy => ?_) hk.isClosed.measurableSet
        show 2 * Real.pi * h y = f y
        rw [hfh y (hkV hy)]
    unfold dualVarG
    by_cases hf : MeasureTheory.LocallyIntegrableOn f V
    · have hh := hguard.1 hf
      rw [iSup_neg (not_not_intro hf), iSup_neg (not_not_intro hh), bot_sup_eq, bot_sup_eq,
        ENNReal.mul_iSup]
      refine iSup_congr (fun X => ?_)
      rw [ENNReal.mul_iSup]
      refine iSup_congr_Prop (hadm X) (fun hX => ?_)
      exact step X hX.2.2.1
    · have hh : ¬ MeasureTheory.LocallyIntegrableOn h V := fun h' => hf (hguard.2 h')
      rw [iSup_pos hf, iSup_pos hh, top_sup_eq, top_sup_eq, ENNReal.mul_top hc0]
  
  have hBt : B ⊆ (chartAt E3 p).target := by
    intro y hy
    obtain ⟨x, ⟨_, hxs⟩, rfl⟩ := hBO hy
    exact (chartAt E3 p).map_source hxs
  have hBsymm : ∀ y ∈ B, (chartAt E3 p).symm y ∈ O ∧
      (chartAt E3 p).symm y ∈ (chartAt E3 p).source := by
    intro y hy
    obtain ⟨x, ⟨hxO, hxs⟩, rfl⟩ := hBO hy
    rw [(chartAt E3 p).left_inv hxs]
    exact ⟨hxO, hxs⟩
  have hφB : ∀ y ∈ B, φ₀ ((chartAt E3 p).symm y) = 0 := fun y hy => hφ₀O _ (hBsymm y hy).1
  
  have hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 p).symm y i j) B :=
    fun i j => (g.smooth p i j).mono hBt
  have hsymmG : ∀ (y : E3) (i j : Fin 3), g.coeff (chartAt E3 p).symm y i j =
      g.coeff (chartAt E3 p).symm y j i := fun y i j => g.symm _ _ _
  have hpd : ∀ y ∈ B, (g.coeff (chartAt E3 p).symm y).PosDef :=
    fun y hy => coeff_chart_symm_posDef g p y (hBt hy)
  have hdet : ∀ y ∈ B, 0 < (g.coeff (chartAt E3 p).symm y).det := fun y hy => (hpd y hy).det_pos
  
  have hom0 : ∀ y ∈ B, ∀ i : Fin 3, dualOmega (fun x => (Ψ x : ℂ)) p y i = 0 := by
    intro y hy i
    have him : ∀ z ∈ B, ((Ψ ((chartAt E3 p).symm z) : ℂ)).im = 0 := by
      intro z hz
      rw [hΨO _ (hBsymm z hz).1]
      simp
    have hev : (fun z => ((Ψ ((chartAt E3 p).symm z) : ℂ)).im) =ᶠ[𝓝 y] (fun _ => (0 : ℝ)) :=
      Filter.eventually_of_mem (hB.mem_nhds hy) him
    have hpd0 : partialDeriv i (fun z => ((Ψ ((chartAt E3 p).symm z) : ℂ)).im) y = 0 := by
      unfold partialDeriv
      rw [hev.fderiv_eq]
      simp
    simp only [dualOmega]
    rw [hpd0, him y hy]
    ring
  
  have hcut : ∀ V ⊆ B, V ∩ chartAt E3 p '' (Kc ∩ (chartAt E3 p).source) =
      V ∩ (B ∩ {y | w y = 0}) := by
    intro V hVB
    ext y
    constructor
    · rintro ⟨hyV, x, ⟨hxK, hxs⟩, rfl⟩
      refine ⟨hyV, hVB hyV, ?_⟩
      show w (chartAt E3 p x) = 0
      refine (hwK _ (hVB hyV)).1 ?_
      rw [(chartAt E3 p).left_inv hxs]
      exact hxK
    · rintro ⟨hyV, hyB, hw0⟩
      exact ⟨hyV, (chartAt E3 p).symm y, ⟨(hwK y hyB).2 hw0,
        (chartAt E3 p).map_target (hBt hyB)⟩, (chartAt E3 p).right_inv (hBt hyB)⟩
  
  have hmeas : ∀ m : M → ℤ, (∀ j : ℤ, sepChartMeas {x | m x = j}) →
      dualChartMeas (fun x => φ₀ x + 2 * Real.pi * (m x : ℝ)) := by
    intro m hm q
    let N : E3 → ℤ := fun y =>
      if y ∈ (chartAt E3 q).target then m ((chartAt E3 q).symm y) else 0
    have hN : Measurable N := by
      refine measurable_to_countable' (fun j => ?_)
      have hset : N ⁻¹' {j} = ((chartAt E3 q) '' ({x | m x = j} ∩ (chartAt E3 q).source)) ∪
          (((chartAt E3 q).target)ᶜ ∩ {_y | (0 : ℤ) = j}) := by
        ext y
        rw [Set.mem_union,
          (chartAt E3 q).image_eq_target_inter_inv_preimage Set.inter_subset_right]
        by_cases hy : y ∈ (chartAt E3 q).target
        · simp [N, hy, (chartAt E3 q).map_target hy]
        · simp [N, hy]
      rw [hset]
      exact (hm j q).union
        ((chartAt E3 q).open_target.measurableSet.compl.inter (MeasurableSet.const _))
    have heq : (chartAt E3 q).target.indicator (fun y => φ₀ ((chartAt E3 q).symm y) +
        2 * Real.pi * (m ((chartAt E3 q).symm y) : ℝ)) = fun y =>
        (chartAt E3 q).target.indicator (fun y => φ₀ ((chartAt E3 q).symm y)) y +
          2 * Real.pi * ((N y : ℤ) : ℝ) := by
      funext y
      by_cases hy : y ∈ (chartAt E3 q).target
      · simp [Set.indicator_of_mem hy, N, hy]
      · simp [Set.indicator_of_notMem hy, N, hy]
    show Measurable ((chartAt E3 q).target.indicator (fun y => φ₀ ((chartAt E3 q).symm y) +
        2 * Real.pi * (m ((chartAt E3 q).symm y) : ℝ)))
    rw [heq]
    exact (hφ₀m q).add (measurable_const.mul
      ((Measurable.of_discrete (f := fun k : ℤ => (k : ℝ))).comp hN))
  have hφs : dualChartMeas (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) := hmeas n hnm
  
  have hfam : ∀ W : Set E3, IsOpen W → W ⊆ B →
      dualVarG (g.coeff (chartAt E3 p).symm) (dualOmega (fun x => (Ψ x : ℂ)) p)
        (fun y => φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ))
        W (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)) ≤
      dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω Kc := by
    intro W hW hWB
    have hWt : W ⊆ (chartAt E3 p).target := hWB.trans hBt
    have hWo : IsOpen ((chartAt E3 p).symm '' W) :=
      (chartAt E3 p).isOpen_image_symm_of_subset_target hW hWt
    have hWsub : (chartAt E3 p).symm '' W ⊆ Ω ∩ (chartAt E3 p).source := by
      rintro _ ⟨y, hy, rfl⟩
      exact ⟨hOΩ (hBsymm y (hWB hy)).1, (hBsymm y (hWB hy)).2⟩
    have himg : (chartAt E3 p) '' ((chartAt E3 p).symm '' W) = W :=
      (chartAt E3 p).toPartialEquiv.image_symm_image_of_subset_target hWt
    unfold dualRiemVar
    refine le_iSup_of_le 1 (le_iSup_of_le (fun _ => p)
      (le_iSup_of_le (fun _ => (chartAt E3 p).symm '' W)
        (le_iSup_of_le ⟨fun _ => ⟨hWo, hWsub⟩,
          fun k l hkl => (hkl (Subsingleton.elim k l)).elim⟩ ?_)))
    simp only [Fin.sum_univ_one]
    rw [himg]
  set v : E3 → ℝ := fun y => ((n ((chartAt E3 p).symm y) : ℤ) : ℝ) with hv_def
  have hvint : ∀ y ∈ B, ∃ m : ℤ, v y = m := fun y _ => ⟨_, rfl⟩
  have hvm : ∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ v y}) := by
    intro t
    have e : B ∩ {y | t ≤ v y} = ⋃ m : ℤ, (B ∩ (chartAt E3 p '' ({x | n x = m} ∩
        (chartAt E3 p).source)) ∩ {_y | t ≤ (m : ℝ)}) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_iUnion, Set.mem_image]
      constructor
      · rintro ⟨hyB, hty⟩
        exact ⟨n ((chartAt E3 p).symm y), ⟨hyB, (chartAt E3 p).symm y,
          ⟨rfl, (chartAt E3 p).map_target (hBt hyB)⟩, (chartAt E3 p).right_inv (hBt hyB)⟩, hty⟩
      · rintro ⟨m, ⟨hyB, x, ⟨hxm, hxs⟩, rfl⟩, htm⟩
        refine ⟨hyB, ?_⟩
        show t ≤ ((n ((chartAt E3 p).symm (chartAt E3 p x)) : ℤ) : ℝ)
        rw [(chartAt E3 p).left_inv hxs, hxm]
        exact htm
    rw [e]
    exact MeasurableSet.iUnion fun m =>
      (hB.measurableSet.inter (hnm m p)).inter (MeasurableSet.const _)
  have hchart : ∀ y ∈ B, φ₀ ((chartAt E3 p).symm y) +
      2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ) = 2 * Real.pi * v y := by
    intro y hy
    rw [hφB y hy, zero_add, hv_def]
  
  have hconv : ∀ (S : Set E3) (u v₀ : E3 → ℝ) (V : Set E3), IsOpen V → V ⊆ B →
      (∀ y ∈ B, u y = 2 * Real.pi * v₀ y) →
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) (S.indicator u) V ∅ =
        ENNReal.ofReal (2 * Real.pi) *
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) (S.indicator v₀) V ∅ := by
    intro S u v₀ V hV hVB huv
    refine hscale _ _ _ _ V ∅ ∅ hV (fun _ _ _ => rfl) (fun y hy => ?_) rfl
    by_cases hyS : y ∈ S
    · rw [Set.indicator_of_mem hyS, Set.indicator_of_mem hyS, huv y (hVB hy)]
    · rw [Set.indicator_of_notMem hyS, Set.indicator_of_notMem hyS, mul_zero]
  
  have hfinW : ∀ W : Set E3, IsOpen W → W ⊆ B →
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) v W (B ∩ {y | w y = 0})
        < ⊤ := by
    intro W hW hWB
    have h1 := hfam W hW hWB
    rw [hscale _ (dualOmega (fun x => (Ψ x : ℂ)) p)
      (fun y => φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ))
      v W (chartAt E3 p '' (Kc ∩ (chartAt E3 p).source)) (B ∩ {y | w y = 0}) hW
      (fun y hy i => hom0 y (hWB hy) i) (fun y hy => hchart y (hWB hy)) (hcut W hWB)] at h1
    have h2 := lt_of_le_of_lt h1 hfin
    rw [lt_top_iff_ne_top] at h2 ⊢
    intro hT
    rw [hT, ENNReal.mul_top hc0] at h2
    exact h2 rfl
  refine ⟨fun W hW _ hWB => hfinW W hW (subset_closure.trans hWB), ?_⟩
  
  intro v' W L hv'int hv'm hW hWc hWB hL hLW hv'L hv'K
  have hWB' : W ⊆ B := subset_closure.trans hWB
  obtain ⟨n', hn'm, hn'off, hn'L⟩ := dual_chart_competitor p n hnm B L hB hBt hL
    (hLW.trans hWB') v v' hvint hv'int hvm hv'm
  have hn'0 : ∀ x : M, x ∉ Kv → n' x = 0 := by
    intro x hx
    by_cases hxL : x ∈ (chartAt E3 p).symm '' L
    · obtain ⟨y, hyL, rfl⟩ := hxL
      have hvv : v' y = v y := by
        by_contra hne
        exact hx (hv'K y hyL hne)
      have h1 := hn'L y hyL
      rw [hvv, add_sub_cancel_right] at h1
      have h2 : n' ((chartAt E3 p).symm y) = n ((chartAt E3 p).symm y) := by exact_mod_cast h1
      rw [h2]
      exact hn0 _ hx
    · rw [hn'off x hxL]
      exact hn0 x hx
  have hle := hmin n' hn'0 hn'm
  have hinj : ∀ y ∈ B, y ∉ L → (chartAt E3 p).symm y ∉ (chartAt E3 p).symm '' L := by
    intro y hy hyL
    rintro ⟨z, hz, hzy⟩
    have hzy' : z = y := by
      calc z = (chartAt E3 p) ((chartAt E3 p).symm z) :=
            ((chartAt E3 p).right_inv (hBt (hWB' (hLW hz)))).symm
        _ = (chartAt E3 p) ((chartAt E3 p).symm y) := by rw [hzy]
        _ = y := (chartAt E3 p).right_inv (hBt hy)
    exact hyL (hzy' ▸ hz)
  have hchart' : ∀ y ∈ B, φ₀ ((chartAt E3 p).symm y) +
      2 * Real.pi * (n' ((chartAt E3 p).symm y) : ℝ) = 2 * Real.pi * v' y := by
    intro y hy
    rw [hφB y hy, zero_add]
    by_cases hyL : y ∈ L
    · rw [hn'L y hyL]
      simp only [hv_def]
      ring
    · rw [hn'off _ (hinj y hy hyL), hv'L y hyL]
  have hφ'm := hmeas n' hn'm
  have hcmp : ∀ V₁ V₂ : Set E3, IsOpen V₁ → IsOpen V₂ → L ⊆ V₂ → IsCompact (closure V₂) →
      closure V₂ ⊆ V₁ → V₁ ⊆ W →
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | 0 < w y}.indicator v) V₂ ∅ +
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | w y < 0}.indicator v) V₂ ∅ ≤
      (dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | 0 < w y}.indicator v') V₁ ∅ +
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | w y < 0}.indicator v') V₁ ∅) +
      (dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | 0 < w y}.indicator v) (V₁ \ L) ∅ +
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | w y < 0}.indicator v) (V₁ \ L) ∅) := by
    intro V₁ V₂ hV₁ hV₂ hLV₂ hV₂c hV₂V₁ hV₁W
    have hV₁B : V₁ ⊆ B := hV₁W.trans hWB'
    have hV₂B : V₂ ⊆ B := subset_closure.trans (hV₂V₁.trans hV₁B)
    have hD : V₁ \ L ⊆ B := Set.diff_subset.trans hV₁B
    have hDo : IsOpen (V₁ \ L) := hV₁.sdiff hL.isClosed
    have heqφ : ∀ x : M, x ∉ (chartAt E3 p).symm '' L →
        φ₀ x + 2 * Real.pi * (n x : ℝ) = φ₀ x + 2 * Real.pi * (n' x : ℝ) := by
      intro x hx
      rw [hn'off x hx]
    have h8 := dualRiemVar_wall_add_le g (fun x => (Ψ x : ℂ)) hΨs
      (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ))
      hφs hφ'm Ω Kc O hO hOΩ (fun x hx => by simp [hΨO x hx])
      (fun x hx => ⟨n x, by simp [hφ₀O x hx]⟩) (fun x hx => ⟨n' x, by simp [hφ₀O x hx]⟩)
      p B hB hBO w hw hdw hwK L V₁ V₂ hL hV₁ hV₂ hLV₂ hV₂c hV₂V₁ hV₁B heqφ
    beta_reduce at h8
    rw [hconv {y | 0 < w y} _ v V₂ hV₂ hV₂B hchart, hconv {y | w y < 0} _ v V₂ hV₂ hV₂B hchart,
      hconv {y | 0 < w y} _ v' V₁ hV₁ hV₁B hchart', hconv {y | w y < 0} _ v' V₁ hV₁ hV₁B hchart',
      hconv {y | 0 < w y} _ v (V₁ \ L) hDo hD hchart,
      hconv {y | w y < 0} _ v (V₁ \ L) hDo hD hchart] at h8
    have h9 := le_trans (add_le_add hle le_rfl) h8
    rw [add_assoc, ENNReal.add_le_add_iff_left hfin.ne, ← mul_add, ← mul_add, ← mul_add,
      ← mul_add, ENNReal.mul_le_mul_left hc0 hctop] at h9
    exact h9
  have hfinS := hfinW W hW hWB'
  rw [dualVarG_zero_cut_split _ B hB hG hsymmG hpd w hw hdw v hvint hvm W hW hWc hWB] at hfinS
  have hmain := dualVarG_pair_local_compare (g.coeff (chartAt E3 p).symm) B W L hB hG hdet
    ({y | 0 < w y}.indicator v) ({y | w y < 0}.indicator v)
    ({y | 0 < w y}.indicator v') ({y | w y < 0}.indicator v') hW hWB' hL hLW
    (fun y hy => by simp only [Set.indicator_apply, hv'L y hy, hv_def])
    (fun y hy => by simp only [Set.indicator_apply, hv'L y hy, hv_def]) hfinS hcmp
  rw [dualVarG_zero_cut_split _ B hB hG hsymmG hpd w hw hdw v hvint hvm W hW hWc hWB,
    dualVarG_zero_cut_split _ B hB hG hsymmG hpd w hw hdw v' hv'int hv'm W hW hWc hWB]
  exact hmain

theorem dualVarG_zero_layer_sum_le (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (B : Set E3)
    (hB : IsOpen B) (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) B)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ B, (G y).PosDef)
    (u : E3 → ℝ) (hint : ∀ y ∈ B, ∃ m : ℤ, u y = m)
    (hum : ∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ u y}))
    (W : Set E3) (hW : IsOpen W) (hWc : IsCompact (closure W)) (hWB : closure W ⊆ B) (N : ℕ) :
    ∑ j ∈ Finset.range N, sepPerG G (B ∩ {y | (j : ℝ) + 1 ≤ u y}) W +
        ∑ j ∈ Finset.range N, sepPerG G (B ∩ {y | u y ≤ -((j : ℝ) + 1)}) W ≤
      dualVarG G (fun _ _ => (0 : ℝ)) u W ∅ :=
by
  classical
  have hWB' : W ⊆ B := subset_closure.trans hWB
  
  have hnegdiv : ∀ (X : E3 → E3) (y : E3),
      sepDensDiv G (fun z => -X z) y = -sepDensDiv G X y := by
    intro X y
    unfold sepDensDiv partialDeriv
    rw [← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    have : (fun z => Real.sqrt (G z).det * (-X z) i) =
        fun z => -(Real.sqrt (G z).det * X z i) := by
      funext z
      rw [PiLp.neg_apply]
      ring
    rw [this]
    change fderiv ℝ (-(fun z => Real.sqrt (G z).det * X z i)) y (e i) = _
    rw [fderiv_neg]
    rfl
  have hneg : ∀ f : E3 → ℝ, dualVarG G (fun _ _ => (0 : ℝ)) (fun y => -f y) W ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ := by
    intro f
    by_cases hli : MeasureTheory.LocallyIntegrableOn f W
    swap
    · have htop : dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ = ⊤ := by
        unfold dualVarG
        rw [iSup_pos hli]
        exact top_sup_eq _
      rw [htop]
      exact le_top
    have hli' : MeasureTheory.LocallyIntegrableOn (fun y => -f y) W := hli.neg
    conv_lhs => unfold dualVarG
    refine sup_le (iSup_le fun h => absurd hli' h) (iSup₂_le fun X hX => ?_)
    obtain ⟨hXs, hXc, hXW, hXn, C, hC⟩ := hX
    have hX' : (∀ y, y ∉ (∅ : Set E3) → ContDiffAt ℝ ∞ (fun z => -X z) y) ∧
        HasCompactSupport (fun z => -X z) ∧ tsupport (fun z => -X z) ⊆ W ∧
        (∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (-X y) i * (-X y) j ≤ 1) ∧
        ∃ C : ℝ, ∀ y, |sepDensDiv G (fun z => -X z) y| ≤ C := by
      refine ⟨fun y hy => (hXs y hy).neg, hXc.neg, ?_, ?_, C, fun y => ?_⟩
      · rw [show (fun z => -X z) = -X from rfl, tsupport_neg]
        exact hXW
      · intro y
        have h := hXn y
        simp only [PiLp.neg_apply, mul_neg, neg_mul, neg_neg]
        exact h
      · rw [hnegdiv, abs_neg]
        exact hC y
    unfold dualVarG
    refine le_sup_of_le_right (le_iSup₂_of_le (fun z => -X z) hX' (le_of_eq ?_))
    simp only [hnegdiv, zero_mul, Finset.sum_const_zero, mul_zero, add_zero, mul_neg, neg_mul]
  
  have hchain : ∀ (f : E3 → ℝ), (∀ y ∈ B, ∃ m : ℤ, f y = m) →
      (∀ j : ℕ, MeasurableSet (B ∩ {y | (j : ℝ) + 1 ≤ f y})) → ∀ n : ℕ,
      dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (f y) 0) W ∅ +
        ∑ j ∈ Finset.range n, sepPerG G (B ∩ {y | (j : ℝ) + 1 ≤ f y}) W ≤
      dualVarG G (fun _ _ => (0 : ℝ)) f W ∅ := by
    intro f hfint hfm n
    have hsplit := fun (h : E3 → ℝ) (s : ℝ) =>
      dualVarG_zero_min_max_split G B hB hG hsymm hpd W hW hWc hWB h s
    have hpeel : ∀ b : ℕ,
        dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (f y) (b : ℝ)) W ∅ +
          sepPerG G (B ∩ {y | (b : ℝ) + 1 ≤ f y}) W ≤
        dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (f y) ((b : ℝ) + 1)) W ∅ := by
      intro b
      have hs := hsplit (fun y => min (f y) ((b : ℝ) + 1)) (b : ℝ)
      have e1 : (fun y => min (min (f y) ((b : ℝ) + 1)) (b : ℝ)) =
          fun y => min (f y) (b : ℝ) := by
        funext y
        rw [min_assoc, min_eq_right (by linarith : (b : ℝ) ≤ (b : ℝ) + 1)]
      have e2 : dualVarG G (fun _ _ => (0 : ℝ))
          (fun y => max (min (f y) ((b : ℝ) + 1)) (b : ℝ) - (b : ℝ)) W ∅ =
          sepPerG G (B ∩ {y | (b : ℝ) + 1 ≤ f y}) W := by
        rw [← dualVarG_zero_indicator_eq_sepPerG G B hB hG hpd _ W (hfm b) hWB']
        refine dualVarG_zero_congr G _ _ W hW (fun y hy => ?_)
        dsimp only
        have hyB : y ∈ B := hWB' hy
        obtain ⟨m, hm⟩ := hfint y hyB
        by_cases hj : (b : ℝ) + 1 ≤ f y
        · rw [Set.indicator_of_mem (show y ∈ B ∩ {y | (b : ℝ) + 1 ≤ f y} from ⟨hyB, hj⟩)]
          rw [min_eq_right hj, max_eq_left (by linarith)]
          ring
        · rw [Set.indicator_of_notMem
            (show y ∉ B ∩ {y | (b : ℝ) + 1 ≤ f y} from fun h => hj h.2)]
          have hmb : (m : ℝ) ≤ (b : ℝ) := by
            rw [hm] at hj
            push_neg at hj
            have h1 : m < (b : ℤ) + 1 := by exact_mod_cast hj
            have h2 : m ≤ (b : ℤ) := by omega
            exact_mod_cast h2
          rw [hm, min_eq_left (by linarith), max_eq_right hmb]
          ring
      rw [e1, e2] at hs
      exact hs
    have hind : ∀ n : ℕ, dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (f y) 0) W ∅ +
        ∑ j ∈ Finset.range n, sepPerG G (B ∩ {y | (j : ℝ) + 1 ≤ f y}) W ≤
        dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (f y) (n : ℝ)) W ∅ := by
      intro n
      induction n with
      | zero =>
        simp only [Finset.range_zero, Finset.sum_empty, add_zero, Nat.cast_zero, le_refl]
      | succ n ih =>
        rw [Finset.sum_range_succ, ← add_assoc]
        calc _ ≤ dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (f y) (n : ℝ)) W ∅ +
              sepPerG G (B ∩ {y | (n : ℝ) + 1 ≤ f y}) W := add_le_add ih le_rfl
          _ ≤ _ := by
            have := hpeel n
            push_cast
            exact this
    exact (hind n).trans (le_self_add.trans (hsplit f (n : ℝ)))
  
  have hA := hchain u hint (fun j => hum _) N
  
  have hset : ∀ j : ℕ, B ∩ {y | (j : ℝ) + 1 ≤ -min (u y) 0} =
      B ∩ {y | u y ≤ -((j : ℝ) + 1)} := by
    intro j
    ext y
    simp only [Set.mem_inter_iff, Set.mem_setOf_eq]
    have hj : (0 : ℝ) ≤ j := Nat.cast_nonneg j
    constructor
    · rintro ⟨hyB, h⟩
      refine ⟨hyB, ?_⟩
      have h' : min (u y) 0 ≤ -((j : ℝ) + 1) := by linarith
      rcases min_le_iff.mp h' with h'' | h''
      · exact h''
      · linarith
    · rintro ⟨hyB, h⟩
      exact ⟨hyB, by linarith [min_le_left (u y) 0]⟩
  have hgint : ∀ y ∈ B, ∃ m : ℤ, -min (u y) 0 = m := by
    intro y hy
    obtain ⟨m, hm⟩ := hint y hy
    refine ⟨-min m 0, ?_⟩
    rw [hm]
    push_cast
    try ring
  have hgm : ∀ j : ℕ, MeasurableSet (B ∩ {y | (j : ℝ) + 1 ≤ -min (u y) 0}) := by
    intro j
    rw [hset j]
    have hEq : B ∩ {y | u y ≤ -((j : ℝ) + 1)} = B \ (B ∩ {y | -(j : ℝ) ≤ u y}) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_diff, Set.mem_setOf_eq]
      constructor
      · rintro ⟨hyB, hy⟩
        exact ⟨hyB, fun h => by linarith [h.2]⟩
      · rintro ⟨hyB, hy⟩
        refine ⟨hyB, ?_⟩
        obtain ⟨m, hm⟩ := hint y hyB
        have h1 : ¬ (-(j : ℝ) ≤ u y) := fun h => hy ⟨hyB, h⟩
        rw [hm] at h1 ⊢
        push_neg at h1
        have h3 : m < -(j : ℤ) := by exact_mod_cast h1
        have h4 : m ≤ -(j : ℤ) - 1 := by omega
        have h5 : (m : ℝ) ≤ -(j : ℝ) - 1 := by exact_mod_cast h4
        linarith
    rw [hEq]
    exact hB.measurableSet.diff (hum _)
  have hB' := hchain (fun y => -min (u y) 0) hgint hgm N
  have hsum : ∑ j ∈ Finset.range N, sepPerG G (B ∩ {y | u y ≤ -((j : ℝ) + 1)}) W ≤
      dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (u y) 0) W ∅ := by
    have e : ∑ j ∈ Finset.range N, sepPerG G (B ∩ {y | (j : ℝ) + 1 ≤ -min (u y) 0}) W =
        ∑ j ∈ Finset.range N, sepPerG G (B ∩ {y | u y ≤ -((j : ℝ) + 1)}) W :=
      Finset.sum_congr rfl (fun j _ => by rw [hset j])
    rw [← e]
    exact le_add_self.trans (hB'.trans (hneg (fun y => min (u y) 0)))
  calc _ ≤ ∑ j ∈ Finset.range N, sepPerG G (B ∩ {y | (j : ℝ) + 1 ≤ u y}) W +
        dualVarG G (fun _ _ => (0 : ℝ)) (fun y => min (u y) 0) W ∅ := add_le_add le_rfl hsum
    _ = _ := add_comm _ _
    _ ≤ _ := hA

theorem indicator_clamp_integral_tendsto (K S : Set E3) (hK : IsCompact K)
    (hS : MeasurableSet S) (u h : E3 → ℝ) (hu : MeasureTheory.IntegrableOn u K)
    (hh : MeasureTheory.Integrable h) (C : ℝ) (hC : ∀ y, |h y| ≤ C)
    (hhK : ∀ y, y ∉ K → h y = 0) :
    Filter.Tendsto
      (fun N : ℕ => ∫ y, S.indicator (fun z => max (min (u z) (N : ℝ)) (-(N : ℝ))) y * h y)
      Filter.atTop (𝓝 (∫ y, S.indicator u y * h y)) :=
by
  have hT : ∀ (x : ℝ) (N : ℕ), |max (min x (N : ℝ)) (-(N : ℝ))| ≤ |x| := by
    intro x N
    have hN : (0 : ℝ) ≤ N := Nat.cast_nonneg N
    have h1 := min_le_left x (N : ℝ)
    have h2 := le_max_left (min x (N : ℝ)) (-(N : ℝ))
    rcases le_total 0 x with hx | hx
    · have h3 : 0 ≤ min x (N : ℝ) := le_min hx hN
      rw [abs_of_nonneg hx, abs_le]
      exact ⟨by linarith, max_le h1 (by linarith)⟩
    · have h3 : min x (N : ℝ) = x := min_eq_left (by linarith)
      rw [abs_of_nonpos hx, abs_le]
      exact ⟨by linarith, max_le (by linarith) (by linarith)⟩
  have hFK : ∀ N : ℕ,
      ∫ y, S.indicator (fun z => max (min (u z) (N : ℝ)) (-(N : ℝ))) y * h y =
        ∫ y in K, S.indicator (fun z => max (min (u z) (N : ℝ)) (-(N : ℝ))) y * h y := by
    intro N
    exact (MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero
      (fun y hy => by rw [hhK y hy, mul_zero])).symm
  have hfK : ∫ y, S.indicator u y * h y = ∫ y in K, S.indicator u y * h y :=
    (MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero
      (fun y hy => by rw [hhK y hy, mul_zero])).symm
  rw [funext hFK, hfK]
  refine MeasureTheory.tendsto_integral_of_dominated_convergence (fun y => C * |u y|) ?_ ?_ ?_ ?_
  · intro N
    have hum : MeasureTheory.AEStronglyMeasurable u (MeasureTheory.volume.restrict K) :=
      hu.aestronglyMeasurable
    have hc : Continuous (fun x : ℝ => max (min x (N : ℝ)) (-(N : ℝ))) := by fun_prop
    exact ((hc.comp_aestronglyMeasurable hum).indicator hS).mul hh.aestronglyMeasurable.restrict
  · exact hu.abs.const_mul C
  · intro N
    refine MeasureTheory.ae_of_all _ (fun y => ?_)
    rw [Real.norm_eq_abs, abs_mul]
    have h1 : |S.indicator (fun z => max (min (u z) (N : ℝ)) (-(N : ℝ))) y| ≤ |u y| := by
      by_cases hy : y ∈ S
      · rw [Set.indicator_of_mem hy]; exact hT _ _
      · simp only [hy, not_false_eq_true, Set.indicator_of_notMem, abs_zero]
        exact abs_nonneg _
    calc _ ≤ |u y| * C := mul_le_mul h1 (hC y) (abs_nonneg _) (abs_nonneg _)
      _ = C * |u y| := mul_comm _ _
  · refine MeasureTheory.ae_of_all _ (fun y => ?_)
    obtain ⟨n₀, hn₀⟩ := exists_nat_ge |u y|
    refine tendsto_const_nhds.congr' ?_
    filter_upwards [Filter.eventually_ge_atTop n₀] with N hN
    have hN' : |u y| ≤ (N : ℝ) := hn₀.trans (by exact_mod_cast hN)
    have key : max (min (u y) (N : ℝ)) (-(N : ℝ)) = u y := by
      rw [min_eq_left (le_trans (le_abs_self _) hN'),
        max_eq_left (by linarith [neg_abs_le (u y)])]
    by_cases hy : y ∈ S
    · rw [Set.indicator_of_mem hy, Set.indicator_of_mem hy, key]
    · simp [hy]

theorem intVar_side_projection (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (B : Set E3) (hB : IsOpen B)
    (hG : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => G y i j) B)
    (hsymm : ∀ (y : E3) (i j : Fin 3), G y i j = G y j i) (hpd : ∀ y ∈ B, (G y).PosDef)
    (φ : E3 → ℝ) (hφ : ContDiffOn ℝ ∞ φ B) (hdφ : ∀ z ∈ B, fderiv ℝ φ z ≠ 0)
    (hcal : ∀ z ∈ B, φ z ≤ 0 → sepDensDiv G (hcrNormalField G φ) z ≤ 0)
    (u : E3 → ℝ) (hint : ∀ y ∈ B, ∃ m : ℤ, u y = m)
    (hum : ∀ t : ℝ, MeasurableSet (B ∩ {y | t ≤ u y}))
    (W L : Set E3) (hW : IsOpen W) (hWc : IsCompact (closure W)) (hWB : closure W ⊆ B)
    (hL : IsCompact L) (hLW : L ⊆ W) (hu0 : ∀ y ∈ B, φ y ≤ 0 → y ∉ L → u y = 0) :
    dualVarG G (fun _ _ => (0 : ℝ)) ({y | 0 < φ y}.indicator u) W ∅ ≤
      dualVarG G (fun _ _ => (0 : ℝ)) u W ∅ :=
by
  classical
  have hWB' : W ⊆ B := subset_closure.trans hWB
  have hD'o : IsOpen {z | z ∈ B ∧ 0 < φ z} :=
    hφ.continuousOn.isOpen_inter_preimage hB (isOpen_Ioi (a := (0 : ℝ)))
  have hD'm : MeasurableSet {z | z ∈ B ∧ 0 < φ z} := hD'o.measurableSet
  
  have hEnm : ∀ j : ℕ, MeasurableSet (B ∩ {y | u y ≤ -((j : ℝ) + 1)}) := by
    intro j
    have hEq : B ∩ {y | u y ≤ -((j : ℝ) + 1)} = B \ (B ∩ {y | -(j : ℝ) ≤ u y}) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_diff, Set.mem_setOf_eq]
      constructor
      · rintro ⟨hyB, hy⟩
        exact ⟨hyB, fun h => by linarith [h.2]⟩
      · rintro ⟨hyB, hy⟩
        refine ⟨hyB, ?_⟩
        obtain ⟨m, hm⟩ := hint y hyB
        have h1 : ¬ (-(j : ℝ) ≤ u y) := fun h => hy ⟨hyB, h⟩
        rw [hm] at h1 ⊢
        push_neg at h1
        have h3 : m < -(j : ℤ) := by exact_mod_cast h1
        have h4 : m ≤ -(j : ℤ) - 1 := by omega
        have h5 : (m : ℝ) ≤ -(j : ℝ) - 1 := by exact_mod_cast h4
        linarith
    rw [hEq]
    exact hB.measurableSet.diff (hum _)
  have hELp : ∀ j : ℕ, ∀ z ∈ B ∩ {y | (j : ℝ) + 1 ≤ u y}, z ∈ B → φ z ≤ 0 → z ∈ L := by
    intro j z hz hzB hφz
    by_contra hzL
    have h1 : (j : ℝ) + 1 ≤ u z := hz.2
    rw [hu0 z hzB hφz hzL] at h1
    have : (0 : ℝ) ≤ j := Nat.cast_nonneg j
    linarith
  have hELn : ∀ j : ℕ, ∀ z ∈ B ∩ {y | u y ≤ -((j : ℝ) + 1)}, z ∈ B → φ z ≤ 0 → z ∈ L := by
    intro j z hz hzB hφz
    by_contra hzL
    have h1 : u z ≤ -((j : ℝ) + 1) := hz.2
    rw [hu0 z hzB hφz hzL] at h1
    have : (0 : ℝ) ≤ j := Nat.cast_nonneg j
    linarith
  
  have hclamp : ∀ (m : ℤ) (N : ℕ), max (min (m : ℝ) (N : ℝ)) (-(N : ℝ)) =
      ∑ j ∈ Finset.range N, (if (j : ℝ) + 1 ≤ (m : ℝ) then (1 : ℝ) else 0) -
        ∑ j ∈ Finset.range N, (if (m : ℝ) ≤ -((j : ℝ) + 1) then (1 : ℝ) else 0) := by
    intro m N
    induction N with
    | zero =>
      simp only [Nat.cast_zero, neg_zero, Finset.range_zero, Finset.sum_empty, sub_zero]
      simp only [max_def, min_def]
      split_ifs <;> linarith
    | succ n ih =>
      rw [Finset.sum_range_succ, Finset.sum_range_succ]
      have hre : ∀ a b c d : ℝ, a + c - (b + d) = (a - b) + c - d := by intros; ring
      rw [hre, ← ih]
      have h1 : (m : ℝ) ≤ n ∨ (n : ℝ) + 1 ≤ m := by
        rcases le_or_gt m (n : ℤ) with h | h
        · left; exact_mod_cast h
        · right
          have : (n : ℤ) + 1 ≤ m := h
          exact_mod_cast this
      have h2 : -(n : ℝ) ≤ m ∨ (m : ℝ) ≤ -((n : ℝ) + 1) := by
        rcases le_or_gt (-(n : ℤ)) m with h | h
        · left; exact_mod_cast h
        · right
          have : m ≤ -((n : ℤ) + 1) := by omega
          exact_mod_cast this
      have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
      push_cast
      rcases h1 with h1 | h1 <;> rcases h2 with h2 | h2 <;>
        simp only [max_def, min_def] <;> split_ifs <;> linarith
  
  have hsumle : ∀ (N : ℕ) (c : ℕ → ℝ),
      ENNReal.ofReal (∑ j ∈ Finset.range N, c j) ≤ ∑ j ∈ Finset.range N, ENNReal.ofReal (c j) := by
    intro N c
    induction N with
    | zero => simp
    | succ n ih =>
      rw [Finset.sum_range_succ, Finset.sum_range_succ]
      exact ENNReal.ofReal_add_le.trans (add_le_add ih le_rfl)
  
  have hnegdiv : ∀ (X : E3 → E3) (y : E3),
      sepDensDiv G (fun z => -X z) y = -sepDensDiv G X y := by
    intro X y
    unfold sepDensDiv partialDeriv
    rw [← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    have : (fun z => Real.sqrt (G z).det * (-X z) i) =
        fun z => -(Real.sqrt (G z).det * X z i) := by
      funext z
      rw [PiLp.neg_apply]
      ring
    rw [this]
    change fderiv ℝ (-(fun z => Real.sqrt (G z).det * X z i)) y (e i) = _
    rw [fderiv_neg]
    rfl
  
  by_cases hli : MeasureTheory.LocallyIntegrableOn u W
  swap
  · have htop : dualVarG G (fun _ _ => (0 : ℝ)) u W ∅ = ⊤ := by
      unfold dualVarG
      rw [iSup_pos hli]
      exact top_sup_eq _
    rw [htop]
    exact le_top
  have hli' : MeasureTheory.LocallyIntegrableOn ({y | 0 < φ y}.indicator u) W := by
    rw [MeasureTheory.locallyIntegrableOn_iff hW.isLocallyClosed]
    intro k hkW hk
    have h1 : IntegrableOn u k := hli.integrableOn_compact_subset hkW hk
    have h2 : IntegrableOn ({z | z ∈ B ∧ 0 < φ z}.indicator u) k := h1.indicator hD'm
    refine h2.congr_fun (fun y hy => ?_) hk.measurableSet
    have hyB : y ∈ B := hWB' (hkW hy)
    by_cases hφy : 0 < φ y
    · rw [Set.indicator_of_mem (show y ∈ {z | z ∈ B ∧ 0 < φ z} from ⟨hyB, hφy⟩),
        Set.indicator_of_mem (show y ∈ {y | 0 < φ y} from hφy)]
    · rw [Set.indicator_of_notMem (show y ∉ {z | z ∈ B ∧ 0 < φ z} from fun h => hφy h.2),
        Set.indicator_of_notMem (show y ∉ {y | 0 < φ y} from hφy)]
  conv_lhs => unfold dualVarG
  refine sup_le (iSup_le fun h => absurd hli' h) (iSup₂_le fun X hX => ?_)
  obtain ⟨hXs', hXc, hXW, hXn, C, hC⟩ := hX
  have hXs : ∀ y, ContDiffAt ℝ ∞ X y := fun y => hXs' y (Set.notMem_empty y)
  simp only [zero_mul, Finset.sum_const_zero, mul_zero, add_zero]
  
  obtain ⟨hdiv0, hdivI⟩ := sepDensDiv_support_integrable G X
  have hdivint : Integrable (sepDensDiv G X) := hdivI hXc C hC
  have huK : IntegrableOn u (tsupport X) := hli.integrableOn_compact_subset hXW hXc.isCompact
  have hswap : (fun y => {y | 0 < φ y}.indicator u y * sepDensDiv G X y) =
      fun y => {z | z ∈ B ∧ 0 < φ z}.indicator u y * sepDensDiv G X y := by
    funext y
    by_cases hyK : y ∈ tsupport X
    · have hyB : y ∈ B := hWB' (hXW hyK)
      by_cases hφy : 0 < φ y
      · rw [Set.indicator_of_mem (show y ∈ {y | 0 < φ y} from hφy),
          Set.indicator_of_mem (show y ∈ {z | z ∈ B ∧ 0 < φ z} from ⟨hyB, hφy⟩)]
      · rw [Set.indicator_of_notMem (show y ∉ {y | 0 < φ y} from hφy),
          Set.indicator_of_notMem (show y ∉ {z | z ∈ B ∧ 0 < φ z} from fun h => hφy h.2)]
    · rw [hdiv0 y hyK, mul_zero, mul_zero]
  rw [hswap]
  
  have hSFR : ∀ E : Set E3, MeasurableSet E → (∀ z ∈ E, z ∈ B → φ z ≤ 0 → z ∈ L) →
      ENNReal.ofReal (∫ y in E ∩ {z | z ∈ B ∧ 0 < φ z}, sepDensDiv G X y) ≤ sepPerG G E W ∧
      ENNReal.ofReal (-∫ y in E ∩ {z | z ∈ B ∧ 0 < φ z}, sepDensDiv G X y) ≤
        sepPerG G E W := by
    intro E hE hEL
    have hset : E ∩ {z | z ∈ B ∧ 0 < φ z} =
        E ∩ {z | z ∈ B ∧ ∀ i : Fin 1, 0 < (fun _ : Fin 1 => φ) i z} := by
      ext z
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq]
      constructor
      · rintro ⟨h1, h2, h3⟩
        exact ⟨h1, h2, fun _ => h3⟩
      · rintro ⟨h1, h2, h3⟩
        exact ⟨h1, h2, h3 0⟩
    have hsfr := fun (Y : E3 → E3) (hYs : ∀ y, ContDiffAt ℝ ∞ Y y) (hYc : HasCompactSupport Y)
        (hYW : tsupport Y ⊆ W)
        (hYn : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * Y y i * Y y j ≤ 1)
        (hYd : ∀ y, |sepDensDiv G Y y| ≤ C) =>
      sector_field_removal G B hB hG hpd 1 (fun _ => φ) (fun _ => hφ) (fun _ => hdφ)
        W L E hW hWB' hL hLW hE (fun z hz hzB ⟨_, hφz⟩ => hEL z hz hzB hφz)
        (fun _ z hz hφz => hcal z (hWB' (hLW hz)) hφz) Y (fun z _ _ => hYs z) hYc hYW hYn
        ⟨C, fun z _ _ => hYd z⟩
    rw [hset]
    refine ⟨hsfr X hXs hXc hXW hXn hC, ?_⟩
    have hnW : tsupport (fun y => -X y) ⊆ W := by
      rw [show (fun y => -X y) = -X from rfl, tsupport_neg]
      exact hXW
    have hnn : ∀ y, ∑ i : Fin 3, ∑ j : Fin 3, G y i j * (-X y) i * (-X y) j ≤ 1 := by
      intro y
      have h := hXn y
      simp only [PiLp.neg_apply, mul_neg, neg_mul, neg_neg]
      exact h
    have h2 := hsfr (fun y => -X y) (fun y => (hXs y).neg) hXc.neg hnW hnn
      (fun y => by rw [hnegdiv, abs_neg]; exact hC y)
    simp only [hnegdiv, integral_neg] at h2
    exact h2
  
  have hlim := indicator_clamp_integral_tendsto (tsupport X) {z | z ∈ B ∧ 0 < φ z}
    hXc.isCompact hD'm u (sepDensDiv G X) huK hdivint C hC hdiv0
  refine le_of_tendsto' ((ENNReal.continuous_ofReal.tendsto _).comp hlim) (fun N => ?_)
  rw [Function.comp_apply]
  
  have hpt : ∀ y, {z | z ∈ B ∧ 0 < φ z}.indicator
        (fun z => max (min (u z) (N : ℝ)) (-(N : ℝ))) y * sepDensDiv G X y =
      ∑ j ∈ Finset.range N, (B ∩ {y | (j : ℝ) + 1 ≤ u y} ∩ {z | z ∈ B ∧ 0 < φ z}).indicator
          (sepDensDiv G X) y -
        ∑ j ∈ Finset.range N, (B ∩ {y | u y ≤ -((j : ℝ) + 1)} ∩ {z | z ∈ B ∧ 0 < φ z}).indicator
          (sepDensDiv G X) y := by
    intro y
    by_cases hy : y ∈ {z | z ∈ B ∧ 0 < φ z}
    · obtain ⟨m, hm⟩ := hint y hy.1
      rw [Set.indicator_of_mem hy]
      rw [hm, hclamp m N, sub_mul, Finset.sum_mul, Finset.sum_mul]
      congr 1
      · refine Finset.sum_congr rfl (fun j _ => ?_)
        by_cases hj : (j : ℝ) + 1 ≤ (m : ℝ)
        · rw [if_pos hj, one_mul, Set.indicator_of_mem
            (show y ∈ B ∩ {y | (j : ℝ) + 1 ≤ u y} ∩ {z | z ∈ B ∧ 0 < φ z} from
              ⟨⟨hy.1, show (j : ℝ) + 1 ≤ u y by rw [hm]; exact hj⟩, hy⟩)]
        · rw [if_neg hj, zero_mul, Set.indicator_of_notMem
            (show y ∉ B ∩ {y | (j : ℝ) + 1 ≤ u y} ∩ {z | z ∈ B ∧ 0 < φ z} from fun h => hj (by
            have h' : (j : ℝ) + 1 ≤ u y := h.1.2
            rw [hm] at h'
            exact h'))]
      · refine Finset.sum_congr rfl (fun j _ => ?_)
        by_cases hj : (m : ℝ) ≤ -((j : ℝ) + 1)
        · rw [if_pos hj, one_mul, Set.indicator_of_mem
            (show y ∈ B ∩ {y | u y ≤ -((j : ℝ) + 1)} ∩ {z | z ∈ B ∧ 0 < φ z} from
              ⟨⟨hy.1, show u y ≤ -((j : ℝ) + 1) by rw [hm]; exact hj⟩, hy⟩)]
        · rw [if_neg hj, zero_mul, Set.indicator_of_notMem
            (show y ∉ B ∩ {y | u y ≤ -((j : ℝ) + 1)} ∩ {z | z ∈ B ∧ 0 < φ z} from fun h => hj (by
            have h' : u y ≤ -((j : ℝ) + 1) := h.1.2
            rw [hm] at h'
            exact h'))]
    · rw [Set.indicator_of_notMem hy, zero_mul]
      have h0 : ∀ S : Set E3, (S ∩ {z | z ∈ B ∧ 0 < φ z}).indicator (sepDensDiv G X) y = 0 :=
        fun S => Set.indicator_of_notMem (fun h => hy h.2) _
      simp only [h0, Finset.sum_const_zero, sub_zero]
  have hfun := funext hpt
  rw [hfun]
  have hIp : ∀ j ∈ Finset.range N, Integrable
      ((B ∩ {y | (j : ℝ) + 1 ≤ u y} ∩ {z | z ∈ B ∧ 0 < φ z}).indicator (sepDensDiv G X)) :=
    fun j _ => hdivint.indicator ((hum _).inter hD'm)
  have hIn : ∀ j ∈ Finset.range N, Integrable
      ((B ∩ {y | u y ≤ -((j : ℝ) + 1)} ∩ {z | z ∈ B ∧ 0 < φ z}).indicator (sepDensDiv G X)) :=
    fun j _ => hdivint.indicator ((hEnm j).inter hD'm)
  have e1 : ∑ j ∈ Finset.range N, ∫ a, (B ∩ {y | (j : ℝ) + 1 ≤ u y} ∩
        {z | z ∈ B ∧ 0 < φ z}).indicator (sepDensDiv G X) a =
      ∑ j ∈ Finset.range N, ∫ a in B ∩ {y | (j : ℝ) + 1 ≤ u y} ∩
        {z | z ∈ B ∧ 0 < φ z}, sepDensDiv G X a :=
    Finset.sum_congr rfl (fun j _ => integral_indicator ((hum ((j : ℝ) + 1)).inter hD'm))
  have e2 : ∑ j ∈ Finset.range N, ∫ a, (B ∩ {y | u y ≤ -((j : ℝ) + 1)} ∩
        {z | z ∈ B ∧ 0 < φ z}).indicator (sepDensDiv G X) a =
      ∑ j ∈ Finset.range N, ∫ a in B ∩ {y | u y ≤ -((j : ℝ) + 1)} ∩
        {z | z ∈ B ∧ 0 < φ z}, sepDensDiv G X a :=
    Finset.sum_congr rfl (fun j _ => integral_indicator ((hEnm j).inter hD'm))
  rw [integral_sub (integrable_finset_sum _ hIp) (integrable_finset_sum _ hIn),
    integral_finset_sum _ hIp, integral_finset_sum _ hIn, e1, e2]
  
  refine le_trans ?_ (dualVarG_zero_layer_sum_le G B hB hG hsymm hpd u hint hum W hW hWc hWB N)
  rw [sub_eq_add_neg, ← Finset.sum_neg_distrib]
  refine ENNReal.ofReal_add_le.trans (add_le_add
    ((hsumle N _).trans (Finset.sum_le_sum fun j _ => ?_))
    ((hsumle N _).trans (Finset.sum_le_sum fun j _ => ?_)))
  · exact (hSFR _ (hum _) (hELp j)).1
  · exact (hSFR _ (hEnm j) (hELn j)).2

theorem dual_wall_clear [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M] (g : RiemannianMetric3 M)
    (U : Set M) (hUo : IsOpen U) (hfront : IsMinimalSurfaceSet g (frontier U))
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (K : Set M) (hK : IsCompact K) (hKU : K ⊆ U) (hΨK : ∀ x : M, x ∉ K → Ψ x = 1)
    (Ω Kv : Set M) (hΩ : IsOpen Ω) (hKv : IsCompact Kv) (hKvΩ : Kv ⊆ Ω)
    (hKvU : Kv ⊆ closure U)
    (φ₀ : M → ℝ) (hφ₀ : ∀ x : M, Circle.exp (φ₀ x) = Ψ x) (hφ₀m : dualChartMeas φ₀)
    (hφ₀K : ∀ x : M, x ∉ K → φ₀ x = 0)
    (n : M → ℤ) (hn0 : ∀ x : M, x ∉ Kv → n x = 0)
    (hnm : ∀ j : ℤ, sepChartMeas {x | n x = j})
    (hfin : dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω
      (frontier U) < ⊤)
    (hmin : ∀ n' : M → ℤ, (∀ x : M, x ∉ Kv → n' x = 0) →
      (∀ j : ℤ, sepChartMeas {x | n' x = j}) →
      dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω
          (frontier U) ≤
        dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n' x : ℝ)) Ω
          (frontier U))
    (p : M) (hp : p ∈ frontier U) (O : Set M) (hO : IsOpen O) (hpO : p ∈ O) (hOΩ : O ⊆ Ω)
    (hOKv : O ∩ U ⊆ Kv) (hOK : Disjoint O K) :
    ∃ (V : Set M) (ψ : M → ℝ), IsOpen V ∧ p ∈ V ∧ ContinuousOn ψ (V ∩ U) ∧
      sepChartNull {x : M | x ∈ V ∩ U ∧ φ₀ x + 2 * Real.pi * (n x : ℝ) ≠ ψ x} :=
by
  classical
  
  have hOK' : ∀ x ∈ O, x ∉ K := fun x hx hxK => Set.disjoint_left.1 hOK hx hxK
  have hΨO : ∀ x ∈ O, Ψ x = 1 := fun x hx => hΨK x (hOK' x hx)
  have hφ₀O : ∀ x ∈ O, φ₀ x = 0 := fun x hx => hφ₀K x (hOK' x hx)
  have hfrU : ∀ x : M, x ∈ frontier U → x ∉ U := by
    intro x hx
    rw [hUo.frontier_eq] at hx
    exact hx.2
  
  obtain ⟨V₁, fW, hV₁O, hV₁o, hpV₁, hfW, hdfW, hV₁S, hH, hP, hN⟩ :=
    hfront.2 p hp O (hO.mem_nhds hpO)
  have hfr : ∀ x ∈ V₁, (x ∈ frontier U ↔ fW x = 0) := by
    intro x hx
    constructor
    · intro h
      have h' : x ∈ V₁ ∩ frontier U := ⟨hx, h⟩
      rw [hV₁S] at h'
      exact h'.2
    · intro h
      have h' : x ∈ V₁ ∩ fW ⁻¹' {0} := ⟨hx, h⟩
      rw [← hV₁S] at h'
      exact h'.2
  have hsplit : ∀ A : Set M, A ⊆ V₁ → (∀ x ∈ A, fW x ≠ 0) → IsPreconnected A →
      A ⊆ U ∨ A ⊆ (closure U)ᶜ := by
    intro A hAV hA0 hAc
    refine hAc.subset_or_subset hUo isClosed_closure.isOpen_compl ?_ ?_
    · exact Disjoint.mono_left subset_closure disjoint_compl_right
    · intro x hx
      by_cases hxU : x ∈ U
      · exact Or.inl hxU
      · right
        intro hxc
        have hxf : x ∈ frontier U := by
          rw [hUo.frontier_eq]
          exact ⟨hxc, hxU⟩
        exact hA0 x hx ((hfr x (hAV hx)).1 hxf)
  have hside_pc : ∀ b : Bool,
      IsPreconnected (V₁ ∩ {x | 0 < (if b then (1 : ℝ) else -1) * fW x}) := by
    intro b
    cases b
    · convert hN using 1
      ext x
      simp
    · convert hP using 1
      ext x
      simp
  have hgoodOf : ∀ (b : Bool) (x : M), x ∈ V₁ → 0 < (if b then (1 : ℝ) else -1) * fW x →
      x ∈ U → V₁ ∩ {x | 0 < (if b then (1 : ℝ) else -1) * fW x} ⊆ U := by
    intro b x hxV hxs hxU
    rcases hsplit _ Set.inter_subset_left (fun y hy h0 => by
        have h1 := hy.2
        simp only [Set.mem_setOf_eq, h0, mul_zero, lt_self_iff_false] at h1)
      (hside_pc b) with h | h
    · exact h
    · exact absurd (subset_closure hxU) (h ⟨hxV, hxs⟩)
  
  have hps : p ∈ (chartAt E3 p).source := mem_chart_source E3 p
  set A : Set E3 := (chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' V₁ with hAdef
  have hAo : IsOpen A := (chartAt E3 p).isOpen_inter_preimage_symm hV₁o
  have hy₀A : chartAt E3 p p ∈ A := by
    refine ⟨(chartAt E3 p).map_source hps, ?_⟩
    show (chartAt E3 p).symm (chartAt E3 p p) ∈ V₁
    rw [(chartAt E3 p).left_inv hps]
    exact hpV₁
  have hcu := chart_unit_normal_calculus g V₁ fW hV₁o hfW.contMDiffOn hdfW p
  set w : E3 → ℝ := fun y => fW ((chartAt E3 p).symm y) with hw_def
  have hw : ContDiffOn ℝ ∞ w A := hcu.1
  have hAx : ∀ z ∈ A, (chartAt E3 p).symm z ∈ V₁ ∩ (chartAt E3 p).source ∧
      chartAt E3 p ((chartAt E3 p).symm z) = z :=
    fun z hz => ⟨⟨hz.2, (chartAt E3 p).map_target hz.1⟩, (chartAt E3 p).right_inv hz.1⟩
  have hdw : ∀ z ∈ A, fderiv ℝ w z ≠ 0 := by
    intro z hz h0
    obtain ⟨hx, hκx⟩ := hAx z hz
    have hpos := (hcu.2 _ hx).1
    rw [hκx] at hpos
    simp only [partialDeriv, h0, ContinuousLinearMap.zero_apply, mul_zero,
      Finset.sum_const_zero, lt_self_iff_false] at hpos
  have hMSE : ∀ z ∈ A, w z = 0 → levelMeanCurvCoord (g.coeff (chartAt E3 p).symm) w z = 0 := by
    intro z hz hz0
    obtain ⟨hx, hκx⟩ := hAx z hz
    have h2 := (hcu.2 _ hx).2.1
    rw [hκx] at h2
    rw [← h2]
    exact hH _ hx.1 hz0
  have hw0 : w (chartAt E3 p p) = 0 := by
    show fW ((chartAt E3 p).symm (chartAt E3 p p)) = 0
    rw [(chartAt E3 p).left_inv hps]
    exact (hfr p hpV₁).1 hp
  have hGA : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 p).symm y i j) A :=
    fun i j => (g.smooth p i j).mono (fun y hy => hy.1)
  have hsymmG : ∀ (y : E3) (i j : Fin 3), g.coeff (chartAt E3 p).symm y i j =
      g.coeff (chartAt E3 p).symm y j i := fun y i j => g.symm _ _ _
  have hpdA : ∀ y ∈ A, (g.coeff (chartAt E3 p).symm y).PosDef :=
    fun y hy => coeff_chart_symm_posDef g p y hy.1
  
  obtain ⟨ε₀, φb, hε₀, hB₀A, hφb⟩ := wall_subcalibration (g.coeff (chartAt E3 p).symm) A hAo
    hGA hsymmG hpdA _ hy₀A w hw hw0 (hdw _ hy₀A) hMSE
  set B₀ : Set E3 := Metric.ball (chartAt E3 p p) ε₀ with hB₀def
  have hB₀t : B₀ ⊆ (chartAt E3 p).target := fun y hy => (hB₀A hy).1
  have hB₀O : B₀ ⊆ chartAt E3 p '' (O ∩ (chartAt E3 p).source) := by
    intro y hy
    obtain ⟨hx, hκx⟩ := hAx y (hB₀A hy)
    exact ⟨_, ⟨hV₁O hx.1, hx.2⟩, hκx⟩
  have hGB : ∀ i j : Fin 3, ContDiffOn ℝ ∞ (fun y => g.coeff (chartAt E3 p).symm y i j) B₀ :=
    fun i j => (hGA i j).mono hB₀A
  have hpdB : ∀ y ∈ B₀, (g.coeff (chartAt E3 p).symm y).PosDef := fun y hy => hpdA y (hB₀A hy)
  have hwB : ContDiffOn ℝ ∞ w B₀ := hw.mono hB₀A
  have hdwB : ∀ z ∈ B₀, fderiv ℝ w z ≠ 0 := fun z hz => hdw z (hB₀A hz)
  have hwK : ∀ y ∈ B₀, (chartAt E3 p).symm y ∈ frontier U ↔ w y = 0 :=
    fun y hy => hfr _ (hAx y (hB₀A hy)).1.1
  
  obtain ⟨hfinC, hminC⟩ := dual_wall_chart_reduce g Ψ hΨs Ω Kv (frontier U) hΩ hKv hKvΩ φ₀
    hφ₀m n hn0 hnm hfin hmin O hO hOΩ hΨO hφ₀O p B₀ Metric.isOpen_ball hB₀O w hwB hdwB hwK
  set v : E3 → ℝ := fun y => ((n ((chartAt E3 p).symm y) : ℤ) : ℝ) with hv_def
  have hvm : ∀ t : ℝ, MeasurableSet (B₀ ∩ {y | t ≤ v y}) := by
    intro t
    have e : B₀ ∩ {y | t ≤ v y} = ⋃ m : ℤ, (B₀ ∩ (chartAt E3 p '' ({x | n x = m} ∩
        (chartAt E3 p).source)) ∩ {_y | t ≤ (m : ℝ)}) := by
      ext y
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_iUnion, Set.mem_image]
      constructor
      · rintro ⟨hyB, hty⟩
        exact ⟨n ((chartAt E3 p).symm y), ⟨hyB, (chartAt E3 p).symm y,
          ⟨rfl, (chartAt E3 p).map_target (hB₀t hyB)⟩, (chartAt E3 p).right_inv (hB₀t hyB)⟩, hty⟩
      · rintro ⟨m, ⟨hyB, x, ⟨hxm, hxs⟩, rfl⟩, htm⟩
        refine ⟨hyB, ?_⟩
        show t ≤ ((n ((chartAt E3 p).symm (chartAt E3 p x)) : ℤ) : ℝ)
        rw [(chartAt E3 p).left_inv hxs, hxm]
        exact htm
    rw [e]
    exact MeasurableSet.iUnion fun m =>
      (Metric.isOpen_ball.measurableSet.inter (hnm m p)).inter (MeasurableSet.const _)
  have hsplitB : ∀ (b : Bool) (u : E3 → ℝ), (∀ y ∈ B₀, ∃ m : ℤ, u y = m) →
      (∀ t : ℝ, MeasurableSet (B₀ ∩ {y | t ≤ u y})) → ∀ W : Set E3, IsOpen W →
      IsCompact (closure W) → closure W ⊆ B₀ →
      dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) u W (B₀ ∩ {y | w y = 0}) =
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | 0 < (if b then (1 : ℝ) else -1) * w y}.indicator u) W ∅ +
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | (if b then (1 : ℝ) else -1) * w y < 0}.indicator u) W ∅ := by
    intro b u hu hum W hW hWc hWB
    rw [dualVarG_zero_cut_split _ B₀ Metric.isOpen_ball hGB hsymmG hpdB w hwB hdwB u hu hum
      W hW hWc hWB]
    cases b
    · have e1 : {y | 0 < (if false = true then (1 : ℝ) else -1) * w y} = {y | w y < 0} := by
        ext y; simp
      have e2 : {y | (if false = true then (1 : ℝ) else -1) * w y < 0} = {y | 0 < w y} := by
        ext y; simp
      rw [e1, e2, add_comm]
    · have e1 : {y | 0 < (if true = true then (1 : ℝ) else -1) * w y} = {y | 0 < w y} := by
        ext y; simp
      have e2 : {y | (if true = true then (1 : ℝ) else -1) * w y < 0} = {y | w y < 0} := by
        ext y; simp
      rw [e1, e2]
  have hvint : ∀ y ∈ B₀, ∃ m : ℤ, v y = m := fun y _ => ⟨_, rfl⟩
  have hindm : ∀ (S : Set E3) (u : E3 → ℝ), MeasurableSet (B₀ ∩ S) →
      (∀ t : ℝ, MeasurableSet (B₀ ∩ {y | t ≤ u y})) →
      ∀ t : ℝ, MeasurableSet (B₀ ∩ {y | t ≤ S.indicator u y}) := by
    intro S u hS hu t
    have e : B₀ ∩ {y | t ≤ S.indicator u y} = ((B₀ ∩ S) ∩ (B₀ ∩ {y | t ≤ u y})) ∪
        ((B₀ \ (B₀ ∩ S)) ∩ {_y | t ≤ (0 : ℝ)}) := by
      ext y
      by_cases hy : y ∈ S
      · simp only [Set.mem_inter_iff, Set.mem_union, Set.mem_diff, Set.mem_setOf_eq,
          Set.indicator_of_mem hy]
        tauto
      · simp only [Set.mem_inter_iff, Set.mem_union, Set.mem_diff, Set.mem_setOf_eq,
          Set.indicator_of_notMem hy]
        tauto
    rw [e]
    exact (hS.inter (hu t)).union ((measurableSet_ball.diff hS).inter (MeasurableSet.const _))
  
  have hside : ∀ b : Bool, ∃ N ∈ 𝓝 (chartAt E3 p p), ∀ z ∈ N, z ∈ B₀ →
      0 < (if b then (1 : ℝ) else -1) * w z → (chartAt E3 p).symm z ∈ U →
      ∃ m : ℤ, ∃ N' ∈ 𝓝 z, volume (N' ∩ {y | v y ≠ m}) = 0 := by
    intro b
    by_cases hg : V₁ ∩ {x | 0 < (if b then (1 : ℝ) else -1) * fW x} ⊆ U
    swap
    · refine ⟨Set.univ, Filter.univ_mem, fun z _ hzB hsz hzU => absurd
        (hgoodOf b _ (hAx z (hB₀A hzB)).1.1 hsz hzU) hg⟩
    obtain ⟨hφs, hdφ, hsgn, hcal⟩ := hφb b
    have hsp := hsplitB b
    have hs : (if b then (1 : ℝ) else -1) = 1 ∨ (if b then (1 : ℝ) else -1) = -1 := by
      cases b <;> simp
    generalize (if b then (1 : ℝ) else -1) = s at hg hsgn hsp hs ⊢
    have hPo : IsOpen (B₀ ∩ {y | 0 < φb b y}) :=
      hφs.continuousOn.isOpen_inter_preimage isOpen_ball isOpen_Ioi
    have hvb_pos : ∀ y, 0 < φb b y → {y | 0 < φb b y}.indicator v y = v y :=
      fun y hy => Set.indicator_of_mem (show y ∈ {y | 0 < φb b y} from hy) v
    have hvb_neg : ∀ y, ¬ 0 < φb b y → {y | 0 < φb b y}.indicator v y = 0 :=
      fun y hy => Set.indicator_of_notMem (show y ∉ {y | 0 < φb b y} from hy) v
    have hvbint : ∀ y ∈ B₀, ∃ m : ℤ, {y | 0 < φb b y}.indicator v y = m := by
      intro y _
      by_cases h : 0 < φb b y
      · exact ⟨n ((chartAt E3 p).symm y), hvb_pos y h⟩
      · exact ⟨0, by rw [hvb_neg y h]; simp⟩
    have heqS : ∀ (u : E3 → ℝ) (W : Set E3), IsOpen W → W ⊆ B₀ →
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | 0 < φb b y}.indicator u) W ∅ =
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | 0 < s * w y}.indicator u) W ∅ := by
      intro u W hW hWB
      refine dualVarG_zero_congr _ _ _ W hW (fun y hy => ?_)
      have hyB := hWB hy
      by_cases h : 0 < φb b y
      · rw [Set.indicator_of_mem (show y ∈ {y | 0 < φb b y} from h), Set.indicator_of_mem
          (show y ∈ {y | 0 < s * w y} from (hsgn y hyB).1.1 h)]
      · rw [Set.indicator_of_notMem (show y ∉ {y | 0 < φb b y} from h), Set.indicator_of_notMem
          (show y ∉ {y | 0 < s * w y} from fun h' => h ((hsgn y hyB).1.2 h'))]
    have hfinb : ∀ W : Set E3, IsOpen W → IsCompact (closure W) → closure W ⊆ B₀ →
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | 0 < φb b y}.indicator v) W ∅ < ⊤ := by
      intro W hW hWc hWB
      rw [heqS v W hW (subset_closure.trans hWB)]
      have hfinv := hfinC W hW hWc hWB
      rw [hsp v hvint hvm W hW hWc hWB] at hfinv
      exact lt_of_le_of_lt le_self_add hfinv
    have hminb : ∀ (v' : E3 → ℝ) (W L : Set E3), (∀ y ∈ B₀, ∃ m : ℤ, v' y = m) →
        (∀ t : ℝ, MeasurableSet (B₀ ∩ {y | t ≤ v' y})) → IsOpen W → IsCompact (closure W) →
        closure W ⊆ B₀ → IsCompact L → L ⊆ W →
        (∀ y : E3, y ∉ L → v' y = {y | 0 < φb b y}.indicator v y) →
        dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | 0 < φb b y}.indicator v) W ∅ ≤
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ)) v' W ∅ := by
      intro v' W L hv'i hv'm hW hWc hWB hL hLW hv'L
      have hWB' : W ⊆ B₀ := subset_closure.trans hWB
      set vt : E3 → ℝ := fun y => if 0 < φb b y ∧ y ∈ B₀ then v' y else v y with hvt
      have hvti : ∀ y ∈ B₀, ∃ m : ℤ, vt y = m := by
        intro y hy
        by_cases h : 0 < φb b y ∧ y ∈ B₀
        · simp only [hvt, if_pos h]
          exact hv'i y hy
        · simp only [hvt, if_neg h]
          exact ⟨_, rfl⟩
      have hvtm : ∀ t : ℝ, MeasurableSet (B₀ ∩ {y | t ≤ vt y}) := by
        intro t
        have e : B₀ ∩ {y | t ≤ vt y} = ((B₀ ∩ {y | 0 < φb b y}) ∩ (B₀ ∩ {y | t ≤ v' y})) ∪
            ((B₀ \ (B₀ ∩ {y | 0 < φb b y})) ∩ (B₀ ∩ {y | t ≤ v y})) := by
          ext y
          by_cases h : 0 < φb b y ∧ y ∈ B₀
          · simp only [Set.mem_inter_iff, Set.mem_union, Set.mem_diff, Set.mem_setOf_eq, hvt,
              if_pos h]
            tauto
          · simp only [Set.mem_inter_iff, Set.mem_union, Set.mem_diff, Set.mem_setOf_eq, hvt,
              if_neg h]
            tauto
        rw [e]
        exact (hPo.measurableSet.inter (hv'm t)).union
          ((measurableSet_ball.diff hPo.measurableSet).inter (hvm t))
      have hvtL : ∀ y : E3, y ∉ L → vt y = v y := by
        intro y hy
        by_cases h : 0 < φb b y ∧ y ∈ B₀
        · simp only [hvt, if_pos h]
          rw [hv'L y hy]
          exact hvb_pos y h.1
        · simp only [hvt, if_neg h]
      have hvtK : ∀ y ∈ L, vt y ≠ v y → (chartAt E3 p).symm y ∈ Kv := by
        intro y _ hne
        by_cases h : 0 < φb b y ∧ y ∈ B₀
        · obtain ⟨hx, _⟩ := hAx y (hB₀A h.2)
          apply hOKv
          refine ⟨hV₁O hx.1, hg ⟨hx.1, ?_⟩⟩
          exact (hsgn y h.2).1.1 h.1
        · exact absurd (by simp only [hvt, if_neg h]) hne
      have hC := hminC vt W L hvti hvtm hW hWc hWB hL hLW hvtL hvtK
      rw [hsp v hvint hvm W hW hWc hWB, hsp vt hvti hvtm W hW hWc hWB] at hC
      have hR : dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | s * w y < 0}.indicator vt) W ∅ =
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | s * w y < 0}.indicator v) W ∅ := by
        refine dualVarG_zero_congr _ _ _ W hW (fun y hy => ?_)
        by_cases h : y ∈ {y | s * w y < 0}
        · rw [Set.indicator_of_mem h, Set.indicator_of_mem h]
          have hn : ¬ (0 < φb b y ∧ y ∈ B₀) := fun h' => by
            have h2 := (hsgn y h'.2).1.1 h'.1
            exact absurd (show s * w y < 0 from h) (not_lt.2 h2.le)
          simp only [hvt, if_neg hn]
        · rw [Set.indicator_of_notMem h, Set.indicator_of_notMem h]
      rw [hR] at hC
      have hfinv := hfinC W hW hWc hWB
      rw [hsp v hvint hvm W hW hWc hWB] at hfinv
      have hRtop : dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
          ({y | s * w y < 0}.indicator v) W ∅ ≠ ⊤ :=
        ne_top_of_le_ne_top hfinv.ne le_add_self
      have h1 := ENNReal.le_of_add_le_add_right hRtop hC
      have h2 : dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | 0 < s * w y}.indicator vt) W ∅ =
          dualVarG (g.coeff (chartAt E3 p).symm) (fun _ _ => (0 : ℝ))
            ({y | 0 < φb b y}.indicator v') W ∅ := by
        refine dualVarG_zero_congr _ _ _ W hW (fun y hy => ?_)
        have hyB := hWB' hy
        by_cases h : 0 < s * w y
        · have hφ : 0 < φb b y := (hsgn y hyB).1.2 h
          rw [Set.indicator_of_mem (show y ∈ {y | 0 < s * w y} from h),
            Set.indicator_of_mem (show y ∈ {y | 0 < φb b y} from hφ)]
          simp only [hvt, if_pos (And.intro hφ hyB)]
        · have hφ : ¬ 0 < φb b y := fun h' => h ((hsgn y hyB).1.1 h')
          rw [Set.indicator_of_notMem (show y ∉ {y | 0 < s * w y} from h),
            Set.indicator_of_notMem (show y ∉ {y | 0 < φb b y} from hφ)]
      rw [heqS v W hW hWB']
      calc _ ≤ _ := h1
        _ = _ := h2
        _ ≤ _ := intVar_side_projection _ B₀ isOpen_ball hGB hsymmG hpdB (φb b) hφs hdφ hcal
            v' hv'i hv'm W L hW hWc hWB hL hLW (fun y _ hφ hyL => by
              rw [hv'L y hyL]
              exact hvb_neg y (not_lt.2 hφ))
    obtain ⟨hperMin, hsum⟩ := intVar_superlevel_perMin _ B₀ isOpen_ball hGB hsymmG hpdB
      ({y | 0 < φb b y}.indicator v) hvbint (hindm _ v hPo.measurableSet hvm) hfinb hminb
    set E : ℤ → Set E3 := fun j => B₀ ∩ {y | (j : ℝ) ≤ {y | 0 < φb b y}.indicator v y}
      with hE
    have hanti : ∀ j : ℤ, E (j + 1) ⊆ E j := by
      intro j y hy
      simp only [hE, Set.mem_inter_iff, Set.mem_setOf_eq] at hy ⊢
      push_cast at hy
      exact ⟨hy.1, by linarith [hy.2]⟩
    
    have hclear : ∃ N ∈ 𝓝 (chartAt E3 p p), ∀ z ∈ N, 0 < s * w z →
        ¬ (∀ N' ∈ 𝓝 z, ∃ j : ℤ, volume (N' \ E j) ≠ 0 ∧ volume (N' ∩ E j) ≠ 0) := by
      by_cases hJ : ∀ N ∈ 𝓝 (chartAt E3 p p), ∃ j : ℤ,
          volume (N \ E j) ≠ 0 ∧ volume (N ∩ E j) ≠ 0
      · obtain ⟨a, u, r, δ, hr, hδ, hu, hu0, hCV, hJiff, hMSEu, hsides⟩ :=
          nested_perMin_single_sheet g p B₀ isOpen_ball hB₀t (Metric.mem_ball_self hε₀) E
            hanti hperMin hsum hJ
        have hCo : ∀ r' δ' : ℝ, IsOpen (sepCyl a (chartAt E3 p p) r' δ') := by
          intro r' δ'
          have c1 : Continuous (fun z : E3 => ‖sepPlaneProj a (z - chartAt E3 p p)‖) := by
            unfold sepPlaneProj
            fun_prop
          have c2 : Continuous (fun z : E3 => |z a - chartAt E3 p p a|) := by fun_prop
          exact (isOpen_lt c1 continuous_const).inter (isOpen_lt c2 continuous_const)
        have hcC : ∀ r' δ' : ℝ, 0 < r' → 0 < δ' →
            chartAt E3 p p ∈ sepCyl a (chartAt E3 p p) r' δ' := by
          intro r' δ' hr' hδ'
          simp [sepCyl, sepPlaneProj, hr', hδ']
        obtain ⟨j₀, hj₀1, hj₀2⟩ := hJ _ ((hCo r δ).mem_nhds (hcC r δ hr hδ))
        have hΓ := smth_graph_null a u hu.continuous
        have hnullσ : ∃ σ : ℝ, (σ = 1 ∨ σ = -1) ∧
            volume (sepCyl a (chartAt E3 p p) r δ ∩ Metric.ball (chartAt E3 p p) ε₀ ∩
              {z | 0 < σ * (z a - u (sepPlaneProj a z))} ∩ {z | s * w z < 0}) = 0 := by
          obtain ⟨hLo, hUp⟩ := hsides j₀
          rcases le_or_gt j₀ 0 with hj | hj
          · have hsub : ∀ y ∈ B₀, s * w y < 0 → y ∈ E j₀ := by
              intro y hyB hyw
              have hφ : ¬ 0 < φb b y := fun h => by linarith [(hsgn y hyB).1.1 h]
              simp only [hE, Set.mem_inter_iff, Set.mem_setOf_eq]
              refine ⟨hyB, ?_⟩
              rw [hvb_neg y hφ]
              exact_mod_cast hj
            by_cases hLoE : volume (sepCyl a (chartAt E3 p p) r δ ∩
                {z | z a < u (sepPlaneProj a z)} ∩ E j₀) = 0
            · refine ⟨-1, Or.inr rfl, measure_mono_null ?_ hLoE⟩
              rintro y ⟨⟨⟨hyC, hyB⟩, hyσ⟩, hyw⟩
              have hyσ' : 0 < -1 * (y a - u (sepPlaneProj a y)) := hyσ
              exact ⟨⟨hyC, show y a < u (sepPlaneProj a y) by linarith⟩, hsub y hyB hyw⟩
            · by_cases hUpE : volume (sepCyl a (chartAt E3 p p) r δ ∩
                  {z | u (sepPlaneProj a z) < z a} ∩ E j₀) = 0
              · refine ⟨1, Or.inl rfl, measure_mono_null ?_ hUpE⟩
                rintro y ⟨⟨⟨hyC, hyB⟩, hyσ⟩, hyw⟩
                have hyσ' : 0 < 1 * (y a - u (sepPlaneProj a y)) := hyσ
                exact ⟨⟨hyC, show u (sepPlaneProj a y) < y a by linarith⟩, hsub y hyB hyw⟩
              · exfalso
                have hLo' := hLo.resolve_right hLoE
                have hUp' := hUp.resolve_right hUpE
                apply hj₀1
                refine measure_mono_null ?_ (measure_union_null (measure_union_null hLo' hUp') hΓ)
                rintro y ⟨hyC, hyE⟩
                rcases lt_trichotomy (y a) (u (sepPlaneProj a y)) with h | h | h
                · exact Or.inl (Or.inl ⟨⟨hyC, h⟩, hyE⟩)
                · exact Or.inr h
                · exact Or.inl (Or.inr ⟨⟨hyC, h⟩, hyE⟩)
          · have hsub : ∀ y ∈ E j₀, 0 < s * w y := by
              intro y hy
              simp only [hE, Set.mem_inter_iff, Set.mem_setOf_eq] at hy
              by_cases hφ : 0 < φb b y
              · exact (hsgn y hy.1).1.1 hφ
              · exfalso
                have h2 := hy.2
                rw [hvb_neg y hφ] at h2
                have h3 : (0 : ℝ) < j₀ := by exact_mod_cast hj
                linarith
            by_cases hLoE : volume ((sepCyl a (chartAt E3 p p) r δ ∩
                {z | z a < u (sepPlaneProj a z)}) \ E j₀) = 0
            · refine ⟨-1, Or.inr rfl, measure_mono_null ?_ hLoE⟩
              rintro y ⟨⟨⟨hyC, _⟩, hyσ⟩, hyw⟩
              have hyσ' : 0 < -1 * (y a - u (sepPlaneProj a y)) := hyσ
              have hyw' : s * w y < 0 := hyw
              exact ⟨⟨hyC, show y a < u (sepPlaneProj a y) by linarith⟩,
                fun hyE => by linarith [hsub y hyE]⟩
            · by_cases hUpE : volume ((sepCyl a (chartAt E3 p p) r δ ∩
                  {z | u (sepPlaneProj a z) < z a}) \ E j₀) = 0
              · refine ⟨1, Or.inl rfl, measure_mono_null ?_ hUpE⟩
                rintro y ⟨⟨⟨hyC, _⟩, hyσ⟩, hyw⟩
                have hyσ' : 0 < 1 * (y a - u (sepPlaneProj a y)) := hyσ
                have hyw' : s * w y < 0 := hyw
                exact ⟨⟨hyC, show u (sepPlaneProj a y) < y a by linarith⟩,
                  fun hyE => by linarith [hsub y hyE]⟩
              · exfalso
                have hLo' := hLo.resolve_left hLoE
                have hUp' := hUp.resolve_left hUpE
                apply hj₀2
                refine measure_mono_null ?_ (measure_union_null (measure_union_null hLo' hUp') hΓ)
                rintro y ⟨hyC, hyE⟩
                rcases lt_trichotomy (y a) (u (sepPlaneProj a y)) with h | h | h
                · exact Or.inl (Or.inl ⟨⟨hyC, h⟩, hyE⟩)
                · exact Or.inr h
                · exact Or.inl (Or.inr ⟨⟨hyC, h⟩, hyE⟩)
        obtain ⟨σ, hσ, hnull⟩ := hnullσ
        obtain ⟨r₁, δ₁, hr₁, hr₁r, hδ₁, hδ₁δ, _, hC₁⟩ :=
          sheet_coincides_of_side g p a u r δ hr hδ hu hu0 (hCV.trans hB₀t) hMSEu ε₀ w hε₀
            hB₀t hwB hw0 hdwB (fun z hz hz0 => hMSE z (hB₀A hz) hz0) σ s hσ hs hnull
        refine ⟨sepCyl a (chartAt E3 p p) r₁ δ₁, (hCo r₁ δ₁).mem_nhds (hcC r₁ δ₁ hr₁ hδ₁), ?_⟩
        intro z hz hsz hJz
        have hzC : z ∈ sepCyl a (chartAt E3 p p) r δ := by
          simp only [sepCyl, Set.mem_setOf_eq] at hz ⊢
          exact ⟨lt_of_lt_of_le hz.1 hr₁r, lt_of_lt_of_le hz.2 hδ₁δ⟩
        have hgr := (hJiff z hzC).1 hJz
        have hw0z := (hC₁ z hz).1.2 hgr
        rw [hw0z, mul_zero] at hsz
        exact lt_irrefl _ hsz
      · push_neg at hJ
        obtain ⟨N₀, hN₀, hN₀j⟩ := hJ
        refine ⟨interior N₀, interior_mem_nhds.2 hN₀, fun z hz _ hJz => ?_⟩
        obtain ⟨j, h1, h2⟩ := hJz N₀ (mem_interior_iff_mem_nhds.1 hz)
        exact h2 (hN₀j j h1)
    
    have hLOC : ∀ z ∈ B₀, 0 < s * w z →
        ¬ (∀ N' ∈ 𝓝 z, ∃ j : ℤ, volume (N' \ E j) ≠ 0 ∧ volume (N' ∩ E j) ≠ 0) →
        ∃ m : ℤ, ∃ N ∈ 𝓝 z, volume (N ∩ {y | v y ≠ m}) = 0 := by
      intro z hzB hsz hJz
      push_neg at hJz
      obtain ⟨N, hN, hNj⟩ := hJz
      have hN₁o : IsOpen (interior N ∩ (B₀ ∩ {y | 0 < φb b y})) := isOpen_interior.inter hPo
      have hzN₁ : z ∈ interior N ∩ (B₀ ∩ {y | 0 < φb b y}) :=
        ⟨mem_interior_iff_mem_nhds.2 hN, hzB, (hsgn z hzB).1.2 hsz⟩
      have hpos : volume (interior N ∩ (B₀ ∩ {y | 0 < φb b y})) ≠ 0 :=
        (hN₁o.measure_pos volume ⟨z, hzN₁⟩).ne'
      have hvN : ∀ y ∈ interior N ∩ (B₀ ∩ {y | 0 < φb b y}),
          v y = {y | 0 < φb b y}.indicator v y := fun y hy => (hvb_pos y hy.2.2).symm
      have hm : ∃ m : ℤ, volume ((interior N ∩ (B₀ ∩ {y | 0 < φb b y})) ∩ {y | v y = m}) ≠ 0 := by
        by_contra hall
        push_neg at hall
        apply hpos
        refine measure_mono_null (fun y hy => ?_) (measure_iUnion_null hall)
        exact Set.mem_iUnion.2 ⟨n ((chartAt E3 p).symm y), hy, rfl⟩
      obtain ⟨m, hm⟩ := hm
      have hNm : volume (N \ E m) = 0 := by
        by_contra h
        apply hm
        refine measure_mono_null (fun y hy => ?_) (hNj m h)
        refine ⟨interior_subset hy.1.1, ?_⟩
        simp only [hE, Set.mem_inter_iff, Set.mem_setOf_eq]
        refine ⟨hy.1.2.1, ?_⟩
        rw [← hvN y hy.1]
        exact le_of_eq (show v y = m from hy.2).symm
      have hNm1 : volume (N ∩ E (m + 1)) = 0 := by
        apply hNj (m + 1)
        intro h0
        apply hm
        refine measure_mono_null (fun y hy => ?_) h0
        refine ⟨interior_subset hy.1.1, fun h => ?_⟩
        simp only [hE, Set.mem_inter_iff, Set.mem_setOf_eq] at h
        have h2 := h.2
        rw [← hvN y hy.1] at h2
        have h3 : v y = m := hy.2
        push_cast at h2
        linarith
      have hD : volume {y | y ∈ interior N ∩ (B₀ ∩ {y | 0 < φb b y}) ∧ v y ≠ m} = 0 := by
        refine measure_mono_null (fun y hy => ?_) (measure_union_null hNm hNm1)
        have hmm' : n ((chartAt E3 p).symm y) ≠ m := fun h => hy.2 (by
          show ((n ((chartAt E3 p).symm y) : ℤ) : ℝ) = m
          rw [h])
        rcases lt_or_gt_of_ne hmm' with h | h
        · left
          refine ⟨interior_subset hy.1.1, fun hE' => ?_⟩
          simp only [hE, Set.mem_inter_iff, Set.mem_setOf_eq] at hE'
          have h1 := hE'.2
          rw [← hvN y hy.1] at h1
          have h1'' : ((m : ℤ) : ℝ) ≤ ((n ((chartAt E3 p).symm y) : ℤ) : ℝ) := h1
          have h1' : m ≤ n ((chartAt E3 p).symm y) := by exact_mod_cast h1''
          omega
        · right
          refine ⟨interior_subset hy.1.1, ?_⟩
          simp only [hE, Set.mem_inter_iff, Set.mem_setOf_eq]
          refine ⟨hy.1.2.1, ?_⟩
          rw [← hvN y hy.1]
          show ((m + 1 : ℤ) : ℝ) ≤ ((n ((chartAt E3 p).symm y) : ℤ) : ℝ)
          exact_mod_cast (show m + 1 ≤ n ((chartAt E3 p).symm y) by omega)
      refine ⟨m, interior N ∩ (B₀ ∩ {y | 0 < φb b y}), hN₁o.mem_nhds hzN₁, ?_⟩
      refine measure_mono_null ?_ hD
      intro y hy
      exact ⟨hy.1, hy.2⟩
    obtain ⟨N, hN, hNcl⟩ := hclear
    exact ⟨N, hN, fun z hzN hzB hsz _ => hLOC z hzB hsz (hNcl z hzN hsz)⟩
  
  obtain ⟨Nt, hNt, hNtL⟩ := hside true
  obtain ⟨Nf, hNf, hNfL⟩ := hside false
  have hy₀D : chartAt E3 p p ∈ interior (Nt ∩ Nf ∩ B₀) :=
    mem_interior_iff_mem_nhds.2 (Filter.inter_mem (Filter.inter_mem hNt hNf)
      (isOpen_ball.mem_nhds (Metric.mem_ball_self hε₀)))
  have hDB : interior (Nt ∩ Nf ∩ B₀) ⊆ B₀ := fun z hz => (interior_subset hz).2
  have hLOC' : ∀ z, z ∈ interior (Nt ∩ Nf ∩ B₀) → (chartAt E3 p).symm z ∈ U →
      ∃ m : ℤ, ∃ N' ∈ 𝓝 z, volume (N' ∩ {y | v y ≠ m}) = 0 := by
    intro z hzD hzU
    have hzi := interior_subset hzD
    have hwz : w z ≠ 0 := fun h => hfrU _ ((hwK z hzi.2).2 h) hzU
    rcases lt_or_gt_of_ne hwz with h | h
    · exact hNfL z hzi.1.2 hzi.2 (by rw [if_neg Bool.false_ne_true]; linarith) hzU
    · exact hNtL z hzi.1.1 hzi.2 (by rw [if_pos rfl]; linarith) hzU
  choose! μ hμ using hLOC'
  have hloc : ∀ z ∈ interior (Nt ∩ Nf ∩ B₀), (chartAt E3 p).symm z ∈ U →
      ∃ N' ∈ 𝓝 z, volume (N' ∩ {y | v y ≠ μ z}) = 0 ∧
        ∀ z' ∈ interior N', z' ∈ interior (Nt ∩ Nf ∩ B₀) → (chartAt E3 p).symm z' ∈ U →
          μ z' = μ z := by
    intro z hz hzU
    obtain ⟨N', hN', h0⟩ := hμ z hz hzU
    refine ⟨N', hN', h0, fun z' hz'N hz'D hz'U => ?_⟩
    obtain ⟨N'', hN'', h0'⟩ := hμ z' hz'D hz'U
    by_contra hne
    have hpos : 0 < volume (N' ∩ N'') := Measure.measure_pos_of_mem_nhds volume
      (Filter.inter_mem (mem_interior_iff_mem_nhds.1 hz'N) hN'')
    apply hpos.ne'
    refine measure_mono_null (fun y hy => ?_) (measure_union_null h0 h0')
    by_cases hv : v y = μ z
    · right
      refine ⟨hy.2, fun h => hne ?_⟩
      rw [h] at hv
      exact_mod_cast hv
    · left
      exact ⟨hy.1, hv⟩
  refine ⟨(chartAt E3 p).source ∩ chartAt E3 p ⁻¹' interior (Nt ∩ Nf ∩ B₀),
    fun x => 2 * Real.pi * (μ (chartAt E3 p x) : ℝ),
    (chartAt E3 p).isOpen_inter_preimage isOpen_interior, ⟨hps, hy₀D⟩, ?_, ?_⟩
  · intro x hx
    obtain ⟨⟨hxs, hxD⟩, hxU⟩ := hx
    have hxU' : (chartAt E3 p).symm (chartAt E3 p x) ∈ U := by
      rw [(chartAt E3 p).left_inv hxs]
      exact hxU
    obtain ⟨N', hN', -, hconst⟩ := hloc _ hxD hxU'
    have hmem : (chartAt E3 p).source ∩ chartAt E3 p ⁻¹' interior N' ∈ 𝓝 x :=
      ((chartAt E3 p).isOpen_inter_preimage isOpen_interior).mem_nhds
        ⟨hxs, mem_interior_iff_mem_nhds.2 hN'⟩
    refine continuousWithinAt_const.congr_of_eventuallyEq ?_ rfl
    filter_upwards [inter_mem_nhdsWithin _ hmem] with x' hx'
    obtain ⟨⟨⟨hx's, hx'D⟩, hx'U⟩, -, hx'N⟩ := hx'
    have hc : μ (chartAt E3 p x') = μ (chartAt E3 p x) :=
      hconst _ hx'N hx'D (by rw [(chartAt E3 p).left_inv hx's]; exact hx'U)
    rw [hc]
  · refine sepChartNull_of_image_null p _ (fun x hx => hx.1.1.1) ?_
    have hZ' : volume {z | z ∈ interior (Nt ∩ Nf ∩ B₀) ∧ (chartAt E3 p).symm z ∈ U ∧
        v z ≠ μ z} = 0 := by
      refine measure_null_of_locally_null _ (fun z hz => ?_)
      obtain ⟨N', hN', h0, hconst⟩ := hloc z hz.1 hz.2.1
      refine ⟨_ ∩ interior N', inter_mem_nhdsWithin _ (interior_mem_nhds.2 hN'),
        measure_mono_null (fun y hy => ?_) h0⟩
      refine ⟨interior_subset hy.2, ?_⟩
      have hc := hconst y hy.2 hy.1.1 hy.1.2.1
      show v y ≠ μ z
      rw [← hc]
      exact hy.1.2.2
    refine measure_mono_null ?_ hZ'
    rintro _ ⟨x, ⟨⟨⟨hxs, hxD⟩, hxU⟩, hne⟩, rfl⟩
    have hxO : x ∈ O := by
      have h := (hAx _ (hB₀A (hDB hxD))).1.1
      rw [(chartAt E3 p).left_inv hxs] at h
      exact hV₁O h
    refine ⟨hxD, by rw [(chartAt E3 p).left_inv hxs]; exact hxU, fun hv => hne ?_⟩
    have h : ((n ((chartAt E3 p).symm (chartAt E3 p x)) : ℤ) : ℝ) = μ (chartAt E3 p x) := hv
    rw [(chartAt E3 p).left_inv hxs] at h
    show φ₀ x + 2 * Real.pi * (n x : ℝ) = 2 * Real.pi * (μ (chartAt E3 p x) : ℝ)
    rw [hφ₀O x hxO, h]
    ring

theorem minimal_dual_surface_exists [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds) (U : Set M)
    (ρ : ℝ) (hUo : IsOpen U) (hρ : 2 ≤ ρ)
    (hfar : ∀ y : E3, ρ < ‖y‖ → (hAF.ends k).Φ y ∈ U)
    (hcpt : IsCompact (closure U \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}))
    (hfront : IsMinimalSurfaceSet g (frontier U)) (R₀ : ℝ) (hR₀ : 2 ≤ R₀)
    (hbar : ∀ w : M → ℝ, (∀ z : E3, 1 < ‖z‖ → w ((hAF.ends k).Φ z) = ‖z‖) →
      ∀ y : E3, R₀ < ‖y‖ → 0 < g.levelMeanCurv w ((hAF.ends k).Φ y))
    (Ψ : C(M, Circle)) (hΨs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞ (fun x : M => (Ψ x : ℂ)))
    (K : Set M) (hK : IsCompact K) (hKU : K ⊆ U) (hΨK : ∀ x : M, x ∉ K → Ψ x = 1)
    (hnl : ¬ ∃ φ : C(U, ℝ), ∀ x : U, Ψ (x : M) = Circle.exp (φ x)) :
    ∃ S : Set M, IsCompact S ∧ IsMinimalSurfaceSet g S ∧ S ⊆ U ∧ S.Nonempty :=
by
  classical
  
  
  
  have hsrc : (hAF.ends k).Φ.source = {x : E3 | 1 < ‖x‖} := (hAF.ends k).source_eq
  have hfaro : ∀ r : ℝ, 1 ≤ r → IsOpen ((hAF.ends k).Φ '' {y : E3 | r < ‖y‖}) := by
    intro r hr
    have hsub : {y : E3 | r < ‖y‖} ⊆ (hAF.ends k).Φ.source := by
      intro y hy
      rw [hsrc]
      show (1 : ℝ) < ‖y‖
      have : r < ‖y‖ := hy
      linarith
    exact (hAF.ends k).Φ.toOpenPartialHomeomorph.isOpen_image_of_subset_source
      (isOpen_lt continuous_const continuous_norm) hsub
  have hinj : ∀ y y' : E3, 1 < ‖y‖ → 1 < ‖y'‖ →
      (hAF.ends k).Φ y = (hAF.ends k).Φ y' → y = y' := by
    intro y y' hy hy' h
    have h1 : y ∈ (hAF.ends k).Φ.source := by rw [hsrc]; exact hy
    have h2 : y' ∈ (hAF.ends k).Φ.source := by rw [hsrc]; exact hy'
    exact (hAF.ends k).Φ.toOpenPartialHomeomorph.injOn h1 h2 h
  have hann : ∀ a b : ℝ, 1 < a →
      IsCompact ((hAF.ends k).Φ '' {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b}) := by
    intro a b ha
    have hc : IsCompact {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b} := by
      refine (isCompact_closedBall (0 : E3) b).of_isClosed_subset ?_ ?_
      · exact (isClosed_le continuous_const continuous_norm).inter
          (isClosed_le continuous_norm continuous_const)
      · intro y hy
        rw [mem_closedBall_zero_iff]
        exact hy.2
    have hsub : {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b} ⊆ (hAF.ends k).Φ.source := by
      intro y hy
      rw [hsrc]
      show (1 : ℝ) < ‖y‖
      linarith [hy.1]
    have hcont : ContinuousOn ((hAF.ends k).Φ : E3 → M) (hAF.ends k).Φ.source :=
      (hAF.ends k).Φ.contMDiffOn_toFun.continuousOn
    exact hc.image_of_continuousOn (hcont.mono hsub)
  have hcfar_far : ∀ r r' : ℝ, r < r' →
      (hAF.ends k).Φ '' {y : E3 | r' ≤ ‖y‖} ⊆ (hAF.ends k).Φ '' {y : E3 | r < ‖y‖} := by
    rintro r r' h _ ⟨y, hy, rfl⟩
    exact ⟨y, lt_of_lt_of_le h hy, rfl⟩
  have hfar_cfar : ∀ r : ℝ,
      (hAF.ends k).Φ '' {y : E3 | r < ‖y‖} ⊆ (hAF.ends k).Φ '' {y : E3 | r ≤ ‖y‖} := by
    rintro r _ ⟨y, hy, rfl⟩
    exact ⟨y, le_of_lt (show r < ‖y‖ from hy), rfl⟩
  have hcfar_mono : ∀ r r' : ℝ, r ≤ r' →
      (hAF.ends k).Φ '' {y : E3 | r' ≤ ‖y‖} ⊆ (hAF.ends k).Φ '' {y : E3 | r ≤ ‖y‖} := by
    rintro r r' h _ ⟨y, hy, rfl⟩
    exact ⟨y, le_trans h hy, rfl⟩
  have hfrU : ∀ x : M, x ∈ frontier U → x ∉ U := by
    intro x hx
    rw [hUo.frontier_eq] at hx
    exact hx.2
  
  
  
  obtain ⟨K', φ₀, hK'c, hKK', hK'U, hlift, hφ₀0, hφ₀m, hfin₀⟩ :=
    dual_anchor_exists g U hUo Ψ hΨs K hK hKU hΨK
  have hΨK' : ∀ x : M, x ∉ K' → Ψ x = 1 := fun x hx => hΨK x (fun h => hx (hKK' h))
  obtain ⟨ρ₀, hρ₀, hcl⟩ := endChart_far_isClosed g hAF k
  have hesc : ∃ ρK : ℝ, ∀ y : E3, ρK < ‖y‖ → (hAF.ends k).Φ y ∉ K' := by
    choose ρf Nf hNf hescf using end_chart_escape g hAF k
    obtain ⟨t, -, ht⟩ := hK'c.elim_nhds_subcover Nf (fun x _ => hNf x)
    refine ⟨∑ x ∈ t, |ρf x|, fun y hy hyK => ?_⟩
    obtain ⟨x, hxt, hxN⟩ := Set.mem_iUnion₂.1 (ht hyK)
    have hle : ρf x ≤ ∑ x ∈ t, |ρf x| :=
      (le_abs_self _).trans (Finset.single_le_sum (fun i _ => abs_nonneg (ρf i)) hxt)
    exact hescf x y (lt_of_le_of_lt hle hy) hxN
  obtain ⟨ρK, hρK⟩ := hesc
  obtain ⟨R, hRρ₀, hRρ, hRR₀, hRK⟩ : ∃ R : ℝ, ρ₀ + 3 ≤ R ∧ ρ + 3 ≤ R ∧ R₀ + 3 ≤ R ∧
      ρK + 3 ≤ R :=
    ⟨max (max ρ₀ ρ) (max R₀ ρK) + 3, by
      refine ⟨?_, ?_, ?_, ?_⟩ <;>
        linarith [le_max_left ρ₀ ρ, le_max_right ρ₀ ρ, le_max_left R₀ ρK, le_max_right R₀ ρK,
          le_max_left (max ρ₀ ρ) (max R₀ ρK), le_max_right (max ρ₀ ρ) (max R₀ ρK)]⟩
  
  
  
  set Kv : Set M := closure U \ (hAF.ends k).Φ '' {y : E3 | R + 1 < ‖y‖} with hKvdef
  set Ω : Set M := ((hAF.ends k).Φ '' {y : E3 | R + 2 ≤ ‖y‖})ᶜ with hΩdef
  set O : Set M := U ∩ ((hAF.ends k).Φ '' {y : E3 | R + 1 ≤ ‖y‖})ᶜ with hOdef
  have hKv : IsCompact Kv := by
    refine (hcpt.union (hann ρ (R + 1) (by linarith))).of_isClosed_subset
      (isClosed_closure.sdiff (hfaro (R + 1) (by linarith))) ?_
    rintro x ⟨hxc, hxf⟩
    by_cases hx : x ∈ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}
    · right
      obtain ⟨y, hy, rfl⟩ := hx
      have hy' : ρ < ‖y‖ := hy
      refine ⟨y, ⟨le_of_lt hy', ?_⟩, rfl⟩
      by_contra hc
      push_neg at hc
      exact hxf ⟨y, hc, rfl⟩
    · left
      exact ⟨hxc, hx⟩
  have hΩo : IsOpen Ω := (hcl (R + 2) (by linarith)).isOpen_compl
  have hKvΩ : Kv ⊆ Ω := by
    rintro x ⟨-, hxf⟩ hx
    exact hxf (hcfar_far (R + 1) (R + 2) (by linarith) hx)
  have hKvU : Kv ⊆ closure U := Set.diff_subset
  have hOo : IsOpen O := hUo.inter (hcl (R + 1) (by linarith)).isOpen_compl
  have hOKv : O ⊆ Kv := by
    rintro x ⟨hxU, hxc⟩
    exact ⟨subset_closure hxU, fun hx => hxc (hfar_cfar (R + 1) hx)⟩
  have hOF : Disjoint O (frontier U) :=
    Set.disjoint_left.2 fun x hx hxF => hfrU x hxF hx.1
  have hK'Kv : K' ⊆ Kv := by
    intro x hx
    refine ⟨subset_closure (hK'U hx), ?_⟩
    rintro ⟨y, hy, rfl⟩
    have hy' : R + 1 < ‖y‖ := hy
    exact hρK y (by linarith) hx
  have hFK' : Disjoint (frontier U) K' :=
    Set.disjoint_left.2 (fun x hx hxK => hfrU x hx (hK'U hxK))
  have hfin₀' := hfin₀ Ω (frontier U) hΩo isClosed_frontier hFK'
  
  
  
  obtain ⟨n, hn0, hnm, hmin⟩ :=
    dual_minimizer_exists g Ψ hΨs Ω Kv (frontier U) hΩo hKv hKvΩ φ₀ hφ₀m hfin₀'
  have hm0 : ∀ j : ℤ, sepChartMeas {x : M | (fun _ : M => (0 : ℤ)) x = j} := by
    intro j p
    by_cases hj : (0 : ℤ) = j
    · have : {x : M | (fun _ : M => (0 : ℤ)) x = j} = Set.univ := by
        ext x; simp [hj]
      rw [this, Set.univ_inter, (chartAt E3 p).image_source_eq_target]
      exact (chartAt E3 p).open_target.measurableSet
    · have : {x : M | (fun _ : M => (0 : ℤ)) x = j} = ∅ := by
        ext x; simp [hj]
      rw [this, Set.empty_inter, Set.image_empty]
      exact MeasurableSet.empty
  have hfin : dualRiemVar g (fun x => (Ψ x : ℂ)) (fun x => φ₀ x + 2 * Real.pi * (n x : ℝ)) Ω
      (frontier U) < ⊤ := by
    have h0 := hmin (fun _ => 0) (fun _ _ => rfl) hm0
    have he : (fun x => φ₀ x + 2 * Real.pi * (((fun _ : M => (0 : ℤ)) x : ℤ) : ℝ)) = φ₀ := by
      funext x; simp
    rw [he] at h0
    exact lt_of_le_of_lt h0 hfin₀'
  
  
  
  have hfarnull := dual_far_vanish g hAF k Ψ hΨs Ω Kv (frontier U) hΩo hKv hKvΩ φ₀ hlift hφ₀m
    n hn0 hnm hfin hmin (R - 2) (R + 1) (by linarith) (by linarith)
    (fun w hw y hy => hbar w hw y (by linarith))
    (fun y hy => hΨK' _ (hρK y (by linarith)))
    (fun y hy => hφ₀0 _ (hρK y (by linarith)))
    (fun y hy hyKv => hyKv.2 ⟨y, hy, rfl⟩)
    (fun y hy hyF => hfrU _ hyF (hfar y (by linarith)))
    (fun y hy hy2 => by
      intro hyc
      obtain ⟨y', hy', hyy'⟩ := hyc
      have hy'2 : R + 2 ≤ ‖y'‖ := hy'
      have heq := hinj y' y (by linarith) (by linarith) hyy'
      rw [heq] at hy'2
      linarith)
  
  
  
  have hnull_mono : ∀ A B : Set M, A ⊆ B → sepChartNull B → sepChartNull A :=
    fun A B h hB p => measure_mono_null (Set.image_mono (Set.inter_subset_inter_left _ h)) (hB p)
  have hnull_union : ∀ A B : Set M, sepChartNull A → sepChartNull B → sepChartNull (A ∪ B) := by
    intro A B hA hB p
    rw [Set.union_inter_distrib_right, Set.image_union]
    exact measure_union_null (hA p) (hB p)
  have hnull_empty : sepChartNull (∅ : Set M) := fun p => by simp
  set J : Set M := {x | ¬ ∃ N ∈ 𝓝 x, ∃ ψ : M → ℝ, ContinuousOn ψ N ∧
      sepChartNull {y | y ∈ N ∧ φ₀ y + 2 * Real.pi * (n y : ℝ) ≠ ψ y}} with hJdef
  have hJc : IsClosed J := by
    rw [← isOpen_compl_iff, isOpen_iff_mem_nhds]
    intro x hx
    have hx' : ∃ N ∈ 𝓝 x, ∃ ψ : M → ℝ, ContinuousOn ψ N ∧
        sepChartNull {y | y ∈ N ∧ φ₀ y + 2 * Real.pi * (n y : ℝ) ≠ ψ y} := by
      by_contra h
      exact hx h
    obtain ⟨N, hN, ψ, hψ, hZ⟩ := hx'
    filter_upwards [interior_mem_nhds.2 hN] with y hy
    exact fun h => h ⟨N, mem_interior_iff_mem_nhds.1 hy, ψ, hψ, hZ⟩
  have hJKv : J ⊆ Kv := by
    intro x hxJ
    by_contra hxKv
    apply hxJ
    refine ⟨Kvᶜ, hKv.isClosed.isOpen_compl.mem_nhds hxKv, fun _ => 0, continuousOn_const, ?_⟩
    have : {y | y ∈ Kvᶜ ∧ φ₀ y + 2 * Real.pi * (n y : ℝ) ≠ (fun _ => (0 : ℝ)) y} = ∅ := by
      ext y
      simp only [Set.mem_setOf_eq, Set.mem_compl_iff, Set.mem_empty_iff_false, iff_false,
        not_and, not_not]
      intro hy
      rw [hn0 y hy, hφ₀0 y (fun h => hy (hK'Kv h))]
      simp
    rw [this]
    exact hnull_empty
  have hJfar : ∀ y : E3, R - 2 + 1 < ‖y‖ → (hAF.ends k).Φ y ∉ J := by
    intro y hy hJ
    apply hJ
    refine ⟨(hAF.ends k).Φ '' {y : E3 | R - 2 + 1 < ‖y‖},
      (hfaro _ (by linarith)).mem_nhds ⟨y, hy, rfl⟩, fun _ => 0, continuousOn_const, ?_⟩
    refine hnull_mono _ _ ?_ hfarnull
    rintro x ⟨hx, hne⟩
    refine ⟨hx, fun hn => hne ?_⟩
    obtain ⟨y', hy', rfl⟩ := hx
    have hy'' : R - 2 + 1 < ‖y'‖ := hy'
    rw [hn, hφ₀0 _ (hρK y' (by linarith))]
    simp
  
  
  
  have hwall : ∀ p ∈ frontier U, ∃ V : Set M, IsOpen V ∧ p ∈ V ∧ ∀ y ∈ V ∩ U, y ∉ J := by
    intro p hp
    have hcU : (hAF.ends k).Φ '' {y : E3 | R + 1 ≤ ‖y‖} ⊆ U := by
      rintro _ ⟨y, hy, rfl⟩
      have hy' : R + 1 ≤ ‖y‖ := hy
      exact hfar y (by linarith)
    obtain ⟨V, ψ, hVo, hpV, hψ, hZ⟩ := dual_wall_clear g U hUo hfront Ψ hΨs K' hK'c hK'U hΨK'
      Ω Kv hΩo hKv hKvΩ hKvU φ₀ hlift hφ₀m hφ₀0 n hn0 hnm hfin hmin p hp
      (((hAF.ends k).Φ '' {y : E3 | R + 1 ≤ ‖y‖})ᶜ ∩ K'ᶜ)
      ((hcl (R + 1) (by linarith)).isOpen_compl.inter hK'c.isClosed.isOpen_compl)
      ⟨fun h => hfrU p hp (hcU h), fun h => hfrU p hp (hK'U h)⟩
      (by
        rintro x ⟨hx, -⟩ hx2
        exact hx (hcfar_mono (R + 1) (R + 2) (by linarith) hx2))
      (by
        rintro x ⟨⟨hx, -⟩, hxU⟩
        exact ⟨subset_closure hxU, fun h => hx (hfar_cfar (R + 1) h)⟩)
      (Set.disjoint_left.2 fun x hx hxK => hx.2 hxK)
    exact ⟨V, hVo, hpV, fun y hy hyJ => hyJ ⟨V ∩ U, (hVo.inter hUo).mem_nhds hy, ψ, hψ, hZ⟩⟩
  have hSc : IsClosed (J ∩ U) := by
    refine isClosed_of_closure_subset (fun x hx => ?_)
    have hxJ : x ∈ J := hJc.closure_subset (closure_mono Set.inter_subset_left hx)
    have hxU : x ∈ closure U := closure_mono Set.inter_subset_right hx
    by_cases hxU' : x ∈ U
    · exact ⟨hxJ, hxU'⟩
    · exfalso
      have hxF : x ∈ frontier U := by
        rw [hUo.frontier_eq]
        exact ⟨hxU, hxU'⟩
      obtain ⟨V, hVo, hxV, hV⟩ := hwall x hxF
      obtain ⟨y, hyV, hyJ, hyU⟩ := mem_closure_iff.1 hx V hVo hxV
      exact hV y ⟨hyV, hyU⟩ hyJ
  have hScpt : IsCompact (J ∩ U) := hKv.of_isClosed_subset hSc (fun x hx => hJKv hx.1)
  
  
  
  have hΨc : ∀ q : M, ContDiffOn ℝ ∞ (fun y => (Ψ ((chartAt E3 q).symm y) : ℂ))
      (chartAt E3 q).target := by
    intro q
    have h1 : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, ℂ) ∞
        ((fun x : M => (Ψ x : ℂ)) ∘ (chartAt E3 q).symm) (chartAt E3 q).target :=
      hΨs.comp_contMDiffOn contMDiffOn_chart_symm
    exact contMDiffOn_iff_contDiffOn.mp h1
  
  have hlocal : ∀ (q : M) (W : Set E3), W ∈ 𝓝 (chartAt E3 q q) → ∃ ε : ℝ, 0 < ε ∧
      Metric.ball (chartAt E3 q q) ε ⊆ W ∩ (chartAt E3 q).target ∧ ∃ ℓ : E3 → ℝ,
      ContDiffOn ℝ ∞ ℓ (Metric.ball (chartAt E3 q q) ε) ∧
      ∀ y ∈ Metric.ball (chartAt E3 q q) ε, Circle.exp (ℓ y) = Ψ ((chartAt E3 q).symm y) := by
    intro q W hW
    have hy₀t : chartAt E3 q q ∈ (chartAt E3 q).target :=
      (chartAt E3 q).map_source (mem_chart_source E3 q)
    have hsy₀ : (chartAt E3 q).symm (chartAt E3 q q) = q :=
      (chartAt E3 q).left_inv (mem_chart_source E3 q)
    let qf : E3 → ℂ := fun y => (((Ψ q)⁻¹ * Ψ ((chartAt E3 q).symm y) : Circle) : ℂ)
    have hqf_eq : qf = fun y => (((Ψ q)⁻¹ : Circle) : ℂ) * (Ψ ((chartAt E3 q).symm y) : ℂ) :=
      funext fun y => Circle.coe_mul _ _
    have hqf_c : ContDiffOn ℝ ∞ qf (chartAt E3 q).target := by
      rw [hqf_eq]
      exact contDiffOn_const.mul (hΨc q)
    have hqf0 : qf (chartAt E3 q q) = 1 := by
      simp [qf, hsy₀]
    have hcont : ContinuousAt qf (chartAt E3 q q) :=
      hqf_c.continuousOn.continuousAt ((chartAt E3 q).open_target.mem_nhds hy₀t)
    have hre : ∀ᶠ y in 𝓝 (chartAt E3 q q), 0 < (qf y).re := by
      have hc' : ContinuousAt (fun y => (qf y).re) (chartAt E3 q q) :=
        Complex.continuous_re.continuousAt.comp hcont
      have h2 : (0 : ℝ) < (qf (chartAt E3 q q)).re := by
        rw [hqf0]
        simp
      exact hc'.eventually (lt_mem_nhds h2)
    have hev : ∀ᶠ y in 𝓝 (chartAt E3 q q),
        y ∈ W ∧ y ∈ (chartAt E3 q).target ∧ 0 < (qf y).re := by
      filter_upwards [hW, (chartAt E3 q).open_target.mem_nhds hy₀t, hre] with y h1 h2 h3
      exact ⟨h1, h2, h3⟩
    obtain ⟨ε, hε, hball⟩ := Metric.eventually_nhds_iff_ball.1 hev
    refine ⟨ε, hε, fun y hy => ⟨(hball y hy).1, (hball y hy).2.1⟩,
      fun y => Complex.arg (Ψ q : ℂ) + (Complex.log (qf y)).im, ?_, ?_⟩
    · intro y hy
      have hyt := (hball y hy).2.1
      have hslit : qf y ∈ Complex.slitPlane :=
        Complex.mem_slitPlane_iff.2 (Or.inl (hball y hy).2.2)
      have h1 : ContDiffAt ℝ ∞ qf y := hqf_c.contDiffAt ((chartAt E3 q).open_target.mem_nhds hyt)
      have h2 : ContDiffAt ℝ ∞ Complex.log (qf y) :=
        (Complex.contDiffAt_log hslit).restrict_scalars ℝ
      have h3 : ContDiffAt ℝ ∞ (fun y => (Complex.log (qf y)).im) y :=
        Complex.imCLM.contDiff.contDiffAt.comp y (h2.comp y h1)
      exact (contDiffAt_const.add h3).contDiffWithinAt
    · intro y hy
      show Circle.exp (Complex.arg (Ψ q : ℂ) + (Complex.log (qf y)).im) =
        Ψ ((chartAt E3 q).symm y)
      rw [Complex.log_im, Circle.exp_add, Circle.exp_arg]
      have hq : Circle.exp (Complex.arg (qf y)) = (Ψ q)⁻¹ * Ψ ((chartAt E3 q).symm y) :=
        Circle.exp_arg _
      rw [hq, mul_inv_cancel_left]
  have hgraph : ∀ p ∈ J ∩ U, ∃ (a : Fin 3) (u : E3 → ℝ) (r δ : ℝ), 0 < r ∧ 0 < δ ∧
      ContDiff ℝ ∞ u ∧ u (sepPlaneProj a (chartAt E3 p p)) = chartAt E3 p p a ∧
      sepCyl a (chartAt E3 p p) r δ ⊆ (chartAt E3 p).target ∧
      (∀ z ∈ sepCyl a (chartAt E3 p p) r δ,
        ((chartAt E3 p).symm z ∈ J ∩ U ↔ z a = u (sepPlaneProj a z))) ∧
      (∀ z ∈ sepCyl a (chartAt E3 p p) r δ, z a = u (sepPlaneProj a z) →
        levelMeanCurvCoord (g.coeff (chartAt E3 p).symm)
          (fun w => w a - u (sepPlaneProj a w)) z = 0) := by
    intro p hp
    obtain ⟨hpJ, hpU⟩ := hp
    have hpO : p ∈ O := by
      refine ⟨hpU, fun h => ?_⟩
      obtain ⟨y, hy, hyp⟩ := h
      have hy' : R + 1 ≤ ‖y‖ := hy
      apply hJfar y (by linarith)
      rw [hyp]
      exact hpJ
    have hps : p ∈ (chartAt E3 p).source := mem_chart_source E3 p
    have hAo : IsOpen (chartAt E3 p '' (O ∩ (chartAt E3 p).source)) :=
      (chartAt E3 p).isOpen_image_of_subset_source (hOo.inter (chartAt E3 p).open_source)
        Set.inter_subset_right
    have hy₀A : chartAt E3 p p ∈ chartAt E3 p '' (O ∩ (chartAt E3 p).source) :=
      ⟨p, ⟨hpO, hps⟩, rfl⟩
    obtain ⟨ε, hε, hBsub, ℓ, hℓ, hℓΨ⟩ := hlocal p _ (hAo.mem_nhds hy₀A)
    have hBA : Metric.ball (chartAt E3 p p) ε ⊆ chartAt E3 p '' (O ∩ (chartAt E3 p).source) :=
      fun y hy => (hBsub hy).1
    have hBt : Metric.ball (chartAt E3 p p) ε ⊆ (chartAt E3 p).target :=
      fun y hy => (hBsub hy).2
    obtain ⟨hvint, hvm, hvfin, hvmin⟩ := dual_chart_reduce g Ψ hΨs Ω Kv (frontier U) hΩo hKv
      hKvΩ φ₀ hlift hφ₀m n hn0 hnm hfin hmin O hOo hOKv hOF p (Metric.ball (chartAt E3 p p) ε)
      Metric.isOpen_ball hBA ℓ hℓ hℓΨ
      (fun y => (φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ) -
        ℓ y) / (2 * Real.pi)) (fun y => rfl)
    obtain ⟨hminE, hsumE⟩ := intVar_superlevel_perMin (g.coeff (chartAt E3 p).symm)
      (Metric.ball (chartAt E3 p p) ε) Metric.isOpen_ball
      (fun i j => (g.smooth p i j).mono hBt) (fun y i j => g.symm _ _ _)
      (fun y hy => coeff_chart_symm_posDef g p y (hBt hy)) _ hvint hvm hvfin hvmin
    set B := Metric.ball (chartAt E3 p p) ε with hBdef
    set v : E3 → ℝ := fun y => (φ₀ ((chartAt E3 p).symm y) +
      2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ) - ℓ y) / (2 * Real.pi) with hvdef
    have hpi : (2 * Real.pi) ≠ 0 := by positivity
    replace hvint : ∀ y ∈ B, ∃ m : ℤ, v y = m := hvint
    
    have hKR : ∀ z ∈ B, ((chartAt E3 p).symm z ∈ J ↔ ∀ N ∈ 𝓝 z, ∃ j : ℤ,
        volume (N \ (B ∩ {y | (j : ℝ) ≤ v y})) ≠ 0 ∧
          volume (N ∩ (B ∩ {y | (j : ℝ) ≤ v y})) ≠ 0) := by
      intro z hzB
      have hzt : z ∈ (chartAt E3 p).target := hBt hzB
      have hxs : (chartAt E3 p).symm z ∈ (chartAt E3 p).source := (chartAt E3 p).map_target hzt
      have hκx : chartAt E3 p ((chartAt E3 p).symm z) = z := (chartAt E3 p).right_inv hzt
      constructor
      · intro hJz
        by_contra hcon
        push_neg at hcon
        obtain ⟨N, hN, hNj⟩ := hcon
        apply hJz
        have hN₁o : IsOpen (interior N ∩ B) := isOpen_interior.inter Metric.isOpen_ball
        have hzN₁ : z ∈ interior N ∩ B := ⟨mem_interior_iff_mem_nhds.2 hN, hzB⟩
        have hpos : volume (interior N ∩ B) ≠ 0 := (hN₁o.measure_pos volume ⟨z, hzN₁⟩).ne'
        have hm : ∃ m : ℤ, volume ((interior N ∩ B) ∩ {y | v y = m}) ≠ 0 := by
          by_contra hall
          push_neg at hall
          apply hpos
          refine measure_mono_null (fun y hy => ?_) (measure_iUnion_null hall)
          obtain ⟨m, hm⟩ := hvint y hy.2
          exact Set.mem_iUnion.2 ⟨m, hy, hm⟩
        obtain ⟨m, hm⟩ := hm
        have hNm : volume (N \ (B ∩ {y | (m : ℝ) ≤ v y})) = 0 := by
          by_contra h
          apply hm
          refine measure_mono_null (fun y hy => ?_) (hNj m h)
          exact ⟨interior_subset hy.1.1, hy.1.2, le_of_eq hy.2.symm⟩
        have hNm1 : volume (N ∩ (B ∩ {y | ((m + 1 : ℤ) : ℝ) ≤ v y})) = 0 := by
          apply hNj (m + 1)
          intro h0
          apply hm
          refine measure_mono_null (fun y hy => ?_) h0
          refine ⟨interior_subset hy.1.1, fun h => ?_⟩
          have h2 : ((m + 1 : ℤ) : ℝ) ≤ v y := h.2
          have h3 : v y = m := hy.2
          push_cast at h2
          linarith
        have hD : volume {y | y ∈ interior N ∩ B ∧ v y ≠ m} = 0 := by
          refine measure_mono_null (fun y hy => ?_) (measure_union_null hNm hNm1)
          obtain ⟨m', hm'⟩ := hvint y hy.1.2
          have hmm' : m' ≠ m := fun h => hy.2 (by rw [hm', h])
          rcases lt_or_gt_of_ne hmm' with h | h
          · left
            refine ⟨interior_subset hy.1.1, fun hE => ?_⟩
            have h1 : (m : ℝ) ≤ v y := hE.2
            rw [hm'] at h1
            have h1' : m ≤ m' := by exact_mod_cast h1
            omega
          · right
            refine ⟨interior_subset hy.1.1, hy.1.2, ?_⟩
            show ((m + 1 : ℤ) : ℝ) ≤ v y
            rw [hm']
            exact_mod_cast (show m + 1 ≤ m' by omega)
        refine ⟨(chartAt E3 p).source ∩ chartAt E3 p ⁻¹' (interior N ∩ B),
          ((chartAt E3 p).isOpen_inter_preimage hN₁o).mem_nhds
            ⟨hxs, by rw [Set.mem_preimage, hκx]; exact hzN₁⟩,
          fun x' => ℓ (chartAt E3 p x') + 2 * Real.pi * (m : ℝ), ?_, ?_⟩
        · refine ContinuousOn.add ?_ continuousOn_const
          refine hℓ.continuousOn.comp ((chartAt E3 p).continuousOn.mono Set.inter_subset_left) ?_
          intro x' hx'
          exact hx'.2.2
        · refine sepChartNull_of_image_null p _ (fun x' hx' => hx'.1.1)
            (measure_mono_null ?_ hD)
          rintro _ ⟨x', ⟨⟨hx's, hx'N⟩, hne⟩, rfl⟩
          refine ⟨hx'N, fun hv => hne ?_⟩
          have hv' : v (chartAt E3 p x') = (φ₀ ((chartAt E3 p).symm (chartAt E3 p x')) +
              2 * Real.pi * (n ((chartAt E3 p).symm (chartAt E3 p x')) : ℝ) -
              ℓ (chartAt E3 p x')) / (2 * Real.pi) := rfl
          rw [(chartAt E3 p).left_inv hx's, hv] at hv'
          have hv'' := (eq_div_iff hpi).1 hv'
          show φ₀ x' + 2 * Real.pi * (n x' : ℝ) = ℓ (chartAt E3 p x') + 2 * Real.pi * (m : ℝ)
          linarith
      · intro hJs
        by_contra hnJ
        have hx' : ∃ N ∈ 𝓝 ((chartAt E3 p).symm z), ∃ ψ : M → ℝ, ContinuousOn ψ N ∧
            sepChartNull {y | y ∈ N ∧ φ₀ y + 2 * Real.pi * (n y : ℝ) ≠ ψ y} := by
          by_contra h
          exact hnJ h
        obtain ⟨N', hN', ψ, hψ, hZ⟩ := hx'
        have hN₂o : IsOpen (((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior N') ∩ B) :=
          ((chartAt E3 p).isOpen_inter_preimage_symm isOpen_interior).inter Metric.isOpen_ball
        have hzN₂ : z ∈ ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior N') ∩ B :=
          ⟨⟨hzt, mem_interior_iff_mem_nhds.2 hN'⟩, hzB⟩
        let h : E3 → ℝ := fun y => (ψ ((chartAt E3 p).symm y) - ℓ y) / (2 * Real.pi)
        have hhc : ContinuousOn h
            (((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior N') ∩ B) := by
          refine ContinuousOn.div_const (ContinuousOn.sub ?_
            (hℓ.continuousOn.mono (fun y hy => hy.2))) _
          refine hψ.comp ((chartAt E3 p).continuousOn_symm.mono (fun y hy => hy.1.1)) ?_
          intro y hy
          exact interior_subset hy.1.2
        have hZc0 : volume (chartAt E3 p '' ({y | y ∈ N' ∧
            φ₀ y + 2 * Real.pi * (n y : ℝ) ≠ ψ y} ∩ (chartAt E3 p).source)) = 0 := hZ p
        have hhv : ∀ y ∈ ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior N') ∩ B,
            v y ≠ h y → y ∈ chartAt E3 p '' ({y | y ∈ N' ∧
              φ₀ y + 2 * Real.pi * (n y : ℝ) ≠ ψ y} ∩ (chartAt E3 p).source) := by
          intro y hy hne
          refine ⟨(chartAt E3 p).symm y, ⟨⟨interior_subset hy.1.2, fun heq => hne ?_⟩,
            (chartAt E3 p).map_target hy.1.1⟩, (chartAt E3 p).right_inv hy.1.1⟩
          show (φ₀ ((chartAt E3 p).symm y) + 2 * Real.pi * (n ((chartAt E3 p).symm y) : ℝ) -
              ℓ y) / (2 * Real.pi) = (ψ ((chartAt E3 p).symm y) - ℓ y) / (2 * Real.pi)
          rw [heq]
        have hhint : ∀ y ∈ ((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior N') ∩ B,
            ∃ m : ℤ, h y = m := by
          intro y hy
          by_contra hno
          push_neg at hno
          have hne : h y ≠ (⌊h y⌋ : ℝ) := hno ⌊h y⌋
          have hWo : IsOpen ((((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior N') ∩ B)
              ∩ h ⁻¹' Set.Ioo (⌊h y⌋ : ℝ) ((⌊h y⌋ : ℝ) + 1)) :=
            hhc.isOpen_inter_preimage hN₂o isOpen_Ioo
          have hyW : y ∈ (((chartAt E3 p).target ∩ (chartAt E3 p).symm ⁻¹' interior N') ∩ B)
              ∩ h ⁻¹' Set.Ioo (⌊h y⌋ : ℝ) ((⌊h y⌋ : ℝ) + 1) :=
            ⟨hy, lt_of_le_of_ne (Int.floor_le _) (Ne.symm hne), Int.lt_floor_add_one _⟩
          have hWpos := hWo.measure_pos volume ⟨y, hyW⟩
          refine hWpos.ne' (measure_mono_null (fun y' hy' => hhv y' hy'.1 ?_) hZc0)
          intro heq
          obtain ⟨m', hm'⟩ := hvint y' hy'.1.2
          have h1 : (⌊h y⌋ : ℝ) < h y' := hy'.2.1
          have h2 : h y' < (⌊h y⌋ : ℝ) + 1 := hy'.2.2
          rw [← heq, hm'] at h1 h2
          have h1' : ⌊h y⌋ < m' := by exact_mod_cast h1
          have h2' : m' < ⌊h y⌋ + 1 := by exact_mod_cast h2
          omega
        obtain ⟨ε₂, hε₂, hball₂⟩ := Metric.isOpen_iff.1 hN₂o z hzN₂
        have hhalf : ∀ a b : ℤ, (a : ℝ) ≠ (b : ℝ) + 1 / 2 := by
          intro a b hab
          have h2 : ((2 * a : ℤ) : ℝ) = ((2 * b + 1 : ℤ) : ℝ) := by
            push_cast
            linarith
          have h3 : 2 * a = 2 * b + 1 := by exact_mod_cast h2
          omega
        have hconst : ∀ y ∈ Metric.ball z ε₂, h y = h z := by
          intro y hy
          obtain ⟨my, hmy⟩ := hhint y (hball₂ hy)
          obtain ⟨mz, hmz⟩ := hhint z hzN₂
          by_contra hne
          have hpre : IsPreconnected (Metric.ball z ε₂) := (convex_ball z ε₂).isPreconnected
          have hcb : ContinuousOn h (Metric.ball z ε₂) := hhc.mono hball₂
          rcases lt_or_gt_of_ne hne with hlt | hlt
          · have hmem : (my : ℝ) + 1 / 2 ∈ Set.Icc (h y) (h z) := by
              rw [hmy, hmz] at hlt ⊢
              have h1 : my < mz := by exact_mod_cast hlt
              have h2 : (my : ℝ) + 1 ≤ mz := by exact_mod_cast (show my + 1 ≤ mz by omega)
              constructor <;> linarith
            obtain ⟨w, hw, hwv⟩ :=
              hpre.intermediate_value hy (Metric.mem_ball_self hε₂) hcb hmem
            obtain ⟨mw, hmw⟩ := hhint w (hball₂ hw)
            rw [hmw] at hwv
            exact hhalf mw my hwv
          · have hmem : (mz : ℝ) + 1 / 2 ∈ Set.Icc (h z) (h y) := by
              rw [hmy, hmz] at hlt ⊢
              have h1 : mz < my := by exact_mod_cast hlt
              have h2 : (mz : ℝ) + 1 ≤ my := by exact_mod_cast (show mz + 1 ≤ my by omega)
              constructor <;> linarith
            obtain ⟨w, hw, hwv⟩ :=
              hpre.intermediate_value (Metric.mem_ball_self hε₂) hy hcb hmem
            obtain ⟨mw, hmw⟩ := hhint w (hball₂ hw)
            rw [hmw] at hwv
            exact hhalf mw mz hwv
        obtain ⟨mz, hmz⟩ := hhint z hzN₂
        apply absurd (hJs (Metric.ball z ε₂) (Metric.ball_mem_nhds z hε₂))
        push_neg
        intro j hj
        by_cases hjm : j ≤ mz
        · exfalso
          apply hj
          refine measure_mono_null (fun y hy => hhv y (hball₂ hy.1) ?_) hZc0
          intro heq
          apply hy.2
          refine ⟨(hball₂ hy.1).2, ?_⟩
          show (j : ℝ) ≤ v y
          rw [heq, hconst y hy.1, hmz]
          exact_mod_cast hjm
        · refine measure_mono_null (fun y hy => hhv y (hball₂ hy.1) ?_) hZc0
          intro heq
          have h1 : (j : ℝ) ≤ v y := hy.2.2
          rw [heq, hconst y hy.1, hmz] at h1
          have h1' : j ≤ mz := by exact_mod_cast h1
          exact hjm h1'
    
    have hpJ' : (chartAt E3 p).symm (chartAt E3 p p) ∈ J := by
      rw [(chartAt E3 p).left_inv hps]
      exact hpJ
    obtain ⟨a, u, r, δ, hr, hδ, hu, hu0, hCB, hiff, hMSE, -⟩ :=
      nested_perMin_single_sheet g p B Metric.isOpen_ball hBt (Metric.mem_ball_self hε)
        (fun j : ℤ => B ∩ {y | (j : ℝ) ≤ v y})
        (fun j y hy => ⟨hy.1, by
          have h := hy.2
          simp only [Set.mem_setOf_eq, Int.cast_add, Int.cast_one] at h ⊢
          linarith⟩)
        hminE hsumE ((hKR (chartAt E3 p p) (Metric.mem_ball_self hε)).1 hpJ')
    refine ⟨a, u, r, δ, hr, hδ, hu, hu0, hCB.trans hBt, fun z hz => ?_, hMSE⟩
    have hzB := hCB hz
    obtain ⟨x', ⟨hx'O, hx's⟩, hx'z⟩ := hBA hzB
    have hzU : (chartAt E3 p).symm z ∈ U := by
      rw [← hx'z, (chartAt E3 p).left_inv hx's]
      exact hx'O.1
    exact (Iff.intro (fun h => h.1) (fun h => ⟨h, hzU⟩)).trans ((hKR z hzB).trans (hiff z hz))
  
  
  
  have hSmin := sepIsMinimalSurfaceSet_of_chart_graphs g (J ∩ U) hSc hgraph
  refine ⟨J ∩ U, hScpt, hSmin, Set.inter_subset_right, ?_⟩
  by_contra hne
  rw [Set.not_nonempty_iff_eq_empty] at hne
  have hnJ : ∀ x : U, ∃ N ∈ 𝓝 (x : M), ∃ ψ : M → ℝ, ContinuousOn ψ N ∧
      sepChartNull {y | y ∈ N ∧ φ₀ y + 2 * Real.pi * (n y : ℝ) ≠ ψ y} := by
    intro x
    by_contra h
    have hxS : (x : M) ∈ J ∩ U := ⟨h, x.2⟩
    rw [hne] at hxS
    exact hxS
  choose Nf hNf ψf hψf hZf using hnJ
  
  have haeu : ∀ {T : Type} [TopologicalSpace T] [T2Space T] (W : Set M) (f₁ f₂ : M → T)
      (Z : Set M), IsOpen W → ContinuousOn f₁ W → ContinuousOn f₂ W → sepChartNull Z →
      (∀ y ∈ W, f₁ y ≠ f₂ y → y ∈ Z) → ∀ y ∈ W, f₁ y = f₂ y := by
    intro T _ _ W f₁ f₂ Z hWo hf₁ hf₂ hZ hWZ y hy
    by_contra hne'
    have hc : ContinuousAt (fun y => (f₁ y, f₂ y)) y :=
      (hf₁.continuousAt (hWo.mem_nhds hy)).prodMk (hf₂.continuousAt (hWo.mem_nhds hy))
    have h1 : ∀ᶠ y' in 𝓝 y, f₁ y' ≠ f₂ y' :=
      hc.preimage_mem_nhds ((isOpen_ne_fun continuous_fst continuous_snd).mem_nhds hne')
    have hev : ∀ᶠ y' in 𝓝 y, y' ∈ W ∧ f₁ y' ≠ f₂ y' := by
      filter_upwards [hWo.mem_nhds hy, h1] with y' h1 h2
      exact ⟨h1, h2⟩
    obtain ⟨D, hDsub, hDo, hyD⟩ := mem_nhds_iff.1 hev
    have hopen : IsOpen (chartAt E3 y '' ((chartAt E3 y).source ∩ D)) :=
      (chartAt E3 y).isOpen_image_source_inter hDo
    have hpos := hopen.measure_pos volume ⟨chartAt E3 y y, y, ⟨mem_chart_source E3 y, hyD⟩, rfl⟩
    refine hpos.ne' (measure_mono_null ?_ (hZ y))
    rintro _ ⟨y', ⟨hy's, hy'D⟩, rfl⟩
    exact ⟨y', ⟨hWZ y' (hDsub hy'D).1 (hDsub hy'D).2, hy's⟩, rfl⟩
  have hNfx : ∀ x : U, (x : M) ∈ interior (Nf x) ∩ U :=
    fun x => ⟨mem_interior_iff_mem_nhds.2 (hNf x), x.2⟩
  have hWo : ∀ x : U, IsOpen (interior (Nf x) ∩ U) := fun x => isOpen_interior.inter hUo
  have hexp : ∀ x : U, ∀ y ∈ interior (Nf x) ∩ U, Circle.exp (ψf x y) = Ψ y := by
    intro x
    refine haeu _ (fun y => Circle.exp (ψf x y)) (fun y => Ψ y)
      {y | y ∈ Nf x ∧ φ₀ y + 2 * Real.pi * (n y : ℝ) ≠ ψf x y} (hWo x)
      (Circle.exp.continuous.comp_continuousOn
        ((hψf x).mono (fun y hy => interior_subset hy.1)))
      Ψ.continuous.continuousOn (hZf x) ?_
    intro y hy hne'
    refine ⟨interior_subset hy.1, fun heq => hne' ?_⟩
    show Circle.exp (ψf x y) = Ψ y
    rw [← heq, ← hlift y]
    exact Circle.exp_eq_exp.2 ⟨n y, by ring⟩
  have hcompat : ∀ x x' : U, ∀ y ∈ (interior (Nf x) ∩ U) ∩ (interior (Nf x') ∩ U),
      ψf x y = ψf x' y := by
    intro x x'
    refine haeu _ (ψf x) (ψf x')
      ({y | y ∈ Nf x ∧ φ₀ y + 2 * Real.pi * (n y : ℝ) ≠ ψf x y} ∪
        {y | y ∈ Nf x' ∧ φ₀ y + 2 * Real.pi * (n y : ℝ) ≠ ψf x' y})
      ((hWo x).inter (hWo x'))
      ((hψf x).mono (fun y hy => interior_subset hy.1.1))
      ((hψf x').mono (fun y hy => interior_subset hy.2.1))
      (hnull_union _ _ (hZf x) (hZf x')) ?_
    intro y hy hne'
    by_cases h1 : φ₀ y + 2 * Real.pi * (n y : ℝ) = ψf x y
    · right
      exact ⟨interior_subset hy.2.1, fun h2 => hne' (h1.symm.trans h2)⟩
    · left
      exact ⟨interior_subset hy.1.1, h1⟩
  apply hnl
  refine ⟨⟨fun y => ψf y y, ?_⟩, fun y => ?_⟩
  · rw [continuous_iff_continuousAt]
    intro y
    have h1 : ContinuousAt (fun y' : U => ψf y (y' : M)) y :=
      ((hψf y).continuousAt (hNf y)).comp continuous_subtype_val.continuousAt
    refine h1.congr ?_
    have hmem : {y' : U | (y' : M) ∈ interior (Nf y) ∩ U} ∈ 𝓝 y :=
      (continuous_subtype_val.isOpen_preimage _ (hWo y)).mem_nhds (hNfx y)
    filter_upwards [hmem] with y' hy'
    exact hcompat y y' y' ⟨hy', hNfx y'⟩
  · exact (hexp y y (hNfx y)).symm

theorem circleLiftable_of_collar_liftable [T2Space M] [ConnectedSpace M]
    [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hComplete : g.IsCompleteRiemannian) (hAF : AsymptoticallyFlat g)
    (k : Fin hAF.numEnds) (U : Set M) (ρ : ℝ) (hUo : IsOpen U) (hUc : IsConnected U)
    (hρ : 2 ≤ ρ)
    (hfar : ∀ y : E3, ρ < ‖y‖ → (hAF.ends k).Φ y ∈ U)
    (hcpt : IsCompact (closure U \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}))
    (hfront : IsMinimalSurfaceSet g (frontier U))
    (hnone : ∀ S : Set M, IsCompact S → IsMinimalSurfaceSet g S → S ⊆ U → S = ∅)
    (N : Set M) (hNo : IsOpen N) (hNf : frontier U ⊆ N) (hNl : CircleLiftable (U ∩ N)) :
    CircleLiftable U :=
by
  classical
  haveI : LocallyCompactSpace M := ChartedSpace.locallyCompactSpace E3 M
  
  have hann : ∀ (l : Fin hAF.numEnds) (a b : ℝ), 1 < a →
      IsCompact ((hAF.ends l).Φ '' {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b}) := by
    intro l a b ha
    have hc : IsCompact {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b} := by
      refine (isCompact_closedBall (0 : E3) b).of_isClosed_subset ?_ ?_
      · exact (isClosed_le continuous_const continuous_norm).inter
          (isClosed_le continuous_norm continuous_const)
      · intro y hy
        rw [mem_closedBall_zero_iff]
        exact hy.2
    have hsub : {y : E3 | a ≤ ‖y‖ ∧ ‖y‖ ≤ b} ⊆ (hAF.ends l).Φ.source := by
      intro y hy
      rw [(hAF.ends l).source_eq]
      show (1 : ℝ) < ‖y‖
      linarith [hy.1]
    have hcont : ContinuousOn ((hAF.ends l).Φ : E3 → M) (hAF.ends l).Φ.source :=
      (hAF.ends l).Φ.contMDiffOn_toFun.continuousOn
    exact hc.image_of_continuousOn (hcont.mono hsub)
  
  haveI : SigmaCompactSpace M := by
    refine ⟨⟨fun n : ℕ => (⋃ l, (hAF.ends l).Φ '' {y : E3 | 2 < ‖y‖})ᶜ ∪
      ⋃ l, (hAF.ends l).Φ '' {y : E3 | 2 ≤ ‖y‖ ∧ ‖y‖ ≤ (n : ℝ)}, fun n => ?_, ?_⟩⟩
    · exact hAF.isCompact_core.union (isCompact_iUnion fun l => hann l 2 n (by norm_num))
    · refine Set.eq_univ_of_forall fun x => ?_
      by_cases h2 : x ∈ ⋃ l, (hAF.ends l).Φ '' {y : E3 | 2 < ‖y‖}
      · obtain ⟨l, y, hy, rfl⟩ := Set.mem_iUnion.1 h2
        have hy' : (2 : ℝ) < ‖y‖ := hy
        exact Set.mem_iUnion.2 ⟨⌈‖y‖⌉₊, Or.inr (Set.mem_iUnion.2
          ⟨l, y, ⟨le_of_lt hy', Nat.le_ceil _⟩, rfl⟩)⟩
      · exact Set.mem_iUnion.2 ⟨0, Or.inl h2⟩
  
  obtain ⟨ρ₀, hρ₀2, hcl⟩ := endChart_far_isClosed g hAF k
  have hρ₀ρ₁ : ρ₀ ≤ max ρ₀ (ρ + 1) := le_max_left _ _
  have hρρ₁ : ρ + 1 ≤ max ρ₀ (ρ + 1) := le_max_right _ _
  have hA : IsClosed ((hAF.ends k).Φ '' {x : E3 | max ρ₀ (ρ + 1) ≤ ‖x‖}) := hcl _ hρ₀ρ₁
  have hAU : (hAF.ends k).Φ '' {x : E3 | max ρ₀ (ρ + 1) ≤ ‖x‖} ⊆ U := by
    rintro _ ⟨y, hy, rfl⟩
    have hy' : max ρ₀ (ρ + 1) ≤ ‖y‖ := hy
    exact hfar y (by linarith)
  
  have hsub : {y : E3 | max ρ₀ (ρ + 1) < ‖y‖} ⊆ (hAF.ends k).Φ.source := by
    intro y hy
    rw [(hAF.ends k).source_eq]
    show (1 : ℝ) < ‖y‖
    have : max ρ₀ (ρ + 1) < ‖y‖ := hy
    linarith
  have hFro : IsOpen ((hAF.ends k).Φ '' {y : E3 | max ρ₀ (ρ + 1) < ‖y‖}) :=
    (hAF.ends k).Φ.toOpenPartialHomeomorph.isOpen_image_of_subset_source
      (isOpen_lt continuous_const continuous_norm) hsub
  have hFrA : (hAF.ends k).Φ '' {y : E3 | max ρ₀ (ρ + 1) < ‖y‖} ⊆
      (hAF.ends k).Φ '' {x : E3 | max ρ₀ (ρ + 1) ≤ ‖x‖} :=
    Set.image_mono (fun y (hy : max ρ₀ (ρ + 1) < ‖y‖) => le_of_lt hy)
  have hFrU := hFrA.trans hAU
  
  have hN₁o : IsOpen (N \ (hAF.ends k).Φ '' {x : E3 | max ρ₀ (ρ + 1) ≤ ‖x‖}) := hNo.sdiff hA
  have hFN₁ : frontier U ⊆ N \ (hAF.ends k).Φ '' {x : E3 | max ρ₀ (ρ + 1) ≤ ‖x‖} := by
    intro x hx
    refine ⟨hNf hx, fun hxA => ?_⟩
    rw [hUo.frontier_eq] at hx
    exact hx.2 (hAU hxA)
  set A := (hAF.ends k).Φ '' {x : E3 | max ρ₀ (ρ + 1) ≤ ‖x‖} with hAdef
  set Fr := (hAF.ends k).Φ '' {y : E3 | max ρ₀ (ρ + 1) < ‖y‖} with hFrdef
  set N₁ := N \ A with hN₁def
  have hdisj : ∀ x, x ∈ N₁ → x ∉ Fr := fun x hx hxF => hx.2 (hFrA hxF)
  have hOo : IsOpen (N₁ ∪ Fr) := hN₁o.union hFro
  have hfrO : frontier U ⊆ N₁ ∪ Fr := fun x hx => Or.inl (hFN₁ hx)
  
  have hCO : IsCompact (closure U \ (N₁ ∪ Fr)) := by
    refine (hcpt.union (hann k ρ (max ρ₀ (ρ + 1)) (by linarith))).of_isClosed_subset
      (isClosed_closure.sdiff hOo) ?_
    rintro x ⟨hxc, hxO⟩
    by_cases hxf : x ∈ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}
    · right
      obtain ⟨y, hy, rfl⟩ := hxf
      have hy' : ρ < ‖y‖ := hy
      refine ⟨y, ⟨le_of_lt hy', ?_⟩, rfl⟩
      by_contra hc
      push_neg at hc
      exact hxO (Or.inr ⟨y, hc, rfl⟩)
    · left
      exact ⟨hxc, hxf⟩
  intro θ
  
  have hUNsub : U ∩ N ⊆ U := Set.inter_subset_left
  obtain ⟨φN, hφN⟩ := hNl (θ.comp ⟨Set.inclusion hUNsub, continuous_inclusion hUNsub⟩)
  obtain ⟨φF, hφF⟩ := circleLiftable_end_far (hAF.ends k) (max ρ₀ (ρ + 1)) (by linarith)
    (θ.comp ⟨Set.inclusion hFrU, continuous_inclusion hFrU⟩)
  have hUN₁ : U ∩ N₁ ⊆ U ∩ N := fun x hx => ⟨hx.1, hx.2.1⟩
  obtain ⟨φO, hφO⟩ : ∃ φO : M → ℝ, φO = fun x =>
      if h : x ∈ U ∩ N₁ then φN ⟨x, hUN₁ h⟩ else if h' : x ∈ Fr then φF ⟨x, h'⟩ else 0 :=
    ⟨_, rfl⟩
  have hc1 : ContinuousOn φO (U ∩ N₁) := by
    rw [continuousOn_iff_continuous_restrict]
    have : (U ∩ N₁).restrict φO = fun x => φN (Set.inclusion hUN₁ x) := by
      funext x
      show φO x.1 = _
      rw [hφO]
      simp only
      rw [dif_pos x.2]
    rw [this]
    exact φN.continuous.comp (continuous_inclusion hUN₁)
  have hc2 : ContinuousOn φO Fr := by
    rw [continuousOn_iff_continuous_restrict]
    have : Fr.restrict φO = fun x => φF x := by
      funext x
      show φO x.1 = _
      rw [hφO]
      simp only
      rw [dif_neg (fun h => hdisj x.1 h.2 x.2), dif_pos x.2]
    rw [this]
    exact φF.continuous
  have hUO : U ∩ (N₁ ∪ Fr) = (U ∩ N₁) ∪ Fr := by
    ext x
    constructor
    · rintro ⟨hxU, hxN | hxF⟩
      · exact Or.inl ⟨hxU, hxN⟩
      · exact Or.inr hxF
    · rintro (⟨hxU, hxN⟩ | hxF)
      · exact ⟨hxU, Or.inl hxN⟩
      · exact ⟨hFrU hxF, Or.inr hxF⟩
  have hcO : ContinuousOn φO (U ∩ (N₁ ∪ Fr)) := by
    rw [hUO]
    exact hc1.union_of_isOpen hc2 (hUo.inter hN₁o) hFro
  have hφe : ∀ x : U, (x : M) ∈ N₁ ∪ Fr → θ x = Circle.exp (φO x) := by
    intro x hx
    rcases hx with hxN | hxF
    · have h := hφN ⟨x.1, hUN₁ ⟨x.2, hxN⟩⟩
      rw [hφO]
      simp only
      rw [dif_pos ⟨x.2, hxN⟩]
      exact h
    · have h := hφF ⟨x.1, hxF⟩
      rw [hφO]
      simp only
      rw [dif_neg (fun h => hdisj x.1 h.2 hxF), dif_pos hxF]
      exact h
  
  obtain ⟨K, Θ, ψ₁, hKc, hKU, hΘK, hθΘ⟩ :=
    circle_normalize_off_compact U (N₁ ∪ Fr) hUo hOo hfrO hCO θ φO hcO hφe
  
  obtain ⟨K', Ψ, ψ₂, hK'c, hK'U, hΨK', hΨs, hΘΨ⟩ := circle_smooth_approx U K hUo hKc hKU Θ hΘK
  
  obtain ⟨R₀, hR₀, hbar⟩ := radial_levelMeanCurv_pos g hAF k
  by_cases hl : ∃ φ : C(U, ℝ), ∀ x : U, Ψ (x : M) = Circle.exp (φ x)
  · obtain ⟨φΨ, hφΨ⟩ := hl
    refine ⟨φΨ + ψ₂.comp ⟨Subtype.val, continuous_subtype_val⟩ + ψ₁, fun x => ?_⟩
    rw [hθΘ x, hΘΨ x, hφΨ x, ContinuousMap.add_apply, ContinuousMap.add_apply, Circle.exp_add,
      Circle.exp_add]
    rfl
  · exfalso
    obtain ⟨S, hSc, hSm, hSU, hSne⟩ := minimal_dual_surface_exists g hAF k U ρ hUo hρ hfar hcpt
      hfront R₀ hR₀ hbar Ψ hΨs K' hK'c hK'U hΨK' hl
    have h0 := hnone S hSc hSm hSU
    rw [h0] at hSne
    exact Set.not_nonempty_empty hSne

theorem hi_exterior_region [T2Space M] [ConnectedSpace M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hComplete : g.IsCompleteRiemannian) (hAF : AsymptoticallyFlat g)
    (hR : ∀ p : M, 0 ≤ g.scalarCurvature p) (k : Fin hAF.numEnds) :
    ∃ (U : Set M) (ρ : ℝ), IsOpen U ∧ IsConnected U ∧ 2 ≤ ρ ∧
      (∀ y : E3, ρ < ‖y‖ → (hAF.ends k).Φ y ∈ U) ∧
      IsCompact (closure U \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}) ∧
      HasMinimalFrontier g U ∧ CircleLiftable U :=
by
  
  
  have hpd : ∀ (i : Fin 3) (h : E3 → ℝ),
      partialDeriv i (fun z => -h z) = fun z => -partialDeriv i h z := by
    intro i h
    funext z
    simp only [partialDeriv]
    rw [show (fun z => -h z) = -h from rfl, fderiv_neg]
    rfl
  have hhess : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (h : E3 → ℝ) (i j : Fin 3) (y : E3),
      hessLoc G (fun z => -h z) i j y = -hessLoc G h i j y := by
    intro G h i j y
    simp only [hessLoc, hpd]
    simp only [mul_neg, Finset.sum_neg_distrib]
    ring
  have hlap : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (h : E3 → ℝ) (y : E3),
      lapLoc G (fun z => -h z) y = -lapLoc G h y := by
    intro G h y
    simp only [lapLoc, hhess, mul_neg, Finset.sum_neg_distrib]
  have hneg_lmc : ∀ (f : M → ℝ) (p : M),
      g.levelMeanCurv (fun x => -f x) p = -g.levelMeanCurv f p := by
    intro f p
    simp only [RiemannianMetric3.levelMeanCurv, RiemannianMetric3.gradInner]
    rw [hlap (g.coeff (chartAt E3 p).symm) (fun y => f ((chartAt E3 p).symm y))]
    simp only [hpd, hhess, neg_mul, mul_neg, neg_neg, Finset.sum_neg_distrib]
    ring
  
  
  have s1 : ∀ U : Set M, IsOpen U → IsMinimalSurfaceSet g (frontier U) →
      HasMinimalFrontier g U := by
    intro U hU hS p hp O hO
    obtain ⟨V, f, hVO, hVo, hpV, hf, hdf, hVS, hH, hP, hN⟩ := hS.2 p hp O hO
    have hfr : ∀ x ∈ V, x ∈ frontier U ↔ f x = 0 := by
      intro x hx
      constructor
      · intro h
        have h' : x ∈ V ∩ frontier U := ⟨hx, h⟩
        rw [hVS] at h'
        exact h'.2
      · intro h
        have h' : x ∈ V ∩ f ⁻¹' {0} := ⟨hx, h⟩
        rw [← hVS] at h'
        exact h'.2
    have hfrU : ∀ x, x ∈ frontier U → x ∉ U := by
      intro x h
      rw [hU.frontier_eq] at h
      exact h.2
    have hsplit : ∀ A : Set M, A ⊆ V → (∀ x ∈ A, f x ≠ 0) → IsPreconnected A →
        A ⊆ U ∨ A ⊆ (closure U)ᶜ := by
      intro A hAV hA0 hAc
      refine hAc.subset_or_subset hU isClosed_closure.isOpen_compl ?_ ?_
      · exact Disjoint.mono_left subset_closure disjoint_compl_right
      · intro x hx
        by_cases hxU : x ∈ U
        · exact Or.inl hxU
        · right
          intro hxc
          have hxf : x ∈ frontier U := by
            rw [hU.frontier_eq]
            exact ⟨hxc, hxU⟩
          exact hA0 x hx ((hfr x (hAV hx)).1 hxf)
    have hpos := hsplit (V ∩ {x | 0 < f x}) Set.inter_subset_left
      (fun x hx => ne_of_gt hx.2) hP
    have hneg := hsplit (V ∩ {x | f x < 0}) Set.inter_subset_left
      (fun x hx => ne_of_lt hx.2) hN
    have hVU : ∀ x ∈ V, x ∈ U → f x ≠ 0 :=
      fun x hx hxU h0 => hfrU x ((hfr x hx).2 h0) hxU
    have hpcl : p ∈ closure U := frontier_subset_closure hp
    obtain ⟨x0, hx0V, hx0U⟩ : (V ∩ U).Nonempty := mem_closure_iff.1 hpcl V hVo hpV
    rcases hpos with hpos | hpos
    · refine ⟨V, f, hVO, hVo, hpV, hf, hdf, hVS, hH, hP, hN, ?_⟩
      rcases hneg with hneg | hneg
      · right
        ext x
        constructor
        · rintro ⟨hxV, hxU⟩
          exact ⟨hxV, hVU x hxV hxU⟩
        · rintro ⟨hxV, hx0⟩
          refine ⟨hxV, ?_⟩
          rcases lt_or_gt_of_ne hx0 with h | h
          · exact hneg ⟨hxV, h⟩
          · exact hpos ⟨hxV, h⟩
      · left
        ext x
        constructor
        · rintro ⟨hxV, hxU⟩
          refine ⟨hxV, ?_⟩
          rcases lt_or_gt_of_ne (hVU x hxV hxU) with h | h
          · exact absurd (subset_closure hxU) (hneg ⟨hxV, h⟩)
          · exact h
        · rintro ⟨hxV, h⟩
          exact ⟨hxV, hpos ⟨hxV, h⟩⟩
    · rcases hneg with hneg | hneg
      · refine ⟨V, fun x => -f x, hVO, hVo, hpV, hf.neg, ?_, ?_, ?_, ?_, ?_, ?_⟩
        · intro x hx
          rw [show (fun x => -f x) = -f from rfl, mfderiv_neg]
          exact neg_ne_zero.mpr (hdf x hx)
        · rw [hVS]
          ext x
          simp
        · intro x hx h0
          rw [hneg_lmc]
          have h0' : f x = 0 := neg_eq_zero.mp h0
          rw [hH x hx h0', neg_zero]
        · have e1 : V ∩ {x | 0 < -f x} = V ∩ {x | f x < 0} := by
            ext x
            simp
          rw [e1]
          exact hN
        · have e1 : V ∩ {x | -f x < 0} = V ∩ {x | 0 < f x} := by
            ext x
            simp
          rw [e1]
          exact hP
        · left
          ext x
          constructor
          · rintro ⟨hxV, hxU⟩
            refine ⟨hxV, ?_⟩
            show 0 < -f x
            rcases lt_or_gt_of_ne (hVU x hxV hxU) with h | h
            · linarith
            · exact absurd (subset_closure hxU) (hpos ⟨hxV, h⟩)
          · rintro ⟨hxV, h⟩
            have h' : f x < 0 := by
              have : 0 < -f x := h
              linarith
            exact ⟨hxV, hneg ⟨hxV, h'⟩⟩
      · exfalso
        rcases lt_or_gt_of_ne (hVU x0 hx0V hx0U) with h | h
        · exact hneg ⟨hx0V, h⟩ (subset_closure hx0U)
        · exact hpos ⟨hx0V, h⟩ (subset_closure hx0U)
  
  
  have s3 : ∀ (Φ : EndChart M) (r : ℝ), 1 ≤ r →
      IsConnected (Φ.Φ '' {y : E3 | r < ‖y‖}) ∧ IsOpen (Φ.Φ '' {y : E3 | r < ‖y‖}) := by
    intro Φ r hr
    have hsub : {y : E3 | r < ‖y‖} ⊆ Φ.Φ.source := by
      intro y hy
      rw [Φ.source_eq]
      show (1 : ℝ) < ‖y‖
      have : r < ‖y‖ := hy
      linarith
    have hopen : IsOpen {y : E3 | r < ‖y‖} := isOpen_lt continuous_const continuous_norm
    have hcont : ContinuousOn (Φ.Φ : E3 → M) Φ.Φ.source := Φ.Φ.contMDiffOn_toFun.continuousOn
    have himgo : IsOpen (Φ.Φ '' {y : E3 | r < ‖y‖}) :=
      Φ.Φ.toOpenPartialHomeomorph.isOpen_image_of_subset_source hopen hsub
    refine ⟨?_, himgo⟩
    have hA : IsConnected {y : E3 | r < ‖y‖} := by
      have hrank : 1 < Module.rank ℝ E3 := by
        rw [← Module.finrank_eq_rank, finrank_euclideanSpace]
        simp
      have hS := isConnected_sphere hrank (0 : E3) (zero_le_one' ℝ)
      have hP := (isConnected_Ioi (a := r)).prod hS
      have himg : (fun q : ℝ × E3 => q.1 • q.2) '' (Set.Ioi r ×ˢ sphere (0 : E3) 1) =
          {y : E3 | r < ‖y‖} := by
        ext y
        constructor
        · rintro ⟨⟨t, θ⟩, ⟨ht, hθ⟩, rfl⟩
          have ht' : r < t := ht
          have hθ' : ‖θ‖ = 1 := mem_sphere_zero_iff_norm.1 hθ
          show r < ‖t • θ‖
          rw [norm_smul, hθ', Real.norm_eq_abs, abs_of_pos (by linarith), mul_one]
          exact ht'
        · intro hy
          have hy' : r < ‖y‖ := hy
          have hpos : 0 < ‖y‖ := by linarith
          refine ⟨(‖y‖, ‖y‖⁻¹ • y), ⟨hy', ?_⟩, ?_⟩
          · rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm,
              inv_mul_cancel₀ hpos.ne']
          · show ‖y‖ • (‖y‖⁻¹ • y) = y
            rw [smul_smul, mul_inv_cancel₀ hpos.ne', one_smul]
      rw [← himg]
      exact hP.image _ (continuous_fst.smul continuous_snd).continuousOn
    exact hA.image _ (hcont.mono hsub)
  
  
  have s4 : ∀ r : ℝ, 2 ≤ r → IsCompact (⋃ l, (hAF.ends l).Φ '' {y : E3 | r < ‖y‖})ᶜ := by
    intro r hr
    have hclosed : IsClosed (⋃ l, (hAF.ends l).Φ '' {y : E3 | r < ‖y‖})ᶜ := by
      rw [isClosed_compl_iff]
      exact isOpen_iUnion (fun l => (s3 (hAF.ends l) r (by linarith)).2)
    have hK : IsCompact ((⋃ l, (hAF.ends l).Φ '' {y : E3 | 2 < ‖y‖})ᶜ ∪
        ⋃ l, (hAF.ends l).Φ '' {y : E3 | 2 ≤ ‖y‖ ∧ ‖y‖ ≤ r}) := by
      refine hAF.isCompact_core.union (isCompact_iUnion fun l => ?_)
      have hc : IsCompact {y : E3 | 2 ≤ ‖y‖ ∧ ‖y‖ ≤ r} := by
        refine (isCompact_closedBall (0 : E3) r).of_isClosed_subset ?_ ?_
        · exact (isClosed_le continuous_const continuous_norm).inter
            (isClosed_le continuous_norm continuous_const)
        · intro y hy
          rw [mem_closedBall_zero_iff]
          exact hy.2
      have hsub : {y : E3 | 2 ≤ ‖y‖ ∧ ‖y‖ ≤ r} ⊆ (hAF.ends l).Φ.source := by
        intro y hy
        rw [(hAF.ends l).source_eq]
        show (1 : ℝ) < ‖y‖
        linarith [hy.1]
      have hcont : ContinuousOn ((hAF.ends l).Φ : E3 → M) (hAF.ends l).Φ.source :=
        (hAF.ends l).Φ.contMDiffOn_toFun.continuousOn
      exact hc.image_of_continuousOn (hcont.mono hsub)
    refine hK.of_isClosed_subset hclosed ?_
    intro x hx
    by_cases h2 : x ∈ ⋃ l, (hAF.ends l).Φ '' {y : E3 | 2 < ‖y‖}
    · right
      obtain ⟨l, y, hy, rfl⟩ := Set.mem_iUnion.1 h2
      have hy' : (2 : ℝ) < ‖y‖ := hy
      refine Set.mem_iUnion.2 ⟨l, y, ⟨le_of_lt hy', ?_⟩, rfl⟩
      by_contra hc
      push_neg at hc
      exact hx (Set.mem_iUnion.2 ⟨l, y, hc, rfl⟩)
    · left
      exact h2
  
  
  obtain ⟨r₀, hr₀, havoid⟩ := minimal_sets_avoid_far g hAF
  haveI : LocallyConnectedSpace M := ChartedSpace.locallyConnectedSpace E3 M
  have hZc : IsClosed (⋃ l, (hAF.ends l).Φ '' {y : E3 | r₀ < ‖y‖})ᶜ := by
    rw [isClosed_compl_iff]
    exact isOpen_iUnion (fun l => (s3 (hAF.ends l) r₀ (by linarith)).2)
  have hST : ∀ S : Set M, IsCompact S → IsMinimalSurfaceSet g S → S ⊆ trappedSet g :=
    fun S hSc hSm x hx => subset_closure (Set.mem_sUnion.2 ⟨S, ⟨hSc, hSm⟩, hx⟩)
  have hTZ : trappedSet g ⊆ (⋃ l, (hAF.ends l).Φ '' {y : E3 | r₀ < ‖y‖})ᶜ := by
    refine closure_minimal ?_ hZc
    rintro x ⟨S, ⟨hSc, hSm⟩, hxS⟩ hx
    obtain ⟨l, y, hy, rfl⟩ := Set.mem_iUnion.1 hx
    exact havoid S hSc hSm l y hy hxS
  have hfarT : ∀ (l : Fin hAF.numEnds) (y : E3), r₀ < ‖y‖ →
      (hAF.ends l).Φ y ∉ trappedSet g := by
    intro l y hy hT
    exact hTZ hT (Set.mem_iUnion.2 ⟨l, y, hy, rfl⟩)
  have hnorm_e : ∀ t : ℝ, 0 < t → ‖t • e 0‖ = t := by
    intro t ht
    rw [norm_smul, EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs,
      abs_of_pos ht]
  have hy₀n : ‖(r₀ + 1) • e 0‖ = r₀ + 1 := hnorm_e _ (by linarith)
  have hx₀ : (hAF.ends k).Φ ((r₀ + 1) • e 0) ∈ (trappedSet g)ᶜ :=
    hfarT k _ (by rw [hy₀n]; linarith)
  have hUo : IsOpen (connectedComponentIn (trappedSet g)ᶜ ((hAF.ends k).Φ ((r₀ + 1) • e 0))) :=
    isClosed_closure.isOpen_compl.connectedComponentIn
  have hUc : IsConnected
      (connectedComponentIn (trappedSet g)ᶜ ((hAF.ends k).Φ ((r₀ + 1) • e 0))) :=
    isConnected_connectedComponentIn_iff.2 hx₀
  have hfront := trapped_outer_boundary_minimal g hComplete hAF k r₀ hr₀ havoid
  set U := connectedComponentIn (trappedSet g)ᶜ ((hAF.ends k).Φ ((r₀ + 1) • e 0)) with hUdef
  have hUT : U ⊆ (trappedSet g)ᶜ := connectedComponentIn_subset _ _
  have hfarU : (hAF.ends k).Φ '' {y : E3 | r₀ < ‖y‖} ⊆ U := by
    refine (s3 (hAF.ends k) r₀ (by linarith)).1.isPreconnected.subset_connectedComponentIn
      ⟨(r₀ + 1) • e 0, ?_, rfl⟩ ?_
    · show r₀ < ‖(r₀ + 1) • e 0‖
      rw [hy₀n]
      linarith
    · rintro _ ⟨y, hy, rfl⟩
      exact hfarT k y hy
  have hfar : ∀ y : E3, r₀ < ‖y‖ → (hAF.ends k).Φ y ∈ U := fun y hy => hfarU ⟨y, hy, rfl⟩
  have hdisj : ∀ l : Fin hAF.numEnds, l ≠ k →
      Disjoint U ((hAF.ends l).Φ '' {y : E3 | r₀ < ‖y‖}) := by
    intro l hlk
    rw [Set.disjoint_iff]
    rintro z ⟨hzU, hzl⟩
    obtain ⟨S, R, hSc, hSm, hsep⟩ :=
      minimal_set_separates_ends g hComplete hAF k l (Ne.symm hlk)
    have hC : IsPreconnected (U ∪ (hAF.ends l).Φ '' {y : E3 | r₀ < ‖y‖}) :=
      IsPreconnected.union z hzU hzl hUc.isPreconnected
        (s3 (hAF.ends l) r₀ (by linarith)).1.isPreconnected
    have hCd : Disjoint (U ∪ (hAF.ends l).Φ '' {y : E3 | r₀ < ‖y‖}) S := by
      rw [Set.disjoint_iff]
      rintro x ⟨hxC, hxS⟩
      rcases hxC with hxU | ⟨y, hy, rfl⟩
      · exact hUT hxU (hST S hSc hSm hxS)
      · exact hfarT l y hy (hST S hSc hSm hxS)
    have htpos : 0 < max R r₀ + 1 := by linarith [le_max_right R r₀]
    have hte := hnorm_e (max R r₀ + 1) htpos
    have h1 : R < ‖(max R r₀ + 1) • e 0‖ := by rw [hte]; linarith [le_max_left R r₀]
    have h2 : r₀ < ‖(max R r₀ + 1) • e 0‖ := by rw [hte]; linarith [le_max_right R r₀]
    exact hsep _ hC hCd
      ⟨⟨(hAF.ends k).Φ ((max R r₀ + 1) • e 0), Or.inl (hfar _ h2), _, h1, rfl⟩,
        ⟨(hAF.ends l).Φ ((max R r₀ + 1) • e 0), Or.inr ⟨_, h2, rfl⟩, _, h1, rfl⟩⟩
  have hcpt : IsCompact (closure U \ (hAF.ends k).Φ '' {y : E3 | r₀ < ‖y‖}) := by
    refine (s4 r₀ hr₀).of_isClosed_subset
      (isClosed_closure.sdiff (s3 (hAF.ends k) r₀ (by linarith)).2) ?_
    rintro x ⟨hxc, hxk⟩ hx
    obtain ⟨l, hl⟩ := Set.mem_iUnion.1 hx
    by_cases hlk : l = k
    · rw [hlk] at hl
      exact hxk hl
    · exact Set.disjoint_left.1
        ((hdisj l hlk).symm.closure_right (s3 (hAF.ends l) r₀ (by linarith)).2) hl hxc
  have hHMF : HasMinimalFrontier g U := s1 U hUo hfront
  have hnone : ∀ S : Set M, IsCompact S → IsMinimalSurfaceSet g S → S ⊆ U → S = ∅ := by
    intro S hSc hSm hSU
    ext x
    simp only [Set.mem_empty_iff_false, iff_false]
    intro hx
    exact hUT (hSU hx) (hST S hSc hSm hx)
  
  obtain ⟨N, hNo, hNf, hNl⟩ := frontier_collar_liftable g hComplete hAF hR k U r₀ hUo hUc hr₀
    hfar hcpt hfront hnone
  have hlift : CircleLiftable U := circleLiftable_of_collar_liftable g hComplete hAF k U r₀
    hUo hUc hr₀ hfar hcpt hfront hnone N hNo hNf hNl
  exact ⟨U, r₀, hUo, hUc, hr₀, hfar, hcpt, hHMF, hlift⟩

theorem frontier_chart_compare (g : RiemannianMetric3 M) (U : Set M) (hfront : HasMinimalFrontier g U) : (∀ (V₁ V₂ : Set M) (f₁ f₂ : M → ℝ) (p₁ p₂ x : M), IsMinimalFrontierChart g U V₁ f₁ p₁ → IsMinimalFrontierChart g U V₂ f₂ p₂ → V₁ ∩ U = V₁ ∩ {z | 0 < f₁ z} → V₂ ∩ U = V₂ ∩ {z | f₂ z ≠ 0} → x ∈ V₁ → x ∈ V₂ → x ∉ frontier U) ∧ (∀ (V₁ V₂ : Set M) (f₁ f₂ : M → ℝ) (p₁ p₂ x : M), IsMinimalFrontierChart g U V₁ f₁ p₁ → IsMinimalFrontierChart g U V₂ f₂ p₂ → x ∈ V₁ → x ∈ V₂ → x ∈ frontier U → ∃ N : Set M, IsOpen N ∧ x ∈ N ∧ N ⊆ V₁ ∩ V₂ ∧ ((∀ z ∈ N, (0 < f₁ z ↔ 0 < f₂ z) ∧ (f₁ z < 0 ↔ f₂ z < 0)) ∨ (∀ z ∈ N, (0 < f₁ z ↔ f₂ z < 0) ∧ (f₁ z < 0 ↔ 0 < f₂ z)))) :=
by
  have frontier_sign_change : ∀ (f : M → ℝ) (x : M), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f →
      f x = 0 → mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x ≠ 0 →
      ∀ O ∈ 𝓝 x, (∃ z ∈ O, 0 < f z) ∧ (∃ z ∈ O, f z < 0) := by
    intro f x _hf hx hdf O hO
    have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x := by
      by_contra h
      exact hdf (mfderiv_zero_of_not_mdifferentiableAt h)
    have hmf : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x =
        fderiv ℝ (f ∘ (extChartAt 𝓘(ℝ, E3) x).symm) (extChartAt 𝓘(ℝ, E3) x x) := by
      rw [hmd.mfderiv, ModelWithCorners.range_eq_univ, fderivWithin_univ]
      congr 1
    have hc : ContinuousAt (extChartAt 𝓘(ℝ, E3) x).symm (extChartAt 𝓘(ℝ, E3) x x) :=
      continuousAt_extChartAt_symm x
    have hinv : (extChartAt 𝓘(ℝ, E3) x).symm (extChartAt 𝓘(ℝ, E3) x x) = x :=
      extChartAt_to_inv x
    refine ⟨?_, ?_⟩
    · by_contra h
      push_neg at h
      have hmax : IsLocalMax f ((extChartAt 𝓘(ℝ, E3) x).symm (extChartAt 𝓘(ℝ, E3) x x)) := by
        rw [hinv]
        exact Filter.eventually_of_mem hO (fun z hz => (h z hz).trans_eq hx.symm)
      exact hdf (hmf.trans (hmax.comp_continuous hc).fderiv_eq_zero)
    · by_contra h
      push_neg at h
      have hmin : IsLocalMin f ((extChartAt 𝓘(ℝ, E3) x).symm (extChartAt 𝓘(ℝ, E3) x x)) := by
        rw [hinv]
        exact Filter.eventually_of_mem hO (fun z hz => hx.trans_le (h z hz))
      exact hdf (hmf.trans (hmin.comp_continuous hc).fderiv_eq_zero)
  have hchart : ∀ {V : Set M} {f : M → ℝ} {p : M}, IsMinimalFrontierChart g U V f p →
      IsOpen V ∧ p ∈ V ∧ ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f ∧
      (∀ x ∈ V, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x ≠ 0) ∧
      V ∩ frontier U = V ∩ f ⁻¹' {0} ∧ IsPreconnected (V ∩ {x | 0 < f x}) ∧
      IsPreconnected (V ∩ {x | f x < 0}) := by
    intro V f p h
    unfold IsMinimalFrontierChart at h
    exact ⟨h.1, h.2.1, h.2.2.1, h.2.2.2.1, h.2.2.2.2.1, h.2.2.2.2.2.2.1, h.2.2.2.2.2.2.2.1⟩
  have hzero : ∀ {V : Set M} {f : M → ℝ} {p x : M}, IsMinimalFrontierChart g U V f p → x ∈ V →
      (x ∈ frontier U ↔ f x = 0) := by
    intro V f p x hC hx
    have hz := (hchart hC).2.2.2.2.1
    constructor
    · intro hxf
      have h1 : x ∈ V ∩ frontier U := ⟨hx, hxf⟩
      rw [hz] at h1
      exact h1.2
    · intro h0
      have h1 : x ∈ V ∩ f ⁻¹' {0} := ⟨hx, h0⟩
      rw [← hz] at h1
      exact h1.2
  
  have hclass : ∀ (N : Set M) (h k : M → ℝ), ContinuousOn h N →
      (∀ z ∈ N, h z = 0 ↔ k z = 0) →
      IsPreconnected (N ∩ {z | 0 < k z}) → IsPreconnected (N ∩ {z | k z < 0}) →
      (∃ z ∈ N, 0 < h z) → (∃ z ∈ N, h z < 0) →
      (∀ z ∈ N, (0 < h z ↔ 0 < k z) ∧ (h z < 0 ↔ k z < 0)) ∨
      (∀ z ∈ N, (0 < h z ↔ k z < 0) ∧ (h z < 0 ↔ 0 < k z)) := by
    intro N h k hcont hz hP hQ hp hn
    obtain ⟨zp, hzpN, hzp⟩ := hp
    obtain ⟨zn, hznN, hzn⟩ := hn
    have hconst : ∀ S : Set M, S ⊆ N → IsPreconnected S → (∀ z ∈ S, k z ≠ 0) →
        ∀ a ∈ S, ∀ b ∈ S, 0 < h a → 0 < h b := by
      intro S hSN hS hk a ha b hb hha
      by_contra hhb
      have hb0 : h b ≠ 0 := fun e => hk b hb ((hz b (hSN hb)).1 e)
      have hbneg : h b < 0 := lt_of_le_of_ne (not_lt.mp hhb) hb0
      have hmem : (0 : ℝ) ∈ Set.Icc (h b) (h a) := ⟨hbneg.le, hha.le⟩
      obtain ⟨c, hcS, hc⟩ := hS.intermediate_value hb ha (hcont.mono hSN) hmem
      exact hk c hcS ((hz c (hSN hcS)).1 hc)
    have hPN : N ∩ {z | 0 < k z} ⊆ N := Set.inter_subset_left
    have hQN : N ∩ {z | k z < 0} ⊆ N := Set.inter_subset_left
    have hPk : ∀ z ∈ N ∩ {z | 0 < k z}, k z ≠ 0 := fun z hz' => ne_of_gt hz'.2
    have hQk : ∀ z ∈ N ∩ {z | k z < 0}, k z ≠ 0 := fun z hz' => ne_of_lt hz'.2
    have hkp : k zp ≠ 0 := fun e => (ne_of_gt hzp) ((hz zp hzpN).2 e)
    have hkn : k zn ≠ 0 := fun e => (ne_of_lt hzn) ((hz zn hznN).2 e)
    rcases lt_or_gt_of_ne hkp with hkp' | hkp'
    · 
      have hkn' : 0 < k zn := by
        rcases lt_or_gt_of_ne hkn with h1 | h1
        · have := hconst _ hQN hQ hQk zp ⟨hzpN, hkp'⟩ zn ⟨hznN, h1⟩ hzp
          linarith
        · exact h1
      right
      intro z hzN
      rcases lt_trichotomy (k z) 0 with h1 | h1 | h1
      · have h2 : 0 < h z := hconst _ hQN hQ hQk zp ⟨hzpN, hkp'⟩ z ⟨hzN, h1⟩ hzp
        refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩⟩ <;> intro _ <;> linarith
      · have h2 : h z = 0 := (hz z hzN).2 h1
        refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩⟩ <;> intro _ <;> linarith
      · have h2 : h z < 0 := by
          by_contra hc
          have h0 : h z ≠ 0 := fun e => (ne_of_gt h1) ((hz z hzN).1 e)
          have hpos : 0 < h z := lt_of_le_of_ne (not_lt.mp hc) (Ne.symm h0)
          have := hconst _ hPN hP hPk z ⟨hzN, h1⟩ zn ⟨hznN, hkn'⟩ hpos
          linarith
        refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩⟩ <;> intro _ <;> linarith
    · 
      have hkn' : k zn < 0 := by
        rcases lt_or_gt_of_ne hkn with h1 | h1
        · exact h1
        · have := hconst _ hPN hP hPk zp ⟨hzpN, hkp'⟩ zn ⟨hznN, h1⟩ hzp
          linarith
      left
      intro z hzN
      rcases lt_trichotomy (k z) 0 with h1 | h1 | h1
      · have h2 : h z < 0 := by
          by_contra hc
          have h0 : h z ≠ 0 := fun e => (ne_of_lt h1) ((hz z hzN).1 e)
          have hpos : 0 < h z := lt_of_le_of_ne (not_lt.mp hc) (Ne.symm h0)
          have := hconst _ hQN hQ hQk z ⟨hzN, h1⟩ zn ⟨hznN, hkn'⟩ hpos
          linarith
        refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩⟩ <;> intro _ <;> linarith
      · have h2 : h z = 0 := (hz z hzN).2 h1
        refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩⟩ <;> intro _ <;> linarith
      · have h2 : 0 < h z := hconst _ hPN hP hPk zp ⟨hzpN, hkp'⟩ z ⟨hzN, h1⟩ hzp
        refine ⟨⟨?_, ?_⟩, ⟨?_, ?_⟩⟩ <;> intro _ <;> linarith
  refine ⟨?_, ?_⟩
  · 
    intro V₁ V₂ f₁ f₂ p₁ p₂ x h1 h2 hone htwo hx1 hx2 hxf
    obtain ⟨hV1o, -, hs1, hd1, -⟩ := hchart h1
    obtain ⟨hV2o, -⟩ := hchart h2
    have hf0 : f₁ x = 0 := (hzero h1 hx1).1 hxf
    have hO : V₁ ∩ V₂ ∈ 𝓝 x := (hV1o.inter hV2o).mem_nhds ⟨hx1, hx2⟩
    obtain ⟨z, ⟨hz1, hz2⟩, hzneg⟩ := (frontier_sign_change f₁ x hs1 hf0 (hd1 x hx1) _ hO).2
    have hzU : z ∉ U := by
      intro hzU
      have hm : z ∈ V₁ ∩ U := ⟨hz1, hzU⟩
      rw [hone] at hm
      have : 0 < f₁ z := hm.2
      linarith
    have hzF : z ∉ frontier U := fun hzF => (ne_of_lt hzneg) ((hzero h1 hz1).1 hzF)
    have hf2 : f₂ z ≠ 0 := fun e => hzF ((hzero h2 hz2).2 e)
    have hm : z ∈ V₂ ∩ {z | f₂ z ≠ 0} := ⟨hz2, hf2⟩
    rw [← htwo] at hm
    exact hzU hm.2
  · 
    intro V₁ V₂ f₁ f₂ p₁ p₂ x h1 h2 hx1 hx2 hxf
    obtain ⟨hV1o, -, hs1, hd1, -⟩ := hchart h1
    obtain ⟨hV2o, -, hs2, hd2, -⟩ := hchart h2
    have hO : V₁ ∩ V₂ ∈ 𝓝 x := (hV1o.inter hV2o).mem_nhds ⟨hx1, hx2⟩
    obtain ⟨V₃, f₃, hsub, h3⟩ := hfront x hxf (V₁ ∩ V₂) hO
    obtain ⟨hV3o, hxV3, -, -, -, hP3, hQ3⟩ := hchart h3
    have hV3 : V₃ ∈ 𝓝 x := hV3o.mem_nhds hxV3
    have hz1 : ∀ z ∈ V₃, f₁ z = 0 ↔ f₃ z = 0 := fun z hz =>
      ((hzero h1 (hsub hz).1).symm).trans (hzero h3 hz)
    have hz2 : ∀ z ∈ V₃, f₂ z = 0 ↔ f₃ z = 0 := fun z hz =>
      ((hzero h2 (hsub hz).2).symm).trans (hzero h3 hz)
    have hsc1 := frontier_sign_change f₁ x hs1 ((hzero h1 hx1).1 hxf) (hd1 x hx1) V₃ hV3
    have hsc2 := frontier_sign_change f₂ x hs2 ((hzero h2 hx2).1 hxf) (hd2 x hx2) V₃ hV3
    have c1 := hclass V₃ f₁ f₃ hs1.continuous.continuousOn hz1 hP3 hQ3 hsc1.1 hsc1.2
    have c2 := hclass V₃ f₂ f₃ hs2.continuous.continuousOn hz2 hP3 hQ3 hsc2.1 hsc2.2
    refine ⟨V₃, hV3o, hxV3, hsub, ?_⟩
    rcases c1 with a₁ | o₁ <;> rcases c2 with a₂ | o₂
    · left
      intro z hz
      exact ⟨(a₁ z hz).1.trans (a₂ z hz).1.symm, (a₁ z hz).2.trans (a₂ z hz).2.symm⟩
    · right
      intro z hz
      exact ⟨(a₁ z hz).1.trans (o₂ z hz).2.symm, (a₁ z hz).2.trans (o₂ z hz).1.symm⟩
    · right
      intro z hz
      exact ⟨(o₁ z hz).1.trans (a₂ z hz).2.symm, (o₁ z hz).2.trans (a₂ z hz).1.symm⟩
    · left
      intro z hz
      exact ⟨(o₁ z hz).1.trans (o₂ z hz).1.symm, (o₁ z hz).2.trans (o₂ z hz).2.symm⟩

theorem flip_etale_space {X : Type*} [TopologicalSpace X] [T2Space X] (S : Set X) (σ : X → X → ℝ) (hagree : ∀ (W : Set X) (φ₁ φ₂ : X → Bool), IsOpen W → IsFlipSection S σ W φ₁ → IsFlipSection S σ W φ₂ → IsOpen {x | x ∈ W ∧ φ₁ x = φ₂ x}) (hex : ∀ (q : X) (b : Bool) (O : Set X), O ∈ 𝓝 q → ∃ (W : Set X) (φ : X → Bool), IsOpen W ∧ q ∈ W ∧ W ⊆ O ∧ IsFlipSection S σ W φ ∧ φ q = b) : ∃ (_ : TopologicalSpace (FlipPt X)) (_ : T2Space (FlipPt X)) (π : FlipPt X → X) (lab : FlipPt X → Bool), Function.Bijective (fun z => (π z, lab z)) ∧ IsCoveringMap π ∧ (∀ (W : Set X) (φ : X → Bool), IsOpen W → IsFlipSection S σ W φ → IsOpen {w : FlipPt X | π w ∈ W ∧ lab w = φ (π w)}) ∧ (∀ (z : FlipPt X) (N : Set (FlipPt X)), N ∈ 𝓝 z → ∃ (W : Set X) (φ : X → Bool), IsOpen W ∧ π z ∈ W ∧ IsFlipSection S σ W φ ∧ φ (π z) = lab z ∧ ∀ w : FlipPt X, π w ∈ W → lab w = φ (π w) → w ∈ N) :=
by
  classical
  have hxx : ∀ a b : Bool, xor (xor a b) b = a := by decide
  
  have hR : ∀ (W W' : Set X) (φ : X → Bool), IsFlipSection S σ W φ → W' ⊆ W →
      IsFlipSection S σ W' φ :=
    fun W W' φ h hsub q hq => h q (hsub hq)
  have hN : ∀ (W : Set X) (φ : X → Bool) (c : Bool), IsFlipSection S σ W φ →
      IsFlipSection S σ W (fun x => xor c (φ x)) := by
    intro W φ c h q hq
    obtain ⟨h1, h2⟩ := h q hq
    refine ⟨fun hqS => (h1 hqS).mono (fun x hx => by simp only [hx]),
      fun hqS => (h2 hqS).mono ?_⟩
    intro x hx
    refine ⟨fun hp => by simp only [hx.1 hp], fun hn => ?_⟩
    show xor c (φ x) = !(xor c (φ q))
    rw [hx.2 hn]
    cases c <;> cases φ q <;> rfl
  
  set 𝓑 : Set (Set (FlipPt X)) := {B | ∃ (W : Set X) (φ : X → Bool), IsOpen W ∧
    IsFlipSection S σ W φ ∧ B = {z : FlipPt X | z.1 ∈ W ∧ z.2 = φ z.1}} with h𝓑
  letI τ : TopologicalSpace (FlipPt X) := TopologicalSpace.generateFrom 𝓑
  have hsheet : ∀ (W : Set X) (φ : X → Bool), IsOpen W → IsFlipSection S σ W φ →
      IsOpen {z : FlipPt X | z.1 ∈ W ∧ z.2 = φ z.1} :=
    fun W φ hW hφ => TopologicalSpace.isOpen_generateFrom_of_mem ⟨W, φ, hW, hφ, rfl⟩
  
  have hB : TopologicalSpace.IsTopologicalBasis 𝓑 := by
    refine TopologicalSpace.IsTopologicalBasis.mk ?_ ?_ rfl
    · rintro t₁ ⟨W₁, φ₁, hW₁, h₁, rfl⟩ t₂ ⟨W₂, φ₂, hW₂, h₂, rfl⟩ z ⟨⟨hz1, hz1'⟩, ⟨hz2, hz2'⟩⟩
      have hA : IsOpen {x | x ∈ W₁ ∩ W₂ ∧ φ₁ x = φ₂ x} :=
        hagree _ φ₁ φ₂ (hW₁.inter hW₂) (hR _ _ _ h₁ Set.inter_subset_left)
          (hR _ _ _ h₂ Set.inter_subset_right)
      refine ⟨{z : FlipPt X | z.1 ∈ {x | x ∈ W₁ ∩ W₂ ∧ φ₁ x = φ₂ x} ∧ z.2 = φ₁ z.1},
        ⟨_, φ₁, hA, hR _ _ _ h₁ (fun x hx => hx.1.1), rfl⟩,
        ⟨⟨⟨hz1, hz2⟩, hz1'.symm.trans hz2'⟩, hz1'⟩, ?_⟩
      rintro w ⟨⟨⟨hw1, hw2⟩, hwe⟩, hw⟩
      exact ⟨⟨hw1, hw⟩, ⟨hw2, hw.trans hwe⟩⟩
    · refine Set.eq_univ_of_forall (fun z => ?_)
      obtain ⟨W, φ, hW, hzW, -, hφ, hφz⟩ := hex z.1 z.2 Set.univ Filter.univ_mem
      exact ⟨_, ⟨W, φ, hW, hφ, rfl⟩, hzW, hφz.symm⟩
  
  have hπ : Continuous (fun z : FlipPt X => z.1) := by
    rw [continuous_def]
    intro O hO
    rw [hB.isOpen_iff]
    intro z hz
    obtain ⟨W, φ, hW, hzW, hWO, hφ, hφz⟩ := hex z.1 z.2 O (hO.mem_nhds hz)
    exact ⟨_, ⟨W, φ, hW, hφ, rfl⟩, ⟨hzW, hφz.symm⟩, fun w hw => hWO hw.1⟩
  
  have hT2 : T2Space (FlipPt X) := by
    refine ⟨fun z₁ z₂ hne => ?_⟩
    by_cases h1 : z₁.1 = z₂.1
    · have h2 : z₁.2 ≠ z₂.2 := fun h => hne (Prod.ext h1 h)
      obtain ⟨W, φ, hW, hzW, -, hφ, hφz⟩ := hex z₁.1 z₁.2 Set.univ Filter.univ_mem
      refine ⟨_, _, hsheet W φ hW hφ, hsheet W (fun x => xor true (φ x)) hW (hN W φ true hφ),
        ⟨hzW, hφz.symm⟩, ⟨h1 ▸ hzW, ?_⟩, ?_⟩
      · show z₂.2 = xor true (φ z₂.1)
        rw [← h1, hφz, Bool.true_xor]
        exact Bool.eq_not_of_ne (Ne.symm h2)
      · rw [Set.disjoint_left]
        rintro w ⟨_, hw1⟩ ⟨_, hw2⟩
        change w.2 = xor true (φ w.1) at hw2
        rw [hw1, Bool.true_xor] at hw2
        exact Bool.not_ne_self _ hw2.symm
    · obtain ⟨u, v, hu, hv, hzu, hzv, huv⟩ := t2_separation h1
      obtain ⟨W₁, φ₁, hW₁, hz1, hW₁u, hφ₁, hφz₁⟩ := hex z₁.1 z₁.2 u (hu.mem_nhds hzu)
      obtain ⟨W₂, φ₂, hW₂, hz2, hW₂v, hφ₂, hφz₂⟩ := hex z₂.1 z₂.2 v (hv.mem_nhds hzv)
      refine ⟨_, _, hsheet W₁ φ₁ hW₁ hφ₁, hsheet W₂ φ₂ hW₂ hφ₂, ⟨hz1, hφz₁.symm⟩,
        ⟨hz2, hφz₂.symm⟩, ?_⟩
      rw [Set.disjoint_left]
      rintro w ⟨hw1, _⟩ ⟨hw2, _⟩
      exact Set.disjoint_left.mp huv (hW₁u hw1) (hW₂v hw2)
  
  have hbij : Function.Bijective (fun z : FlipPt X => (z.1, z.2)) :=
    ⟨fun a b h => Prod.ext (congrArg Prod.fst h) (congrArg Prod.snd h), fun q => ⟨q, rfl⟩⟩
  
  choose Wc φc hWc hxWc hsubc hφc hbc using fun x : X => hex x true Set.univ Filter.univ_mem
  have htriv : ∀ x : X, ∃ e : Trivialization Bool (fun z : FlipPt X => z.1), x ∈ e.baseSet := by
    intro x
    let pe : PartialEquiv (FlipPt X) (X × Bool) :=
      { toFun := fun z => (z.1, xor z.2 (φc x z.1))
        invFun := fun y => ((y.1, xor y.2 (φc x y.1)) : X × Bool)
        source := {z | z.1 ∈ Wc x}
        target := Wc x ×ˢ Set.univ
        map_source' := fun z hz => ⟨hz, Set.mem_univ _⟩
        map_target' := fun y hy => hy.1
        left_inv' := fun z _ => Prod.ext rfl (hxx _ _)
        right_inv' := fun y _ => Prod.ext rfl (hxx _ _) }
    have hcont_to : ContinuousOn pe pe.source := by
      refine continuousOn_of_forall_continuousAt (fun z hz => ?_)
      show ContinuousAt (fun w : FlipPt X => ((w.1, xor w.2 (φc x w.1)) : X × Bool)) z
      refine ContinuousAt.prodMk hπ.continuousAt ?_
      have hopen := hsheet (Wc x) (fun y => xor (xor z.2 (φc x z.1)) (φc x y)) (hWc x)
        (hN (Wc x) (φc x) (xor z.2 (φc x z.1)) (hφc x))
      have hzmem : z ∈ {w : FlipPt X | w.1 ∈ Wc x ∧
          w.2 = (fun y => xor (xor z.2 (φc x z.1)) (φc x y)) w.1} := ⟨hz, (hxx _ _).symm⟩
      refine (continuousAt_const :
        ContinuousAt (fun _ : FlipPt X => xor z.2 (φc x z.1)) z).congr ?_
      filter_upwards [hopen.mem_nhds hzmem] with w hw
      show xor z.2 (φc x z.1) = xor w.2 (φc x w.1)
      rw [hw.2, hxx]
    have hcont_inv : ContinuousOn pe.invFun pe.target := by
      refine continuousOn_of_forall_continuousAt (fun y hy => ?_)
      rw [ContinuousAt, hB.nhds_hasBasis.tendsto_right_iff]
      rintro t ⟨⟨W', ψ', hW', hψ', rfl⟩, hyt⟩
      have hA : IsOpen {x' | x' ∈ Wc x ∩ W' ∧ (fun x'' => xor y.2 (φc x x'')) x' = ψ' x'} :=
        hagree _ _ _ ((hWc x).inter hW')
          (hR _ _ _ (hN (Wc x) (φc x) y.2 (hφc x)) Set.inter_subset_left)
          (hR _ _ _ hψ' Set.inter_subset_right)
      have hyA : y ∈ {x' | x' ∈ Wc x ∩ W' ∧ (fun x'' => xor y.2 (φc x x'')) x' = ψ' x'} ×ˢ
          ({y.2} : Set Bool) :=
        ⟨⟨⟨hy.1, hyt.1⟩, hyt.2⟩, rfl⟩
      filter_upwards [(hA.prod (isOpen_discrete _)).mem_nhds hyA] with y' hy'
      obtain ⟨⟨⟨_, hy'W'⟩, hy'e⟩, hy'2⟩ := hy'
      refine ⟨hy'W', ?_⟩
      have h2 : y'.2 = y.2 := hy'2
      show xor y'.2 (φc x y'.1) = ψ' y'.1
      rw [h2]
      exact hy'e
    let oph : OpenPartialHomeomorph (FlipPt X) (X × Bool) :=
      OpenPartialHomeomorph.mk pe (hπ.isOpen_preimage _ (hWc x)) ((hWc x).prod isOpen_univ)
        hcont_to hcont_inv
    exact ⟨Trivialization.mk oph (Wc x) (hWc x) rfl rfl (fun p _ => rfl), hxWc x⟩
  choose e he using htriv
  have hcov : IsCoveringMap (fun z : FlipPt X => z.1) :=
    IsCoveringMap.mk _ (fun _ => Bool) e he
  refine ⟨τ, hT2, fun z => z.1, fun z => z.2, hbij, hcov, hsheet, ?_⟩
  intro z N hN
  obtain ⟨t, ⟨W, φ, hW, hφ, rfl⟩, hzt, htN⟩ := hB.mem_nhds_iff.mp hN
  exact ⟨W, φ, hW, hzt.1, hφ, hzt.2.symm, fun w hw1 hw2 => htN ⟨hw1, hw2⟩⟩

theorem flip_cover_top_exists [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (U : Set M) (hUo : IsOpen U) (hfront : HasMinimalFrontier g U) :
    Nonempty (FlipCoverTop g U) :=
by
  classical
  obtain ⟨hcmp1, hcmp2⟩ := frontier_chart_compare g U hfront
  
  have hchart : ∀ {V : Set M} {f : M → ℝ} {p : M}, IsMinimalFrontierChart g U V f p →
      IsOpen V ∧ p ∈ V ∧ ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f ∧
      (∀ x ∈ V, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x ≠ 0) ∧
      V ∩ frontier U = V ∩ f ⁻¹' {0} ∧ IsPreconnected (V ∩ {x | 0 < f x}) ∧
      IsPreconnected (V ∩ {x | f x < 0}) := by
    intro V f p h
    unfold IsMinimalFrontierChart at h
    exact ⟨h.1, h.2.1, h.2.2.1, h.2.2.2.1, h.2.2.2.2.1, h.2.2.2.2.2.2.1, h.2.2.2.2.2.2.2.1⟩
  
  have hF1 : ∀ (V : Set M) (f : M → ℝ) (p x : M), IsMinimalFrontierChart g U V f p → x ∈ V →
      IsMinimalFrontierChart g U V f x := by
    intro V f p x hC hx
    unfold IsMinimalFrontierChart at hC ⊢
    exact ⟨hC.1, hx, hC.2.2⟩
  
  have hzero : ∀ {V : Set M} {f : M → ℝ} {p x : M}, IsMinimalFrontierChart g U V f p → x ∈ V →
      (x ∈ frontier U ↔ f x = 0) := by
    intro V f p x hC hx
    have hz := (hchart hC).2.2.2.2.1
    constructor
    · intro hxf
      have h1 : x ∈ V ∩ frontier U := ⟨hx, hxf⟩
      rw [hz] at h1
      exact h1.2
    · intro h0
      have h1 : x ∈ V ∩ f ⁻¹' {0} := ⟨hx, h0⟩
      rw [← hz] at h1
      exact h1.2
  
  have hsgn : ∀ (V : Set M) (f : M → ℝ) (p : M), IsMinimalFrontierChart g U V f p →
      p ∈ frontier U → (∃ᶠ y in 𝓝 p, 0 < f y) ∧ (∃ᶠ y in 𝓝 p, f y < 0) := by
    intro V f p hC hp
    obtain ⟨_, hpV, hfs, hdf, _⟩ := hchart hC
    have hp0 : f p = 0 := (hzero hC hpV).1 hp
    have h1 := frontier_sign_change f p hfs hp0 (hdf p hpV)
    exact ⟨Filter.frequently_iff.mpr (fun hO => (h1 _ hO).1),
      Filter.frequently_iff.mpr (fun hO => (h1 _ hO).2)⟩
  
  have hdichGen : ∀ (V₁ V₂ : Set M) (f₁ f₂ : M → ℝ) (p₁ p₂ x : M),
      IsMinimalFrontierChart g U V₁ f₁ p₁ → IsMinimalFrontierChart g U V₂ f₂ p₂ →
      x ∈ V₁ → x ∈ V₂ → x ∈ frontier U →
      (∀ᶠ y in 𝓝 x, (0 < f₁ y → 0 < f₂ y) ∧ (f₁ y < 0 → f₂ y < 0)) ∨
      (∀ᶠ y in 𝓝 x, (0 < f₁ y → f₂ y < 0) ∧ (f₁ y < 0 → 0 < f₂ y)) := by
    intro V₁ V₂ f₁ f₂ p₁ p₂ x h1 h2 hx1 hx2 hxf
    obtain ⟨N, hNo, hxN, -, hcase⟩ := hcmp2 V₁ V₂ f₁ f₂ p₁ p₂ x h1 h2 hx1 hx2 hxf
    rcases hcase with hA | hB
    · left
      filter_upwards [hNo.mem_nhds hxN] with y hy
      exact ⟨(hA y hy).1.mp, (hA y hy).2.mp⟩
    · right
      filter_upwards [hNo.mem_nhds hxN] with y hy
      exact ⟨(hB y hy).1.mp, (hB y hy).2.mp⟩
  
  obtain ⟨S, hSdef⟩ : ∃ S : Set M, S = {q : M | q ∈ frontier U ∧ ∃ (V : Set M) (f : M → ℝ),
      IsMinimalFrontierChart g U V f q ∧ V ∩ U = V ∩ {x | f x ≠ 0}} := ⟨_, rfl⟩
  have hmemS : ∀ q : M, q ∈ S ↔ (q ∈ frontier U ∧ ∃ (V : Set M) (f : M → ℝ),
      IsMinimalFrontierChart g U V f q ∧ V ∩ U = V ∩ {x | f x ≠ 0}) := by
    intro q
    rw [hSdef]
    rfl
  have hch : ∀ q : M, ∃ (V : Set M) (f : M → ℝ), q ∈ S →
      IsMinimalFrontierChart g U V f q ∧ V ∩ U = V ∩ {x | f x ≠ 0} := by
    intro q
    by_cases hq : q ∈ S
    · obtain ⟨_, V, f, h1, h2⟩ := (hmemS q).1 hq
      exact ⟨V, f, fun _ => ⟨h1, h2⟩⟩
    · exact ⟨∅, 0, fun h => absurd h hq⟩
  choose V₀ σ hσ using hch
  
  have hUS : ∀ x ∈ U, x ∉ S := by
    intro x hxU hxS
    have h := hUo.inter_frontier_eq
    have hx : x ∈ U ∩ frontier U := ⟨hxU, ((hmemS x).1 hxS).1⟩
    rw [h] at hx
    exact hx
  have hV0open : ∀ q ∈ S, IsOpen (V₀ q) := fun q hq => (hchart (hσ q hq).1).1
  have hV0mem : ∀ q ∈ S, q ∈ V₀ q := fun q hq => (hchart (hσ q hq).1).2.1
  have hσcont : ∀ q ∈ S, ContinuousOn (σ q) (V₀ q) :=
    fun q hq => (hchart (hσ q hq).1).2.2.1.continuous.continuousOn
  
  have hF2 : ∀ q ∈ S, ∀ x ∈ V₀ q, (x ∈ S ↔ σ q x = 0) := by
    intro q hq x hx
    obtain ⟨hC, htwo⟩ := hσ q hq
    constructor
    · intro hxS
      exact (hzero hC hx).1 ((hmemS x).1 hxS).1
    · intro h0
      exact (hmemS x).2 ⟨(hzero hC hx).2 h0, V₀ q, σ q, hF1 _ _ _ _ hC hx, htwo⟩
  
  have hF3 : IsClosed S := by
    rw [← isOpen_compl_iff, isOpen_iff_mem_nhds]
    intro q hq
    by_cases hqf : q ∈ frontier U
    · obtain ⟨V, f, -, hC⟩ := hfront q hqf Set.univ Filter.univ_mem
      have hside : V ∩ U = V ∩ {x | 0 < f x} ∨ V ∩ U = V ∩ {x | f x ≠ 0} := by
        unfold IsMinimalFrontierChart at hC
        exact hC.2.2.2.2.2.2.2.2
      obtain ⟨hVo, hqV, _⟩ := hchart hC
      rcases hside with hone | htwo
      · refine Filter.mem_of_superset (hVo.mem_nhds hqV) ?_
        intro x hxV hxS
        obtain ⟨hxf, V₂, f₂, hC₂, htwo₂⟩ := (hmemS x).1 hxS
        exact hcmp1 V V₂ f f₂ q x x hC hC₂ hone htwo₂ hxV (hchart hC₂).2.1 hxf
      · exact absurd ((hmemS q).2 ⟨hqf, V, f, hC, htwo⟩) hq
    · refine Filter.mem_of_superset (isClosed_frontier.isOpen_compl.mem_nhds hqf) ?_
      intro x hx hxS
      exact hx ((hmemS x).1 hxS).1
  
  have hposS : ∀ q ∈ S, ∃ᶠ y in 𝓝 q, 0 < σ q y := fun q hq =>
    (hsgn _ _ _ (hσ q hq).1 ((hmemS q).1 hq).1).1
  
  have hdichS : ∀ q ∈ S, ∀ x ∈ S, x ∈ V₀ q →
      (∀ᶠ y in 𝓝 x, (0 < σ x y → 0 < σ q y) ∧ (σ x y < 0 → σ q y < 0)) ∨
      (∀ᶠ y in 𝓝 x, (0 < σ x y → σ q y < 0) ∧ (σ x y < 0 → 0 < σ q y)) := by
    intro q hq x hx hxq
    exact hdichGen (V₀ x) (V₀ q) (σ x) (σ q) x q x (hσ x hx).1 (hσ q hq).1 (hV0mem x hx) hxq
      ((hmemS x).1 hx).1
  
  have hagree : ∀ (W : Set M) (φ₁ φ₂ : M → Bool), IsOpen W → IsFlipSection S σ W φ₁ →
      IsFlipSection S σ W φ₂ → IsOpen {x | x ∈ W ∧ φ₁ x = φ₂ x} := by
    intro W φ₁ φ₂ hW h₁ h₂
    rw [isOpen_iff_mem_nhds]
    rintro q ⟨hqW, hq12⟩
    by_cases hqS : q ∈ S
    · have e₁ := (h₁ q hqW).2 hqS
      have e₂ := (h₂ q hqW).2 hqS
      obtain ⟨N₀, hN₀, hN₀p⟩ := (e₁.and e₂).exists_mem
      have hNmem : interior (N₀ ∩ W ∩ V₀ q) ∈ 𝓝 q :=
        interior_mem_nhds.mpr (Filter.inter_mem (Filter.inter_mem hN₀ (hW.mem_nhds hqW))
          ((hV0open q hqS).mem_nhds (hV0mem q hqS)))
      have key : ∀ w ∈ N₀ ∩ W ∩ V₀ q, σ q w ≠ 0 → φ₁ w = φ₂ w := by
        rintro w ⟨⟨hwN₀, _⟩, _⟩ hw0
        obtain ⟨⟨a1, b1⟩, ⟨a2, b2⟩⟩ := hN₀p w hwN₀
        rcases lt_or_gt_of_ne hw0 with hneg | hpos'
        · rw [b1 hneg, b2 hneg, hq12]
        · rw [a1 hpos', a2 hpos', hq12]
      refine Filter.mem_of_superset hNmem ?_
      intro y hy
      obtain ⟨⟨hyN₀, hyW⟩, hyV⟩ := interior_subset hy
      refine ⟨hyW, ?_⟩
      by_cases hy0 : σ q y = 0
      · have hyS : y ∈ S := (hF2 q hqS y hyV).2 hy0
        have hev : ∀ᶠ w in 𝓝 y, ((0 < σ y w → φ₁ w = φ₁ y) ∧ (σ y w < 0 → φ₁ w = !φ₁ y)) ∧
            ((0 < σ y w → φ₂ w = φ₂ y) ∧ (σ y w < 0 → φ₂ w = !φ₂ y)) ∧
            w ∈ interior (N₀ ∩ W ∩ V₀ q) ∧ w ∈ V₀ y :=
          ((h₁ y hyW).2 hyS).and (((h₂ y hyW).2 hyS).and
            ((show ∀ᶠ w in 𝓝 y, w ∈ interior (N₀ ∩ W ∩ V₀ q) from isOpen_interior.mem_nhds hy).and
              (show ∀ᶠ w in 𝓝 y, w ∈ V₀ y from (hV0open y hyS).mem_nhds (hV0mem y hyS))))
        obtain ⟨w, hwpos, ⟨hw1, _⟩, ⟨hw2, _⟩, hwI, hwVy⟩ := ((hposS y hyS).and_eventually hev).exists
        have hwS : w ∉ S := fun h => (ne_of_gt hwpos) ((hF2 y hyS w hwVy).1 h)
        have hwI' := interior_subset hwI
        have hwq : σ q w ≠ 0 := fun h => hwS ((hF2 q hqS w hwI'.2).2 h)
        have := key w hwI' hwq
        rw [← hw1 hwpos, ← hw2 hwpos]
        exact this
      · exact key y ⟨⟨hyN₀, hyW⟩, hyV⟩ hy0
    · have e₁ := (h₁ q hqW).1 hqS
      have e₂ := (h₂ q hqW).1 hqS
      filter_upwards [e₁, e₂, hW.mem_nhds hqW] with x hx1 hx2 hxW
      exact ⟨hxW, by rw [hx1, hx2, hq12]⟩
  
  have hex : ∀ (q : M) (b : Bool) (O : Set M), O ∈ 𝓝 q → ∃ (W : Set M) (φ : M → Bool),
      IsOpen W ∧ q ∈ W ∧ W ⊆ O ∧ IsFlipSection S σ W φ ∧ φ q = b := by
    intro q b O hO
    by_cases hqS : q ∈ S
    · have hq0 : σ q q = 0 := (hF2 q hqS q (hV0mem q hqS)).1 hqS
      refine ⟨interior O ∩ V₀ q, fun y => if 0 < σ q y then b else if σ q y < 0 then !b
          else if (∀ᶠ w in 𝓝 y, 0 < σ y w → 0 < σ q w) then b else !b,
        isOpen_interior.inter (hV0open q hqS),
        ⟨mem_interior_iff_mem_nhds.mpr hO, hV0mem q hqS⟩,
        fun y hy => interior_subset hy.1, ?_, ?_⟩
      · intro x hx
        obtain ⟨_, hxV⟩ := hx
        constructor
        · intro hxS
          have hx0 : σ q x ≠ 0 := fun h => hxS ((hF2 q hqS x hxV).2 h)
          have hcont : ContinuousAt (σ q) x :=
            (hσcont q hqS).continuousAt ((hV0open q hqS).mem_nhds hxV)
          rcases lt_or_gt_of_ne hx0 with hneg | hpos'
          · filter_upwards [hcont.eventually (gt_mem_nhds hneg)] with y hy
            simp only [not_lt.mpr hy.le, not_lt.mpr hneg.le, hy, hneg, if_false, if_true]
          · filter_upwards [hcont.eventually (lt_mem_nhds hpos')] with y hy
            simp only [hy, hpos', if_true]
        · intro hxS
          have hx0 : σ q x = 0 := (hF2 q hqS x hxV).1 hxS
          rcases hdichS q hqS x hxS hxV with hA | hB
          · have hP : ∀ᶠ w in 𝓝 x, 0 < σ x w → 0 < σ q w := hA.mono (fun w hw => hw.1)
            filter_upwards [hA] with y hy
            constructor
            · intro hpy
              have h1 := hy.1 hpy
              simp only [h1, hx0, lt_self_iff_false, hP, if_true, if_false]
            · intro hny
              have h1 := hy.2 hny
              simp only [h1, not_lt.mpr h1.le, hx0, lt_self_iff_false, hP, if_true, if_false]
          · have hnP : ¬ ∀ᶠ w in 𝓝 x, 0 < σ x w → 0 < σ q w := by
              intro hP
              have hcon : ∀ᶠ w in 𝓝 x, ¬ 0 < σ x w := by
                filter_upwards [hP, hB] with w h1 h2
                intro hw
                exact absurd (h1 hw) (not_lt.mpr (h2.1 hw).le)
              obtain ⟨w, hw1, hw2⟩ := ((hposS x hxS).and_eventually hcon).exists
              exact hw2 hw1
            filter_upwards [hB] with y hy
            constructor
            · intro hpy
              have h1 := hy.1 hpy
              simp only [h1, not_lt.mpr h1.le, hx0, lt_self_iff_false, hnP, if_true, if_false]
            · intro hny
              have h1 := hy.2 hny
              simp only [h1, hx0, lt_self_iff_false, hnP, if_true, if_false, Bool.not_not]
      · simp only [hq0, lt_self_iff_false, if_false, imp_self, Filter.eventually_true, if_true]
    · refine ⟨interior O ∩ Sᶜ, fun _ => b, isOpen_interior.inter hF3.isOpen_compl,
        ⟨mem_interior_iff_mem_nhds.mpr hO, hqS⟩, fun y hy => interior_subset hy.1, ?_, rfl⟩
      intro x hx
      exact ⟨fun _ => Filter.Eventually.of_forall (fun _ => rfl), fun h => absurd h hx.2⟩
  
  obtain ⟨τY, hT2, π, lab, hbij, hcov, hsheet, hbasis⟩ := flip_etale_space S σ hagree hex
  
  have hloc : ∀ z : FlipPt M, π z ∈ U → ∀ᶠ w in 𝓝 z, lab w = lab z := by
    intro z hz
    obtain ⟨W, φ, hWo, hzW, hφ, hφz, -⟩ := hbasis z Set.univ Filter.univ_mem
    have hev := (hφ (π z) hzW).1 (hUS _ hz)
    have hA : {y | y ∈ W ∧ φ y = lab z} ∈ 𝓝 (π z) := by
      filter_upwards [hWo.mem_nhds hzW, hev] with y h1 h2
      exact ⟨h1, h2.trans hφz⟩
    have hφ' : IsFlipSection S σ (interior {y | y ∈ W ∧ φ y = lab z}) φ :=
      fun q hq => hφ q (interior_subset hq).1
    have hBo := hsheet _ φ isOpen_interior hφ'
    have hzB : z ∈ {w : FlipPt M | π w ∈ interior {y | y ∈ W ∧ φ y = lab z} ∧ lab w = φ (π w)} :=
      ⟨mem_interior_iff_mem_nhds.mpr hA, hφz.symm⟩
    filter_upwards [hBo.mem_nhds hzB] with w hw
    rw [hw.2]
    exact (interior_subset hw.1).2
  
  have hflip : ∀ (V' : Set (FlipPt M)) (f : M → ℝ) (p : M) (a b : FlipPt M),
      IsOpen V' → Set.InjOn π V' → p ∈ frontier U →
      IsMinimalFrontierChart g U (π '' V') f p →
      (π '' V') ∩ U = (π '' V') ∩ {x | f x ≠ 0} →
      a ∈ V' → b ∈ V' → 0 < f (π a) → f (π b) < 0 → lab a ≠ lab b := by
    intro V' f p a b hV'o hinj hp hC htwo ha hb hfa hfb
    obtain ⟨hVo, hpV, _, _, _, hVpos, hVneg⟩ := hchart hC
    have hpS : p ∈ S := (hmemS p).2 ⟨hp, _, f, hC, htwo⟩
    haveI : Nonempty (FlipPt M) := ⟨a⟩
    obtain ⟨ℓ, hℓ⟩ : ∃ ℓ : M → Bool, ∀ x, ℓ x = lab (Function.invFunOn π V' x) :=
      ⟨_, fun _ => rfl⟩
    have hℓlab : ∀ w ∈ V', ℓ (π w) = lab w := by
      intro w hw
      rw [hℓ, hinj.leftInvOn_invFunOn hw]
    
    have h1 : ∀ z ∈ V', ∃ (W : Set M) (φ : M → Bool), IsOpen W ∧ π z ∈ W ∧
        IsFlipSection S σ W φ ∧ φ (π z) = lab z ∧ ∀ y ∈ W, ℓ y = φ y := by
      intro z hz
      obtain ⟨W, φ, hWo, hzW, hφ, hφz, hsub⟩ := hbasis z V' (hV'o.mem_nhds hz)
      refine ⟨W, φ, hWo, hzW, hφ, hφz, ?_⟩
      intro y hy
      obtain ⟨w, hw⟩ := hbij.2 (y, φ y)
      simp only [Prod.mk.injEq] at hw
      obtain ⟨hwy, hwl⟩ := hw
      have hwV : w ∈ V' := hsub w (hwy ▸ hy) (by rw [hwl, hwy])
      rw [← hwy, hℓlab w hwV, hwl, hwy]
    
    have hoff : ∀ x ∈ π '' V', f x ≠ 0 → x ∉ S := by
      intro x hx hfx hxS
      exact hfx ((hzero hC hx).1 ((hmemS x).1 hxS).1)
    have h2 : ∀ x ∈ π '' V', f x ≠ 0 → ContinuousAt ℓ x := by
      rintro x ⟨z, hz, rfl⟩ hfx
      obtain ⟨W, φ, hWo, hzW, hφ, hφz, hℓφ⟩ := h1 z hz
      have hev := (hφ (π z) hzW).1 (hoff _ ⟨z, hz, rfl⟩ hfx)
      refine (continuousAt_const : ContinuousAt (fun _ => ℓ (π z)) (π z)).congr ?_
      filter_upwards [hWo.mem_nhds hzW, hev] with y hyW hy
      rw [hℓφ y hyW, hy, hℓφ _ hzW]
    
    have hcpos : ContinuousOn ℓ (π '' V' ∩ {x | 0 < f x}) :=
      fun x hx => (h2 x hx.1 (ne_of_gt hx.2)).continuousWithinAt
    have hcneg : ContinuousOn ℓ (π '' V' ∩ {x | f x < 0}) :=
      fun x hx => (h2 x hx.1 (ne_of_lt hx.2)).continuousWithinAt
    
    obtain ⟨zp, hzp, hzpp⟩ := hpV
    obtain ⟨W, φ, hWo, hzW, hφ, hφz, hℓφ⟩ := h1 zp hzp
    rw [hzpp] at hzW
    have hsec := (hφ p hzW).2 hpS
    have hdich := hdichGen (π '' V') (V₀ p) f (σ p) p p p hC (hσ p hpS).1
      ⟨zp, hzp, hzpp⟩ (hV0mem p hpS) hp
    obtain ⟨hfpos, hfneg⟩ := hsgn _ _ _ hC hp
    have hopp : ∃ y₁ y₂ : M, y₁ ∈ π '' V' ∩ {x | 0 < f x} ∧ y₂ ∈ π '' V' ∩ {x | f x < 0} ∧
        ℓ y₁ ≠ ℓ y₂ := by
      rcases hdich with hA | hB
      · have hev : ∀ᶠ y in 𝓝 p, ((0 < f y → 0 < σ p y) ∧ (f y < 0 → σ p y < 0)) ∧
            ((0 < σ p y → φ y = φ p) ∧ (σ p y < 0 → φ y = !φ p)) ∧ y ∈ W ∧ y ∈ π '' V' :=
          hA.and (hsec.and ((show ∀ᶠ y in 𝓝 p, y ∈ W from hWo.mem_nhds hzW).and
            (show ∀ᶠ y in 𝓝 p, y ∈ π '' V' from hVo.mem_nhds ⟨zp, hzp, hzpp⟩)))
        obtain ⟨y₁, hy₁f, hy₁⟩ := (hfpos.and_eventually hev).exists
        obtain ⟨y₂, hy₂f, hy₂⟩ := (hfneg.and_eventually hev).exists
        refine ⟨y₁, y₂, ⟨hy₁.2.2.2, hy₁f⟩, ⟨hy₂.2.2.2, hy₂f⟩, ?_⟩
        rw [hℓφ y₁ hy₁.2.2.1, hℓφ y₂ hy₂.2.2.1, hy₁.2.1.1 (hy₁.1.1 hy₁f),
          hy₂.2.1.2 (hy₂.1.2 hy₂f)]
        cases φ p <;> simp
      · have hev : ∀ᶠ y in 𝓝 p, ((0 < f y → σ p y < 0) ∧ (f y < 0 → 0 < σ p y)) ∧
            ((0 < σ p y → φ y = φ p) ∧ (σ p y < 0 → φ y = !φ p)) ∧ y ∈ W ∧ y ∈ π '' V' :=
          hB.and (hsec.and ((show ∀ᶠ y in 𝓝 p, y ∈ W from hWo.mem_nhds hzW).and
            (show ∀ᶠ y in 𝓝 p, y ∈ π '' V' from hVo.mem_nhds ⟨zp, hzp, hzpp⟩)))
        obtain ⟨y₁, hy₁f, hy₁⟩ := (hfpos.and_eventually hev).exists
        obtain ⟨y₂, hy₂f, hy₂⟩ := (hfneg.and_eventually hev).exists
        refine ⟨y₁, y₂, ⟨hy₁.2.2.2, hy₁f⟩, ⟨hy₂.2.2.2, hy₂f⟩, ?_⟩
        rw [hℓφ y₁ hy₁.2.2.1, hℓφ y₂ hy₂.2.2.1, hy₁.2.1.2 (hy₁.1.1 hy₁f),
          hy₂.2.1.1 (hy₂.1.2 hy₂f)]
        cases φ p <;> simp
    
    obtain ⟨y₁, y₂, hy₁, hy₂, hne⟩ := hopp
    have hapos : π a ∈ π '' V' ∩ {x | 0 < f x} := ⟨⟨a, ha, rfl⟩, hfa⟩
    have hbneg : π b ∈ π '' V' ∩ {x | f x < 0} := ⟨⟨b, hb, rfl⟩, hfb⟩
    have e1 : ℓ (π a) = ℓ y₁ := hVpos.constant hcpos hapos hy₁
    have e2 : ℓ (π b) = ℓ y₂ := hVneg.constant hcneg hbneg hy₂
    rw [← hℓlab a ha, ← hℓlab b hb, e1, e2]
    exact hne
  exact ⟨FlipCoverTop.mk (g := g) (U := U) (carrier := FlipPt M) (instTop := τY) (instT2 := hT2)
    π lab hbij hcov hloc hflip⟩

theorem exterior_lift {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] (p : X → Y)
    (hp : IsCoveringMap p) (f : E3 → Y) (hf : ContinuousOn f {y : E3 | 1 < ‖y‖}) (y₀ : E3)
    (x₀ : X) (hy₀ : 1 < ‖y₀‖) (hx₀ : p x₀ = f y₀) :
    ∃ F : E3 → X, ContinuousOn F {y : E3 | 1 < ‖y‖} ∧ F y₀ = x₀ ∧
      ∀ y : E3, 1 < ‖y‖ → p (F y) = f y :=
by
  classical
  
  have hstar : ∀ (S : Set E3) (c : E3), IsOpen S → StarConvex ℝ c S → c ∈ S →
      ∀ φ : E3 → Y, ContinuousOn φ S → ∀ z₀ ∈ S, ∀ x : X, p x = φ z₀ →
        ∃ F : E3 → X, ContinuousOn F S ∧ F z₀ = x ∧ ∀ z ∈ S, p (F z) = φ z := by
    intro S c hSo hS hc φ hφ z₀ hz₀ x hx
    haveI : ContractibleSpace S := hS.contractibleSpace ⟨c, hc⟩
    haveI : SimplyConnectedSpace S := SimplyConnectedSpace.ofContractible S
    haveI : LocPathConnectedSpace S := hSo.locPathConnectedSpace
    obtain ⟨F', ⟨hF'0, hF'p⟩, -⟩ := hp.existsUnique_continuousMap_lifts
      ⟨S.restrict φ, hφ.restrict⟩ ⟨z₀, hz₀⟩ x hx
    refine ⟨fun z => if hz : z ∈ S then F' ⟨z, hz⟩ else x, ?_, ?_, ?_⟩
    · rw [continuousOn_iff_continuous_restrict]
      have hres : S.restrict (fun z => if hz : z ∈ S then F' ⟨z, hz⟩ else x) = F' := by
        funext z
        show (if hz : (z : E3) ∈ S then F' ⟨z, hz⟩ else x) = F' z
        rw [dif_pos z.2]
      rw [hres]
      exact F'.continuous
    · show (if hz : z₀ ∈ S then F' ⟨z₀, hz⟩ else x) = x
      rw [dif_pos hz₀]
      exact hF'0
    · intro z hz
      show p (if hz : z ∈ S then F' ⟨z, hz⟩ else x) = φ z
      rw [dif_pos hz]
      exact congrFun hF'p ⟨z, hz⟩
  
  have hglue : ∀ (U V : Set E3), IsOpen U → IsOpen V → IsPreconnected (U ∩ V) →
      (U ∩ V).Nonempty → ∀ φ : E3 → Y,
      (∀ t₀ ∈ U, ∀ x : X, p x = φ t₀ →
        ∃ F : E3 → X, ContinuousOn F U ∧ F t₀ = x ∧ ∀ t ∈ U, p (F t) = φ t) →
      (∀ t₀ ∈ V, ∀ x : X, p x = φ t₀ →
        ∃ F : E3 → X, ContinuousOn F V ∧ F t₀ = x ∧ ∀ t ∈ V, p (F t) = φ t) →
      ∀ t₀ ∈ U, ∀ x : X, p x = φ t₀ →
        ∃ F : E3 → X, ContinuousOn F (U ∪ V) ∧ F t₀ = x ∧ ∀ t ∈ U ∪ V, p (F t) = φ t := by
    intro U V hU hV hUV hne φ hLU hLV t₀ ht₀ x hx
    obtain ⟨FU, hFUc, hFU0, hFUp⟩ := hLU t₀ ht₀ x hx
    obtain ⟨z, hzU, hzV⟩ := hne
    obtain ⟨FV, hFVc, hFVz, hFVp⟩ := hLV z hzV (FU z) (hFUp z hzU)
    haveI : PreconnectedSpace (U ∩ V : Set E3) := Subtype.preconnectedSpace hUV
    have heq := hp.eq_of_comp_eq (g₁ := (U ∩ V).restrict FU) (g₂ := (U ∩ V).restrict FV)
      (hFUc.mono Set.inter_subset_left).restrict (hFVc.mono Set.inter_subset_right).restrict
      (by
        funext t
        show p (FU t) = p (FV t)
        rw [hFUp t t.2.1, hFVp t t.2.2])
      ⟨z, hzU, hzV⟩ hFVz.symm
    have hagree : ∀ t ∈ U ∩ V, FU t = FV t := fun t ht => congrFun heq ⟨t, ht⟩
    refine ⟨fun t => if t ∈ U then FU t else FV t, ?_, ?_, ?_⟩
    · refine ContinuousOn.union_of_isOpen ?_ ?_ hU hV
      · refine hFUc.congr (fun t ht => ?_)
        show (if t ∈ U then FU t else FV t) = FU t
        rw [if_pos ht]
      · refine hFVc.congr (fun t ht => ?_)
        show (if t ∈ U then FU t else FV t) = FV t
        by_cases htU : t ∈ U
        · rw [if_pos htU]
          exact hagree t ⟨htU, ht⟩
        · rw [if_neg htU]
    · show (if t₀ ∈ U then FU t₀ else FV t₀) = x
      rw [if_pos ht₀]
      exact hFU0
    · intro t ht
      show p (if t ∈ U then FU t else FV t) = φ t
      by_cases htU : t ∈ U
      · rw [if_pos htU]
        exact hFUp t htU
      · rw [if_neg htU]
        exact hFVp t (ht.resolve_left htU)
  
  have hcoord : ∀ (σ a b : ℝ) (z : E3) (i : Fin 3),
      (a • (σ • e 0) + b • z) i = a * (σ * (if i = 0 then 1 else 0)) + b * z i := by
    intro σ a b z i
    simp [e, EuclideanSpace.single_apply]
  have hopen : ∀ σ : ℝ, IsOpen {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)} := by
    intro σ
    have hcl : IsClosed {z : E3 | z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0} := by
      refine (isClosed_eq (f := fun z : E3 => z 1) (by fun_prop) continuous_const).inter
        ((isClosed_eq (f := fun z : E3 => z 2) (by fun_prop) continuous_const).inter
          (isClosed_le (f := fun z : E3 => σ * z 0) (by fun_prop) continuous_const))
    exact hcl.isOpen_compl
  have hsc : ∀ σ : ℝ, σ ≠ 0 →
      StarConvex ℝ (σ • e 0) {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)} := by
    intro σ hσ z hz a b ha hb hab
    have hσσ : 0 < σ * σ := mul_self_pos.mpr hσ
    simp only [Set.mem_setOf_eq] at hz ⊢
    rintro ⟨h1, h2, h0⟩
    have e1 : (if (1 : Fin 3) = 0 then (1 : ℝ) else 0) = 0 := if_neg (by decide)
    have e2 : (if (2 : Fin 3) = 0 then (1 : ℝ) else 0) = 0 := if_neg (by decide)
    rw [hcoord, e1, mul_zero, mul_zero, zero_add] at h1
    rw [hcoord, e2, mul_zero, mul_zero, zero_add] at h2
    rw [hcoord, if_pos rfl, mul_one] at h0
    rcases eq_or_lt_of_le hb with hb0 | hbpos
    · subst hb0
      have ha1 : a = 1 := by linarith
      subst ha1
      nlinarith
    · apply hz
      refine ⟨?_, ?_, ?_⟩
      · rcases mul_eq_zero.mp h1 with h | h
        · exact absurd h hbpos.ne'
        · exact h
      · rcases mul_eq_zero.mp h2 with h | h
        · exact absurd h hbpos.ne'
        · exact h
      · by_contra hpos
        push_neg at hpos
        nlinarith [mul_pos hbpos hpos, mul_nonneg ha hσσ.le]
  have hcen : ∀ σ : ℝ, σ ≠ 0 → σ • e 0 ∈ {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)} := by
    intro σ hσ
    have hσσ : 0 < σ * σ := mul_self_pos.mpr hσ
    simp only [Set.mem_setOf_eq]
    rintro ⟨-, -, h0⟩
    have h00 : (σ • e 0) 0 = σ := by simp [e, EuclideanSpace.single_apply]
    rw [h00] at h0
    linarith
  have hXne : ∀ σ : ℝ, ∀ z : E3, z ∈ {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)} → z ≠ 0 := by
    rintro σ z hz rfl
    exact hz ⟨by simp, by simp, by simp⟩
  
  have hD : IsPreconnected {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0)} := by
    have hC : IsConnected ({0}ᶜ : Set ℂ) :=
      isConnected_compl_singleton_of_one_lt_rank (by rw [Complex.rank_real_complex]; norm_num) 0
    have hT : IsPreconnected ((Set.univ : Set ℝ) ×ˢ ({0}ᶜ : Set ℂ)) :=
      isPreconnected_univ.prod hC.isPreconnected
    have himg : (fun q : ℝ × ℂ => q.1 • e 0 + q.2.re • e 1 + q.2.im • e 2) ''
        ((Set.univ : Set ℝ) ×ˢ ({0}ᶜ : Set ℂ)) = {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0)} := by
      ext z
      simp only [Set.mem_image, Set.mem_prod, Set.mem_univ, true_and,
        Set.mem_compl_singleton_iff, Set.mem_setOf_eq, Prod.exists]
      constructor
      · rintro ⟨a, ζ, hζ, rfl⟩ ⟨h1, h2⟩
        apply hζ
        simp [e, EuclideanSpace.single_apply] at h1 h2
        exact Complex.ext h1 h2
      · intro hz
        refine ⟨z 0, ⟨z 1, z 2⟩, ?_, ?_⟩
        · intro h
          apply hz
          exact ⟨congrArg Complex.re h, congrArg Complex.im h⟩
        · ext i
          fin_cases i <;> simp [e, EuclideanSpace.single_apply]
    rw [← himg]
    exact hT.image _ (Continuous.continuousOn (by fun_prop))
  have hinter : {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (1 : ℝ) * z 0 ≤ 0)} ∩
      {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (-1 : ℝ) * z 0 ≤ 0)} = {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0)} := by
    ext z
    simp only [Set.mem_inter_iff, Set.mem_setOf_eq]
    constructor
    · rintro ⟨h1, h2⟩ ⟨a, b⟩
      rcases le_total (z 0) 0 with h | h
      · exact h1 ⟨a, b, by linarith⟩
      · exact h2 ⟨a, b, by linarith⟩
    · intro h
      exact ⟨fun ⟨a, b, _⟩ => h ⟨a, b⟩, fun ⟨a, b, _⟩ => h ⟨a, b⟩⟩
  have hpre : IsPreconnected ({z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (1 : ℝ) * z 0 ≤ 0)} ∩
      {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (-1 : ℝ) * z 0 ≤ 0)}) := by
    rw [hinter]; exact hD
  have hne : ({z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (1 : ℝ) * z 0 ≤ 0)} ∩
      {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (-1 : ℝ) * z 0 ≤ 0)}).Nonempty := by
    refine ⟨e 1, ?_⟩
    rw [hinter]
    simp [e, EuclideanSpace.single_apply]
  have hneX : ∀ z : E3, z ≠ 0 → z ∈ {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (1 : ℝ) * z 0 ≤ 0)} ∪
      {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (-1 : ℝ) * z 0 ≤ 0)} := by
    intro z hz
    by_contra hc
    simp only [Set.mem_union, Set.mem_setOf_eq, not_or, not_not] at hc
    obtain ⟨⟨h1, h2, h3⟩, ⟨-, -, h4⟩⟩ := hc
    apply hz
    ext i
    fin_cases i
    · simp only [Fin.zero_eta, Fin.isValue, PiLp.zero_apply]
      linarith
    · simpa using h1
    · simpa using h2
  
  have hnh : ∀ y : E3, 1 < ‖y‖ → ‖(1 - 1 / ‖y‖) • y‖ = ‖y‖ - 1 := by
    intro y hy
    have hy0 : 0 < ‖y‖ := by linarith
    have hpos : 0 < 1 - 1 / ‖y‖ := by rw [sub_pos, div_lt_one hy0]; exact hy
    rw [norm_smul, Real.norm_eq_abs, abs_of_pos hpos, sub_mul, div_mul_cancel₀ _ hy0.ne', one_mul]
  have hng : ∀ z : E3, z ≠ 0 → ‖(1 + 1 / ‖z‖) • z‖ = ‖z‖ + 1 := by
    intro z hz
    have hz0 : 0 < ‖z‖ := norm_pos_iff.mpr hz
    have hpos : 0 < 1 + 1 / ‖z‖ := by positivity
    rw [norm_smul, Real.norm_eq_abs, abs_of_pos hpos, add_mul, div_mul_cancel₀ _ hz0.ne', one_mul]
  have hgh : ∀ y : E3, 1 < ‖y‖ →
      (1 + 1 / ‖(1 - 1 / ‖y‖) • y‖) • ((1 - 1 / ‖y‖) • y) = y := by
    intro y hy
    rw [hnh y hy, smul_smul]
    have hy0 : ‖y‖ ≠ 0 := by linarith
    have h1 : ‖y‖ - 1 ≠ 0 := by linarith
    have hprod : (1 + 1 / (‖y‖ - 1)) * (1 - 1 / ‖y‖) = 1 := by
      field_simp
      ring
    rw [hprod, one_smul]
  have hH0 : ∀ y : E3, 1 < ‖y‖ → (1 - 1 / ‖y‖) • y ≠ 0 := by
    intro y hy h0
    have := hnh y hy
    rw [h0, norm_zero] at this
    linarith
  have hHc : ContinuousOn (fun y : E3 => (1 - 1 / ‖y‖) • y) {y : E3 | 1 < ‖y‖} :=
    (continuousOn_const.sub (continuousOn_const.div continuous_norm.continuousOn
      (fun y hy => (lt_trans one_pos hy).ne'))).smul continuousOn_id
  have hGc : ContinuousOn (fun z : E3 => (1 + 1 / ‖z‖) • z) {z : E3 | z ≠ 0} :=
    (continuousOn_const.add (continuousOn_const.div continuous_norm.continuousOn
      (fun z hz => norm_ne_zero_iff.mpr hz))).smul continuousOn_id
  
  set φ : E3 → Y := fun z => f ((1 + 1 / ‖z‖) • z) with hφdef
  have hφc : ContinuousOn φ {z : E3 | z ≠ 0} := by
    refine hf.comp hGc (fun z hz => ?_)
    show 1 < ‖(1 + 1 / ‖z‖) • z‖
    rw [hng z hz]
    have := norm_pos_iff.mpr (show z ≠ 0 from hz)
    linarith
  have hL : ∀ σ : ℝ, σ ≠ 0 → ∀ t₀ ∈ {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)},
      ∀ x : X, p x = φ t₀ → ∃ F : E3 → X,
        ContinuousOn F {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)} ∧ F t₀ = x ∧
          ∀ t ∈ {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ σ * z 0 ≤ 0)}, p (F t) = φ t :=
    fun σ hσ t₀ ht₀ x hx => hstar _ _ (hopen σ) (hsc σ hσ) (hcen σ hσ) φ
      (hφc.mono (fun z hz => hXne σ z hz)) t₀ ht₀ x hx
  have hL1 := hL 1 one_ne_zero
  have hL2 := hL (-1) (by norm_num)
  have hmem := hneX _ (hH0 y₀ hy₀)
  have hx' : p x₀ = φ ((1 - 1 / ‖y₀‖) • y₀) := by
    show p x₀ = f ((1 + 1 / ‖(1 - 1 / ‖y₀‖) • y₀‖) • ((1 - 1 / ‖y₀‖) • y₀))
    rw [hgh y₀ hy₀]
    exact hx₀
  obtain ⟨Ft, hFtc, hFt0, hFtp⟩ : ∃ Ft : E3 → X,
      ContinuousOn Ft ({z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (1 : ℝ) * z 0 ≤ 0)} ∪
        {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (-1 : ℝ) * z 0 ≤ 0)}) ∧
      Ft ((1 - 1 / ‖y₀‖) • y₀) = x₀ ∧
      ∀ t ∈ {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (1 : ℝ) * z 0 ≤ 0)} ∪
        {z : E3 | ¬(z 1 = 0 ∧ z 2 = 0 ∧ (-1 : ℝ) * z 0 ≤ 0)}, p (Ft t) = φ t := by
    rcases hmem with h | h
    · exact hglue _ _ (hopen 1) (hopen (-1)) hpre hne φ hL1 hL2 _ h x₀ hx'
    · obtain ⟨Ft, ha, hb, hc⟩ := hglue _ _ (hopen (-1)) (hopen 1)
        (by rw [Set.inter_comm]; exact hpre) (by rw [Set.inter_comm]; exact hne) φ hL2 hL1 _ h
        x₀ hx'
      rw [Set.union_comm] at ha hc
      exact ⟨Ft, ha, hb, hc⟩
  refine ⟨fun y => Ft ((1 - 1 / ‖y‖) • y), ?_, hFt0, ?_⟩
  · exact hFtc.comp hHc (fun y hy => hneX _ (hH0 y hy))
  · intro y hy
    show p (Ft ((1 - 1 / ‖y‖) • y)) = f y
    rw [hFtp _ (hneX _ (hH0 y hy))]
    show f ((1 + 1 / ‖(1 - 1 / ‖y‖) • y‖) • ((1 - 1 / ‖y‖) • y)) = f y
    rw [hgh y hy]

theorem flip_cover_asymptotically_flat [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds) (U : Set M)
    (F : FlipCover g U) (g' : RiemannianMetric3 F.carrier)
    (hπs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F.proj)
    (hcoeff : ∀ (ψ : E3 → F.carrier) (φ : E3 → M) (y : E3),
      MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ψ y → (F.proj ∘ ψ =ᶠ[𝓝 y] φ) →
        g'.coeff ψ y = g.coeff φ y)
    (hscal : ∀ z : F.carrier, g'.scalarCurvature z = g.scalarCurvature (F.proj z))
    (hprop : ∀ K : Set M, IsCompact K → IsCompact (F.proj ⁻¹' K)) :
    ∃ (af : AsymptoticallyFlat g') (k' : Fin af.numEnds), af.q = hAF.q ∧
      (∀ y : E3, 1 < ‖y‖ → F.proj ((af.ends k').Φ y) = (hAF.ends k).Φ y) ∧
      (∀ y : E3, 1 < ‖y‖ → g'.coeff (af.ends k').Φ y = g.coeff (hAF.ends k).Φ y) :=
by
  classical
  have hAo : IsOpen {y : E3 | 1 < ‖y‖} := isOpen_lt continuous_const continuous_norm
  
  have hys : 1 < ‖(2 : ℝ) • e 0‖ := by
    rw [norm_smul, EuclideanSpace.norm_single]
    norm_num
  
  have hbase : ∀ (l : Fin hAF.numEnds) (b : Bool), ∃ x : F.carrier,
      F.proj x = (hAF.ends l).Φ ((2 : ℝ) • e 0) ∧ F.label x = b := by
    intro l b
    obtain ⟨x, hx⟩ := F.bij.2 ((hAF.ends l).Φ ((2 : ℝ) • e 0), b)
    exact ⟨x, (Prod.ext_iff.mp hx).1, (Prod.ext_iff.mp hx).2⟩
  choose x hxp hxl using hbase
  
  have hΦc : ∀ l : Fin hAF.numEnds, ContinuousOn (hAF.ends l).Φ {y : E3 | 1 < ‖y‖} := by
    intro l
    have h := (hAF.ends l).Φ.contMDiffOn_toFun.continuousOn
    rw [(hAF.ends l).source_eq] at h
    exact h
  
  have hlift : ∀ (l : Fin hAF.numEnds) (b : Bool), ∃ L : E3 → F.carrier,
      ContinuousOn L {y : E3 | 1 < ‖y‖} ∧ L ((2 : ℝ) • e 0) = x l b ∧
        ∀ y : E3, 1 < ‖y‖ → F.proj (L y) = (hAF.ends l).Φ y :=
    fun l b => exterior_lift F.proj F.covering (hAF.ends l).Φ (hΦc l) ((2 : ℝ) • e 0) (x l b)
      hys (hxp l b)
  choose L hLc hLys hLp using hlift
  
  have hconnA : IsConnected {y : E3 | 1 < ‖y‖} := by
    have hrank : 1 < Module.rank ℝ E3 := by
      rw [← Module.finrank_eq_rank, finrank_euclideanSpace_fin]
      norm_num
    have hS := isConnected_sphere hrank (0 : E3) zero_le_one
    have hP := hS.prod (isConnected_Ioi (a := (1 : ℝ)))
    have hc : Continuous (fun p : E3 × ℝ => p.2 • p.1) := continuous_snd.smul continuous_fst
    convert hP.image _ hc.continuousOn using 1
    ext y
    simp only [Set.mem_setOf_eq, Set.mem_image, Set.mem_prod, mem_sphere_iff_norm, sub_zero,
      Set.mem_Ioi, Prod.exists]
    constructor
    · intro hy
      have hy0 : ‖y‖ ≠ 0 := by linarith
      refine ⟨‖y‖⁻¹ • y, ‖y‖, ⟨?_, hy⟩, ?_⟩
      · rw [norm_smul, norm_inv, norm_norm, inv_mul_cancel₀ hy0]
      · rw [smul_smul, mul_inv_cancel₀ hy0, one_smul]
    · rintro ⟨u, t, ⟨hu, ht⟩, rfl⟩
      rw [norm_smul, hu, mul_one, Real.norm_eq_abs, abs_of_pos (by linarith)]
      exact ht
  haveI : PreconnectedSpace {y : E3 | 1 < ‖y‖} :=
    Subtype.preconnectedSpace hconnA.isPreconnected
  
  have hD : ∀ l : Fin hAF.numEnds, ∀ y : E3, 1 < ‖y‖ → L l true y ≠ L l false y ∧
      ∀ z : F.carrier, F.proj z = (hAF.ends l).Φ y → z = L l true y ∨ z = L l false y := by
    intro l y hy
    have hne : L l true ((2 : ℝ) • e 0) ≠ L l false ((2 : ℝ) • e 0) := by
      intro h
      have h2 := congrArg F.label h
      rw [hLys, hLys, hxl, hxl] at h2
      exact Bool.noConfusion h2
    have hdist : L l true y ≠ L l false y := by
      intro h
      have hcomp : F.proj ∘ ({y : E3 | 1 < ‖y‖}.restrict (L l true)) =
          F.proj ∘ ({y : E3 | 1 < ‖y‖}.restrict (L l false)) := by
        funext w
        simp only [Function.comp_apply, Set.restrict_apply]
        rw [hLp l true w w.2, hLp l false w w.2]
      have heq := F.covering.eq_of_comp_eq (hLc l true).restrict (hLc l false).restrict hcomp
        ⟨y, hy⟩ h
      exact hne (congrFun heq ⟨(2 : ℝ) • e 0, hys⟩)
    refine ⟨hdist, fun z hz => ?_⟩
    have hlab : F.label (L l true y) ≠ F.label (L l false y) := by
      intro hσ
      apply hdist
      apply F.bij.1
      show (F.proj (L l true y), F.label (L l true y)) =
        (F.proj (L l false y), F.label (L l false y))
      rw [hLp l true y hy, hLp l false y hy, hσ]
    have key : ∀ a b c : Bool, b ≠ c → a = b ∨ a = c := by decide
    rcases key (F.label z) _ _ hlab with h | h
    · left
      apply F.bij.1
      show (F.proj z, F.label z) = (F.proj (L l true y), F.label (L l true y))
      rw [hz, hLp l true y hy, h]
    · right
      apply F.bij.1
      show (F.proj z, F.label z) = (F.proj (L l false y), F.label (L l false y))
      rw [hz, hLp l false y hy, h]
  
  have hchartGen : ∀ (Φ0 : EndChart M) (L0 : E3 → F.carrier),
      ContinuousOn L0 {y : E3 | 1 < ‖y‖} → (∀ y : E3, 1 < ‖y‖ → F.proj (L0 y) = Φ0.Φ y) →
      ∃ Φ' : EndChart F.carrier,
        (∀ y : E3, Φ'.Φ y = L0 y) ∧ Φ'.Φ.target = L0 '' {y : E3 | 1 < ‖y‖} := by
    intro Φ0 L0 hL0c hL0p
    have hsrc0 : ∀ y : E3, 1 < ‖y‖ → y ∈ Φ0.Φ.source := by
      intro y hy
      rw [Φ0.source_eq]
      exact hy
    have hinv : ∀ y : E3, 1 < ‖y‖ → Φ0.Φ.toPartialEquiv.symm (F.proj (L0 y)) = y := by
      intro y hy
      rw [hL0p y hy]
      exact Φ0.Φ.toPartialEquiv.left_inv (hsrc0 y hy)
    
    have hopen : IsOpen (L0 '' {y : E3 | 1 < ‖y‖}) := by
      rw [isOpen_iff_forall_mem_open]
      rintro w ⟨y, hy, rfl⟩
      obtain ⟨e, hwe, hpe⟩ := F.covering.isLocalHomeomorph (L0 y)
      have hN : IsOpen ({y : E3 | 1 < ‖y‖} ∩ L0 ⁻¹' e.source) :=
        hL0c.isOpen_inter_preimage hAo e.open_source
      have hNsub : {y : E3 | 1 < ‖y‖} ∩ L0 ⁻¹' e.source ⊆ Φ0.Φ.source := by
        rw [Φ0.source_eq]
        exact Set.inter_subset_left
      have hkey : ∀ y' ∈ {y : E3 | 1 < ‖y‖} ∩ L0 ⁻¹' e.source, e.symm (Φ0.Φ y') = L0 y' := by
        intro y' hy'
        rw [← hL0p y' hy'.1, hpe]
        exact e.left_inv hy'.2
      have hΦN : IsOpen (Φ0.Φ '' ({y : E3 | 1 < ‖y‖} ∩ L0 ⁻¹' e.source)) :=
        Φ0.Φ.toOpenPartialHomeomorph.isOpen_image_of_subset_source hN hNsub
      have hΦNt : Φ0.Φ '' ({y : E3 | 1 < ‖y‖} ∩ L0 ⁻¹' e.source) ⊆ e.symm.source := by
        rintro _ ⟨y', hy', rfl⟩
        rw [OpenPartialHomeomorph.symm_source, ← hL0p y' hy'.1, hpe]
        exact e.map_source hy'.2
      refine ⟨e.symm '' (Φ0.Φ '' ({y : E3 | 1 < ‖y‖} ∩ L0 ⁻¹' e.source)), ?_,
        e.symm.isOpen_image_of_subset_source hΦN hΦNt, ?_⟩
      · rintro _ ⟨_, ⟨y', hy', rfl⟩, rfl⟩
        exact ⟨y', hy'.1, (hkey y' hy').symm⟩
      · exact ⟨Φ0.Φ y, ⟨y, ⟨hy, hwe⟩, rfl⟩, hkey y ⟨hy, hwe⟩⟩
    
    have hLsm : ∀ y : E3, 1 < ‖y‖ → ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ L0 y := by
      intro y hy
      have hev : ∀ᶠ y' in 𝓝 y, 1 < ‖y'‖ ∧ L0 y' ∈ (chartAt E3 (L0 y)).source := by
        have h1 : ∀ᶠ y' in 𝓝 y, 1 < ‖y'‖ := hAo.mem_nhds hy
        have h2 : ∀ᶠ y' in 𝓝 y, L0 y' ∈ (chartAt E3 (L0 y)).source :=
          (hL0c.continuousAt (hAo.mem_nhds hy)).preimage_mem_nhds
            ((chartAt E3 (L0 y)).open_source.mem_nhds (mem_chart_source E3 (L0 y)))
        exact h1.and h2
      have heq' : L0 =ᶠ[𝓝 y] (fun y' => (chartAt E3 (L0 y)).symm
          (chartAt E3 (F.proj (L0 y)) (Φ0.Φ y'))) := by
        filter_upwards [hev] with y' hy'
        rw [← hL0p y' hy'.1, ← F.chart_eq (L0 y) _ hy'.2,
          (chartAt E3 (L0 y)).left_inv hy'.2]
      have hΦs : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ Φ0.Φ y :=
        Φ0.Φ.contMDiffOn_toFun.contMDiffAt (Φ0.Φ.open_source.mem_nhds (hsrc0 y hy))
      have hC : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (chartAt E3 (F.proj (L0 y))) (Φ0.Φ y) := by
        rw [← hL0p y hy]
        exact contMDiffOn_chart.contMDiffAt
          ((chartAt E3 (F.proj (L0 y))).open_source.mem_nhds
            (mem_chart_source E3 (F.proj (L0 y))))
      have hcs : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (chartAt E3 (L0 y)).symm
          (chartAt E3 (F.proj (L0 y)) (Φ0.Φ y)) := by
        have h1 : chartAt E3 (F.proj (L0 y)) (Φ0.Φ y) = chartAt E3 (L0 y) (L0 y) := by
          rw [← hL0p y hy]
          exact (F.chart_eq (L0 y) (L0 y) (mem_chart_source E3 (L0 y))).symm
        rw [h1]
        exact contMDiffOn_chart_symm.contMDiffAt
          ((chartAt E3 (L0 y)).open_target.mem_nhds (mem_chart_target E3 (L0 y)))
      exact (hcs.comp y (hC.comp y hΦs)).congr_of_eventuallyEq heq'
    let PE : PartialEquiv E3 F.carrier :=
      { toFun := L0
        invFun := fun w => Φ0.Φ.toPartialEquiv.symm (F.proj w)
        source := {y : E3 | 1 < ‖y‖}
        target := L0 '' {y : E3 | 1 < ‖y‖}
        map_source' := fun y hy => ⟨y, hy, rfl⟩
        map_target' := by
          rintro w ⟨y, hy, rfl⟩
          show Φ0.Φ.toPartialEquiv.symm (F.proj (L0 y)) ∈ {y : E3 | 1 < ‖y‖}
          rw [hinv y hy]
          exact hy
        left_inv' := fun y hy => hinv y hy
        right_inv' := by
          rintro w ⟨y, hy, rfl⟩
          show L0 (Φ0.Φ.toPartialEquiv.symm (F.proj (L0 y))) = L0 y
          rw [hinv y hy] }
    have hinvsm : ContMDiffOn 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞
        (fun w => Φ0.Φ.toPartialEquiv.symm (F.proj w)) (L0 '' {y : E3 | 1 < ‖y‖}) := by
      refine Φ0.Φ.contMDiffOn_invFun.comp (hπs.contMDiffOn (s := L0 '' {y : E3 | 1 < ‖y‖})) ?_
      rintro _ ⟨y, hy, rfl⟩
      show F.proj (L0 y) ∈ Φ0.Φ.target
      rw [hL0p y hy]
      exact Φ0.Φ.toPartialEquiv.map_source (hsrc0 y hy)
    let PD : PartialDiffeomorph 𝓘(ℝ, E3) 𝓘(ℝ, E3) E3 F.carrier ∞ :=
      { toPartialEquiv := PE
        open_source := hAo
        open_target := hopen
        contMDiffOn_toFun := fun y hy => (hLsm y hy).contMDiffWithinAt
        contMDiffOn_invFun := hinvsm }
    exact ⟨⟨PD, rfl⟩, fun y => rfl, rfl⟩
  have hchart : ∀ (l : Fin hAF.numEnds) (b : Bool), ∃ Φ' : EndChart F.carrier,
      (∀ y : E3, Φ'.Φ y = L l b y) ∧ Φ'.Φ.target = L l b '' {y : E3 | 1 < ‖y‖} :=
    fun l b => hchartGen (hAF.ends l) (L l b) (hLc l b) (hLp l b)
  choose Φ' hΦ'eq hΦ'tgt using hchart
  
  have hstar : ∀ (l : Fin hAF.numEnds) (b : Bool), ∀ y : E3, 1 < ‖y‖ →
      g'.coeff (Φ' l b).Φ y = g.coeff (hAF.ends l).Φ y := by
    intro l b y hy
    have hAy : {y : E3 | 1 < ‖y‖} ∈ 𝓝 y := hAo.mem_nhds hy
    apply hcoeff
    · have h1 := (Φ' l b).Φ.contMDiffOn_toFun
      rw [(Φ' l b).source_eq] at h1
      exact (h1.contMDiffAt hAy).mdifferentiableAt (by simp)
    · filter_upwards [hAy] with y' hy'
      simp only [Function.comp_apply, hΦ'eq]
      exact hLp l b y' hy'
  
  have hdecay : ∀ (l : Fin hAF.numEnds) (b : Bool), ∀ i j : Fin 3, ∀ m : ℕ, m ≤ 2 →
      (fun x : E3 => ‖iteratedFDeriv ℝ m
          (fun y => g'.coeff (Φ' l b).Φ y i j - if i = j then (1 : ℝ) else 0) x‖)
        =O[Bornology.cobounded E3] fun x : E3 => ‖x‖ ^ (-hAF.q - (m : ℝ)) := by
    intro l b i j m hm
    refine (hAF.decay l i j m hm).congr' ?_ EventuallyEq.rfl
    have hev : ∀ᶠ x in Bornology.cobounded E3, 1 < ‖x‖ :=
      tendsto_norm_cobounded_atTop.eventually_gt_atTop 1
    filter_upwards [hev] with x hx
    have hloc : (fun y => g.coeff (hAF.ends l).Φ y i j - if i = j then (1 : ℝ) else 0)
        =ᶠ[𝓝 x] (fun y => g'.coeff (Φ' l b).Φ y i j - if i = j then (1 : ℝ) else 0) := by
      filter_upwards [hAo.mem_nhds hx] with y hy
      rw [hstar l b y hy]
    show ‖iteratedFDeriv ℝ m _ x‖ = ‖iteratedFDeriv ℝ m _ x‖
    rw [(Filter.EventuallyEq.iteratedFDeriv ℝ hloc m).eq_of_nhds]
  
  have hdisjLB : ∀ (l : Fin hAF.numEnds) (b : Bool) (l' : Fin hAF.numEnds) (b' : Bool),
      (l, b) ≠ (l', b') → ∀ y y' : E3, 1 < ‖y‖ → 1 < ‖y'‖ → L l b y ≠ L l' b' y' := by
    intro l b l' b' hne y y' hy hy' heq
    have hp : (hAF.ends l).Φ y = (hAF.ends l').Φ y' := by
      rw [← hLp l b y hy, ← hLp l' b' y' hy', heq]
    have hys' : y ∈ (hAF.ends l).Φ.source := by rw [(hAF.ends l).source_eq]; exact hy
    have hys'' : y' ∈ (hAF.ends l').Φ.source := by rw [(hAF.ends l').source_eq]; exact hy'
    by_cases hll : l = l'
    · subst hll
      have hyy : y = y' := (hAF.ends l).Φ.toPartialEquiv.injOn hys' hys'' hp
      subst hyy
      have hbb : b ≠ b' := fun h => hne (by rw [h])
      have hD1 := (hD l y hy).1
      cases b <;> cases b'
      · exact hbb rfl
      · exact hD1 heq.symm
      · exact hD1 heq
      · exact hbb rfl
    · have h1 : (hAF.ends l).Φ y ∈ (hAF.ends l).Φ.target :=
        (hAF.ends l).Φ.toPartialEquiv.map_source hys'
      have h2 : (hAF.ends l').Φ y' ∈ (hAF.ends l').Φ.target :=
        (hAF.ends l').Φ.toPartialEquiv.map_source hys''
      rw [← hp] at h2
      exact Set.disjoint_left.mp (hAF.disjoint hll) h1 h2
  
  obtain ⟨E, hE⟩ : ∃ E : Fin (hAF.numEnds * 2) → EndChart F.carrier, ∀ j,
      E j = Φ' (finProdFinEquiv.symm j).1 (decide ((finProdFinEquiv.symm j).2 = 1)) :=
    ⟨_, fun _ => rfl⟩
  have hdisj : Pairwise fun j j' : Fin (hAF.numEnds * 2) =>
      Disjoint (E j).Φ.target (E j').Φ.target := by
    intro j j' hjj'
    rw [hE j, hE j', hΦ'tgt, hΦ'tgt, Set.disjoint_left]
    rintro w ⟨y, hy, rfl⟩ ⟨y', hy', hw⟩
    refine hdisjLB _ _ _ _ ?_ y' y hy' hy hw
    intro hpair
    apply hjj'
    have h1 : (finProdFinEquiv.symm j').1 = (finProdFinEquiv.symm j).1 :=
      (Prod.ext_iff.mp hpair).1
    have h2 : decide ((finProdFinEquiv.symm j').2 = 1) =
        decide ((finProdFinEquiv.symm j).2 = 1) :=
      (Prod.ext_iff.mp hpair).2
    have h2' : (finProdFinEquiv.symm j').2 = (finProdFinEquiv.symm j).2 := by
      have hfin : ∀ a b : Fin 2, decide (a = 1) = decide (b = 1) → a = b := by decide
      exact hfin _ _ h2
    have h3 : finProdFinEquiv.symm j' = finProdFinEquiv.symm j := Prod.ext h1 h2'
    exact (finProdFinEquiv.symm.injective h3).symm
  have hcore : (⋃ j, (E j).Φ '' {x : E3 | 2 < ‖x‖})ᶜ =
      F.proj ⁻¹' (⋃ l, (hAF.ends l).Φ '' {x : E3 | 2 < ‖x‖})ᶜ := by
    rw [Set.preimage_compl]
    congr 1
    ext z
    simp only [Set.mem_iUnion, Set.mem_image, Set.mem_preimage, Set.mem_setOf_eq]
    constructor
    · rintro ⟨j, y, hy, rfl⟩
      refine ⟨(finProdFinEquiv.symm j).1, y, hy, ?_⟩
      rw [hE j, hΦ'eq, hLp _ _ y (by linarith)]
    · rintro ⟨l, y, hy, hz⟩
      rcases (hD l y (by linarith)).2 z hz.symm with h | h
      · refine ⟨finProdFinEquiv (l, 1), y, hy, ?_⟩
        rw [hE, Equiv.symm_apply_apply, hΦ'eq, h]
        rfl
      · refine ⟨finProdFinEquiv (l, 0), y, hy, ?_⟩
        rw [hE, Equiv.symm_apply_apply, hΦ'eq, h]
        rfl
  have hcpt : IsCompact (⋃ j, (E j).Φ '' {x : E3 | 2 < ‖x‖})ᶜ := by
    rw [hcore]
    exact hprop _ hAF.isCompact_core
  have hdec : ∀ j, ∀ i i' : Fin 3, ∀ m : ℕ, m ≤ 2 →
      (fun x : E3 => ‖iteratedFDeriv ℝ m
          (fun y => g'.coeff (E j).Φ y i i' - if i = i' then (1 : ℝ) else 0) x‖)
        =O[Bornology.cobounded E3] fun x : E3 => ‖x‖ ^ (-hAF.q - (m : ℝ)) := by
    intro j
    rw [hE j]
    exact hdecay _ _
  have hint : ∀ j, IntegrableOn
      (fun x : E3 => g'.scalarCurvature ((E j).Φ x) * Real.sqrt (g'.coeff (E j).Φ x).det)
      {x : E3 | 2 < ‖x‖} := by
    intro j
    rw [hE j]
    refine (hAF.integrable_scalarCurvature (finProdFinEquiv.symm j).1).congr_fun ?_
      (measurableSet_lt measurable_const measurable_norm)
    intro y hy
    have hy1 : 1 < ‖y‖ := by
      have h2 : (2 : ℝ) < ‖y‖ := hy
      linarith
    simp only
    rw [hscal, hΦ'eq, hLp _ _ y hy1, hstar _ _ y hy1]
  let af : AsymptoticallyFlat g' :=
    { numEnds := hAF.numEnds * 2
      ends := E
      q := hAF.q
      q_gt := hAF.q_gt
      disjoint := hdisj
      isCompact_core := hcpt
      decay := hdec
      integrable_scalarCurvature := hint }
  have hEk : E (finProdFinEquiv (k, 1)) = Φ' k true := by
    rw [hE, Equiv.symm_apply_apply]
    rfl
  refine ⟨af, finProdFinEquiv (k, 1), rfl, ?_, ?_⟩
  · intro y hy
    show F.proj ((E (finProdFinEquiv (k, 1))).Φ y) = _
    rw [hEk, hΦ'eq]
    exact hLp k true y hy
  · intro y hy
    show g'.coeff (E (finProdFinEquiv (k, 1))).Φ y = _
    rw [hEk]
    exact hstar k true y hy

theorem flip_region_props [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g) (k : Fin hAF.numEnds) (U : Set M)
    (ρ : ℝ) (hUo : IsOpen U) (hUc : IsConnected U)
    (hfar : ∀ y : E3, ρ < ‖y‖ → (hAF.ends k).Φ y ∈ U)
    (hcpt : IsCompact (closure U \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}))
    (hfront : HasMinimalFrontier g U) (F : FlipCover g U) (g' : RiemannianMetric3 F.carrier)
    (hπs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F.proj)
    (hmf : ∀ (f : M → ℝ) (z : F.carrier), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f →
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) (f ∘ F.proj) z = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f (F.proj z))
    (hlmc : ∀ (f : M → ℝ) (z : F.carrier),
      g'.levelMeanCurv (f ∘ F.proj) z = g.levelMeanCurv f (F.proj z))
    (hprop : ∀ K : Set M, IsCompact K → IsCompact (F.proj ⁻¹' K))
    (Φ' : EndChart F.carrier) (hΦ' : ∀ y : E3, 1 < ‖y‖ → F.proj (Φ'.Φ y) = (hAF.ends k).Φ y)
    (hρ : 2 ≤ ρ) :
    ∃ W : Set F.carrier, IsOpen W ∧ IsConnected W ∧ (∀ y : E3, ρ < ‖y‖ → Φ'.Φ y ∈ W) ∧
      IsCompact (closure W \ Φ'.Φ '' {y : E3 | ρ < ‖y‖}) ∧
      HasOneSidedMinimalFrontier g' W ∧ Nonempty (W ≃ₜ U) :=
by
  classical
  obtain ⟨b₀, hb₀⟩ : ∃ b : Bool, F.label (Φ'.Φ ((ρ + 1) • e 0)) = b := ⟨_, rfl⟩
  obtain ⟨W, hW⟩ : ∃ W : Set F.carrier, W = F.proj ⁻¹' U ∩ F.label ⁻¹' {b₀} := ⟨_, rfl⟩
  have hmemW : ∀ x, x ∈ W ↔ F.proj x ∈ U ∧ F.label x = b₀ := by
    intro x
    simp only [hW, Set.mem_inter_iff, Set.mem_preimage, Set.mem_singleton_iff]
  have hπc : Continuous F.proj := F.covering.continuous
  have hinj : ∀ a b : F.carrier, F.proj a = F.proj b → F.label a = F.label b → a = b := by
    intro a b h1 h2
    apply F.bij.1
    show (F.proj a, F.label a) = (F.proj b, F.label b)
    rw [h1, h2]
  have hLc : ∀ w : F.carrier, F.proj w ∈ U → ContinuousAt F.label w := by
    intro w hw
    exact continuousAt_const.congr ((F.label_locConst w hw).mono fun x hx => hx.symm)
  have hLp : ∀ S : Set F.carrier, IsPreconnected S → S ⊆ F.proj ⁻¹' U →
      ∀ a ∈ S, ∀ w ∈ S, F.label w = F.label a := by
    intro S hS hSU a ha w hw
    exact hS.constant (fun x hx => (hLc x (hSU hx)).continuousWithinAt) hw ha
  have hC : ∀ z ∈ closure W, F.proj z ∈ U → F.label z = b₀ := by
    intro z hz hzU
    have hN : F.proj ⁻¹' U ∩ {w | F.label w = F.label z} ∈ 𝓝 z :=
      Filter.inter_mem ((hUo.preimage hπc).mem_nhds hzU) (F.label_locConst z hzU)
    obtain ⟨w, ⟨_, hw1⟩, hw2⟩ := mem_closure_iff_nhds.mp hz _ hN
    have hw3 := ((hmemW w).1 hw2).2
    have hw1' : F.label w = F.label z := hw1
    rw [← hw1']
    exact hw3
  have hpcl : ∀ z ∈ closure W, F.proj z ∈ closure U := by
    intro z hz
    have h1 := image_closure_subset_closure_image hπc ⟨z, hz, rfl⟩
    exact closure_mono (Set.image_subset_iff.mpr fun w hw => ((hmemW w).1 hw).1) h1
  have hWo : IsOpen W := by
    rw [isOpen_iff_mem_nhds]
    intro z hz
    have hz' := (hmemW z).1 hz
    filter_upwards [(hUo.preimage hπc).mem_nhds hz'.1, F.label_locConst z hz'.1] with w hw1 hw2
    exact (hmemW w).2 ⟨hw1, hw2.trans hz'.2⟩
  have hWfr : ∀ x ∈ frontier W, F.proj x ∈ frontier U := by
    intro x hx
    rw [hWo.frontier_eq] at hx
    rw [hUo.frontier_eq]
    exact ⟨hpcl x hx.1, fun hxU => hx.2 ((hmemW x).2 ⟨hxU, hC x hx.1 hxU⟩)⟩
  
  let hmap : W → U := fun w => ⟨F.proj w.1, ((hmemW w.1).1 w.2).1⟩
  have hhinj : Function.Injective hmap := by
    intro a b hab
    apply Subtype.ext
    apply hinj
    · exact congrArg Subtype.val hab
    · rw [((hmemW a.1).1 a.2).2, ((hmemW b.1).1 b.2).2]
  have hhsurj : Function.Surjective hmap := by
    intro x
    obtain ⟨w, hw⟩ := F.bij.2 (x.1, b₀)
    have h1 : F.proj w = x.1 := congrArg Prod.fst hw
    have h2 : F.label w = b₀ := congrArg Prod.snd hw
    have hwW : w ∈ W := (hmemW w).2 ⟨h1 ▸ x.2, h2⟩
    exact ⟨⟨w, hwW⟩, Subtype.ext h1⟩
  have hhcont : Continuous hmap := (hπc.comp continuous_subtype_val).subtype_mk _
  have hhopen : IsOpenMap hmap := by
    intro O hO
    have h1 : IsOpen (Subtype.val '' O) := hWo.isOpenMap_subtype_val O hO
    have h2 : IsOpen (F.proj '' (Subtype.val '' O)) := F.covering.isOpenMap _ h1
    have h3 : hmap '' O = Subtype.val ⁻¹' (F.proj '' (Subtype.val '' O)) := by
      ext x
      simp only [Set.mem_image, Set.mem_preimage]
      constructor
      · rintro ⟨w, hw, rfl⟩
        exact ⟨w.1, ⟨w, hw, rfl⟩, rfl⟩
      · rintro ⟨_, ⟨w, hw, rfl⟩, hx⟩
        exact ⟨w, hw, Subtype.ext hx⟩
    rw [h3]
    exact h2.preimage continuous_subtype_val
  have hhomeo : Nonempty (W ≃ₜ U) :=
    ⟨(Equiv.ofBijective hmap ⟨hhinj, hhsurj⟩).toHomeomorphOfContinuousOpen hhcont hhopen⟩
  have hWc : IsConnected W := by
    obtain ⟨eW⟩ := hhomeo
    haveI : ConnectedSpace U := isConnected_iff_connectedSpace.mp hUc
    haveI : ConnectedSpace W := eW.symm.surjective.connectedSpace eW.symm.continuous
    exact isConnected_iff_connectedSpace.mpr this
  
  have hDconn : IsPreconnected {y : E3 | ρ < ‖y‖} := by
    have hsph : IsConnected (Metric.sphere (0 : E3) 1) := by
      refine isConnected_sphere ?_ 0 (by norm_num)
      rw [← Module.finrank_eq_rank, finrank_euclideanSpace_fin]
      norm_num
    have h2 : IsConnected ((fun q : E3 × ℝ => q.2 • q.1) ''
        (Metric.sphere (0 : E3) 1 ×ˢ Set.Ioi ρ)) :=
      (hsph.prod isConnected_Ioi).image _ (continuous_snd.smul continuous_fst).continuousOn
    convert h2.isPreconnected using 1
    ext y
    constructor
    · intro hy
      have hy' : ρ < ‖y‖ := hy
      have hy0 : ‖y‖ ≠ 0 := by linarith
      refine ⟨(‖y‖⁻¹ • y, ‖y‖), ⟨?_, hy'⟩, ?_⟩
      · show ‖y‖⁻¹ • y ∈ Metric.sphere (0 : E3) 1
        rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm, inv_mul_cancel₀ hy0]
      · show ‖y‖ • (‖y‖⁻¹ • y) = y
        rw [smul_smul, mul_inv_cancel₀ hy0, one_smul]
    · rintro ⟨⟨u, t⟩, ⟨hu, ht⟩, rfl⟩
      have hu' : ‖u‖ = 1 := mem_sphere_zero_iff_norm.mp hu
      have ht' : ρ < t := ht
      show ρ < ‖t • u‖
      rw [norm_smul, hu', mul_one, Real.norm_eq_abs, abs_of_pos (by linarith)]
      exact ht'
  have hystar : ρ < ‖(ρ + 1) • e 0‖ := by
    rw [norm_smul, EuclideanSpace.norm_single, norm_one, mul_one, Real.norm_eq_abs,
      abs_of_pos (by linarith)]
    linarith
  have hDsub : ∀ y : E3, ρ < ‖y‖ → y ∈ Φ'.Φ.source := by
    intro y hy
    rw [Φ'.source_eq]
    show 1 < ‖y‖
    linarith
  have hΦ'cont : ∀ y ∈ Φ'.Φ.source, ContinuousAt Φ'.Φ y := fun y hy =>
    (Φ'.Φ.contMDiffOn.continuousOn).continuousAt (Φ'.Φ.open_source.mem_nhds hy)
  have hyU : ∀ y : E3, ρ < ‖y‖ → F.proj (Φ'.Φ y) ∈ U := by
    intro y hy
    rw [hΦ' y (by linarith)]
    exact hfar y hy
  have hfarW : ∀ y : E3, ρ < ‖y‖ → Φ'.Φ y ∈ W := by
    have hτ : ContinuousOn (fun y => F.label (Φ'.Φ y)) {y : E3 | ρ < ‖y‖} := by
      intro y hy
      exact ((hLc _ (hyU y hy)).comp (hΦ'cont y (hDsub y hy))).continuousWithinAt
    intro y hy
    exact (hmemW _).2 ⟨hyU y hy, (hDconn.constant hτ hy hystar).trans hb₀⟩
  have hcW : IsCompact (closure W \ Φ'.Φ '' {y : E3 | ρ < ‖y‖}) := by
    have hO : IsOpen (Φ'.Φ '' {y : E3 | ρ < ‖y‖}) :=
      Φ'.Φ.toOpenPartialHomeomorph.isOpen_image_of_subset_source
        (isOpen_lt continuous_const continuous_norm) (fun y hy => hDsub y hy)
    refine (hprop _ hcpt).of_isClosed_subset (isClosed_closure.sdiff hO) ?_
    rintro z ⟨hzcl, hzO⟩
    refine ⟨hpcl z hzcl, ?_⟩
    rintro ⟨y, hy, hyz⟩
    apply hzO
    refine ⟨y, hy, ?_⟩
    have hy' : ρ < ‖y‖ := hy
    have hzU : F.proj z ∈ U := hyz ▸ hfar y hy'
    have h1 : F.label z = b₀ := hC z hzcl hzU
    have h2 := (hmemW _).1 (hfarW y hy')
    apply hinj
    · rw [hΦ' y (by linarith), hyz]
    · rw [h2.2, h1]
  
  have hlmcneg : ∀ (f : M → ℝ) (p : M),
      g.levelMeanCurv (fun x => -f x) p = -g.levelMeanCurv f p := by
    intro f p
    have hpd : ∀ (Fn : E3 → ℝ) (a : Fin 3),
        partialDeriv a (fun y => -Fn y) = fun y => -partialDeriv a Fn y := by
      intro Fn a
      funext y
      show fderiv ℝ (fun y => -Fn y) y (e a) = -(fderiv ℝ Fn y (e a))
      have h1 : fderiv ℝ (fun y => -Fn y) y = -fderiv ℝ Fn y := fderiv_neg
      rw [h1]
      rfl
    have hhess : ∀ (G : E3 → Matrix (Fin 3) (Fin 3) ℝ) (Fn : E3 → ℝ) (i j : Fin 3) (y : E3),
        hessLoc G (fun y => -Fn y) i j y = -hessLoc G Fn i j y := by
      intro G Fn i j y
      simp only [hessLoc, hpd, mul_neg, Finset.sum_neg_distrib]
      ring
    simp only [RiemannianMetric3.levelMeanCurv, RiemannianMetric3.gradInner, lapLoc, hhess, hpd,
      mul_neg, neg_mul, neg_neg, Finset.sum_neg_distrib]
    ring
  
  have hfront' : HasOneSidedMinimalFrontier g' W := by
    intro z hz
    have hp : F.proj z ∈ frontier U := hWfr z hz
    obtain ⟨ψ, hzψ, hψ⟩ := F.covering.isLocalHomeomorph z
    have hψx : ∀ w, F.proj w = ψ w := fun w => congrFun hψ w
    have hpt : F.proj z ∈ ψ.target := by
      rw [hψx]
      exact ψ.map_source hzψ
    obtain ⟨V, f, hVψ, hchart⟩ := hfront (F.proj z) hp ψ.target (ψ.open_target.mem_nhds hpt)
    obtain ⟨hVo, hpV, hfs, hdf, hzero, hmc, hpos, hneg, hside⟩ := hchart
    have hVto : IsOpen (ψ.source ∩ F.proj ⁻¹' V) := ψ.open_source.inter (hVo.preimage hπc)
    have hsym : ∀ x ∈ V, ψ.symm x ∈ ψ.source ∧ F.proj (ψ.symm x) = x := by
      intro x hx
      refine ⟨ψ.map_target (hVψ hx), ?_⟩
      rw [hψx]
      exact ψ.right_inv (hVψ hx)
    have hsymV : ∀ x ∈ V, ψ.symm x ∈ ψ.source ∩ F.proj ⁻¹' V := by
      intro x hx
      refine ⟨(hsym x hx).1, ?_⟩
      show F.proj (ψ.symm x) ∈ V
      rw [(hsym x hx).2]
      exact hx
    have hsetlift : ∀ S ⊆ V, ψ.source ∩ F.proj ⁻¹' S = ψ.symm '' S := by
      intro S hS
      ext w
      constructor
      · rintro ⟨hw1, hw2⟩
        refine ⟨F.proj w, hw2, ?_⟩
        rw [hψx]
        exact ψ.left_inv hw1
      · rintro ⟨x, hx, rfl⟩
        refine ⟨(hsym x (hS hx)).1, ?_⟩
        show F.proj (ψ.symm x) ∈ S
        rw [(hsym x (hS hx)).2]
        exact hx
    have hpc : ∀ S ⊆ V, IsPreconnected S → IsPreconnected (ψ.source ∩ F.proj ⁻¹' S) := by
      intro S hS hSc
      rw [hsetlift S hS]
      exact hSc.image _ (ψ.continuousOn_symm.mono (hS.trans hVψ))
    have hsplitpos : ∀ φ : M → ℝ, (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | 0 < (φ ∘ F.proj) x} =
        ψ.source ∩ F.proj ⁻¹' (V ∩ {x | 0 < φ x}) := by
      intro φ
      ext w
      exact ⟨fun ⟨⟨a, b⟩, c⟩ => ⟨a, b, c⟩, fun ⟨a, b, c⟩ => ⟨⟨a, b⟩, c⟩⟩
    have hsplitneg : ∀ φ : M → ℝ, (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | (φ ∘ F.proj) x < 0} =
        ψ.source ∩ F.proj ⁻¹' (V ∩ {x | φ x < 0}) := by
      intro φ
      ext w
      exact ⟨fun ⟨⟨a, b⟩, c⟩ => ⟨a, b, c⟩, fun ⟨a, b, c⟩ => ⟨⟨a, b⟩, c⟩⟩
    have hlift : ∀ φ : M → ℝ, IsMinimalFrontierChart g U V φ (F.proj z) →
        (∀ x ∈ V, φ x = 0 → ∀ O ∈ 𝓝 x, ∃ y ∈ O, 0 < φ y) →
        (ψ.source ∩ F.proj ⁻¹' V) ∩ W =
          (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | 0 < (φ ∘ F.proj) x} →
        IsMinimalFrontierChart g' W (ψ.source ∩ F.proj ⁻¹' V) (φ ∘ F.proj) z := by
      intro φ hφ hφsc hφside
      obtain ⟨-, -, hφs, hφd, hφz, hφm, hφp, hφn, -⟩ := hφ
      refine ⟨hVto, ⟨hzψ, hpV⟩, hφs.comp hπs, ?_, ?_, ?_, ?_, ?_, Or.inl hφside⟩
      · intro x hx
        rw [hmf φ x hφs]
        exact hφd _ hx.2
      · ext x
        constructor
        · rintro ⟨hxV, hxfr⟩
          exact ⟨hxV, ((Set.ext_iff.mp hφz _).1 ⟨hxV.2, hWfr x hxfr⟩).2⟩
        · rintro ⟨hxV, hx0⟩
          refine ⟨hxV, ?_⟩
          have hx0' : φ (F.proj x) = 0 := hx0
          have hfrU : F.proj x ∈ frontier U := ((Set.ext_iff.mp hφz _).2 ⟨hxV.2, hx0'⟩).2
          rw [hUo.frontier_eq] at hfrU
          rw [hWo.frontier_eq]
          refine ⟨?_, fun hxW => hfrU.2 ((hmemW x).1 hxW).1⟩
          rw [mem_closure_iff_nhds]
          intro N hN
          have hN' : N ∩ (ψ.source ∩ F.proj ⁻¹' V) ∈ 𝓝 x :=
            Filter.inter_mem hN (hVto.mem_nhds hxV)
          have himg := ψ.image_mem_nhds hxV.1 hN'
          rw [← hψx x] at himg
          obtain ⟨y, hyO, hypos⟩ := hφsc (F.proj x) hxV.2 hx0' _ himg
          obtain ⟨w, hw, rfl⟩ := hyO
          have hwpos : 0 < (φ ∘ F.proj) w := by
            show 0 < φ (F.proj w)
            rw [hψx]
            exact hypos
          exact ⟨w, hw.1, ((Set.ext_iff.mp hφside w).2 ⟨hw.2, hwpos⟩).2⟩
      · intro x hx h0
        rw [hlmc]
        exact hφm _ hx.2 h0
      · rw [hsplitpos φ]
        exact hpc _ Set.inter_subset_left hφp
      · rw [hsplitneg φ]
        exact hpc _ Set.inter_subset_left hφn
    obtain ⟨w₀, hw₀V, hw₀W⟩ :=
      mem_closure_iff_nhds.mp (frontier_subset_closure hz) _ (hVto.mem_nhds ⟨hzψ, hpV⟩)
    have hw₀ := (hmemW w₀).1 hw₀W
    have hw₀f : F.proj w₀ ∈ V ∩ U := ⟨hw₀V.2, hw₀.1⟩
    have hsc : ∀ x ∈ V, f x = 0 → ∀ O ∈ 𝓝 x, (∃ y ∈ O, 0 < f y) ∧ (∃ y ∈ O, f y < 0) := by
      intro x hxV hx O hO
      have hdfx := hdf x hxV
      have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x := by
        by_contra h
        exact hdfx (mfderiv_zero_of_not_mdifferentiableAt h)
      have hmfx : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x =
          fderiv ℝ (f ∘ (extChartAt 𝓘(ℝ, E3) x).symm) (extChartAt 𝓘(ℝ, E3) x x) := by
        rw [hmd.mfderiv, ModelWithCorners.range_eq_univ, fderivWithin_univ]
        congr 1
      have hc : ContinuousAt (extChartAt 𝓘(ℝ, E3) x).symm (extChartAt 𝓘(ℝ, E3) x x) :=
        continuousAt_extChartAt_symm x
      have hinv : (extChartAt 𝓘(ℝ, E3) x).symm (extChartAt 𝓘(ℝ, E3) x x) = x :=
        extChartAt_to_inv x
      refine ⟨?_, ?_⟩
      · by_contra h
        push_neg at h
        have hmax : IsLocalMax f ((extChartAt 𝓘(ℝ, E3) x).symm (extChartAt 𝓘(ℝ, E3) x x)) := by
          rw [hinv]
          exact Filter.eventually_of_mem hO (fun z hz => (h z hz).trans_eq hx.symm)
        exact hdfx (hmfx.trans (hmax.comp_continuous hc).fderiv_eq_zero)
      · by_contra h
        push_neg at h
        have hmin : IsLocalMin f ((extChartAt 𝓘(ℝ, E3) x).symm (extChartAt 𝓘(ℝ, E3) x x)) := by
          rw [hinv]
          exact Filter.eventually_of_mem hO (fun z hz => hx.trans_le (h z hz))
        exact hdfx (hmfx.trans (hmin.comp_continuous hc).fderiv_eq_zero)
    have hSp_pc : IsPreconnected ((ψ.source ∩ F.proj ⁻¹' V) ∩ {x | 0 < (f ∘ F.proj) x}) := by
      rw [hsplitpos f]
      exact hpc _ Set.inter_subset_left hpos
    have hSn_pc : IsPreconnected ((ψ.source ∩ F.proj ⁻¹' V) ∩ {x | (f ∘ F.proj) x < 0}) := by
      rw [hsplitneg f]
      exact hpc _ Set.inter_subset_left hneg
    have hposU : ∀ x ∈ V, 0 < f x → x ∈ U := by
      intro x hx hfx
      rcases hside with h1 | h2
      · exact ((Set.ext_iff.mp h1 x).2 ⟨hx, hfx⟩).2
      · exact ((Set.ext_iff.mp h2 x).2 ⟨hx, ne_of_gt hfx⟩).2
    have hSpU : (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | 0 < (f ∘ F.proj) x} ⊆ F.proj ⁻¹' U :=
      fun w hw => hposU _ hw.1.2 hw.2
    rcases hside with h1 | h2
    · 
      have hw₀p : 0 < f (F.proj w₀) := ((Set.ext_iff.mp h1 _).1 hw₀f).2
      have hs1 : (ψ.source ∩ F.proj ⁻¹' V) ∩ W =
          (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | 0 < (f ∘ F.proj) x} := by
        ext w
        constructor
        · rintro ⟨hwV, hwW⟩
          exact ⟨hwV, ((Set.ext_iff.mp h1 _).1 ⟨hwV.2, ((hmemW w).1 hwW).1⟩).2⟩
        · intro hw
          refine ⟨hw.1, (hmemW w).2 ⟨hSpU hw, ?_⟩⟩
          rw [hLp _ hSp_pc hSpU w₀ ⟨hw₀V, hw₀p⟩ w hw]
          exact hw₀.2
      exact ⟨_, _, hlift f ⟨hVo, hpV, hfs, hdf, hzero, hmc, hpos, hneg, Or.inl h1⟩
        (fun x hx h0 O hO => (hsc x hx h0 O hO).1) hs1, hs1⟩
    · 
      have hfz : f (F.proj z) = 0 := ((Set.ext_iff.mp hzero _).1 ⟨hpV, hp⟩).2
      obtain ⟨⟨xp, hxpV, hxp⟩, ⟨xn, hxnV, hxn⟩⟩ := hsc _ hpV hfz V (hVo.mem_nhds hpV)
      have hinjon : Set.InjOn F.proj (ψ.source ∩ F.proj ⁻¹' V) := by
        intro a ha b hb hab
        exact ψ.injOn ha.1 hb.1 (by rw [← hψx a, ← hψx b]; exact hab)
      have himV : F.proj '' (ψ.source ∩ F.proj ⁻¹' V) = V := by
        ext x
        constructor
        · rintro ⟨w, hw, rfl⟩
          exact hw.2
        · intro hx
          exact ⟨ψ.symm x, hsymV x hx, (hsym x hx).2⟩
      have hap : ψ.symm xp ∈ (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | 0 < (f ∘ F.proj) x} := by
        refine ⟨hsymV xp hxpV, ?_⟩
        show 0 < f (F.proj (ψ.symm xp))
        rw [(hsym xp hxpV).2]
        exact hxp
      have hbn : ψ.symm xn ∈ (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | (f ∘ F.proj) x < 0} := by
        refine ⟨hsymV xn hxnV, ?_⟩
        show f (F.proj (ψ.symm xn)) < 0
        rw [(hsym xn hxnV).2]
        exact hxn
      have hab : F.label (ψ.symm xp) ≠ F.label (ψ.symm xn) := by
        refine F.label_flip _ f (F.proj z) _ _ hVto hinjon hp ?_ ?_ hap.1 hbn.1 hap.2 hbn.2
        · rw [himV]
          exact ⟨hVo, hpV, hfs, hdf, hzero, hmc, hpos, hneg, Or.inr h2⟩
        · rw [himV]
          exact h2
      have hSnU : (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | (f ∘ F.proj) x < 0} ⊆ F.proj ⁻¹' U :=
        fun w hw => ((Set.ext_iff.mp h2 _).2 ⟨hw.1.2, ne_of_lt hw.2⟩).2
      have hlp : ∀ w ∈ (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | 0 < (f ∘ F.proj) x},
          F.label w = F.label (ψ.symm xp) := fun w hw => hLp _ hSp_pc hSpU _ hap w hw
      have hln : ∀ w ∈ (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | (f ∘ F.proj) x < 0},
          F.label w = F.label (ψ.symm xn) := fun w hw => hLp _ hSn_pc hSnU _ hbn w hw
      have hw₀ne : f (F.proj w₀) ≠ 0 := ((Set.ext_iff.mp h2 _).1 hw₀f).2
      rcases lt_or_gt_of_ne hw₀ne with hlt | hgt
      · 
        have hb : F.label (ψ.symm xn) = b₀ := (hln w₀ ⟨hw₀V, hlt⟩).symm.trans hw₀.2
        have hs1 : (ψ.source ∩ F.proj ⁻¹' V) ∩ W =
            (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | 0 < ((fun x => -f x) ∘ F.proj) x} := by
          ext w
          constructor
          · rintro ⟨hwV, hwW⟩
            have hwW' := (hmemW w).1 hwW
            have hne : f (F.proj w) ≠ 0 := ((Set.ext_iff.mp h2 _).1 ⟨hwV.2, hwW'.1⟩).2
            refine ⟨hwV, ?_⟩
            show 0 < -f (F.proj w)
            rcases lt_or_gt_of_ne hne with h | h
            · linarith
            · exfalso
              apply hab
              rw [← hlp w ⟨hwV, h⟩, hwW'.2, ← hb]
          · rintro ⟨hwV, hwpos⟩
            have hwpos' : 0 < -f (F.proj w) := hwpos
            have hwn : w ∈ (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | (f ∘ F.proj) x < 0} :=
              ⟨hwV, show f (F.proj w) < 0 by linarith⟩
            exact ⟨hwV, (hmemW w).2 ⟨hSnU hwn, (hln w hwn).trans hb⟩⟩
        have hnegchart : IsMinimalFrontierChart g U V (fun x => -f x) (F.proj z) := by
          refine ⟨hVo, hpV, hfs.neg, ?_, ?_, ?_, ?_, ?_, Or.inr ?_⟩
          · intro x hx
            have hm : mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) (fun x => -f x) x =
                -mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f x := mfderiv_neg f x
            rw [hm]
            exact neg_ne_zero.mpr (hdf x hx)
          · rw [hzero]
            ext x
            simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_singleton_iff, neg_eq_zero]
          · intro x hx h0
            have h0' : f x = 0 := neg_eq_zero.mp h0
            rw [hlmcneg, hmc x hx h0', neg_zero]
          · have he : V ∩ {x | 0 < -f x} = V ∩ {x | f x < 0} := by
              ext x
              simp only [Set.mem_inter_iff, Set.mem_setOf_eq, neg_pos]
            rw [he]
            exact hneg
          · have he : V ∩ {x | -f x < 0} = V ∩ {x | 0 < f x} := by
              ext x
              simp only [Set.mem_inter_iff, Set.mem_setOf_eq, neg_lt_zero]
            rw [he]
            exact hpos
          · rw [h2]
            ext x
            simp only [Set.mem_inter_iff, Set.mem_setOf_eq, ne_eq, neg_eq_zero]
        refine ⟨_, _, hlift _ hnegchart ?_ hs1, hs1⟩
        intro x hx h0 O hO
        obtain ⟨y, hy, hy'⟩ := (hsc x hx (neg_eq_zero.mp h0) O hO).2
        exact ⟨y, hy, by linarith⟩
      · 
        have hb : F.label (ψ.symm xp) = b₀ := (hlp w₀ ⟨hw₀V, hgt⟩).symm.trans hw₀.2
        have hs1 : (ψ.source ∩ F.proj ⁻¹' V) ∩ W =
            (ψ.source ∩ F.proj ⁻¹' V) ∩ {x | 0 < (f ∘ F.proj) x} := by
          ext w
          constructor
          · rintro ⟨hwV, hwW⟩
            have hwW' := (hmemW w).1 hwW
            have hne : f (F.proj w) ≠ 0 := ((Set.ext_iff.mp h2 _).1 ⟨hwV.2, hwW'.1⟩).2
            refine ⟨hwV, ?_⟩
            rcases lt_or_gt_of_ne hne with h | h
            · exfalso
              apply hab
              rw [hb, ← hwW'.2, hln w ⟨hwV, h⟩]
            · exact h
          · intro hw
            exact ⟨hw.1, (hmemW w).2 ⟨hSpU hw, (hlp w hw).trans hb⟩⟩
        exact ⟨_, _, hlift f ⟨hVo, hpV, hfs, hdf, hzero, hmc, hpos, hneg, Or.inr h2⟩
          (fun x hx h0 O hO => (hsc x hx h0 O hO).1) hs1, hs1⟩
  exact ⟨W, hWo, hWc, hfarW, hcW, hfront', hhomeo⟩

theorem region_double_cover [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (hAF : AsymptoticallyFlat g)
    (hR : ∀ p : M, 0 ≤ g.scalarCurvature p) (k : Fin hAF.numEnds) (U : Set M) (ρ : ℝ)
    (hUo : IsOpen U) (hUc : IsConnected U) (hρ : 2 ≤ ρ)
    (hfar : ∀ y : E3, ρ < ‖y‖ → (hAF.ends k).Φ y ∈ U)
    (hcpt : IsCompact (closure U \ (hAF.ends k).Φ '' {y : E3 | ρ < ‖y‖}))
    (hfront : HasMinimalFrontier g U) :
    Nonempty (RegionCover g hAF k U) :=
by
  obtain ⟨T⟩ := flip_cover_top_exists g U hUo hfront
  
  have hM : ∀ x x' : M, ContDiffOn ℝ ∞ ((chartAt E3 x).symm ≫ₕ chartAt E3 x')
      ((chartAt E3 x).symm ≫ₕ chartAt E3 x').source := by
    intro x x'
    have h := contDiffOn_ext_coord_change (I := 𝓘(ℝ, E3)) (n := ∞) x' x
    have hs : ((extChartAt 𝓘(ℝ, E3) x).symm ≫ extChartAt 𝓘(ℝ, E3) x').source =
        ((chartAt E3 x).symm ≫ₕ chartAt E3 x').source := by
      ext u
      simp [PartialEquiv.trans_source, OpenPartialHomeomorph.trans_source, extChartAt_target,
        extChartAt_source, extChartAt_coe_symm]
    rw [hs] at h
    refine h.congr ?_
    intro u _
    simp [extChartAt_coe, extChartAt_coe_symm]
  obtain ⟨F⟩ : Nonempty (FlipCover g U) := by
    choose e he hpe using T.covering.isLocalHomeomorph
    letI cs : ChartedSpace E3 T.carrier :=
      { atlas := Set.range (fun z => (e z).trans (chartAt E3 (T.proj z)))
        chartAt := fun z => (e z).trans (chartAt E3 (T.proj z))
        mem_chart_source := fun z => by
          rw [OpenPartialHomeomorph.trans_source]
          refine ⟨he z, ?_⟩
          show e z z ∈ (chartAt E3 (T.proj z)).source
          rw [← hpe z]
          exact mem_chart_source E3 (T.proj z)
        chart_mem_atlas := fun z => ⟨z, rfl⟩ }
    have hsrc : ∀ z w : T.carrier, w ∈ (chartAt E3 z).source →
        T.proj w ∈ (chartAt E3 (T.proj z)).source := by
      intro z w hw
      have hw' : w ∈ ((e z).trans (chartAt E3 (T.proj z))).source := hw
      rw [OpenPartialHomeomorph.trans_source] at hw'
      have h2 := hw'.2
      rw [Set.mem_preimage, ← hpe z] at h2
      exact h2
    have heq : ∀ z w : T.carrier, w ∈ (chartAt E3 z).source →
        chartAt E3 z w = chartAt E3 (T.proj z) (T.proj w) := by
      intro z w _
      show ((e z).trans (chartAt E3 (T.proj z))) w = _
      rw [OpenPartialHomeomorph.trans_apply, ← hpe z]
    haveI : IsManifold 𝓘(ℝ, E3) ∞ T.carrier := by
      apply isManifold_of_contDiffOn
      intro A B hA hB
      obtain ⟨z, rfl⟩ := hA
      obtain ⟨z', rfl⟩ := hB
      simp only [modelWithCornersSelf_coe, modelWithCornersSelf_coe_symm, Function.id_comp,
        Function.comp_id, Set.preimage_id, Set.range_id, Set.inter_univ]
      have key : ∀ v ∈ (e z).target, e z' ((e z).symm v) = v := by
        intro v hv
        rw [← hpe z', hpe z, (e z).right_inv hv]
      refine ContDiffOn.congr ((hM (T.proj z) (T.proj z')).mono ?_) ?_
      · intro u hu
        simp only [OpenPartialHomeomorph.trans_source, OpenPartialHomeomorph.symm_source,
          OpenPartialHomeomorph.trans_target, OpenPartialHomeomorph.trans_symm_eq_symm_trans_symm,
          OpenPartialHomeomorph.coe_trans, OpenPartialHomeomorph.coe_trans_symm,
          Set.mem_inter_iff, Set.mem_preimage, Function.comp_apply] at hu ⊢
        obtain ⟨⟨hu1, hu2⟩, _, hu4⟩ := hu
        rw [key _ hu2] at hu4
        exact ⟨hu1, hu4⟩
      · intro u hu
        simp only [OpenPartialHomeomorph.trans_source, OpenPartialHomeomorph.symm_source,
          OpenPartialHomeomorph.trans_target, OpenPartialHomeomorph.trans_symm_eq_symm_trans_symm,
          Set.mem_inter_iff, Set.mem_preimage, OpenPartialHomeomorph.coe_trans_symm,
          Function.comp_apply] at hu
        simp only [OpenPartialHomeomorph.coe_trans, OpenPartialHomeomorph.coe_trans_symm,
          OpenPartialHomeomorph.trans_symm_eq_symm_trans_symm, Function.comp_apply]
        rw [key _ hu.1.2]
    exact ⟨{ carrier := T.carrier
             proj := T.proj
             label := T.label
             bij := T.bij
             covering := T.covering
             label_locConst := T.label_locConst
             label_flip := T.label_flip
             chart_source := hsrc
             chart_eq := heq }⟩
  
  have hloc : ∀ z : F.carrier, ∀ u ∈ (chartAt E3 z).target,
      F.proj ((chartAt E3 z).symm u) = (chartAt E3 (F.proj z)).symm u := by
    intro z u hu
    have hw := (chartAt E3 z).map_target hu
    have h1 := F.chart_eq z _ hw
    rw [(chartAt E3 z).right_inv hu] at h1
    have h2 := congrArg (chartAt E3 (F.proj z)).symm h1
    rw [(chartAt E3 (F.proj z)).left_inv (F.chart_source z _ hw)] at h2
    exact h2.symm
  have htgt : ∀ z : F.carrier, ∀ u ∈ (chartAt E3 z).target,
      u ∈ (chartAt E3 (F.proj z)).target := by
    intro z u hu
    have hw := (chartAt E3 z).map_target hu
    have h1 := F.chart_eq z _ hw
    rw [(chartAt E3 z).right_inv hu] at h1
    rw [h1]
    exact (chartAt E3 (F.proj z)).map_source (F.chart_source z _ hw)
  have hcont : Continuous F.proj := F.covering.continuous
  have hwr : ∀ z : F.carrier, writtenInExtChartAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) z F.proj
      =ᶠ[𝓝 (extChartAt 𝓘(ℝ, E3) z z)] id := by
    intro z
    have hz : extChartAt 𝓘(ℝ, E3) z z = chartAt E3 z z := by simp
    rw [hz]
    filter_upwards [(chartAt E3 z).open_target.mem_nhds (mem_chart_target E3 z)] with u hu
    simp only [writtenInExtChartAt, extChartAt_coe, extChartAt_coe_symm, modelWithCornersSelf_coe,
      modelWithCornersSelf_coe_symm, Function.comp_apply, id_eq]
    rw [hloc z u hu, (chartAt E3 (F.proj z)).right_inv (htgt z u hu)]
  have hπs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ F.proj := by
    intro z
    rw [contMDiffAt_iff]
    refine ⟨hcont.continuousAt, ?_⟩
    rw [ModelWithCorners.range_eq_univ, contDiffWithinAt_univ]
    exact contDiffAt_id.congr_of_eventuallyEq (hwr z)
  have hmd : ∀ z : F.carrier, MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) F.proj z :=
    fun z => hπs.mdifferentiableAt (by simp)
  have hmid : ∀ z : F.carrier,
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) F.proj z = ContinuousLinearMap.id ℝ E3 := by
    intro z
    rw [(hmd z).mfderiv, ModelWithCorners.range_eq_univ, fderivWithin_univ, (hwr z).fderiv_eq,
      fderiv_id]
  have hmf : ∀ (f : M → ℝ) (z : F.carrier), ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f →
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) (f ∘ F.proj) z = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f (F.proj z) := by
    intro f z hf
    rw [mfderiv_comp z (hf.mdifferentiableAt (by simp)) (hmd z), hmid z]
    exact ContinuousLinearMap.comp_id _
  have hpull : ∀ (ψ : E3 → F.carrier) (φ : E3 → M) (y : E3),
      MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ψ y → (F.proj ∘ ψ =ᶠ[𝓝 y] φ) →
        F.proj (ψ y) = φ y ∧
          mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) ψ y = mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, E3) φ y := by
    intro ψ φ y hψ hev
    refine ⟨hev.eq_of_nhds, ?_⟩
    rw [← hev.mfderiv_eq, mfderiv_comp y (hmd (ψ y)) hψ, hmid]
    exact (ContinuousLinearMap.id_comp _).symm
  obtain ⟨g', hg'⟩ : ∃ g' : RiemannianMetric3 F.carrier, ∀ z, g'.g z = g.g (F.proj z) := by
    refine ⟨{ g := fun z => g.g (F.proj z)
              symm := fun z v w => g.symm _ v w
              posDef := fun z v hv => g.posDef _ v hv
              smooth := ?_ }, fun _ => rfl⟩
    intro x₀ i j
    refine ((g.smooth (F.proj x₀) i j).mono (htgt x₀)).congr ?_
    intro u hu
    obtain ⟨hP, hD⟩ := hpull (chartAt E3 x₀).symm (chartAt E3 (F.proj x₀)).symm u
      (mdifferentiableAt_atlas_symm (chart_mem_atlas E3 x₀) hu)
      (by
        filter_upwards [(chartAt E3 x₀).open_target.mem_nhds hu] with u' hu'
        exact hloc x₀ u' hu')
    simp only [coeffMatrix]
    rw [hP, hD]
    rfl
  have hcoeff : ∀ (ψ : E3 → F.carrier) (φ : E3 → M) (y : E3),
      MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ψ y → (F.proj ∘ ψ =ᶠ[𝓝 y] φ) →
        g'.coeff ψ y = g.coeff φ y := by
    intro ψ φ y hψ hev
    obtain ⟨hP, hD⟩ := hpull ψ φ y hψ hev
    funext i j
    simp only [RiemannianMetric3.coeff, coeffMatrix, hg']
    rw [hP, hD]
    rfl
  
  have hgerm : ∀ (G₁ G₂ : E3 → Matrix (Fin 3) (Fin 3) ℝ) (O : Set E3), IsOpen O →
      (∀ u ∈ O, G₁ u = G₂ u) → ∀ y ∈ O,
        scalarCurvatureLocal G₁ y = scalarCurvatureLocal G₂ y ∧
        ∀ φ₁ φ₂ : E3 → ℝ, (∀ u ∈ O, φ₁ u = φ₂ u) →
          lapLoc G₁ φ₁ y = lapLoc G₂ φ₂ y ∧
          (∀ i j : Fin 3, hessLoc G₁ φ₁ i j y = hessLoc G₂ φ₂ i j y) ∧
          (∀ a : Fin 3, partialDeriv a φ₁ y = partialDeriv a φ₂ y) := by
    intro G₁ G₂ O hO hG y hy
    have hpd : ∀ (φ₁ φ₂ : E3 → ℝ), (∀ u ∈ O, φ₁ u = φ₂ u) →
        ∀ u ∈ O, ∀ c : Fin 3, partialDeriv c φ₁ u = partialDeriv c φ₂ u := by
      intro φ₁ φ₂ h u hu c
      have hev : φ₁ =ᶠ[𝓝 u] φ₂ := Filter.eventually_of_mem (hO.mem_nhds hu) h
      unfold partialDeriv
      rw [hev.fderiv_eq]
    have hpdG : ∀ u ∈ O, ∀ a b c : Fin 3,
        partialDeriv c (fun z => G₁ z a b) u = partialDeriv c (fun z => G₂ z a b) u :=
      fun u hu a b c => hpd _ _ (fun v hv => by rw [hG v hv]) u hu c
    have hchr : ∀ k i j : Fin 3, ∀ u ∈ O, christoffel G₁ k i j u = christoffel G₂ k i j u := by
      intro k i j u hu
      simp only [christoffel, hG u hu, hpdG u hu]
    have hchry : ∀ k i j : Fin 3, christoffel G₁ k i j y = christoffel G₂ k i j y :=
      fun k i j => hchr k i j y hy
    have hchrd : ∀ k i j c : Fin 3,
        partialDeriv c (christoffel G₁ k i j) y = partialDeriv c (christoffel G₂ k i j) y :=
      fun k i j c => hpd _ _ (hchr k i j) y hy c
    have hGy : G₁ y = G₂ y := hG y hy
    refine ⟨?_, ?_⟩
    · simp only [scalarCurvatureLocal, ricci, hGy, hchrd, hchry]
    · intro φ₁ φ₂ hφ
      have h1 : ∀ a : Fin 3, partialDeriv a φ₁ y = partialDeriv a φ₂ y :=
        fun a => hpd _ _ hφ y hy a
      have h2 : ∀ a b : Fin 3,
          partialDeriv a (partialDeriv b φ₁) y = partialDeriv a (partialDeriv b φ₂) y :=
        fun a b => hpd _ _ (fun u hu => hpd _ _ hφ u hu b) y hy a
      have h3 : ∀ i j : Fin 3, hessLoc G₁ φ₁ i j y = hessLoc G₂ φ₂ i j y := by
        intro i j
        simp only [hessLoc, h1, h2, hchry]
      refine ⟨?_, h3, h1⟩
      simp only [lapLoc, h3, hGy]
  have hG : ∀ z : F.carrier, ∀ u ∈ (chartAt E3 z).target,
      g'.coeff (chartAt E3 z).symm u = g.coeff (chartAt E3 (F.proj z)).symm u := by
    intro z u hu
    apply hcoeff
    · exact mdifferentiableAt_atlas_symm (chart_mem_atlas E3 z) hu
    · filter_upwards [(chartAt E3 z).open_target.mem_nhds hu] with u' hu'
      exact hloc z u' hu'
  have hy : ∀ z : F.carrier, chartAt E3 z z = chartAt E3 (F.proj z) (F.proj z) :=
    fun z => F.chart_eq z z (mem_chart_source E3 z)
  have hscal : ∀ z : F.carrier, g'.scalarCurvature z = g.scalarCurvature (F.proj z) := by
    intro z
    have h := (hgerm _ _ _ (chartAt E3 z).open_target (hG z) _ (mem_chart_target E3 z)).1
    simp only [RiemannianMetric3.scalarCurvature]
    rw [h, hy z]
  have hlmc : ∀ (f : M → ℝ) (z : F.carrier),
      g'.levelMeanCurv (f ∘ F.proj) z = g.levelMeanCurv f (F.proj z) := by
    intro f z
    have hφ : ∀ u ∈ (chartAt E3 z).target,
        (fun y => (f ∘ F.proj) ((chartAt E3 z).symm y)) u =
          (fun y => f ((chartAt E3 (F.proj z)).symm y)) u := by
      intro u hu
      simp only [Function.comp, hloc z u hu]
    obtain ⟨_, hrest⟩ :=
      hgerm _ _ _ (chartAt E3 z).open_target (hG z) _ (mem_chart_target E3 z)
    obtain ⟨hlap, hhess, hpa⟩ := hrest _ _ hφ
    have hGy := hG z _ (mem_chart_target E3 z)
    rw [hy z] at hlap hhess hpa hGy
    simp only [RiemannianMetric3.levelMeanCurv, RiemannianMetric3.gradInner]
    rw [hy z]
    simp only [hlap, hhess, hpa, hGy]
  have hfin : ∀ x : M, (F.proj ⁻¹' {x}).Finite := by
    intro x
    refine Set.Finite.of_injOn (f := F.label) (t := Set.univ)
      (fun _ _ => Set.mem_univ _) ?_ Set.finite_univ
    intro a ha b hb hab
    apply F.bij.1
    have ha' : F.proj a = x := ha
    have hb' : F.proj b = x := hb
    show (F.proj a, F.label a) = (F.proj b, F.label b)
    rw [ha', hb', hab]
  haveI : LocallyCompactSpace M := ChartedSpace.locallyCompactSpace E3 M
  
  have hlocC : ∀ y : M, ∃ C : Set M, IsCompact C ∧ y ∈ interior C ∧
      IsCompact (F.proj ⁻¹' C) := by
    intro y
    obtain ⟨_, V, hyV, hVo, _, H, hH⟩ := F.covering y
    obtain ⟨C, hC, hyC, hCV⟩ := exists_compact_subset hVo hyV
    haveI : Finite (F.proj ⁻¹' {y}) := (hfin y).to_subtype
    refine ⟨C, hC, hyC, ?_⟩
    have hC' : IsCompact ((Subtype.val : V → M) ⁻¹' C) := by
      rw [Subtype.isCompact_iff, Subtype.image_preimage_coe, Set.inter_eq_right.mpr hCV]
      exact hC
    have hK2 : IsCompact ((Subtype.val ∘ H.symm) ''
        (((Subtype.val : V → M) ⁻¹' C) ×ˢ (Set.univ : Set (F.proj ⁻¹' {y})))) :=
      (hC'.prod isCompact_univ).image (continuous_subtype_val.comp H.symm.continuous)
    refine hK2.of_isClosed_subset (hC.isClosed.preimage hcont) ?_
    intro x hx
    have hxV : F.proj x ∈ V := hCV hx
    refine ⟨H ⟨x, hxV⟩, ⟨?_, Set.mem_univ _⟩, ?_⟩
    · show ((H ⟨x, hxV⟩).1 : M) ∈ C
      rw [hH]
      exact hx
    · simp
  have hprop : ∀ K : Set M, IsCompact K → IsCompact (F.proj ⁻¹' K) := by
    intro K hK
    choose C _ hyC hCp using hlocC
    obtain ⟨t, ht⟩ := hK.elim_finite_subcover (fun y => interior (C y))
      (fun _ => isOpen_interior) (fun y _ => Set.mem_iUnion.2 ⟨y, hyC y⟩)
    refine (t.isCompact_biUnion (fun y _ => hCp y)).of_isClosed_subset
      (hK.isClosed.preimage hcont) ?_
    intro x hx
    obtain ⟨y, hy', hxy⟩ := Set.mem_iUnion₂.1 (ht hx)
    exact Set.mem_iUnion₂.2 ⟨y, hy', (interior_subset hxy : F.proj x ∈ C y)⟩
  obtain ⟨af, k', hq, hlift, hcoeffk⟩ :=
    flip_cover_asymptotically_flat g hAF k U F g' hπs hcoeff hscal hprop
  obtain ⟨W, hWo, hWc, hWfar, hWcpt, hWmin, hWh⟩ :=
    flip_region_props g hAF k U ρ hUo hUc hfar hcpt hfront F g' hπs hmf hlmc hprop
      (af.ends k') hlift hρ
  have hscal' : ∀ z : F.carrier, 0 ≤ g'.scalarCurvature z := by
    intro z
    rw [hscal z]
    exact hR (F.proj z)
  exact ⟨RegionCover.mk F.carrier g' af k' hq hcoeffk hscal' W ρ hWo hWc hρ hWfar hWcpt hWmin
    hWh⟩

theorem levelMeanCurv_alg_combination {ι : Type*} (J : Finset ι) (P : Matrix (Fin 3) (Fin 3) ℝ)
    (hP : ∀ i j, P i j = P j i) (ν : Fin 3 → ℝ) (lam c : ι → ℝ) (w : ι → Fin 3 → ℝ)
    (H : ι → Fin 3 → Fin 3 → ℝ) (Λ : ℝ) (Hβ : Fin 3 → Fin 3 → ℝ)
    (hlam : ∀ m ∈ J, 0 < lam m) (hΛdef : Λ = ∑ m ∈ J, c m * lam m) (hΛ : 0 < Λ)
    (hHβ : ∀ i j, Hβ i j = ∑ m ∈ J, (c m * H m i j + w m i * (lam m * ν j)
      + lam m * ν i * w m j))
    (hH : ∀ m ∈ J, (∑ i : Fin 3, ∑ j : Fin 3, P i j * H m i j) /
        Real.sqrt (∑ i : Fin 3, ∑ j : Fin 3, P i j * (lam m * ν i) * (lam m * ν j)) -
      (∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
        P i a * (lam m * ν a) * (P j b * (lam m * ν b)) * H m i j) /
        Real.sqrt (∑ i : Fin 3, ∑ j : Fin 3, P i j * (lam m * ν i) * (lam m * ν j)) ^ 3 = 0) :
    (∑ i : Fin 3, ∑ j : Fin 3, P i j * Hβ i j) /
        Real.sqrt (∑ i : Fin 3, ∑ j : Fin 3, P i j * (Λ * ν i) * (Λ * ν j)) -
      (∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
        P i a * (Λ * ν a) * (P j b * (Λ * ν b)) * Hβ i j) /
        Real.sqrt (∑ i : Fin 3, ∑ j : Fin 3, P i j * (Λ * ν i) * (Λ * ν j)) ^ 3 = 0 :=
by
  obtain ⟨Q, hQdef⟩ : ∃ Q : ℝ, Q = ∑ i : Fin 3, ∑ j : Fin 3, P i j * ν i * ν j := ⟨_, rfl⟩
  have hQt : ∀ t : ℝ,
      ∑ i : Fin 3, ∑ j : Fin 3, P i j * (t * ν i) * (t * ν j) = t ^ 2 * Q := by
    intro t
    rw [hQdef]
    simp only [Fin.sum_univ_three]
    ring
  have hNt : ∀ (t : ℝ) (K : Fin 3 → Fin 3 → ℝ),
      ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
        P i a * (t * ν a) * (P j b * (t * ν b)) * K i j =
      t ^ 2 * ∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
        P i a * ν a * (P j b * ν b) * K i j := by
    intro t K
    simp only [Fin.sum_univ_three]
    ring
  rcases le_or_gt Q 0 with hQ | hQ
  · 
    have h0 : Real.sqrt (Λ ^ 2 * Q) = 0 :=
      Real.sqrt_eq_zero'.mpr (mul_nonpos_of_nonneg_of_nonpos (sq_nonneg Λ) hQ)
    rw [hQt Λ, h0]
    simp
  · 
    have hs : 0 < Real.sqrt Q := Real.sqrt_pos.mpr hQ
    have hs2 : Real.sqrt Q ^ 2 = Q := Real.sq_sqrt hQ.le
    have key : ∀ t : ℝ, 0 < t → ∀ K : Fin 3 → Fin 3 → ℝ,
        ((∑ i : Fin 3, ∑ j : Fin 3, P i j * K i j) /
          Real.sqrt (∑ i : Fin 3, ∑ j : Fin 3, P i j * (t * ν i) * (t * ν j)) -
        (∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
          P i a * (t * ν a) * (P j b * (t * ν b)) * K i j) /
          Real.sqrt (∑ i : Fin 3, ∑ j : Fin 3, P i j * (t * ν i) * (t * ν j)) ^ 3 = 0) ↔
        Q * (∑ i : Fin 3, ∑ j : Fin 3, P i j * K i j) -
          (∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
            P i a * ν a * (P j b * ν b) * K i j) = 0 := by
      intro t ht K
      rw [hQt t, hNt t K, Real.sqrt_mul (sq_nonneg t), Real.sqrt_sq ht.le]
      have hts : 0 < t * Real.sqrt Q := mul_pos ht hs
      rw [sub_eq_zero, div_eq_div_iff hts.ne' (pow_pos hts 3).ne', sub_eq_zero]
      constructor
      · intro h
        have h3 : (t ^ 3 * Real.sqrt Q) *
            (Q * (∑ i : Fin 3, ∑ j : Fin 3, P i j * K i j) -
              (∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
                P i a * ν a * (P j b * ν b) * K i j)) = 0 := by
          linear_combination h - (t ^ 3 * Real.sqrt Q *
            (∑ i : Fin 3, ∑ j : Fin 3, P i j * K i j)) * hs2
        have hne : t ^ 3 * Real.sqrt Q ≠ 0 := (mul_pos (pow_pos ht 3) hs).ne'
        have h4 := (mul_eq_zero.mp h3).resolve_left hne
        linarith
      · intro h
        linear_combination (t ^ 3 * Real.sqrt Q *
            (∑ i : Fin 3, ∑ j : Fin 3, P i j * K i j)) * hs2 + (t ^ 3 * Real.sqrt Q) * h
    have hD : ∀ m ∈ J, Q * (∑ i : Fin 3, ∑ j : Fin 3, P i j * H m i j) -
        (∑ i : Fin 3, ∑ j : Fin 3, ∑ a : Fin 3, ∑ b : Fin 3,
          P i a * ν a * (P j b * ν b) * H m i j) = 0 :=
      fun m hm => (key (lam m) (hlam m hm) (H m)).mp (hH m hm)
    rw [key Λ hΛ Hβ]
    simp only [hHβ, Fin.sum_univ_three, Finset.mul_sum, ← Finset.sum_add_distrib,
      ← Finset.sum_sub_distrib]
    refine Finset.sum_eq_zero (fun m hm => ?_)
    have h := hD m hm
    subst hQdef
    simp only [Fin.sum_univ_three] at h ⊢
    simp only [hP 1 0, hP 2 0, hP 2 1] at h ⊢
    linear_combination c m * h

theorem minimal_defining_function [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (g : RiemannianMetric3 M) (W : Set M) (hWo : IsOpen W) (hfc : IsCompact (frontier W))
    (hfront : HasOneSidedMinimalFrontier g W) :
    ∃ β : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β ∧ (∀ p : M, 0 < β p ↔ p ∈ W) ∧
      (∀ p : M, β p = 0 ↔ p ∈ frontier W) ∧
      (∀ p : M, β p = 0 → mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ≠ 0) ∧
      (∀ p : M, β p = 0 → g.levelMeanCurv β p = 0) :=
by
  classical
  
  have h' : ∀ p : M, ∃ (V : Set M) (f : M → ℝ), p ∈ frontier W →
      (IsMinimalFrontierChart g W V f p ∧ V ∩ W = V ∩ {x | 0 < f x}) := by
    intro p
    by_cases hp : p ∈ frontier W
    · obtain ⟨V, f, h⟩ := hfront p hp
      exact ⟨V, f, fun _ => h⟩
    · exact ⟨Set.univ, 0, fun h => absurd h hp⟩
  choose V f hVf using h'
  
  have hbcov : ∃ (n : ℕ) (c : Fin n → M) (φ : Fin n → M → ℝ) (N : Set M),
      (∀ i, c i ∈ frontier W) ∧
      (∀ i, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (φ i)) ∧ (∀ i x, 0 ≤ φ i x) ∧
      (∀ i, tsupport (φ i) ⊆ V (c i)) ∧ IsOpen N ∧ frontier W ⊆ N ∧
      (∀ x ∈ N, ∃ i, φ i x = 1) := by
    have hb : ∀ p ∈ frontier W, ∃ ψ : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ ψ ∧
        (∀ x, 0 ≤ ψ x) ∧ tsupport ψ ⊆ V p ∧ ∀ᶠ x in 𝓝 p, ψ x = 1 := by
      intro p hp
      obtain ⟨b, -, hbs⟩ := (SmoothBumpFunction.nhds_basis_tsupport (I := 𝓘(ℝ, E3)) p).mem_iff.1
        ((hVf p hp).1.1.mem_nhds (hVf p hp).1.2.1)
      exact ⟨b, b.contMDiff, fun x => b.nonneg, hbs, b.eventuallyEq_one⟩
    choose! ψ hψs hψnn hψsupp hψ1 using hb
    obtain ⟨t, htK, hcover⟩ := hfc.elim_nhds_subcover (fun p => interior {x | ψ p x = 1})
      (fun p hp => interior_mem_nhds.2 (hψ1 p hp))
    refine ⟨t.card, fun i => (t.equivFin.symm i : M), fun i => ψ (t.equivFin.symm i : M),
      ⋃ x ∈ t, interior {y | ψ x y = 1}, ?_, ?_, ?_, ?_, ?_, hcover, ?_⟩
    · intro i; exact htK _ (t.equivFin.symm i).2
    · intro i; exact hψs _ (htK _ (t.equivFin.symm i).2)
    · intro i x; exact hψnn _ (htK _ (t.equivFin.symm i).2) x
    · intro i; exact hψsupp _ (htK _ (t.equivFin.symm i).2)
    · exact isOpen_biUnion (fun x _ => isOpen_interior)
    · intro x hx
      simp only [Set.mem_iUnion] at hx
      obtain ⟨p, hp, hxp⟩ := hx
      refine ⟨t.equivFin ⟨p, hp⟩, ?_⟩
      simp only [Equiv.symm_apply_apply]
      exact interior_subset (s := {y | ψ p y = 1}) hxp
  obtain ⟨n, c, φ, N, hcK, hφs, hφnn, hφsupp, hNo, hKN, hN1⟩ := hbcov
  have hVo : ∀ i, IsOpen (V (c i)) := fun i => (hVf (c i) (hcK i)).1.1
  have hFs : ∀ i, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (f (c i)) :=
    fun i => (hVf (c i) (hcK i)).1.2.2.1
  have hFdf : ∀ i, ∀ x ∈ V (c i), mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) (f (c i)) x ≠ 0 :=
    fun i => (hVf (c i) (hcK i)).1.2.2.2.1
  have hFzero : ∀ i, V (c i) ∩ frontier W = V (c i) ∩ f (c i) ⁻¹' {0} :=
    fun i => (hVf (c i) (hcK i)).1.2.2.2.2.1
  have hFmin : ∀ i, ∀ x ∈ V (c i), f (c i) x = 0 → g.levelMeanCurv (f (c i)) x = 0 :=
    fun i => (hVf (c i) (hcK i)).1.2.2.2.2.2.1
  have hFpos : ∀ i, V (c i) ∩ W = V (c i) ∩ {x | 0 < f (c i) x} :=
    fun i => (hVf (c i) (hcK i)).2
  
  have hWiff : ∀ i, ∀ x ∈ V (c i), (x ∈ W ↔ 0 < f (c i) x) := by
    intro i x hx
    have h := Set.ext_iff.1 (hFpos i) x
    simp only [Set.mem_inter_iff, Set.mem_setOf_eq] at h
    constructor
    · intro hxW; exact (h.1 ⟨hx, hxW⟩).2
    · intro hf; exact (h.2 ⟨hx, hf⟩).2
  have hZiff : ∀ i, ∀ x ∈ V (c i), (x ∈ frontier W ↔ f (c i) x = 0) := by
    intro i x hx
    have h := Set.ext_iff.1 (hFzero i) x
    simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_singleton_iff] at h
    constructor
    · intro hxW; exact (h.1 ⟨hx, hxW⟩).2
    · intro hf; exact (h.2 ⟨hx, hf⟩).2
  have hsuppV : ∀ i x, φ i x ≠ 0 → x ∈ V (c i) := fun i x hx =>
    hφsupp i (subset_tsupport _ (Function.mem_support.2 hx))
  
  set χ : M → ℝ := fun x => Real.smoothTransition (2 * ∑ i, φ i x - 1) with hχdef
  have hχs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ χ := by
    have hT : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => ∑ i, φ i x) :=
      contMDiff_finset_sum (fun i _ => hφs i)
    have h2 : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => 2 * ∑ i, φ i x - 1) :=
      (contMDiff_const.mul hT).sub contMDiff_const
    exact Real.smoothTransition.contDiff.comp_contMDiff h2
  have hχ0 : ∀ x, 0 ≤ χ x := fun x => Real.smoothTransition.nonneg _
  have hχ1 : ∀ x, χ x ≤ 1 := fun x => Real.smoothTransition.le_one _
  have hχN : ∀ x ∈ N, χ x = 1 := by
    intro x hx
    obtain ⟨i, hi⟩ := hN1 x hx
    have h1 : φ i x ≤ ∑ j, φ j x :=
      Finset.single_le_sum (fun j _ => hφnn j x) (Finset.mem_univ i)
    exact Real.smoothTransition.one_of_one_le (by linarith)
  have hχφ : ∀ x, 0 < χ x → ∃ i, 0 < φ i x := by
    intro x hx
    by_contra h
    push_neg at h
    have h1 : ∑ i, φ i x ≤ 0 := Finset.sum_nonpos (fun i _ => h i)
    have h2 : χ x = 0 := Real.smoothTransition.zero_of_nonpos (by linarith)
    linarith
  
  set σ : M → ℝ := fun x => 2 * W.indicator (fun _ => (1 : ℝ)) x - 1 with hσdef
  set β : M → ℝ := fun x => ∑ i, φ i x * f (c i) x + (1 - χ x) * σ x with hβdef
  have hσW : ∀ x ∈ W, σ x = 1 := by
    intro x hx; simp only [hσdef, Set.indicator_of_mem hx]; norm_num
  have hσnW : ∀ x, x ∉ W → σ x = -1 := by
    intro x hx; simp only [hσdef, Set.indicator_of_notMem hx]; norm_num
  
  have hsign_s : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => (1 - χ x) * σ x) := by
    apply contMDiff_of_locally_contMDiffOn
    intro x
    have h1χ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun y => 1 - χ y) := contMDiff_const.sub hχs
    by_cases hxN : x ∈ N
    · refine ⟨N, hNo, hxN, ?_⟩
      refine (contMDiffOn_const (c := (0 : ℝ))).congr ?_
      intro y hy
      simp only [hχN y hy, sub_self, zero_mul]
    · by_cases hxW : x ∈ W
      · refine ⟨W, hWo, hxW, ?_⟩
        refine ((h1χ.mul (contMDiff_const (c := (1 : ℝ)))).contMDiffOn).congr ?_
        intro y hy
        simp only [hσW y hy, Pi.mul_apply]
      · have hxc : x ∉ closure W := by
          intro h
          rw [closure_eq_self_union_frontier] at h
          rcases h with h | h
          · exact hxW h
          · exact hxN (hKN h)
        refine ⟨(closure W)ᶜ, isClosed_closure.isOpen_compl, hxc, ?_⟩
        refine ((h1χ.mul (contMDiff_const (c := (-1 : ℝ)))).contMDiffOn).congr ?_
        intro y hy
        have hyW : y ∉ W := fun h => hy (subset_closure h)
        simp only [hσnW y hyW, Pi.mul_apply]
  have hβs : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β := by
    have h1 : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ (fun x => ∑ i, φ i x * f (c i) x) :=
      contMDiff_finset_sum (fun i _ => (hφs i).mul (hFs i))
    exact h1.add hsign_s
  
  have hWpos : ∀ x ∈ W, 0 < β x := by
    intro x hx
    have hterm : ∀ i, 0 ≤ φ i x * f (c i) x := by
      intro i
      by_cases h0 : φ i x = 0
      · rw [h0, zero_mul]
      · exact mul_nonneg (hφnn i x) ((hWiff i x (hsuppV i x h0)).1 hx).le
    have hS : 0 ≤ ∑ i, φ i x * f (c i) x := Finset.sum_nonneg (fun i _ => hterm i)
    show 0 < ∑ i, φ i x * f (c i) x + (1 - χ x) * σ x
    rw [hσW x hx, mul_one]
    rcases (hχ1 x).lt_or_eq with h | h
    · linarith
    · obtain ⟨i, hi⟩ := hχφ x (by rw [h]; norm_num)
      have hpos : 0 < φ i x * f (c i) x :=
        mul_pos hi ((hWiff i x (hsuppV i x hi.ne')).1 hx)
      have : φ i x * f (c i) x ≤ ∑ j, φ j x * f (c j) x :=
        Finset.single_le_sum (fun j _ => hterm j) (Finset.mem_univ i)
      rw [h]; linarith
  have hExtneg : ∀ x, x ∉ closure W → β x < 0 := by
    intro x hx
    have hxW : x ∉ W := fun h => hx (subset_closure h)
    have hxF : x ∉ frontier W := fun h => hx (frontier_subset_closure h)
    have hneg : ∀ i, 0 < φ i x → f (c i) x < 0 := by
      intro i hi
      have hV := hsuppV i x hi.ne'
      rcases lt_trichotomy (f (c i) x) 0 with h | h | h
      · exact h
      · exact absurd ((hZiff i x hV).2 h) hxF
      · exact absurd ((hWiff i x hV).2 h) hxW
    have hterm : ∀ i, φ i x * f (c i) x ≤ 0 := by
      intro i
      rcases (hφnn i x).lt_or_eq with h | h
      · exact mul_nonpos_of_nonneg_of_nonpos h.le (hneg i h).le
      · rw [← h, zero_mul]
    have hS : ∑ i, φ i x * f (c i) x ≤ 0 := Finset.sum_nonpos (fun i _ => hterm i)
    show ∑ i, φ i x * f (c i) x + (1 - χ x) * σ x < 0
    rw [hσnW x hxW]
    rcases (hχ1 x).lt_or_eq with h | h
    · linarith
    · obtain ⟨i, hi⟩ := hχφ x (by rw [h]; norm_num)
      have hneg' : φ i x * f (c i) x < 0 := mul_neg_of_pos_of_neg hi (hneg i hi)
      have hle : ∑ j, φ j x * f (c j) x ≤ φ i x * f (c i) x := by
        rw [← Finset.add_sum_erase _ _ (Finset.mem_univ i)]
        have : ∑ j ∈ Finset.univ.erase i, φ j x * f (c j) x ≤ 0 :=
          Finset.sum_nonpos (fun j _ => hterm j)
        linarith
      rw [h]; linarith
  have hFr0 : ∀ x ∈ frontier W, β x = 0 := by
    intro x hx
    show ∑ i, φ i x * f (c i) x + (1 - χ x) * σ x = 0
    rw [hχN x (hKN hx), sub_self, zero_mul, add_zero]
    refine Finset.sum_eq_zero (fun i _ => ?_)
    by_cases h0 : φ i x = 0
    · rw [h0, zero_mul]
    · rw [(hZiff i x (hsuppV i x h0)).1 hx, mul_zero]
  have htri : ∀ x, x ∈ W ∨ x ∈ frontier W ∨ x ∉ closure W := by
    intro x
    by_cases hxW : x ∈ W
    · exact Or.inl hxW
    · by_cases hxc : x ∈ closure W
      · exact Or.inr (Or.inl ⟨hxc, by rw [hWo.interior_eq]; exact hxW⟩)
      · exact Or.inr (Or.inr hxc)
  have hpos : ∀ p : M, 0 < β p ↔ p ∈ W := by
    intro p
    refine ⟨fun h => ?_, hWpos p⟩
    rcases htri p with h' | h' | h'
    · exact h'
    · rw [hFr0 p h'] at h; exact absurd h (lt_irrefl 0)
    · exact absurd h (not_lt.2 (hExtneg p h').le)
  have hzero : ∀ p : M, β p = 0 ↔ p ∈ frontier W := by
    intro p
    refine ⟨fun h => ?_, hFr0 p⟩
    rcases htri p with h' | h' | h'
    · exact absurd h (hWpos p h').ne'
    · exact h'
    · exact absurd h (hExtneg p h').ne
  
  have key : ∀ p : M, β p = 0 →
      mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ≠ 0 ∧ g.levelMeanCurv β p = 0 := by
    intro p hp
    have hpF : p ∈ frontier W := (hzero p).1 hp
    obtain ⟨j₀, hj₀⟩ := hN1 p (hKN hpF)
    set J : Finset (Fin n) := Finset.univ.filter (fun i => p ∈ V (c i)) with hJdef
    have hmemJ : ∀ i, i ∈ J ↔ p ∈ V (c i) := by
      intro i; simp [hJdef]
    have hj₀J : j₀ ∈ J := (hmemJ j₀).2 (hsuppV j₀ p (by rw [hj₀]; norm_num))
    have hev1 : ∀ᶠ x in 𝓝 p, ∀ i, i ∉ J → φ i x = 0 := by
      rw [Filter.eventually_all]
      intro i
      by_cases hi : i ∈ J
      · exact Filter.Eventually.of_forall (fun x h => absurd hi h)
      · have hpi : p ∉ tsupport (φ i) := fun h => hi ((hmemJ i).2 (hφsupp i h))
        filter_upwards [(isClosed_tsupport (φ i)).isOpen_compl.mem_nhds hpi] with x hx _
        exact image_eq_zero_of_notMem_tsupport hx
    have hβev : β =ᶠ[𝓝 p] fun x => ∑ m ∈ J, φ m x * f (c m) x := by
      filter_upwards [hNo.mem_nhds (hKN hpF), hev1] with x hxN hx
      show ∑ i, φ i x * f (c i) x + (1 - χ x) * σ x = ∑ m ∈ J, φ m x * f (c m) x
      rw [hχN x hxN, sub_self, zero_mul, add_zero]
      exact (Finset.sum_subset (Finset.subset_univ J)
        (fun i _ hi => by rw [hx i hi, zero_mul])).symm
    have hf0 : ∀ m ∈ J, f (c m) p = 0 := fun m hm => (hZiff m p ((hmemJ m).1 hm)).1 hpF
    have hdf : ∀ m ∈ J, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) (f (c m)) p ≠ 0 :=
      fun m hm => hFdf m p ((hmemJ m).1 hm)
    have hH : ∀ m ∈ J, g.levelMeanCurv (f (c m)) p = 0 :=
      fun m hm => hFmin m p ((hmemJ m).1 hm) (hf0 m hm)
    have hsgn : ∀ m ∈ J, ∀ᶠ x in 𝓝 p, 0 ≤ f (c m) x * f (c j₀) x := by
      intro m hm
      filter_upwards [(hVo m).mem_nhds ((hmemJ m).1 hm),
        (hVo j₀).mem_nhds ((hmemJ j₀).1 hj₀J)] with x hxm hxj
      rcases lt_trichotomy (f (c m) x) 0 with h | h | h
      · have hB : f (c j₀) x < 0 := by
          rcases lt_trichotomy (f (c j₀) x) 0 with h' | h' | h'
          · exact h'
          · exact absurd ((hZiff m x hxm).1 ((hZiff j₀ x hxj).2 h')) h.ne
          · exact absurd ((hWiff m x hxm).1 ((hWiff j₀ x hxj).2 h')) (not_lt.2 h.le)
        exact (mul_pos_of_neg_of_neg h hB).le
      · rw [h, zero_mul]
      · exact (mul_pos h ((hWiff j₀ x hxj).1 ((hWiff m x hxm).2 h))).le
    
    have hpy : (chartAt E3 p).symm (chartAt E3 p p) = p :=
      (chartAt E3 p).left_inv (mem_chart_source E3 p)
    have hy₀U : chartAt E3 p p ∈ (chartAt E3 p).target := mem_chart_target E3 p
    have hUo : IsOpen (chartAt E3 p).target := (chartAt E3 p).open_target
    have hcd : ∀ w : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
        ContDiffOn ℝ ∞ (fun y => w ((chartAt E3 p).symm y)) (chartAt E3 p).target :=
      fun w hw => contMDiffOn_iff_contDiffOn.mp (hw.comp_contMDiffOn contMDiffOn_chart_symm)
    have hdiffw : ∀ w : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
        DifferentiableAt ℝ (fun y => w ((chartAt E3 p).symm y)) (chartAt E3 p p) := fun w hw =>
      ((hcd w hw).contDiffAt (hUo.mem_nhds hy₀U)).differentiableAt (by simp)
    have hbr : ∀ w : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w →
        mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w p =
          fderiv ℝ (fun y => w ((chartAt E3 p).symm y)) (chartAt E3 p p) := by
      intro w hw
      have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w p := hw.mdifferentiableAt (by simp)
      rw [hmd.mfderiv]
      simp only [writtenInExtChartAt, extChartAt_coe, extChartAt_coe_symm, chartAt_self_eq,
        modelWithCornersSelf_coe, modelWithCornersSelf_coe_symm, Set.range_id, fderivWithin_univ,
        OpenPartialHomeomorph.refl_apply, Function.comp_def, id]
    have htend : Tendsto (chartAt E3 p).symm (𝓝 (chartAt E3 p p)) (𝓝 p) := by
      have h := ((chartAt E3 p).continuousAt_symm hy₀U).tendsto
      rwa [hpy] at h
    have hF0 : ∀ m ∈ J, (fun y => f (c m) ((chartAt E3 p).symm y)) (chartAt E3 p p) = 0 := by
      intro m hm
      show f (c m) ((chartAt E3 p).symm (chartAt E3 p p)) = 0
      rw [hpy]; exact hf0 m hm
    have hne : ∀ m ∈ J,
        fderiv ℝ (fun y => f (c m) ((chartAt E3 p).symm y)) (chartAt E3 p p) ≠ 0 := by
      intro m hm; rw [← hbr _ (hFs m)]; exact hdf m hm
    have hprop : ∀ m ∈ J, ∃ cm : ℝ, 0 < cm ∧
        fderiv ℝ (fun y => f (c m) ((chartAt E3 p).symm y)) (chartAt E3 p p) =
          cm • fderiv ℝ (fun y => f (c j₀) ((chartAt E3 p).symm y)) (chartAt E3 p p) := by
      intro m hm
      refine fderiv_pos_proportional _ _ _ (hdiffw _ (hFs j₀)) (hdiffw _ (hFs m))
        (hF0 j₀ hj₀J) (hF0 m hm) (hne j₀ hj₀J) (hne m hm) ?_
      filter_upwards [htend.eventually (hsgn m hm)] with y hy
      rw [mul_comm]; exact hy
    choose! cc hccpos hcc using hprop
    obtain ⟨ν, hνdef⟩ : ∃ ν : Fin 3 → ℝ, ν = fun a =>
        partialDeriv a (fun y => f (c j₀) ((chartAt E3 p).symm y)) (chartAt E3 p p) :=
      ⟨_, rfl⟩
    obtain ⟨Λ, hΛdef⟩ : ∃ Λ : ℝ, Λ = ∑ m ∈ J, φ m p * cc m := ⟨_, rfl⟩
    have hΛpos : 0 < Λ := by
      rw [hΛdef]
      refine Finset.sum_pos' (fun m hm => mul_nonneg (hφnn m p) (hccpos m hm).le)
        ⟨j₀, hj₀J, ?_⟩
      rw [hj₀, one_mul]; exact hccpos j₀ hj₀J
    have hL3 := second_order_product_sum J (fun m y => φ m ((chartAt E3 p).symm y))
      (fun m y => f (c m) ((chartAt E3 p).symm y)) (chartAt E3 p).target hUo (chartAt E3 p p)
      hy₀U (fun m _ => hcd _ (hφs m)) (fun m _ => hcd _ (hFs m)) hF0
    beta_reduce at hL3
    obtain ⟨hL3a, hL3b⟩ := hL3
    have hBev : (fun y => β ((chartAt E3 p).symm y)) =ᶠ[𝓝 (chartAt E3 p p)]
        (fun y => ∑ m ∈ J, φ m ((chartAt E3 p).symm y) * f (c m) ((chartAt E3 p).symm y)) :=
      htend.eventually hβev
    have hdB : fderiv ℝ (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) =
        Λ • fderiv ℝ (fun y => f (c j₀) ((chartAt E3 p).symm y)) (chartAt E3 p p) := by
      rw [hBev.fderiv_eq, hL3a, hΛdef, Finset.sum_smul]
      refine Finset.sum_congr rfl (fun m hm => ?_)
      rw [hcc m hm, hpy, smul_smul]
    refine ⟨?_, ?_⟩
    · rw [hbr β hβs, hdB]
      exact smul_ne_zero hΛpos.ne' (hne j₀ hj₀J)
    · have hgradF : ∀ m ∈ J, ∀ a : Fin 3,
          partialDeriv a (fun y => f (c m) ((chartAt E3 p).symm y)) (chartAt E3 p p) =
            cc m * ν a := by
        intro m hm a
        simp only [partialDeriv, hνdef]
        rw [hcc m hm]; rfl
      have hgradB : ∀ a : Fin 3,
          partialDeriv a (fun y => β ((chartAt E3 p).symm y)) (chartAt E3 p p) = Λ * ν a := by
        intro a
        simp only [partialDeriv, hνdef]
        rw [hdB]; rfl
      have hBc2 : ∀ i j : Fin 3,
          partialDeriv i (partialDeriv j (fun y => β ((chartAt E3 p).symm y))) (chartAt E3 p p) =
            partialDeriv i (partialDeriv j (fun z => ∑ m ∈ J,
              φ m ((chartAt E3 p).symm z) * f (c m) ((chartAt E3 p).symm z))) (chartAt E3 p p) := by
        intro i j
        have hev2 : partialDeriv j (fun y => β ((chartAt E3 p).symm y)) =ᶠ[𝓝 (chartAt E3 p p)]
            partialDeriv j (fun z => ∑ m ∈ J,
              φ m ((chartAt E3 p).symm z) * f (c m) ((chartAt E3 p).symm z)) := by
          filter_upwards [hBev.fderiv (𝕜 := ℝ)] with y hy
          show fderiv ℝ _ y (e j) = fderiv ℝ _ y (e j)
          rw [hy]
        show fderiv ℝ _ (chartAt E3 p p) (e i) = fderiv ℝ _ (chartAt E3 p p) (e i)
        rw [hev2.fderiv_eq]
      have hS : ∀ (i j : Fin 3) (t : ℝ),
          ∑ k : Fin 3, christoffel (g.coeff (chartAt E3 p).symm) k i j (chartAt E3 p p) *
            (t * ν k) =
          t * ∑ k : Fin 3, christoffel (g.coeff (chartAt E3 p).symm) k i j (chartAt E3 p p) *
            ν k := by
        intro i j t
        rw [Finset.mul_sum]
        exact Finset.sum_congr rfl (fun k _ => by ring)
      have hHβ : ∀ i j : Fin 3,
          hessLoc (g.coeff (chartAt E3 p).symm) (fun y => β ((chartAt E3 p).symm y)) i j
              (chartAt E3 p p) =
            ∑ m ∈ J, (φ m p * hessLoc (g.coeff (chartAt E3 p).symm)
                (fun y => f (c m) ((chartAt E3 p).symm y)) i j (chartAt E3 p p)
              + partialDeriv i (fun y => φ m ((chartAt E3 p).symm y)) (chartAt E3 p p) *
                (cc m * ν j)
              + cc m * ν i *
                partialDeriv j (fun y => φ m ((chartAt E3 p).symm y)) (chartAt E3 p p)) := by
        intro i j
        simp only [hessLoc]
        rw [hBc2 i j, hL3b i j]
        simp only [hgradB, hS i j Λ]
        rw [hΛdef, Finset.sum_mul, ← Finset.sum_sub_distrib]
        refine Finset.sum_congr rfl (fun m hm => ?_)
        simp only [hgradF m hm, hS i j (cc m), hpy]
        ring
      have hGs : ∀ i j : Fin 3, g.coeff (chartAt E3 p).symm (chartAt E3 p p) i j =
          g.coeff (chartAt E3 p).symm (chartAt E3 p p) j i := fun i j => g.symm _ _ _
      have hP : ∀ i j : Fin 3, (g.coeff (chartAt E3 p).symm (chartAt E3 p p))⁻¹ i j =
          (g.coeff (chartAt E3 p).symm (chartAt E3 p p))⁻¹ j i := by
        intro i j
        have hT : Matrix.transpose (g.coeff (chartAt E3 p).symm (chartAt E3 p p)) =
            g.coeff (chartAt E3 p).symm (chartAt E3 p p) := by
          ext a b; exact hGs b a
        have h := congrArg (fun A => A j i)
          (Matrix.transpose_nonsing_inv (g.coeff (chartAt E3 p).symm (chartAt E3 p p)))
        simp only [Matrix.transpose_apply, hT] at h
        exact h
      simp only [RiemannianMetric3.levelMeanCurv, RiemannianMetric3.gradInner, lapLoc, hgradB]
      exact levelMeanCurv_alg_combination J (g.coeff (chartAt E3 p).symm (chartAt E3 p p))⁻¹ hP ν
        cc (fun m => φ m p)
        (fun m i => partialDeriv i (fun y => φ m ((chartAt E3 p).symm y)) (chartAt E3 p p))
        (fun m i j => hessLoc (g.coeff (chartAt E3 p).symm)
          (fun y => f (c m) ((chartAt E3 p).symm y)) i j (chartAt E3 p p)) Λ
        (fun i j => hessLoc (g.coeff (chartAt E3 p).symm) (fun y => β ((chartAt E3 p).symm y))
          i j (chartAt E3 p p))
        hccpos hΛdef hΛpos hHβ
        (fun m hm => by
          have h := hH m hm
          simp only [RiemannianMetric3.levelMeanCurv, RiemannianMetric3.gradInner, lapLoc,
            hgradF m hm] at h
          exact h)
  exact ⟨β, hβs, hpos, hzero, fun p hp => (key p hp).1, fun p hp => (key p hp).2⟩

theorem level_chart [IsManifold 𝓘(ℝ, E3) ∞ M] (w β : M → ℝ)
    (hw : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ w) (hβ : ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ β) (p : M)
    (hξ : ∃ ξ : E3, mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) w p ξ ≠ 0 ∧
      (β p = 0 → mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ξ = 0))
    (hreg : β p = 0 → mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) β p ≠ 0) (U : Set M) (hU : U ∈ 𝓝 p) :
    ∃ (κ : OpenPartialHomeomorph M E3) (ε : ℝ), 0 < ε ∧ p ∈ κ.source ∧ κ.source ⊆ U ∧
      κ p = 0 ∧ κ.target = Metric.ball 0 ε ∧
      (∀ x ∈ κ.source, w x - w p = κ x 0) ∧
      (β p = 0 → ∀ x ∈ κ.source, β x = κ x 1) :=
by
  have hproj : ∀ (i : Fin 3) (v : E3), EuclideanSpace.proj i v = v i := fun i v => rfl
  have hpc : p ∈ (chartAt E3 p).source := mem_chart_source E3 p
  have hcp : (chartAt E3 p).symm (chartAt E3 p p) = p := (chartAt E3 p).left_inv hpc
  
  have CH : ∀ f : M → ℝ, ContMDiff 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f →
      ContDiffAt ℝ ∞ (f ∘ (chartAt E3 p).symm) (chartAt E3 p p) ∧
      fderiv ℝ (f ∘ (chartAt E3 p).symm) (chartAt E3 p p) =
        (mfderiv 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f p : E3 →L[ℝ] ℝ) := by
    intro f hf
    have h1 : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, E3) ∞ (chartAt E3 p).symm (chartAt E3 p p) :=
      (contMDiffOn_chart_symm (x := p)).contMDiffAt
        ((chartAt E3 p).open_target.mem_nhds (mem_chart_target E3 p))
    have h2 : ContMDiffAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) ∞ f ((chartAt E3 p).symm (chartAt E3 p p)) := by
      rw [hcp]; exact hf.contMDiffAt
    have h3 := h2.comp _ h1
    refine ⟨contMDiffAt_iff_contDiffAt.mp h3, ?_⟩
    have hmd : MDifferentiableAt 𝓘(ℝ, E3) 𝓘(ℝ, ℝ) f p :=
      hf.contMDiffAt.mdifferentiableAt (by simp)
    rw [hmd.mfderiv]
    simp [writtenInExtChartAt]
  
  have LA : ∀ (a b : E3 →L[ℝ] ℝ) (ξ : E3), a ξ ≠ 0 → b ξ = 0 → b ≠ 0 →
      ∃ c : E3 →L[ℝ] ℝ, ∀ v : E3, a v = 0 → b v = 0 → c v = 0 → v = 0 := by
    intro a b ξ haξ hbξ hb
    have hdec : ∀ v : E3, v = v 0 • e 0 + v 1 • e 1 + v 2 • e 2 := by
      intro v; ext i; fin_cases i <;> simp [EuclideanSpace.single_apply]
    have hlin : ∀ (f : E3 →L[ℝ] ℝ) (v : E3),
        f v = v 0 * f (e 0) + v 1 * f (e 1) + v 2 * f (e 2) := by
      intro f v
      conv_lhs => rw [hdec v]
      simp [map_add, map_smul, smul_eq_mul]
    set α0 := a (e 0) with hα0
    set α1 := a (e 1) with hα1
    set α2 := a (e 2) with hα2
    set γ0 := b (e 0) with hγ0
    set γ1 := b (e 1) with hγ1
    set γ2 := b (e 2) with hγ2
    set z0 := α1 * γ2 - α2 * γ1 with hz0
    set z1 := α2 * γ0 - α0 * γ2 with hz1
    set z2 := α0 * γ1 - α1 * γ0 with hz2
    refine ⟨z0 • EuclideanSpace.proj (0 : Fin 3) + z1 • EuclideanSpace.proj (1 : Fin 3)
      + z2 • EuclideanSpace.proj (2 : Fin 3), ?_⟩
    have hS : z0 ^ 2 + z1 ^ 2 + z2 ^ 2 ≠ 0 := by
      intro hS0
      have hz0 : z0 = 0 := by nlinarith [sq_nonneg z0, sq_nonneg z1, sq_nonneg z2]
      have hz1 : z1 = 0 := by nlinarith [sq_nonneg z0, sq_nonneg z1, sq_nonneg z2]
      have hz2 : z2 = 0 := by nlinarith [sq_nonneg z0, sq_nonneg z1, sq_nonneg z2]
      have ha := hlin a ξ
      have hbb := hlin b ξ
      rw [hbξ] at hbb
      apply hb
      have hg0 : γ0 = 0 := by
        have : γ0 * a ξ = 0 := by
          rw [ha]
          linear_combination -(ξ 1) * hz2 + (ξ 2) * hz1 - α0 * hbb
        rcases mul_eq_zero.mp this with h | h
        · exact h
        · exact absurd h haξ
      have hg1 : γ1 = 0 := by
        have : γ1 * a ξ = 0 := by
          rw [ha]
          linear_combination -(ξ 2) * hz0 + (ξ 0) * hz2 - α1 * hbb
        rcases mul_eq_zero.mp this with h | h
        · exact h
        · exact absurd h haξ
      have hg2 : γ2 = 0 := by
        have : γ2 * a ξ = 0 := by
          rw [ha]
          linear_combination -(ξ 0) * hz1 + (ξ 1) * hz0 - α2 * hbb
        rcases mul_eq_zero.mp this with h | h
        · exact h
        · exact absurd h haξ
      ext v
      rw [hlin b v, show b (e 0) = 0 from hg0, show b (e 1) = 0 from hg1,
        show b (e 2) = 0 from hg2]
      simp
    intro v hav hbv hcv
    rw [hlin a v] at hav
    rw [hlin b v] at hbv
    simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply,
      hproj, smul_eq_mul] at hcv
    have e0 : (z0 ^ 2 + z1 ^ 2 + z2 ^ 2) * v 0 = 0 := by
      linear_combination (γ1 * z2 - γ2 * z1) * hav + (z1 * α2 - z2 * α1) * hbv + z0 * hcv
    have e1 : (z0 ^ 2 + z1 ^ 2 + z2 ^ 2) * v 1 = 0 := by
      linear_combination (γ2 * z0 - γ0 * z2) * hav + (z2 * α0 - z0 * α2) * hbv + z1 * hcv
    have e2 : (z0 ^ 2 + z1 ^ 2 + z2 ^ 2) * v 2 = 0 := by
      linear_combination (γ0 * z1 - γ1 * z0) * hav + (z0 * α1 - z1 * α0) * hbv + z2 * hcv
    have h0 := (mul_eq_zero.mp e0).resolve_left hS
    have h1 := (mul_eq_zero.mp e1).resolve_left hS
    have h2 := (mul_eq_zero.mp e2).resolve_left hS
    ext i; fin_cases i <;> simp [h0, h1, h2]
  
  obtain ⟨ξ, haξ, hbξ'⟩ := hξ
  obtain ⟨hfw, hfw'⟩ := CH w hw
  obtain ⟨a, ha⟩ : ∃ a : E3 →L[ℝ] ℝ,
      a = fderiv ℝ (w ∘ (chartAt E3 p).symm) (chartAt E3 p p) := ⟨_, rfl⟩
  have hA : HasFDerivAt (w ∘ (chartAt E3 p).symm) a (chartAt E3 p p) := by
    rw [ha]; exact (hfw.differentiableAt (by simp)).hasFDerivAt
  have haξ' : a ξ ≠ 0 := by rw [ha, hfw']; exact haξ
  
  obtain ⟨b, g₂, hb0, hbξ, hg₂c, hg₂d, hg₂0, hg₂β⟩ : ∃ (b : E3 →L[ℝ] ℝ) (g₂ : E3 → ℝ),
      b ≠ 0 ∧ b ξ = 0 ∧ ContDiffAt ℝ ∞ g₂ (chartAt E3 p p) ∧
      HasFDerivAt g₂ b (chartAt E3 p p) ∧ g₂ (chartAt E3 p p) = 0 ∧
      (β p = 0 → ∀ x ∈ (chartAt E3 p).source, β x = g₂ (chartAt E3 p x)) := by
    by_cases hβp : β p = 0
    · obtain ⟨hfβ, hfβ'⟩ := CH β hβ
      refine ⟨fderiv ℝ (β ∘ (chartAt E3 p).symm) (chartAt E3 p p), β ∘ (chartAt E3 p).symm,
        ?_, ?_, hfβ, (hfβ.differentiableAt (by simp)).hasFDerivAt, ?_, ?_⟩
      · rw [hfβ']; exact hreg hβp
      · rw [hfβ']; exact hbξ' hβp
      · simp [hcp, hβp]
      · intro _ x hx
        simp [(chartAt E3 p).left_inv hx]
    · obtain ⟨b, hb, hbξ⟩ : ∃ b : E3 →L[ℝ] ℝ, b ≠ 0 ∧ b ξ = 0 := by
        by_cases h0 : ξ 0 = 0
        · refine ⟨EuclideanSpace.proj (0 : Fin 3), ?_, ?_⟩
          · intro h
            have := congrArg (fun f : E3 →L[ℝ] ℝ => f (e 0)) h
            simp [hproj] at this
          · rw [hproj]; exact h0
        · refine ⟨ξ 0 • EuclideanSpace.proj (1 : Fin 3) - ξ 1 • EuclideanSpace.proj (0 : Fin 3),
            ?_, ?_⟩
          · intro h
            have := congrArg (fun f : E3 →L[ℝ] ℝ => f (e 1)) h
            simp [hproj] at this
            exact h0 this
          · simp only [ContinuousLinearMap.sub_apply, ContinuousLinearMap.smul_apply, hproj,
              smul_eq_mul]
            ring
      refine ⟨b, fun x => b (x - chartAt E3 p p), hb, hbξ, ?_, ?_, ?_, fun h => absurd h hβp⟩
      · exact (b.contDiff.comp (contDiff_id.sub contDiff_const)).contDiffAt
      · have := b.hasFDerivAt.comp (chartAt E3 p p)
          ((hasFDerivAt_id (chartAt E3 p p)).sub_const (chartAt E3 p p))
        simpa [Function.comp_def] using this
      · simp
  
  obtain ⟨cf, hcf⟩ := LA a b ξ haξ' hbξ hb0
  let T₀ : E3 →L[ℝ] E3 := a.smulRight (e 0) + b.smulRight (e 1) + cf.smulRight (e 2)
  have hT₀ : ∀ v, T₀ v = a v • e 0 + b v • e 1 + cf v • e 2 := fun v => rfl
  have hinj : Function.Injective (T₀ : E3 →ₗ[ℝ] E3) := by
    refine (injective_iff_map_eq_zero (T₀ : E3 →ₗ[ℝ] E3)).mpr fun v hv => ?_
    change T₀ v = 0 at hv
    have h0 := congrArg (fun u : E3 => u 0) hv
    have h1 := congrArg (fun u : E3 => u 1) hv
    have h2 := congrArg (fun u : E3 => u 2) hv
    simp [hT₀, EuclideanSpace.single_apply] at h0 h1 h2
    exact hcf v h0 h1 h2
  let T : E3 ≃L[ℝ] E3 :=
    (LinearEquiv.ofInjectiveEndo (T₀ : E3 →ₗ[ℝ] E3) hinj).toContinuousLinearEquiv
  have hTT : (T : E3 →L[ℝ] E3) = T₀ := by
    refine ContinuousLinearMap.ext fun v => ?_
    show (LinearEquiv.ofInjectiveEndo (T₀ : E3 →ₗ[ℝ] E3) hinj) v = T₀ v
    rw [LinearEquiv.coe_ofInjectiveEndo]
    rfl
  
  let F : E3 → E3 := fun x => (w ((chartAt E3 p).symm x) - w p) • e 0 + g₂ x • e 1 +
    cf (x - chartAt E3 p p) • e 2
  have hF' : HasFDerivAt F (T : E3 →L[ℝ] E3) (chartAt E3 p p) := by
    rw [hTT]
    have h1 : HasFDerivAt (fun x => w ((chartAt E3 p).symm x) - w p) a (chartAt E3 p p) :=
      hA.sub_const (w p)
    have h3 : HasFDerivAt (fun x => cf (x - chartAt E3 p p)) cf (chartAt E3 p p) := by
      simpa [Function.comp_def] using cf.hasFDerivAt.comp (chartAt E3 p p)
        ((hasFDerivAt_id (chartAt E3 p p)).sub_const (chartAt E3 p p))
    exact ((h1.smul_const (e 0)).add (hg₂d.smul_const (e 1))).add (h3.smul_const (e 2))
  have hF : ContDiffAt ℝ ∞ F (chartAt E3 p p) := by
    have h1 : ContDiffAt ℝ ∞ (fun x => w ((chartAt E3 p).symm x) - w p) (chartAt E3 p p) :=
      hfw.sub contDiffAt_const
    have h3 : ContDiffAt ℝ ∞ (fun x => cf (x - chartAt E3 p p)) (chartAt E3 p p) :=
      (cf.contDiff.comp (contDiff_id.sub contDiff_const)).contDiffAt
    exact ((h1.smul contDiffAt_const).add (hg₂c.smul contDiffAt_const)).add
      (h3.smul contDiffAt_const)
  have hF0 : ∀ x, F x 0 = w ((chartAt E3 p).symm x) - w p := by
    intro x; simp [F, EuclideanSpace.single_apply]
  have hF1 : ∀ x, F x 1 = g₂ x := by
    intro x; simp [F, EuclideanSpace.single_apply]
  have hFx₀ : F (chartAt E3 p p) = 0 := by
    simp [F, hcp, hg₂0]
  
  have hn : (∞ : WithTop ℕ∞) ≠ 0 := by simp
  let ψ := ContDiffAt.toOpenPartialHomeomorph F hF hF' hn
  have hψ : (ψ : E3 → E3) = F := ContDiffAt.toOpenPartialHomeomorph_coe hF hF' hn
  have hx₀ψ : chartAt E3 p p ∈ ψ.source := ContDiffAt.mem_toOpenPartialHomeomorph_source hF hF' hn
  
  let κ₀ : OpenPartialHomeomorph M E3 := (chartAt E3 p).trans ψ
  have hκ₀ : ∀ x, κ₀ x = F (chartAt E3 p x) := by
    intro x
    show ψ (chartAt E3 p x) = F (chartAt E3 p x)
    rw [hψ]
  have hκ₀src : κ₀.source = (chartAt E3 p).source ∩ chartAt E3 p ⁻¹' ψ.source :=
    OpenPartialHomeomorph.trans_source _ _
  have hpκ₀ : p ∈ κ₀.source := by rw [hκ₀src]; exact ⟨hpc, hx₀ψ⟩
  have hκ₀p : κ₀ p = 0 := by rw [hκ₀]; exact hFx₀
  
  have hW : κ₀.source ∩ interior U ∈ 𝓝 p :=
    Filter.inter_mem (κ₀.open_source.mem_nhds hpκ₀) (interior_mem_nhds.mpr hU)
  have hsymm0 : κ₀.symm 0 = p := by rw [← hκ₀p]; exact κ₀.left_inv hpκ₀
  have h0t : (0 : E3) ∈ κ₀.target := by
    have := κ₀.map_source hpκ₀
    rwa [hκ₀p] at this
  have hN : κ₀.target ∩ κ₀.symm ⁻¹' (κ₀.source ∩ interior U) ∈ 𝓝 (0 : E3) := by
    refine Filter.inter_mem (κ₀.open_target.mem_nhds h0t) ?_
    have hca := κ₀.continuousAt_symm h0t
    rw [← hsymm0] at hW
    exact hca.preimage_mem_nhds hW
  obtain ⟨ε, hε, hball⟩ := Metric.mem_nhds_iff.mp hN
  have hSo : IsOpen (κ₀.source ∩ κ₀ ⁻¹' Metric.ball 0 ε) :=
    κ₀.isOpen_inter_preimage Metric.isOpen_ball
  let κ := κ₀.restrOpen _ hSo
  have hκsrc : κ.source = κ₀.source ∩ (κ₀.source ∩ κ₀ ⁻¹' Metric.ball 0 ε) :=
    OpenPartialHomeomorph.restrOpen_source _ _ _
  have hκcoe : ∀ x, κ x = κ₀ x := fun x => rfl
  have hκtgt : κ.target = κ₀.target ∩ κ₀.symm ⁻¹' (κ₀.source ∩ κ₀ ⁻¹' Metric.ball 0 ε) := by
    show (κ₀.restrOpen _ hSo).toPartialEquiv.target = _
    rw [OpenPartialHomeomorph.restrOpen_toPartialEquiv, PartialEquiv.restr_target]
    rfl
  have hxc : ∀ x ∈ κ.source, x ∈ (chartAt E3 p).source := by
    intro x hx
    rw [hκsrc] at hx
    have := hx.1
    rw [hκ₀src] at this
    exact this.1
  refine ⟨κ, ε, hε, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hκsrc]
    refine ⟨hpκ₀, hpκ₀, ?_⟩
    show κ₀ p ∈ Metric.ball (0 : E3) ε
    rw [hκ₀p]; exact Metric.mem_ball_self hε
  · intro x hx
    rw [hκsrc] at hx
    obtain ⟨hx1, -, hx2⟩ := hx
    have := (hball hx2).2
    rw [Set.mem_preimage, κ₀.left_inv hx1] at this
    exact interior_subset this.2
  · rw [hκcoe]; exact hκ₀p
  · rw [hκtgt]
    ext y
    constructor
    · rintro ⟨hy1, -, hy2⟩
      have : κ₀ (κ₀.symm y) ∈ Metric.ball (0 : E3) ε := hy2
      rwa [κ₀.right_inv hy1] at this
    · intro hy
      have hyN := hball hy
      refine ⟨hyN.1, κ₀.map_target hyN.1, ?_⟩
      show κ₀ (κ₀.symm y) ∈ Metric.ball (0 : E3) ε
      rw [κ₀.right_inv hyN.1]; exact hy
  · intro x hx
    rw [hκcoe, hκ₀, hF0, (chartAt E3 p).left_inv (hxc x hx)]
  · intro hβp x hx
    rw [hκcoe, hκ₀, hF1]
    exact hg₂β hβp x (hxc x hx)

theorem chart_level_sides (w β : M → ℝ) (p : M) (κ : OpenPartialHomeomorph M E3) (ε : ℝ)
    (hε : 0 < ε) (hp : p ∈ κ.source) (hκp : κ p = 0) (htgt : κ.target = Metric.ball 0 ε)
    (hwκ : ∀ x ∈ κ.source, w x - w p = κ x 0)
    (hcase : κ.source ⊆ {x | 0 < β x} ∨ ∀ x ∈ κ.source, β x = κ x 1) :
    IsPreconnected (κ.source ∩ ({x | 0 ≤ β x} ∩ w ⁻¹' {w p})) ∧
    IsPreconnected (κ.source ∩ {x | 0 < β x}) ∧
    IsConnected (κ.source ∩ {x | 0 < β x} ∩ {x | w p < w x}) ∧
    IsConnected (κ.source ∩ {x | 0 < β x} ∩ {x | w x < w p}) ∧
    p ∈ closure (κ.source ∩ {x | 0 < β x} ∩ {x | w p < w x}) ∧
    p ∈ closure (κ.source ∩ {x | 0 < β x} ∩ {x | w x < w p}) :=
by
  have h0T : (0 : E3) ∈ κ.target := by rw [htgt]; exact Metric.mem_ball_self hε
  have hsp : κ.symm 0 = p := by rw [← hκp]; exact κ.left_inv hp
  
  have hP : ∀ C : Set E3, Convex ℝ (κ.target ∩ C) →
      IsPreconnected (κ.source ∩ κ ⁻¹' C) ∧
      ((κ.target ∩ C).Nonempty → (κ.source ∩ κ ⁻¹' C).Nonempty) ∧
      ((0 : E3) ∈ closure (κ.target ∩ C) → p ∈ closure (κ.source ∩ κ ⁻¹' C)) := by
    intro C hC
    have hI : κ.symm '' (κ.target ∩ C) = κ.source ∩ κ ⁻¹' C :=
      κ.toPartialEquiv.symm_image_target_inter_eq' C
    have hcont : ContinuousOn κ.symm (κ.target ∩ C) :=
      κ.continuousOn_symm.mono Set.inter_subset_left
    refine ⟨hI ▸ hC.isPreconnected.image _ hcont, fun hne => hI ▸ hne.image _, fun hcl => ?_⟩
    have h := ((κ.continuousOn_symm.continuousWithinAt h0T).mono
      Set.inter_subset_left).mem_closure_image hcl
    rw [hI, hsp] at h
    exact h
  have key : ∀ (S : Set M) (C : Set E3), (∀ x ∈ κ.source, (x ∈ S ↔ κ x ∈ C)) →
      κ.source ∩ S = κ.source ∩ κ ⁻¹' C := by
    intro S C h
    ext x
    exact ⟨fun hx => ⟨hx.1, (h x hx.1).1 hx.2⟩, fun hx => ⟨hx.1, (h x hx.1).2 hx.2⟩⟩
  have hiff : ∀ x ∈ κ.source, (w p < w x ↔ 0 < κ x 0) ∧ (w x < w p ↔ κ x 0 < 0) ∧
      (w x = w p ↔ κ x 0 = 0) := by
    intro x hx
    have h1 := hwκ x hx
    refine ⟨⟨fun h => by linarith, fun h => by linarith⟩, ⟨fun h => by linarith,
      fun h => by linarith⟩, ⟨fun h => by linarith, fun h => by linarith⟩⟩
  have hlin : ∀ i : Fin 3, IsLinearMap ℝ (fun y : E3 => y i) := fun i =>
    (EuclideanSpace.proj i : E3 →L[ℝ] ℝ).toLinearMap.isLinear
  have hT : Convex ℝ κ.target := by rw [htgt]; exact convex_ball 0 ε
  
  have hnorm : ∀ a b : ℝ, ‖(!₂[a, b, 0] : E3)‖ ^ 2 = a ^ 2 + b ^ 2 := by
    intro a b
    rw [EuclideanSpace.norm_sq_eq]
    simp [Fin.sum_univ_three]
  have hQ : (0 : E3) ∈ closure (κ.target ∩ ({y : E3 | 0 < y 1} ∩ {y : E3 | 0 < y 0})) ∧
      (0 : E3) ∈ closure (κ.target ∩ ({y : E3 | 0 < y 1} ∩ {y : E3 | y 0 < 0})) := by
    rw [htgt]
    constructor
    · rw [Metric.mem_closure_iff]
      intro r hr
      have hm : 0 < min ε r := lt_min hε hr
      set c := min ε r / 4 with hc
      have hc0 : 0 < c := by positivity
      have hn := hnorm c c
      have hlt : ‖(!₂[c, c, 0] : E3)‖ < min ε r := by
        nlinarith [norm_nonneg (!₂[c, c, 0] : E3)]
      refine ⟨!₂[c, c, 0], ⟨?_, ?_, ?_⟩, ?_⟩
      · rw [mem_ball_zero_iff]; exact lt_of_lt_of_le hlt (min_le_left _ _)
      · simp [hc0]
      · simp [hc0]
      · rw [dist_zero_left]; exact lt_of_lt_of_le hlt (min_le_right _ _)
    · rw [Metric.mem_closure_iff]
      intro r hr
      have hm : 0 < min ε r := lt_min hε hr
      set c := min ε r / 4 with hc
      have hc0 : 0 < c := by positivity
      have hn := hnorm (-c) c
      have hlt : ‖(!₂[-c, c, 0] : E3)‖ < min ε r := by
        nlinarith [norm_nonneg (!₂[-c, c, 0] : E3)]
      refine ⟨!₂[-c, c, 0], ⟨?_, ?_, ?_⟩, ?_⟩
      · rw [mem_ball_zero_iff]; exact lt_of_lt_of_le hlt (min_le_left _ _)
      · simp [hc0]
      · simp [hc0]
      · rw [dist_zero_left]; exact lt_of_lt_of_le hlt (min_le_right _ _)
  rcases hcase with hA | hB
  · have e1 : κ.source ∩ ({x | 0 ≤ β x} ∩ w ⁻¹' {w p}) =
        κ.source ∩ κ ⁻¹' {y : E3 | y 0 = 0} := by
      apply key
      intro x hx
      have hb : 0 < β x := hA hx
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_preimage, Set.mem_singleton_iff,
        (hiff x hx).2.2, hb.le, true_and]
    have e2 : κ.source ∩ {x | 0 < β x} = κ.source ∩ κ ⁻¹' Set.univ := by
      apply key
      intro x hx
      have hb : 0 < β x := hA hx
      simp only [Set.mem_setOf_eq, Set.mem_preimage, Set.mem_univ, hb]
    have e3 : κ.source ∩ {x | 0 < β x} ∩ {x | w p < w x} =
        κ.source ∩ κ ⁻¹' {y : E3 | 0 < y 0} := by
      rw [Set.inter_assoc]
      apply key
      intro x hx
      have hb : 0 < β x := hA hx
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_preimage,
        (hiff x hx).1, hb, true_and]
    have e4 : κ.source ∩ {x | 0 < β x} ∩ {x | w x < w p} =
        κ.source ∩ κ ⁻¹' {y : E3 | y 0 < 0} := by
      rw [Set.inter_assoc]
      apply key
      intro x hx
      have hb : 0 < β x := hA hx
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_preimage,
        (hiff x hx).2.1, hb, true_and]
    have P1 := hP _ (hT.inter (convex_hyperplane (hlin 0) 0))
    have P2 := hP Set.univ (by rw [Set.inter_univ]; exact hT)
    have P3 := hP _ (hT.inter (convex_halfSpace_gt (hlin 0) 0))
    have P4 := hP _ (hT.inter (convex_halfSpace_lt (hlin 0) 0))
    have cl3 : (0 : E3) ∈ closure (κ.target ∩ {y : E3 | 0 < y 0}) :=
      closure_mono (Set.inter_subset_inter_right _ (fun y hy => hy.2)) hQ.1
    have cl4 : (0 : E3) ∈ closure (κ.target ∩ {y : E3 | y 0 < 0}) :=
      closure_mono (Set.inter_subset_inter_right _ (fun y hy => hy.2)) hQ.2
    rw [e1, e3, e4, e2]
    exact ⟨P1.1, P2.1, ⟨P3.2.1 (closure_nonempty_iff.mp ⟨0, cl3⟩), P3.1⟩,
      ⟨P4.2.1 (closure_nonempty_iff.mp ⟨0, cl4⟩), P4.1⟩, P3.2.2 cl3, P4.2.2 cl4⟩
  · have e1 : κ.source ∩ ({x | 0 ≤ β x} ∩ w ⁻¹' {w p}) =
        κ.source ∩ κ ⁻¹' ({y : E3 | 0 ≤ y 1} ∩ {y : E3 | y 0 = 0}) := by
      apply key
      intro x hx
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_preimage, Set.mem_singleton_iff,
        (hiff x hx).2.2, hB x hx]
    have e2 : κ.source ∩ {x | 0 < β x} = κ.source ∩ κ ⁻¹' {y : E3 | 0 < y 1} := by
      apply key
      intro x hx
      simp only [Set.mem_setOf_eq, Set.mem_preimage, hB x hx]
    have e3 : κ.source ∩ {x | 0 < β x} ∩ {x | w p < w x} =
        κ.source ∩ κ ⁻¹' ({y : E3 | 0 < y 1} ∩ {y : E3 | 0 < y 0}) := by
      rw [Set.inter_assoc]
      apply key
      intro x hx
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_preimage,
        (hiff x hx).1, hB x hx]
    have e4 : κ.source ∩ {x | 0 < β x} ∩ {x | w x < w p} =
        κ.source ∩ κ ⁻¹' ({y : E3 | 0 < y 1} ∩ {y : E3 | y 0 < 0}) := by
      rw [Set.inter_assoc]
      apply key
      intro x hx
      simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_preimage,
        (hiff x hx).2.1, hB x hx]
    have P1 := hP _ (hT.inter ((convex_halfSpace_ge (hlin 1) 0).inter
      (convex_hyperplane (hlin 0) 0)))
    have P2 := hP _ (hT.inter (convex_halfSpace_gt (hlin 1) 0))
    have P3 := hP _ (hT.inter ((convex_halfSpace_gt (hlin 1) 0).inter
      (convex_halfSpace_gt (hlin 0) 0)))
    have P4 := hP _ (hT.inter ((convex_halfSpace_gt (hlin 1) 0).inter
      (convex_halfSpace_lt (hlin 0) 0)))
    rw [e1, e3, e4, e2]
    exact ⟨P1.1, P2.1, ⟨P3.2.1 (closure_nonempty_iff.mp ⟨0, hQ.1⟩), P3.1⟩,
      ⟨P4.2.1 (closure_nonempty_iff.mp ⟨0, hQ.2⟩), P4.1⟩, P3.2.2 hQ.1, P4.2.2 hQ.2⟩

theorem collar_nbhd {X : Type*} [TopologicalSpace X] [T2Space X] [LocallyCompactSpace X]
    (S E : Set X) (w : X → ℝ) (t : ℝ) (hw : Continuous w) (hE : IsClosed E)
    (hS : IsCompact S) (hSL : S ⊆ E ∩ w ⁻¹' {t})
    (hloc : ∀ p ∈ S, ∃ V ∈ 𝓝 p, V ∩ (E ∩ w ⁻¹' {t}) ⊆ S) :
    ∃ O : Set X, IsOpen O ∧ S ⊆ O ∧ IsCompact (closure O) ∧
      closure O ∩ (E ∩ w ⁻¹' {t}) ⊆ S ∧
      ∃ δ : ℝ, 0 < δ ∧ ∀ x ∈ frontier O, x ∈ E → δ < |w x - t| :=
by
  set L : Set X := E ∩ w ⁻¹' {t} with hLdef
  have hSU : S ⊆ interior (S ∪ Lᶜ) := by
    intro p hp
    obtain ⟨V, hV, hVL⟩ := hloc p hp
    refine mem_interior_iff_mem_nhds.mpr (Filter.mem_of_superset hV ?_)
    intro x hx
    by_cases hxL : x ∈ L
    · exact Or.inl (hVL ⟨hx, hxL⟩)
    · exact Or.inr hxL
  have hUL : ∀ x ∈ interior (S ∪ Lᶜ), x ∈ L → x ∈ S := by
    intro x hx hxL
    rcases interior_subset hx with h | h
    · exact h
    · exact absurd hxL h
  obtain ⟨O, hOo, hSO, hOU, hOc⟩ :=
    exists_open_between_and_isCompact_closure hS isOpen_interior hSU
  have hcl : closure O ∩ L ⊆ S := fun x hx => hUL x (hOU hx.1) hx.2
  have hK : IsCompact (frontier O ∩ E) :=
    (hOc.of_isClosed_subset isClosed_frontier frontier_subset_closure).inter_right hE
  have hpos : ∀ b ∈ frontier O ∩ E, (0 : ℝ) < |w b - t| := by
    intro b hb
    refine abs_pos.mpr (sub_ne_zero.mpr ?_)
    intro hwb
    have hbS : b ∈ S := hcl ⟨frontier_subset_closure hb.1, hb.2, hwb⟩
    have hfr := hb.1
    rw [hOo.frontier_eq] at hfr
    exact hfr.2 (hSO hbS)
  obtain ⟨a', ha', hbound⟩ :=
    hK.exists_forall_le' ((hw.sub continuous_const).abs.continuousOn) hpos
  refine ⟨O, hOo, hSO, hOc, hcl, a' / 2, half_pos ha', ?_⟩
  intro x hx hxE
  exact lt_of_lt_of_le (half_lt_self ha') (hbound x ⟨hx, hxE⟩)

theorem circle_jump_functions {X : Type*} [TopologicalSpace X]
    (Ω S O : Set X) (w : X → ℝ) (t δ : ℝ)
    (hw : Continuous w) (hO : IsOpen O) (hδ : 0 < δ)
    (hS : ∀ x ∈ O ∩ Ω, w x = t → x ∈ S)
    (hfr : ∀ x ∈ frontier O, x ∈ Ω → δ < |w x - t|)
    (hlift : ∀ θ : C(Ω, Circle), ∃ φ : C(Ω, ℝ), ∀ x : Ω, θ x = Circle.exp (φ x)) :
    ∃ f g : X → ℤ, ContinuousOn f (Ω \ S) ∧ ContinuousOn g (O ∩ Ω) ∧
      (∀ x ∈ O ∩ Ω, w x < t → f x = g x) ∧ (∀ x ∈ O ∩ Ω, t < w x → f x = g x + 1) :=
by
  classical
  
  have glue : ∀ {Y : Type} [TopologicalSpace Y] (s : Set X) (F : X → Y) (c : Y),
      (∀ x ∈ s, x ∈ O → ContinuousAt F x) →
      (∀ x ∈ s, x ∈ frontier O → ∀ᶠ y in 𝓝 x, y ∈ O → F y = c) →
      ContinuousOn (fun x => if x ∈ O then F x else c) s := by
    intro Y _ s F c hin hfr' x hx
    apply ContinuousAt.continuousWithinAt
    by_cases hxO : x ∈ O
    · refine (hin x hx hxO).congr ?_
      filter_upwards [hO.mem_nhds hxO] with y hy
      simp [hy]
    · by_cases hxc : x ∈ closure O
      · have hxf : x ∈ frontier O := by rw [hO.frontier_eq]; exact ⟨hxc, hxO⟩
        refine (continuousAt_const : ContinuousAt (fun _ : X => c) x).congr ?_
        filter_upwards [hfr' x hx hxf] with y hy
        by_cases hyO : y ∈ O
        · simp [hyO, hy hyO]
        · simp [hyO]
      · refine (continuousAt_const : ContinuousAt (fun _ : X => c) x).congr ?_
        filter_upwards [isClosed_closure.isOpen_compl.mem_nhds hxc] with y hy
        have hyO : y ∉ O := fun h => hy (subset_closure h)
        simp [hyO]
  
  have rnd : ∀ (h : X → ℝ) (s : Set X), ContinuousOn h s → (∀ x ∈ s, ∃ n : ℤ, h x = n) →
      ContinuousOn (fun x => round (h x)) s := by
    intro h s hh hint x hx
    obtain ⟨n, hn⟩ := hint x hx
    have h1 : ∀ᶠ y in 𝓝[s] x, |h y - h x| < 1 / 2 := by
      have := Metric.tendsto_nhds.mp (hh x hx) (1 / 2) (by norm_num)
      filter_upwards [this] with y hy
      rwa [Real.dist_eq] at hy
    have h2 : ∀ᶠ y in 𝓝[s] x, round (h y) = round (h x) := by
      filter_upwards [h1, self_mem_nhdsWithin] with y hy hys
      obtain ⟨m, hm⟩ := hint y hys
      rw [hm, hn] at hy ⊢
      have hmn : m = n := by
        have h3 : |((m - n : ℤ) : ℝ)| < 1 := by push_cast; linarith
        have h4 : |m - n| < 1 := by exact_mod_cast h3
        have := Int.abs_lt_one_iff.mp h4
        omega
      rw [hmn]
    exact (continuousWithinAt_const).congr_of_eventuallyEq h2 rfl
  have hτpos : 0 < 2 * Real.pi := by positivity
  have hτne : 2 * Real.pi ≠ 0 := hτpos.ne'
  
  let lam : ℝ → ℝ := fun s => max 0 (min 1 ((s + δ) / (2 * δ)))
  let ℓ : X → ℝ := fun x => lam (w x - t)
  have hℓc : Continuous ℓ := by
    show Continuous fun x => max 0 (min 1 ((w x - t + δ) / (2 * δ)))
    exact continuous_const.max (continuous_const.min
      (((hw.sub continuous_const).add continuous_const).div_const _))
  have hΛ1 : ∀ s, s < -δ → lam s = 0 := by
    intro s hs
    have h : (s + δ) / (2 * δ) < 0 := div_neg_of_neg_of_pos (by linarith) (by linarith)
    show max 0 (min 1 ((s + δ) / (2 * δ))) = 0
    rw [min_eq_right (by linarith), max_eq_left h.le]
  have hΛ2 : ∀ s, δ < s → lam s = 1 := by
    intro s hs
    have h : 1 < (s + δ) / (2 * δ) := by rw [one_lt_div (by linarith)]; linarith
    show max 0 (min 1 ((s + δ) / (2 * δ))) = 1
    rw [min_eq_left h.le, max_eq_right zero_le_one]
  have FR : ∀ x ∈ frontier O, x ∈ Ω → ∀ᶠ y in 𝓝 x,
      (ℓ y = 1 ∧ t < w y) ∨ (ℓ y = 0 ∧ w y < t) := by
    intro x hx hxΩ
    have hN : IsOpen {y | δ < |w y - t|} :=
      isOpen_lt continuous_const ((hw.sub continuous_const).abs)
    filter_upwards [hN.mem_nhds (hfr x hx hxΩ)] with y hy
    rcases lt_abs.mp hy with h | h
    · left; exact ⟨hΛ2 _ h, by linarith⟩
    · right; exact ⟨hΛ1 _ (by linarith), by linarith⟩
  
  let F : X → Circle := fun x => Circle.exp (2 * Real.pi * ℓ x)
  let θ : X → Circle := fun x => if x ∈ O then F x else 1
  have hθc : ContinuousOn θ Ω := by
    apply glue Ω F 1
    · intro x _ _
      exact (Circle.exp.continuous.comp (continuous_const.mul hℓc)).continuousAt
    · intro x hxΩ hxf
      filter_upwards [FR x hxf hxΩ] with y hy _
      rcases hy with ⟨h1, _⟩ | ⟨h1, _⟩
      · show Circle.exp (2 * Real.pi * ℓ y) = 1
        rw [h1, mul_one, Circle.exp_two_pi]
      · show Circle.exp (2 * Real.pi * ℓ y) = 1
        rw [h1, mul_zero, Circle.exp_zero]
  
  obtain ⟨φ, hφ⟩ := hlift ⟨Ω.restrict θ, hθc.restrict⟩
  let φh : X → ℝ := fun x => if h : x ∈ Ω then φ ⟨x, h⟩ else 0
  have hφc : ContinuousOn φh Ω := by
    rw [continuousOn_iff_continuous_restrict]
    have hr : Ω.restrict φh = ⇑φ := by
      funext ⟨x, hx⟩
      show (if h : x ∈ Ω then φ ⟨x, h⟩ else 0) = φ ⟨x, hx⟩
      rw [dif_pos hx]
    rw [hr]; exact φ.continuous
  have hφeq : ∀ x ∈ Ω, Circle.exp (φh x) = θ x := by
    intro x hx
    have h := hφ ⟨x, hx⟩
    show Circle.exp (if h : x ∈ Ω then φ ⟨x, h⟩ else 0) = θ x
    rw [dif_pos hx]
    exact h.symm
  
  let Fψ : X → ℝ := fun x => if w x < t then ℓ x else ℓ x - 1
  let ψ : X → ℝ := fun x => if x ∈ O then Fψ x else 0
  have hψc : ContinuousOn ψ (Ω \ S) := by
    apply glue (Ω \ S) Fψ 0
    · intro x hx hxO
      have hne : w x ≠ t := fun h => hx.2 (hS x ⟨hxO, hx.1⟩ h)
      rcases lt_or_gt_of_ne hne with h | h
      · refine hℓc.continuousAt.congr ?_
        filter_upwards [(isOpen_lt hw continuous_const).mem_nhds h] with y hy
        show ℓ y = (if w y < t then ℓ y else ℓ y - 1)
        rw [if_pos (show w y < t from hy)]
      · refine (hℓc.sub (continuous_const : Continuous fun _ : X => (1 : ℝ))).continuousAt.congr ?_
        filter_upwards [(isOpen_lt continuous_const hw).mem_nhds h] with y hy
        show ℓ y - 1 = (if w y < t then ℓ y else ℓ y - 1)
        rw [if_neg (not_lt.mpr (le_of_lt (show t < w y from hy)))]
    · intro x hx hxf
      filter_upwards [FR x hxf hx.1] with y hy _
      rcases hy with ⟨h1, h2⟩ | ⟨h1, h2⟩
      · show (if w y < t then ℓ y else ℓ y - 1) = 0
        rw [if_neg (not_lt.mpr h2.le), h1]; norm_num
      · show (if w y < t then ℓ y else ℓ y - 1) = 0
        rw [if_pos h2, h1]
  
  have hθψ : ∀ x, θ x = Circle.exp (2 * Real.pi * ψ x) := by
    intro x
    show (if x ∈ O then F x else 1) = Circle.exp (2 * Real.pi * (if x ∈ O then Fψ x else 0))
    by_cases hxO : x ∈ O
    · rw [if_pos hxO, if_pos hxO]
      show Circle.exp (2 * Real.pi * ℓ x) =
        Circle.exp (2 * Real.pi * (if w x < t then ℓ x else ℓ x - 1))
      by_cases hwt : w x < t
      · rw [if_pos hwt]
      · rw [if_neg hwt, mul_sub, mul_one, Circle.exp_sub, Circle.exp_two_pi, div_one]
    · rw [if_neg hxO, if_neg hxO, mul_zero, Circle.exp_zero]
  
  have key : ∀ x ∈ Ω, ∀ b : ℝ, θ x = Circle.exp (2 * Real.pi * b) →
      ∃ m : ℤ, (φh x - 2 * Real.pi * b) / (2 * Real.pi) = m := by
    intro x hx b hb
    have h1 : Circle.exp (φh x) = Circle.exp (2 * Real.pi * b) := (hφeq x hx).trans hb
    obtain ⟨m, hm⟩ := Circle.exp_eq_exp.mp h1
    refine ⟨m, ?_⟩
    rw [hm, add_sub_cancel_left, mul_div_cancel_right₀ _ hτne]
  refine ⟨fun x => round ((φh x - 2 * Real.pi * ψ x) / (2 * Real.pi)),
    fun x => round ((φh x - 2 * Real.pi * ℓ x) / (2 * Real.pi)), ?_, ?_, ?_, ?_⟩
  · refine rnd (fun x => (φh x - 2 * Real.pi * ψ x) / (2 * Real.pi)) (Ω \ S) ?_ ?_
    · exact ((hφc.mono Set.diff_subset).sub (continuousOn_const.mul hψc)).div_const _
    · intro x hx
      exact key x hx.1 _ (hθψ x)
  · refine rnd (fun x => (φh x - 2 * Real.pi * ℓ x) / (2 * Real.pi)) (O ∩ Ω) ?_ ?_
    · exact ((hφc.mono Set.inter_subset_right).sub
        ((continuous_const.mul hℓc).continuousOn)).div_const _
    · intro x hx
      refine key x hx.2 _ ?_
      show (if x ∈ O then F x else 1) = Circle.exp (2 * Real.pi * ℓ x)
      rw [if_pos hx.1]
  · intro x hx hwt
    have hψx : ψ x = ℓ x := by
      show (if x ∈ O then Fψ x else 0) = ℓ x
      rw [if_pos hx.1]
      show (if w x < t then ℓ x else ℓ x - 1) = ℓ x
      rw [if_pos hwt]
    show round ((φh x - 2 * Real.pi * ψ x) / (2 * Real.pi)) =
      round ((φh x - 2 * Real.pi * ℓ x) / (2 * Real.pi))
    rw [hψx]
  · intro x hx hwt
    have hψx : ψ x = ℓ x - 1 := by
      show (if x ∈ O then Fψ x else 0) = ℓ x - 1
      rw [if_pos hx.1]
      show (if w x < t then ℓ x else ℓ x - 1) = ℓ x - 1
      rw [if_neg (not_lt.mpr hwt.le)]
    show round ((φh x - 2 * Real.pi * ψ x) / (2 * Real.pi)) =
      round ((φh x - 2 * Real.pi * ℓ x) / (2 * Real.pi)) + 1
    rw [hψx, ← round_add_one]
    congr 1
    rw [div_add_one hτne]
    ring

theorem two_sides_of_jump {X : Type*} [TopologicalSpace X] [LocallyConnectedSpace X]
    (Ω S O : Set X) (w : X → ℝ) (t : ℝ) (f g : X → ℤ)
    (hΩo : IsOpen Ω) (hΩc : IsConnected Ω) (hSc : IsClosed S) (hSconn : IsPreconnected S)
    (p₀ : X) (hp₀ : p₀ ∈ S) (hSt : ∀ x ∈ S, w x = t)
    (hf : ContinuousOn f (Ω \ S)) (hg : ContinuousOn g (O ∩ Ω))
    (hfg₁ : ∀ x ∈ O ∩ Ω, w x < t → f x = g x)
    (hfg₂ : ∀ x ∈ O ∩ Ω, t < w x → f x = g x + 1)
    (hloc : ∀ p ∈ S, ∃ V : Set X, IsOpen V ∧ p ∈ V ∧ V ⊆ O ∧
      IsPreconnected (V ∩ Ω) ∧
      IsConnected (V ∩ Ω ∩ {x | t < w x}) ∧ IsConnected (V ∩ Ω ∩ {x | w x < t}) ∧
      p ∈ closure (V ∩ Ω ∩ {x | t < w x}) ∧ p ∈ closure (V ∩ Ω ∩ {x | w x < t}) ∧
      (∀ x ∈ V ∩ Ω, w x = t → x ∈ S)) :
    ∃ A B : Set X, IsOpen A ∧ IsOpen B ∧ Disjoint A B ∧ A ∪ B = Ω \ S ∧
      IsConnected A ∧ IsConnected B ∧ S ⊆ closure A ∧ S ⊆ closure B :=
by
  classical
  choose! V hVo hpV hVO hVΩ hVp hVm hclp hclm hVS using hloc
  have hD : IsOpen (Ω \ S) := hΩo.sdiff hSc
  have hCo : ∀ z, IsOpen (connectedComponentIn (Ω \ S) z) := fun z => hD.connectedComponentIn
  
  have chain : ∀ (P : Set X) (a : X),
      (∀ p ∈ S, IsPreconnected (V p ∩ P) ∧ V p ∩ P ⊆ Ω \ S ∧ p ∈ closure (V p ∩ P)) →
      (V p₀ ∩ P ∩ connectedComponentIn (Ω \ S) a).Nonempty →
      ∀ p ∈ S, V p ∩ P ⊆ connectedComponentIn (Ω \ S) a := by
    intro P a hP hstart
    have absorb : ∀ q ∈ S, (V q ∩ P ∩ connectedComponentIn (Ω \ S) a).Nonempty →
        V q ∩ P ⊆ connectedComponentIn (Ω \ S) a := by
      rintro q hq ⟨z, hzW, hzC⟩
      have h1 := (hP q hq).1.subset_connectedComponentIn hzW (hP q hq).2.1
      rwa [← connectedComponentIn_eq hzC] at h1
    have overlap : ∀ p ∈ S, ∀ q ∈ S, q ∈ V p → (V p ∩ P ∩ (V q ∩ P)).Nonempty := by
      intro p hp q hq hqV
      obtain ⟨z, hzV, hzW⟩ := mem_closure_iff.mp (hP q hq).2.2 (V p) (hVo p hp) hqV
      exact ⟨z, ⟨hzV, hzW.2⟩, hzW⟩
    have prop : ∀ q ∈ S, ∀ p₁ ∈ {p | p ∈ S ∧ V p ∩ P ⊆ connectedComponentIn (Ω \ S) a},
        ∀ p₂ ∈ S, q ∈ V p₁ → q ∈ V p₂ →
        p₂ ∈ {p | p ∈ S ∧ V p ∩ P ⊆ connectedComponentIn (Ω \ S) a} := by
      intro q hq p₁ hp₁ p₂ hp₂ h1 h2
      obtain ⟨z, hz1, hzq⟩ := overlap p₁ hp₁.1 q hq h1
      have hWq := absorb q hq ⟨z, hzq, hp₁.2 hz1⟩
      obtain ⟨z', hz2, hzq'⟩ := overlap p₂ hp₂ q hq h2
      exact ⟨hp₂, absorb p₂ hp₂ ⟨z', hz2, hWq hzq'⟩⟩
    have hp₀T : p₀ ∈ {p | p ∈ S ∧ V p ∩ P ⊆ connectedComponentIn (Ω \ S) a} :=
      ⟨hp₀, absorb p₀ hp₀ hstart⟩
    have key := isPreconnected_iff_subset_of_disjoint.mp hSconn
      (⋃ p ∈ {p | p ∈ S ∧ V p ∩ P ⊆ connectedComponentIn (Ω \ S) a}, V p)
      (⋃ p ∈ S \ {p | p ∈ S ∧ V p ∩ P ⊆ connectedComponentIn (Ω \ S) a}, V p)
      (isOpen_biUnion fun p hp => hVo p hp.1) (isOpen_biUnion fun p hp => hVo p hp.1)
      (fun p hp => by
        by_cases hpT : p ∈ {p | p ∈ S ∧ V p ∩ P ⊆ connectedComponentIn (Ω \ S) a}
        · exact Or.inl (Set.mem_biUnion hpT (hpV p hp))
        · exact Or.inr (Set.mem_biUnion ⟨hp, hpT⟩ (hpV p hp)))
      (by
        ext q
        refine ⟨fun ⟨hq, h1, h2⟩ => ?_, fun h => h.elim⟩
        obtain ⟨p₁, hp₁, hq1⟩ := Set.mem_iUnion₂.mp h1
        obtain ⟨p₂, hp₂, hq2⟩ := Set.mem_iUnion₂.mp h2
        exact absurd (prop q hq p₁ hp₁ p₂ hp₂.1 hq1 hq2) hp₂.2)
    intro p hp
    rcases key with hS1 | hS2
    · obtain ⟨p₁, hp₁, hq1⟩ := Set.mem_iUnion₂.mp (hS1 hp)
      exact (prop p hp p₁ hp₁ p hp hq1 (hpV p hp)).2
    · exfalso
      obtain ⟨p₂, hp₂, hq2⟩ := Set.mem_iUnion₂.mp (hS2 hp₀)
      exact hp₂.2 (prop p₀ hp₀ p₀ hp₀T p₂ hp₂.1 (hpV p₀ hp₀) hq2)
  
  have fills : ∀ x ∈ Ω \ S, Disjoint (closure (connectedComponentIn (Ω \ S) x)) S →
      Ω ⊆ connectedComponentIn (Ω \ S) x := by
    intro x hx hdisj
    have hcl : ∀ y ∈ Ω, y ∈ closure (connectedComponentIn (Ω \ S) x) →
        y ∈ connectedComponentIn (Ω \ S) x := by
      intro y hyΩ hycl
      have hyS : y ∉ S := fun hyS => Set.disjoint_left.mp hdisj hycl hyS
      have hyD : y ∈ Ω \ S := ⟨hyΩ, hyS⟩
      obtain ⟨z, hzy, hzx⟩ := mem_closure_iff.mp hycl _ (hCo y) (mem_connectedComponentIn hyD)
      rw [connectedComponentIn_eq hzx, ← connectedComponentIn_eq hzy]
      exact mem_connectedComponentIn hyD
    refine hΩc.isPreconnected.subset_left_of_subset_union (hCo x) isClosed_closure.isOpen_compl
      (Set.disjoint_compl_right_iff_subset.mpr subset_closure) ?_
      ⟨x, hx.1, mem_connectedComponentIn hx⟩
    intro y hy
    by_cases h : y ∈ closure (connectedComponentIn (Ω \ S) x)
    · exact Or.inl (hcl y hy h)
    · exact Or.inr h
  
  have hsubp : ∀ p, V p ∩ (Ω ∩ {x | t < w x}) ⊆ Ω \ S := by
    rintro p x ⟨-, hxΩ, hxw⟩
    exact ⟨hxΩ, fun hxS => (show t < w x from hxw).ne' (hSt x hxS)⟩
  have hsubm : ∀ p, V p ∩ (Ω ∩ {x | w x < t}) ⊆ Ω \ S := by
    rintro p x ⟨-, hxΩ, hxw⟩
    exact ⟨hxΩ, fun hxS => (show w x < t from hxw).ne (hSt x hxS)⟩
  
  obtain ⟨a₀, ha₀⟩ := (hVp p₀ hp₀).nonempty
  obtain ⟨b₀, hb₀⟩ := (hVm p₀ hp₀).nonempty
  have ha₀D : a₀ ∈ Ω \ S := hsubp p₀ ⟨ha₀.1.1, ha₀.1.2, ha₀.2⟩
  have hb₀D : b₀ ∈ Ω \ S := hsubm p₀ ⟨hb₀.1.1, hb₀.1.2, hb₀.2⟩
  have ha₀A : a₀ ∈ connectedComponentIn (Ω \ S) a₀ := mem_connectedComponentIn ha₀D
  have hb₀B : b₀ ∈ connectedComponentIn (Ω \ S) b₀ := mem_connectedComponentIn hb₀D
  
  have hAB : Disjoint (connectedComponentIn (Ω \ S) a₀) (connectedComponentIn (Ω \ S) b₀) := by
    rw [Set.disjoint_left]
    intro z hzA hzB
    have hAeq : connectedComponentIn (Ω \ S) a₀ = connectedComponentIn (Ω \ S) b₀ :=
      (connectedComponentIn_eq hzA).trans (connectedComponentIn_eq hzB).symm
    have hb₀A : b₀ ∈ connectedComponentIn (Ω \ S) a₀ := hAeq ▸ hb₀B
    have hf1 : f a₀ = f b₀ := isPreconnected_connectedComponentIn.constant
      (hf.mono (connectedComponentIn_subset _ _)) ha₀A hb₀A
    have hg1 : g a₀ = g b₀ := (hVΩ p₀ hp₀).constant
      (hg.mono (Set.inter_subset_inter_left _ (hVO p₀ hp₀))) ⟨ha₀.1.1, ha₀.1.2⟩
      ⟨hb₀.1.1, hb₀.1.2⟩
    have h1 := hfg₂ a₀ ⟨hVO p₀ hp₀ ha₀.1.1, ha₀.1.2⟩ ha₀.2
    have h2 := hfg₁ b₀ ⟨hVO p₀ hp₀ hb₀.1.1, hb₀.1.2⟩ hb₀.2
    omega
  
  have hAp : ∀ p ∈ S, V p ∩ (Ω ∩ {x | t < w x}) ⊆ connectedComponentIn (Ω \ S) a₀ :=
    chain (Ω ∩ {x | t < w x}) a₀
      (fun p hp => ⟨by rw [← Set.inter_assoc]; exact (hVp p hp).isPreconnected, hsubp p,
        by rw [← Set.inter_assoc]; exact hclp p hp⟩)
      ⟨a₀, ⟨ha₀.1.1, ha₀.1.2, ha₀.2⟩, ha₀A⟩
  have hBm : ∀ p ∈ S, V p ∩ (Ω ∩ {x | w x < t}) ⊆ connectedComponentIn (Ω \ S) b₀ :=
    chain (Ω ∩ {x | w x < t}) b₀
      (fun p hp => ⟨by rw [← Set.inter_assoc]; exact (hVm p hp).isPreconnected, hsubm p,
        by rw [← Set.inter_assoc]; exact hclm p hp⟩)
      ⟨b₀, ⟨hb₀.1.1, hb₀.1.2, hb₀.2⟩, hb₀B⟩
  
  have hcov : connectedComponentIn (Ω \ S) a₀ ∪ connectedComponentIn (Ω \ S) b₀ = Ω \ S := by
    apply Set.Subset.antisymm
    · exact Set.union_subset (connectedComponentIn_subset _ _) (connectedComponentIn_subset _ _)
    · intro x hx
      have hxC := mem_connectedComponentIn hx
      by_cases h : Disjoint (closure (connectedComponentIn (Ω \ S) x)) S
      · exfalso
        have hΩC := fills x hx h
        have e1 := connectedComponentIn_eq (hΩC ha₀D.1)
        have e2 := connectedComponentIn_eq (hΩC hb₀D.1)
        have : a₀ ∈ connectedComponentIn (Ω \ S) b₀ := by
          rw [← e2, e1]; exact ha₀A
        exact Set.disjoint_left.mp hAB ha₀A this
      · obtain ⟨p, hpcl, hpS⟩ := Set.not_disjoint_iff.mp h
        obtain ⟨z, hzV, hzC⟩ := mem_closure_iff.mp hpcl (V p) (hVo p hpS) (hpV p hpS)
        have hzD : z ∈ Ω \ S := connectedComponentIn_subset _ _ hzC
        have hwz : w z ≠ t := fun hw => hzD.2 (hVS p hpS z ⟨hzV, hzD.1⟩ hw)
        have e0 := connectedComponentIn_eq hzC
        rcases lt_or_gt_of_ne hwz with hlt | hgt
        · right
          have hzB := hBm p hpS ⟨hzV, hzD.1, hlt⟩
          have e1 := connectedComponentIn_eq hzB
          rw [e1, ← e0]; exact hxC
        · left
          have hzA := hAp p hpS ⟨hzV, hzD.1, hgt⟩
          have e1 := connectedComponentIn_eq hzA
          rw [e1, ← e0]; exact hxC
  refine ⟨connectedComponentIn (Ω \ S) a₀, connectedComponentIn (Ω \ S) b₀, hCo a₀, hCo b₀, hAB,
    hcov, isConnected_connectedComponentIn_iff.mpr ha₀D,
    isConnected_connectedComponentIn_iff.mpr hb₀D, ?_, ?_⟩
  · intro p hp
    exact closure_mono (hAp p hp) (by rw [← Set.inter_assoc]; exact hclp p hp)
  · intro p hp
    exact closure_mono (hBm p hp) (by rw [← Set.inter_assoc]; exact hclm p hp)

theorem separates_of_circle_liftable [T2Space M] [IsManifold 𝓘(ℝ, E3) ∞ M]
    (Φ : EndChart M) (β : M → ℝ) (Re : ℝ) (hβ : IsExteriorDomain Φ β Re)
    (hconn : IsConnected {p : M | 0 < β p}) (hlift : CircleLiftable {p : M | 0 < β p})
    (hesc : ∀ p : M, ∃ ρ : ℝ, ∃ V ∈ 𝓝 p, ∀ y : E3, ρ < ‖y‖ → Φ.Φ y ∉ V) :
    SeparatesLevelComponents β :=
by
  obtain ⟨hβs, hreg, hRe, hfar, hcpt⟩ := hβ
  haveI : LocallyCompactSpace M := ChartedSpace.locallyCompactSpace E3 M
  haveI : LocallyConnectedSpace M := ChartedSpace.locallyConnectedSpace E3 M
  intro w t p₀ hw hp₀ hScpt hT
  
  have hβc : Continuous β := hβs.continuous
  have hwc : Continuous w := hw.continuous
  have hΩo : IsOpen {p : M | 0 < β p} := isOpen_lt continuous_const hβc
  have hEc : IsClosed {p : M | 0 ≤ β p} := isClosed_le continuous_const hβc
  have hSL : connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀ ⊆
      {p : M | 0 ≤ β p} ∩ w ⁻¹' {t} := connectedComponentIn_subset _ _
  have hp₀S : p₀ ∈ connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀ :=
    mem_connectedComponentIn hp₀
  have hSpc : IsPreconnected (connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀) :=
    isPreconnected_connectedComponentIn
  have hScl : IsClosed (connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀) :=
    hScpt.isClosed
  have hΩE : {p : M | 0 < β p} ⊆ {p : M | 0 ≤ β p} := fun x (hx : 0 < β x) =>
    (le_of_lt hx : 0 ≤ β x)
  have hSw : ∀ x ∈ connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀, w x = t :=
    fun x hx => (hSL hx).2
  have hSE : ∀ x ∈ connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀, 0 ≤ β x :=
    fun x hx => (hSL hx).1
  
  have GOOD : ∀ p ∈ connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀, ∀ U ∈ 𝓝 p,
      ∃ V : Set M, IsOpen V ∧ p ∈ V ∧ V ⊆ U ∧
      IsPreconnected (V ∩ ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t})) ∧
      IsPreconnected (V ∩ {p : M | 0 < β p}) ∧
      IsConnected (V ∩ {p : M | 0 < β p} ∩ {x | t < w x}) ∧
      IsConnected (V ∩ {p : M | 0 < β p} ∩ {x | w x < t}) ∧
      p ∈ closure (V ∩ {p : M | 0 < β p} ∩ {x | t < w x}) ∧
      p ∈ closure (V ∩ {p : M | 0 < β p} ∩ {x | w x < t}) := by
    intro p hp U hU
    have hwp : w p = t := hSw p hp
    rcases (hSE p hp).lt_or_eq with hβp | hβp
    · have hU' : U ∩ {p : M | 0 < β p} ∈ 𝓝 p := Filter.inter_mem hU (hΩo.mem_nhds hβp)
      obtain ⟨κ, ε, hε, hpκ, hsrc, hκp, htgt, hwκ, -⟩ :=
        level_chart w β hw hβs p (hT p hp) (hreg p) (U ∩ {p : M | 0 < β p}) hU'
      obtain ⟨h1, h2, h3, h4, h5, h6⟩ := chart_level_sides w β p κ ε hε hpκ hκp htgt hwκ
        (Or.inl (fun x hx => (hsrc hx).2))
      rw [hwp] at h1 h3 h4 h5 h6
      exact ⟨κ.source, κ.open_source, hpκ, fun x hx => (hsrc hx).1, h1, h2, h3, h4, h5, h6⟩
    · obtain ⟨κ, ε, hε, hpκ, hsrc, hκp, htgt, hwκ, hβκ⟩ :=
        level_chart w β hw hβs p (hT p hp) (hreg p) U hU
      obtain ⟨h1, h2, h3, h4, h5, h6⟩ := chart_level_sides w β p κ ε hε hpκ hκp htgt hwκ
        (Or.inr (hβκ hβp.symm))
      rw [hwp] at h1 h3 h4 h5 h6
      exact ⟨κ.source, κ.open_source, hpκ, hsrc, h1, h2, h3, h4, h5, h6⟩
  
  have hloc5 : ∀ p ∈ connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀,
      ∃ V ∈ 𝓝 p, V ∩ ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) ⊆
        connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀ := by
    intro p hp
    obtain ⟨V, hVo, hpV, -, hVL, -⟩ := GOOD p hp Set.univ Filter.univ_mem
    refine ⟨V, hVo.mem_nhds hpV, ?_⟩
    have h1 : V ∩ ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) ⊆
        connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p :=
      hVL.subset_connectedComponentIn ⟨hpV, hSL hp⟩ Set.inter_subset_right
    rw [← connectedComponentIn_eq hp] at h1
    exact h1
  
  obtain ⟨O, hOo, hSO, hOc, hOL, δ, hδ, hδfr⟩ :=
    collar_nbhd (connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀) {p : M | 0 ≤ β p}
      w t hwc hEc hScpt hSL hloc5
  have K1 : ∀ x ∈ O ∩ {p : M | 0 < β p}, w x = t →
      x ∈ connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀ := fun x hx hwx =>
    hOL ⟨subset_closure hx.1, hΩE hx.2, hwx⟩
  
  obtain ⟨f, g, hf, hg, hfg₁, hfg₂⟩ :=
    circle_jump_functions {p : M | 0 < β p}
      (connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀) O w t δ hwc hOo hδ K1
      (fun x hx hxΩ => hδfr x hx (hΩE hxΩ)) hlift
  
  obtain ⟨A, B, hAo, hBo, hAB, hcov, hAc, hBc, hSA, hSB⟩ :=
    two_sides_of_jump {p : M | 0 < β p}
      (connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀) O w t f g hΩo hconn hScl hSpc
      p₀ hp₀S hSw hf hg hfg₁ hfg₂
      (fun p hp => by
        obtain ⟨V, hVo, hpV, hVO, -, hVΩ, h3, h4, h5, h6⟩ :=
          GOOD p hp O (hOo.mem_nhds (hSO hp))
        exact ⟨V, hVo, hpV, hVO, hVΩ, h3, h4, h5, h6,
          fun x hx hwx => K1 x ⟨hVO hx.1, hx.2⟩ hwx⟩)
  
  have hfarK : ∃ R : ℝ, ∀ y : E3, R < ‖y‖ → Φ.Φ y ∉ closure O := by
    choose ρ V hV hρV using hesc
    obtain ⟨T, -, hcover⟩ := hOc.elim_nhds_subcover V (fun x _ => hV x)
    refine ⟨∑ p ∈ T, |ρ p|, fun y hy hyK => ?_⟩
    obtain ⟨p, hpT, hpV⟩ := Set.mem_iUnion₂.mp (hcover hyK)
    have hle : ρ p ≤ ∑ p ∈ T, |ρ p| :=
      (le_abs_self _).trans (Finset.single_le_sum (fun i _ => abs_nonneg (ρ i)) hpT)
    exact hρV p y (lt_of_le_of_lt hle hy) hpV
  obtain ⟨R₀, hR₀⟩ := hfarK
  
  have hΦcont : ContinuousOn Φ.Φ Φ.Φ.source := Φ.Φ.contMDiffOn.continuousOn
  have hsubR : ∀ r : ℝ, 1 ≤ r → {y : E3 | r < ‖y‖} ⊆ Φ.Φ.source := by
    intro r hr y hy
    rw [Φ.source_eq]
    exact lt_of_le_of_lt hr (show r < ‖y‖ from hy)
  obtain ⟨R, hR0R, hReR⟩ : ∃ R : ℝ, R₀ ≤ R ∧ Re ≤ R :=
    ⟨max R₀ Re, le_max_left _ _, le_max_right _ _⟩
  have hR1 : 1 ≤ R := by linarith
  have hFo : IsOpen (Φ.Φ '' {y : E3 | R < ‖y‖}) := by
    have := Φ.Φ.toOpenPartialHomeomorph.isOpen_image_of_subset_source
      (isOpen_lt continuous_const continuous_norm) (hsubR R hR1)
    exact this
  have hSRconn : IsConnected {y : E3 | R < ‖y‖} := by
    have hsph : IsConnected (sphere (0 : E3) 1) :=
      isConnected_sphere (by rw [← Module.finrank_eq_rank, finrank_euclideanSpace]; simp) 0
        zero_le_one
    have hprod := hsph.prod (isConnected_Ioi (a := R))
    have himg := hprod.image (fun q : E3 × ℝ => q.2 • q.1)
      (by fun_prop : Continuous (fun q : E3 × ℝ => q.2 • q.1)).continuousOn
    convert himg using 1
    ext y
    simp only [Set.mem_setOf_eq, Set.mem_image, Set.mem_prod, mem_sphere_iff_norm, sub_zero,
      Set.mem_Ioi, Prod.exists]
    constructor
    · intro hy
      have hy0 : ‖y‖ ≠ 0 := ne_of_gt (by linarith)
      refine ⟨‖y‖⁻¹ • y, ‖y‖, ⟨?_, hy⟩, ?_⟩
      · rw [norm_smul, norm_inv, norm_norm, inv_mul_cancel₀ hy0]
      · rw [smul_smul, mul_inv_cancel₀ hy0, one_smul]
    · rintro ⟨u, r, ⟨hu, hr⟩, rfl⟩
      rw [norm_smul, hu, mul_one, Real.norm_eq_abs, abs_of_pos (by linarith)]
      exact hr
  have hFc : IsConnected (Φ.Φ '' {y : E3 | R < ‖y‖}) :=
    hSRconn.image Φ.Φ (hΦcont.mono (hsubR R hR1))
  have hann : IsCompact (Φ.Φ '' {y : E3 | Re ≤ ‖y‖ ∧ ‖y‖ ≤ R}) := by
    refine IsCompact.image_of_continuousOn ?_ (hΦcont.mono ?_)
    · refine Metric.isCompact_of_isClosed_isBounded ?_ ?_
      · exact (isClosed_le continuous_const continuous_norm).inter
          (isClosed_le continuous_norm continuous_const)
      · exact (Metric.isBounded_closedBall (x := (0 : E3)) (r := R)).subset
          (fun y hy => by simpa using hy.2)
    · intro y hy
      rw [Φ.source_eq]
      show (1 : ℝ) < ‖y‖
      linarith [hy.1]
  
  have hFΩS : Φ.Φ '' {y : E3 | R < ‖y‖} ⊆
      {p : M | 0 < β p} \ connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀ := by
    rintro x ⟨y, hy, rfl⟩
    have hy' : R < ‖y‖ := hy
    exact ⟨hfar y (by linarith),
      fun hS => hR₀ y (by linarith) (subset_closure (hSO hS))⟩
  have hFAB : Φ.Φ '' {y : E3 | R < ‖y‖} ⊆ A ∨ Φ.Φ '' {y : E3 | R < ‖y‖} ⊆ B :=
    IsPreconnected.subset_or_subset hAo hBo hAB (by rw [hcov]; exact hFΩS) hFc.isPreconnected
  
  have hEC : {p : M | 0 ≤ β p} \ Φ.Φ '' {y : E3 | R < ‖y‖} ⊆
      ({p : M | 0 ≤ β p} \ Φ.Φ '' {y : E3 | Re < ‖y‖}) ∪
        Φ.Φ '' {y : E3 | Re ≤ ‖y‖ ∧ ‖y‖ ≤ R} := by
    rintro x ⟨hxE, hxF⟩
    by_cases hx : x ∈ Φ.Φ '' {y : E3 | Re < ‖y‖}
    · obtain ⟨y, hy, rfl⟩ := hx
      have hy' : Re < ‖y‖ := hy
      right
      refine ⟨y, ⟨le_of_lt hy', ?_⟩, rfl⟩
      by_contra hyR
      exact hxF ⟨y, (not_le.mp hyR : R < ‖y‖), rfl⟩
    · left
      exact ⟨hxE, hx⟩
  have hCc : IsCompact (({p : M | 0 ≤ β p} \ Φ.Φ '' {y : E3 | Re < ‖y‖}) ∪
      Φ.Φ '' {y : E3 | Re ≤ ‖y‖ ∧ ‖y‖ ≤ R}) := hcpt.union hann
  
  have s10 : ∀ A' B' : Set M, IsOpen A' → IsOpen B' → Disjoint A' B' →
      A' ∪ B' = {p : M | 0 < β p} \ connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀ →
      IsConnected A' → connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀ ⊆ closure A' →
      Φ.Φ '' {y : E3 | R < ‖y‖} ⊆ B' →
      ∃ K : Set M, IsCompact K ∧
        connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀ ⊆ K ∧
        K ⊆ {p : M | 0 ≤ β p} ∧
        frontier K ⊆ connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀ ∪
          {p : M | β p = 0} ∧
        IsConnected (K \ connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀) ∧
        K ⊆ closure (interior K) := by
    intro A' B' hA'o hB'o hA'B' hcov' hA'c hSA' hFB'
    have hA'Ω : A' ⊆
        {p : M | 0 < β p} \ connectedComponentIn ({p : M | 0 ≤ β p} ∩ w ⁻¹' {t}) p₀ := by
      rw [← hcov']; exact Set.subset_union_left
    have hclE : closure A' ⊆ {p : M | 0 ≤ β p} :=
      closure_minimal (fun x hx => hΩE (hA'Ω hx).1) hEc
    have hFcl : Disjoint (Φ.Φ '' {y : E3 | R < ‖y‖}) (closure A') :=
      (Disjoint.mono_left hFB' hA'B'.symm).closure_right hFo
    have hB'cl : Disjoint B' (closure A') := hA'B'.symm.closure_right hB'o
    have hint : A' ⊆ interior (closure A') := interior_maximal subset_closure hA'o
    refine ⟨closure A', ?_, hSA', hclE, ?_, ?_, closure_mono hint⟩
    · refine hCc.of_isClosed_subset isClosed_closure (fun x hx => hEC ⟨hclE hx, fun hxF => ?_⟩)
      exact Set.disjoint_left.mp hFcl hxF hx
    · intro x hx
      rw [frontier, closure_closure] at hx
      by_contra hcon
      simp only [Set.mem_union, not_or, Set.mem_setOf_eq] at hcon
      have hβx : 0 < β x := lt_of_le_of_ne (show 0 ≤ β x from hclE hx.1) (Ne.symm hcon.2)
      have hxD : x ∈ A' ∪ B' := by rw [hcov']; exact ⟨hβx, hcon.1⟩
      rcases hxD with h | h
      · exact hx.2 (hint h)
      · exact Set.disjoint_left.mp hB'cl h hx.1
    · exact hA'c.subset_closure (fun x hx => ⟨subset_closure hx, (hA'Ω hx).2⟩) Set.diff_subset
  
  rcases hFAB with hFA | hFB
  · exact s10 B A hBo hAo hAB.symm (by rw [Set.union_comm]; exact hcov) hBc hSB hFA
  · exact s10 A B hAo hBo hAB hcov hAc hSA hFB

-- SOURCE_END: lines 160084..180201 from answer (1).lean

end PositiveMass
end

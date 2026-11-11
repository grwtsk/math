/-
Copyright (c) 2026 grwtsk contributors. MIT.

Source: ZCERT-1, sections 2--5 and 7--8, research repository commit
b8c773f7847126518bcc20f3e37d1223af889cf4; Rouché erratum at
8b37baad8279af3c539579487dbfaa53f0ff964f. Issue: grwtsk/math#1806.

FORMAL_SOURCE_CANDIDATE. Elaboration, fresh kernel replay, transitive
axiom audit, and independent analytical review: NOT_RUN.
-/

import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.HermiteMomentCertificates

/-!
# Zero-count certificate consumers and exact critical-line return

MSC2020: 11M26, 11M41, 30C15.

The file proves finite algebraic/logical consumers. It does not prove the
argument principle, implement contour quadrature, identify a normalization
of a Dirichlet L-function, or prove all-window arithmetic count saturation.
`IdentifiesZeros` and the signed-count equality are explicit mathematical
premises; a hash, numerical agreement, or certificate label does not supply
them. A caller must separately identify multiplicities with analytic orders
before calling a sum an analytic zero count.

There is deliberately no new definition named GRH: all-zero reality is
stated for an explicitly supplied function or family. The canonical
arithmetic target still needs its precise source and domain bridge.
-/

noncomputable section

open scoped BigOperators ComplexConjugate

namespace GRWTSK.ZeroCountCertificates

/-- A finite positive divisor. The support lists locations once; the
multiplicity function retains arbitrary positive multiplicities. -/
structure FiniteDivisor where
  support : Finset ℂ
  multiplicity : ℂ → ℕ
  positive : ∀ z ∈ support, 0 < multiplicity z

namespace FiniteDivisor

def totalCount (d : FiniteDivisor) : ℕ :=
  ∑ z ∈ d.support, d.multiplicity z

noncomputable def realCount (d : FiniteDivisor) : ℕ := by
  classical
  exact ∑ z ∈ d.support, if z.im = 0 then d.multiplicity z else 0

def AllReal (d : FiniteDivisor) : Prop :=
  ∀ z ∈ d.support, z.im = 0

/-- Exact identification of locations, not an assertion inferred from a label.
This predicate alone does not identify weights with analytic orders. -/
def IdentifiesZeros (d : FiniteDivisor) (f : ℂ → ℂ) (D : Set ℂ) : Prop :=
  ∀ z, z ∈ d.support ↔ z ∈ D ∧ f z = 0

theorem realCount_le_totalCount (d : FiniteDivisor) :
    d.realCount ≤ d.totalCount := by
  classical
  unfold realCount totalCount
  apply Finset.sum_le_sum
  intro z _
  split_ifs <;> omega

/-- Missing any positive-multiplicity nonreal location strictly lowers the real count. -/
theorem allReal_of_count_saturation (d : FiniteDivisor)
    (hsaturation : d.realCount = d.totalCount) : d.AllReal := by
  classical
  intro z hz
  by_contra hnonreal
  have hstrict : d.realCount < d.totalCount := by
    unfold realCount totalCount
    apply Finset.sum_lt_sum
    · intro w _
      split_ifs <;> omega
    · refine ⟨z, hz, ?_⟩
      simpa only [if_neg hnonreal] using d.positive z hz
  omega

theorem count_saturation_of_allReal (d : FiniteDivisor) (hreal : d.AllReal) :
    d.realCount = d.totalCount := by
  classical
  unfold realCount totalCount
  apply Finset.sum_congr rfl
  intro z hz
  simp only [if_pos (hreal z hz)]

theorem allReal_iff_count_saturation (d : FiniteDivisor) :
    d.AllReal ↔ d.realCount = d.totalCount :=
  ⟨count_saturation_of_allReal d, allReal_of_count_saturation d⟩

/-- A certified lower bound on real multiplicity can saturate the complete count. -/
theorem allReal_of_lower_bound_saturation (d : FiniteDivisor) (lower : ℕ)
    (hlower : lower ≤ d.realCount) (hcomplete : d.totalCount = lower) :
    d.AllReal := by
  apply allReal_of_count_saturation
  exact Nat.le_antisymm d.realCount_le_totalCount (by omega)

/-- Conjugation plus multiplicity-count one forces reality. No simplicity assumption. -/
theorem allReal_of_totalCount_eq_one (d : FiniteDivisor)
    (hconj : ∀ z ∈ d.support, conj z ∈ d.support)
    (hcount : d.totalCount = 1) : d.AllReal := by
  classical
  intro z hz
  by_contra hnonreal
  have hne : conj z ≠ z := by
    intro h
    exact hnonreal (Complex.conj_eq_iff_im.mp h)
  have hzbar := hconj z hz
  have herase : conj z ∈ d.support.erase z := Finset.mem_erase.mpr ⟨hne, hzbar⟩
  have hle : d.multiplicity (conj z) ≤
      ∑ w ∈ d.support.erase z, d.multiplicity w :=
    Finset.single_le_sum (fun w _ => Nat.zero_le (d.multiplicity w)) herase
  have hsum : (∑ w ∈ d.support.erase z, d.multiplicity w) +
      d.multiplicity z = d.totalCount := by
    exact Finset.sum_erase_add _ _ hz
  have hp := d.positive z hz
  have hpbar := d.positive (conj z) hzbar
  omega

/-- At count one, simplicity in the supplied divisor is a consequence. -/
theorem multiplicity_eq_one_of_totalCount_eq_one (d : FiniteDivisor)
    (hcount : d.totalCount = 1) (z : ℂ) (hz : z ∈ d.support) :
    d.multiplicity z = 1 := by
  have hle : d.multiplicity z ≤ d.totalCount :=
    Finset.single_le_sum (fun w _ => Nat.zero_le (d.multiplicity w)) hz
  have hp := d.positive z hz
  omega

theorem source_reality_of_saturation (d : FiniteDivisor)
    (f : ℂ → ℂ) (D : Set ℂ) (hsource : d.IdentifiesZeros f D)
    (hsaturation : d.realCount = d.totalCount) :
    ∀ z ∈ D, f z = 0 → z.im = 0 := by
  intro z hz hzero
  exact d.allReal_of_count_saturation hsaturation z ((hsource z).mpr ⟨hz, hzero⟩)

/-- Synthetic divisor with two nonreal zeros and unit multiplicities. -/
def imaginaryPair : FiniteDivisor := by
  classical
  exact {
    support := {Complex.I, -Complex.I}
    multiplicity := fun _ => 1
    positive := by intro z hz; decide }

/-- Count two and conjugation symmetry do not force critical-line localization. -/
theorem imaginaryPair_counterexample :
    imaginaryPair.totalCount = 2 ∧
    (∀ z ∈ imaginaryPair.support, conj z ∈ imaginaryPair.support) ∧
    ¬ imaginaryPair.AllReal := by
  classical
  have hne : Complex.I ≠ -Complex.I := by
    intro h
    have hi := congrArg Complex.im h
    norm_num at hi
  refine ⟨?_, ?_, ?_⟩
  · simp [totalCount, imaginaryPair, hne]
  · intro z hz
    simp only [imaginaryPair, Finset.mem_insert, Finset.mem_singleton] at hz
    rcases hz with rfl | rfl <;> simp [imaginaryPair]
  · intro h
    have hi := h Complex.I (by simp [imaginaryPair])
    norm_num at hi

end FiniteDivisor

/-- An interval isolates exactly the stated integer among the integers it contains. -/
def IsolatesInteger (lo hi : ℝ) (w : ℤ) : Prop :=
  ∀ k : ℤ, lo ≤ (k : ℝ) → (k : ℝ) ≤ hi → k = w

/-- Consumer of the meromorphic argument principle. `hargument` is the
analytic premise, not a theorem proved by this finite arithmetic lemma.
The conclusion is in integers, so negative winding numbers are retained. -/
theorem pole_corrected_count_of_isolated_integer
    (zeros poles : ℕ) (w : ℤ) (lo hi signedCount : ℝ)
    (hargument : signedCount = (zeros : ℝ) - (poles : ℝ))
    (hlo : lo ≤ signedCount) (hhi : signedCount ≤ hi)
    (hisolated : IsolatesInteger lo hi w) :
    (zeros : ℤ) = w + (poles : ℤ) := by
  have hcast : (((zeros : ℤ) - (poles : ℤ)) : ℝ) = signedCount := by
    push_cast
    exact hargument.symm
  have hw : (zeros : ℤ) - (poles : ℤ) = w :=
    hisolated _ (by simpa only [hcast] using hlo) (by simpa only [hcast] using hhi)
  omega

/-- A wide interval containing two distinct integers cannot isolate one integer. -/
theorem not_isolatesInteger_of_two_integers
    (lo hi : ℝ) (a b w : ℤ) (hab : a ≠ b)
    (ha : lo ≤ (a : ℝ) ∧ (a : ℝ) ≤ hi)
    (hb : lo ≤ (b : ℝ) ∧ (b : ℝ) ≤ hi) :
    ¬ IsolatesInteger lo hi w := by
  intro h
  exact hab ((h a ha.1 ha.2).trans (h b hb.1 hb.2).symm)

/-- Spectral-to-arithmetic coordinate convention used in ZCERT-1. -/
def arithmeticCoordinate (z : ℂ) : ℂ := (1 / 2 : ℂ) + Complex.I * z

def spectralCoordinate (s : ℂ) : ℂ := -Complex.I * (s - (1 / 2 : ℂ))

theorem arithmeticCoordinate_re (z : ℂ) :
    (arithmeticCoordinate z).re = 1 / 2 - z.im := by
  norm_num [arithmeticCoordinate, Complex.mul_re]

theorem arithmeticCoordinate_spectralCoordinate (s : ℂ) :
    arithmeticCoordinate (spectralCoordinate s) = s := by
  apply Complex.ext <;>
    norm_num [arithmeticCoordinate, spectralCoordinate, Complex.mul_re, Complex.mul_im] <;> ring

theorem arithmeticCoordinate_on_line_iff (z : ℂ) :
    (arithmeticCoordinate z).re = 1 / 2 ↔ z.im = 0 := by
  rw [arithmeticCoordinate_re]
  constructor <;> intro h <;> linarith

/-- Exact source return for an explicitly supplied arithmetic-plane function.
For Dirichlet GRH this function must be the correct completed source; using
an uncompleted L-function would wrongly include its trivial zeros. -/
theorem allZerosReal_iff_criticalLine (f : ℂ → ℂ) :
    (∀ z, f (arithmeticCoordinate z) = 0 → z.im = 0) ↔
      (∀ s, f s = 0 → s.re = 1 / 2) := by
  constructor
  · intro h s hs
    have hz : (spectralCoordinate s).im = 0 :=
      h (spectralCoordinate s) (by simpa only [arithmeticCoordinate_spectralCoordinate] using hs)
    have hline := (arithmeticCoordinate_on_line_iff (spectralCoordinate s)).mpr hz
    simpa only [arithmeticCoordinate_spectralCoordinate] using hline
  · intro h z hz
    exact (arithmeticCoordinate_on_line_iff z).mp (h _ hz)

/-- All-window reality and complete coverage imply all-zero reality.
The universal certificate hypothesis is not produced by running finitely many tests. -/
theorem allZerosReal_iff_window_reality
    {κ : Type*} (F : κ → ℂ → ℂ) (D : κ → ℕ → Set ℂ)
    (hcover : ∀ c z, F c z = 0 → ∃ n, z ∈ D c n) :
    (∀ c z, F c z = 0 → z.im = 0) ↔
      (∀ c n z, z ∈ D c n → F c z = 0 → z.im = 0) := by
  constructor
  · intro h c _ z _ hz
    exact h c z hz
  · intro h c z hz
    obtain ⟨n, hn⟩ := hcover c z hz
    exact h c n z hn hz

def stripWindow (T : ℝ) : Set ℂ :=
  {z | |z.re| < T ∧ |z.im| < 1}

/-- A concrete cofinality lemma. The strip theorem for the actual source
and the certified choice of zero-free boundaries remain separate inputs. -/
theorem stripWindow_covers
    {κ : Type*} (F : κ → ℂ → ℂ) (T : κ → ℕ → ℝ)
    (hheight : ∀ c n, (n : ℝ) ≤ T c n)
    (hstrip : ∀ c z, F c z = 0 → |z.im| < 1) :
    ∀ c z, F c z = 0 → ∃ n, z ∈ stripWindow (T c n) := by
  intro c z hz
  obtain ⟨n, hn⟩ := exists_nat_gt |z.re|
  exact ⟨n, lt_of_lt_of_le hn (hheight c n), hstrip c z hz⟩

/-- The count-saturation backward step, including every member of the source family. -/
theorem allZerosReal_of_cofinal_saturation
    {κ : Type*} (F : κ → ℂ → ℂ) (D : κ → ℕ → Set ℂ)
    (divisor : κ → ℕ → FiniteDivisor)
    (hcover : ∀ c z, F c z = 0 → ∃ n, z ∈ D c n)
    (hsource : ∀ c n, (divisor c n).IdentifiesZeros (F c) (D c n))
    (hsaturation : ∀ c n, (divisor c n).realCount = (divisor c n).totalCount) :
    ∀ c z, F c z = 0 → z.im = 0 := by
  apply (allZerosReal_iff_window_reality F D hcover).mpr
  intro c n
  exact (divisor c n).source_reality_of_saturation (F c) (D c n)
    (hsource c n) (hsaturation c n)

/-- A robust negative moment certificate returns an actual off-line zero
only after every listed node has been identified with a zero of this source. -/
theorem offLineZero_of_enclosed_moments
    {α : Type*} [Fintype α] (f : ℂ → ℂ)
    (nodes : α → ℂ) (weight : α → ℝ) {n : ℕ}
    (M E : Matrix (Fin n) (Fin n) ℝ) (v : Fin n → ℝ)
    (hsource : ∀ a, f (arithmeticCoordinate (nodes a)) = 0)
    (hweight : ∀ a, 0 ≤ weight a)
    (herror : ∀ i j,
      |HermiteMomentCertificates.hermiteMatrix nodes weight n i j - M i j| ≤ E i j)
    (hmargin : HermiteMomentCertificates.quadraticValue M v +
      HermiteMomentCertificates.errorBudget E v < 0) :
    ∃ s, f s = 0 ∧ s.re ≠ 1 / 2 := by
  obtain ⟨a, ha⟩ := HermiteMomentCertificates.exists_nonreal_of_enclosed_moments
    nodes weight M E v hweight herror hmargin
  refine ⟨arithmeticCoordinate (nodes a), hsource a, ?_⟩
  intro hline
  exact ha ((arithmeticCoordinate_on_line_iff (nodes a)).mp hline)

end GRWTSK.ZeroCountCertificates

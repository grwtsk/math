/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy
import GRWTSK.DynamicalSystemsAndErgodicTheory.ExactSoficLanguageCover
import Mathlib

/-!
# A finite Fourier observation, cyclic residue band and exact sofic path language

Local attribution: grwtsk contributors.

The source is a 64-step rotor angular-velocity history from the two-inertia
spring. A finite DFT maps it to 33 independent nonnegative-frequency bins;
seven color channels collect the bins by index modulo seven. A cyclic-banded
real/complex linear filter may transport only neighboring residue channels.
The entire OFF-BAND part remains a named observation residual, rather than
being identified with the full nonlinear Navier--Stokes Fourier convolution.

A two-symbol, fourteen-state labeled graph combines even-shift parity with a
residue state. Its graph language, NOT an arbitrary physical trace's language,
is exactly sofic by construction. The finite optimal-route certificate below
quantifies over ALL admitted finite graph paths, not one observed run.

The torus/ABC velocity bound and crank energy balance are imported at their
existing scopes. No new equivalence to a general three-dimensional PDE or
source-unidentified sofic language is claimed.

Lean elaboration, compilation, fresh kernel replay and transitive axiom audit:
NOT_RUN at publication. The numerical browser refinement is also NOT_PROVED.
-/

namespace GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover

/-- The actual 64-sample, 120 Hz discrete observation window. -/
abbrev SampleIndex := Fin 64
abbrev FrequencyIndex := Fin 33
abbrev Residue := Fin 7
abbrev SpaceIndex := Fin 3

/-- Finite Fourier phase, with the negative sign convention of the browser DFT. -/
noncomputable def fourierPhase (k : FrequencyIndex) (j : SampleIndex) : ℂ :=
  Complex.exp ((-Complex.I) *
    (↑(2 * Real.pi * (k.val : ℝ) * (j.val : ℝ) / 64) : ℂ))

/-- The exact complex 64-point DFT, restricted to the 33 nonnegative bins. -/
noncomputable def rotorDFT (samples : SampleIndex → ℂ)
    (k : FrequencyIndex) : ℂ :=
  (∑ j : SampleIndex, samples j * fourierPhase k j) / (64 : ℂ)

/-- Zero angular velocity has exactly zero Fourier response at every bin. -/
theorem rotorDFT_zero (k : FrequencyIndex) :
    rotorDFT (fun _ => 0) k = 0 := by
  simp [rotorDFT]

/-- Finite DFT is linear: no probabilistic or asymptotic Fourier premise. -/
theorem rotorDFT_add (a b : SampleIndex → ℂ) (k : FrequencyIndex) :
    rotorDFT (fun j => a j + b j) k = rotorDFT a k + rotorDFT b k := by
  simp [rotorDFT, add_mul, Finset.sum_add_distrib, add_div]

/-- The exact arithmetic color of each frequency, no discarded multiplicity. -/
def frequencyResidue (k : ℕ) : Residue :=
  ⟨k % 7, Nat.mod_lt _ (by decide)⟩

/-- Periodicity is exact for all natural frequency indices. -/
theorem residue_periodic (k : ℕ) :
    frequencyResidue (k + 7) = frequencyResidue k := by
  apply Fin.ext
  simp [frequencyResidue, Nat.add_mod]

/-- Unique quotient/residue decomposition, the accounting behind seven colors. -/
theorem frequency_counting (k : ℕ) :
    7 * (k / 7) + (frequencyResidue k).val = k := by
  change 7 * (k / 7) + k % 7 = k
  omega

/-- The cutoff and all cross-bin contributions are preserved inside the sum. -/
noncomputable def residueBin (samples : SampleIndex → ℂ)
    (cutoff : ℕ) (r : Residue) : ℂ :=
  ∑ k : FrequencyIndex,
    if k.val ≤ cutoff ∧ frequencyResidue k.val = r
      then rotorDFT samples k else 0

/-- The zero source has zero in EVERY residue bin, including boundary classes. -/
theorem zero_residueBin (cutoff : ℕ) (r : Residue) :
    residueBin (fun _ => 0) cutoff r = 0 := by
  simp [residueBin, rotorDFT_zero]

/-- The omitted high frequencies are explicit, not silently set equal to zero. -/
noncomputable def cutoffResidual (samples : SampleIndex → ℂ)
    (cutoff : ℕ) : ℝ :=
  ∑ k : FrequencyIndex,
    if cutoff < k.val then
      (if k.val = 0 ∨ k.val = 32 then (1 : ℝ) else 2) *
        ‖rotorDFT samples k‖ ^ 2
    else 0

/-- Every squared high-frequency contribution is nonnegative. -/
theorem cutoffResidual_nonneg (samples : SampleIndex → ℂ)
    (cutoff : ℕ) : 0 ≤ cutoffResidual samples cutoff := by
  unfold cutoffResidual
  apply Finset.sum_nonneg
  intro k hk
  split_ifs <;> positivity

/-- Shortest separation on the cycle of seven residue classes. -/
def cyclicDistance (r s : Residue) : ℕ :=
  min ((r.val + 7 - s.val) % 7) ((s.val + 7 - r.val) % 7)

/-- Swapping the frequency color classes does not change the band distance. -/
theorem cyclicDistance_symm (r s : Residue) :
    cyclicDistance r s = cyclicDistance s r := by
  unfold cyclicDistance
  exact min_comm _ _

/-- No off-band or diagonal coupling is silently introduced. -/
def InBand (band : ℕ) (r s : Residue) : Prop :=
  r ≠ s ∧ cyclicDistance r s ≤ band

/-- An undirected cycle band is symmetric even at the wraparound edges. -/
theorem inBand_symm (band : ℕ) (r s : Residue) :
    InBand band r s ↔ InBand band s r := by
  constructor
  · rintro ⟨hne, hdist⟩
    exact ⟨hne.symm, by simpa [cyclicDistance_symm] using hdist⟩
  · rintro ⟨hne, hdist⟩
    exact ⟨hne.symm, by simpa [cyclicDistance_symm] using hdist⟩

/-- The actual sparse row coupling of the cyclic-band Laplacian. -/
noncomputable def bandRow (band : ℕ) (κ : ℝ)
    (z : Residue → ℂ) (r : Residue) : ℂ :=
  ∑ s : Residue,
    if InBand band r s then (κ : ℂ) * (z r - z s) else 0

/-- The exact real dissipation quadratic, retaining each ordered edge. -/
noncomputable def bandDissipation (band : ℕ) (κ : ℝ)
    (z : Residue → ℂ) : ℝ :=
  ∑ r : Residue, ∑ s : Residue,
    if InBand band r s then κ * ‖z r - z s‖ ^ 2 else 0

/-- Every admissible band width has nonnegative diffusion energy for κ>=0. -/
theorem bandDissipation_nonneg (band : ℕ) (κ : ℝ)
    (hκ : 0 ≤ κ) (z : Residue → ℂ) :
    0 ≤ bandDissipation band κ z := by
  unfold bandDissipation
  apply Finset.sum_nonneg
  intro r hr
  apply Finset.sum_nonneg
  intro s hs
  split_ifs <;> positivity

/-- The cyclic bandwidth-zero boundary is exactly no cross-residue coupling. -/
theorem inBand_zero_iff_false (r s : Residue)
    (h : cyclicDistance r s ≠ 0) : ¬ InBand 0 r s := by
  intro he
  exact h (Nat.eq_zero_of_le_zero he.2)

/-- A filtered complex seven-vector retains both real and imaginary parts. -/
noncomputable def harmonicEnergy (z : Residue → ℂ) : ℝ :=
  ∑ r : Residue, ‖z r‖ ^ 2

/-- The observed spectral energy cannot be negative. -/
theorem harmonicEnergy_nonneg (z : Residue → ℂ) :
    0 ≤ harmonicEnergy z := by
  unfold harmonicEnergy
  apply Finset.sum_nonneg
  intro r hr
  positivity

/-- Three-dimensional squared radius in physical Euclidean coordinates. -/
noncomputable def spatialEnergy (x : SpaceIndex → ℝ) : ℝ :=
  ∑ i : SpaceIndex, (x i) ^ 2

/-- The position norm is nonnegative, including the zero displacement. -/
theorem spatialEnergy_nonneg (x : SpaceIndex → ℝ) :
    0 ≤ spatialEnergy x := by
  unfold spatialEnergy
  apply Finset.sum_nonneg
  intro i hi
  positivity

/-- Scalar radial filtering has the exact squared-energy effect. -/
theorem spatialEnergy_scale (a : ℝ) (x : SpaceIndex → ℝ) :
    spatialEnergy (fun i => a * x i) = a ^ 2 * spatialEnergy x := by
  unfold spatialEnergy
  calc
    (∑ i : SpaceIndex, (a * x i) ^ 2) =
        ∑ i : SpaceIndex, a ^ 2 * (x i) ^ 2 := by
          apply Finset.sum_congr rfl
          intro i hi
          ring
    _ = a ^ 2 * (∑ i : SpaceIndex, (x i) ^ 2) := by
      rw [Finset.mul_sum]

/-- Projection onto the closed radius-R ball, with a well-defined zero case. -/
noncomputable def radialClip (R : ℝ) (x : SpaceIndex → ℝ) :
    SpaceIndex → ℝ :=
  if spatialEnergy x ≤ R ^ 2 then x
  else fun i => (R / Real.sqrt (spatialEnergy x)) * x i

/-- The filter changes nothing when an observation already satisfies its bound. -/
theorem radialClip_fixed (R : ℝ) (x : SpaceIndex → ℝ)
    (h : spatialEnergy x ≤ R ^ 2) : radialClip R x = x := by
  simp [radialClip, h]

/-- An exact-real radial clip never leaves the declared radius bound. -/
theorem radialClip_bounded (R : ℝ) (x : SpaceIndex → ℝ)
    (hR : 0 ≤ R) : spatialEnergy (radialClip R x) ≤ R ^ 2 := by
  by_cases h : spatialEnergy x ≤ R ^ 2
  · simpa [radialClip, h] using h
  · have hE : 0 < spatialEnergy x := by
      have hR2 : 0 ≤ R ^ 2 := sq_nonneg R
      exact lt_of_le_of_lt hR2 (lt_of_not_ge h)
    have hs : 0 < Real.sqrt (spatialEnergy x) := Real.sqrt_pos.mpr hE
    have hne : Real.sqrt (spatialEnergy x) ≠ 0 := ne_of_gt hs
    have hsquare : (Real.sqrt (spatialEnergy x)) ^ 2 = spatialEnergy x :=
      Real.sq_sqrt (spatialEnergy_nonneg x)
    have hratio : (R / Real.sqrt (spatialEnergy x)) ^ 2 *
        spatialEnergy x = R ^ 2 := by
      calc
        _ = (R / Real.sqrt (spatialEnergy x)) ^ 2 *
            (Real.sqrt (spatialEnergy x)) ^ 2 := by rw [hsquare]
        _ = R ^ 2 := by field_simp [hne]; ring
    simp only [radialClip, if_neg h]
    rw [spatialEnergy_scale, hratio]

/-! ## An EXACT finite-graph language, not a purported language of an unknown PDE orbit -/

/-- Parity of zeros since last one, paired with the physical residue color. -/
abbrev WordState := Bool × Residue

/-- A 0 flips parity; a 1 is allowed only at even parity.
Both permitted symbols retain two nonidentical residue-successor options. -/
def edge (source : WordState) (letter : Bool) (dest : WordState) : Prop :=
  if letter then
    source.1 = false ∧ dest.1 = false ∧
      (dest.2.val = (source.2.val + 2) % 7 ∨
       dest.2.val = (source.2.val + 5) % 7)
  else
    dest.1 = !source.1 ∧
      (dest.2.val = (source.2.val + 1) % 7 ∨
       dest.2.val = (source.2.val + 2) % 7)

/-- A 14-state labeled graph, with edges defined independently of any trace. -/
def evenShiftResidueGraph : LabeledGraph WordState Bool where
  edge := edge

/-- ALL words admitted by the graph, not just a single finite observed path. -/
def soficWordLanguage (word : List Bool) : Prop :=
  GraphLanguage evenShiftResidueGraph word

/-- This specific graph language is exactly sofic by a full presentation. -/
theorem model_language_is_sofic :
    IsSoficFactorLanguage soficWordLanguage := by
  refine ⟨{ State := WordState
            finiteState := inferInstance
            graph := evenShiftResidueGraph
            exactLanguage := ?_ }⟩
  intro word
  rfl

/-- Every accepted 1-edge starts and ends in the even-parity state. -/
theorem one_edge_even (source dest : WordState)
    (h : evenShiftResidueGraph.edge source true dest) :
    source.1 = false ∧ dest.1 = false := by
  exact ⟨(show edge source true dest from h).1,
    (show edge source true dest from h).2.1⟩

/-- The full finite word is admitted only when every labeled edge exists. -/
def AdmissibleRoute (word : List Bool)
    (route : Fin (word.length + 1) → WordState) : Prop :=
  ∀ i : Fin word.length,
    evenShiftResidueGraph.edge
      (route ⟨i.val, by omega⟩) (word.get i)
      (route ⟨i.val + 1, by omega⟩)

/-- All possible complete finite routes are a finite and inspectable carrier. -/
noncomputable def admissibleRoutes (word : List Bool) :
    Finset (Fin (word.length + 1) → WordState) := by
  classical
  exact Finset.univ.filter (AdmissibleRoute word)

/--
When a word is admitted, an all-start-states minimum for ANY real-valued
path cost exists. This is independent of a particular DP implementation.
A separate algorithm/refinement proof must identify the browser Viterbi
predecessor recurrence with this mathematical minimum.
-/
theorem optimal_route_exists (word : List Bool)
    (cost : (Fin (word.length + 1) → WordState) → ℝ)
    (h : (admissibleRoutes word).Nonempty) :
    ∃ route ∈ admissibleRoutes word,
      ∀ other ∈ admissibleRoutes word, cost route ≤ cost other := by
  classical
  let costs : Finset ℝ := (admissibleRoutes word).image cost
  have hcosts : costs.Nonempty := h.image cost
  obtain ⟨route, hr, hc⟩ := Finset.mem_image.mp
    (Finset.min'_mem costs hcosts)
  refine ⟨route, hr, ?_⟩
  intro other ho
  have hother : cost other ∈ costs := Finset.mem_image.mpr ⟨other, ho, rfl⟩
  have hmin : costs.min' hcosts ≤ cost other := Finset.min'_le costs (cost other) hother
  simpa [hc] using hmin

end GRWTSK.NumericalAnalysis.ResidueBandedFourierSoficPath

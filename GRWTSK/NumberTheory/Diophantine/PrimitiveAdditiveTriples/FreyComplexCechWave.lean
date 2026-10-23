/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses the previous real Cech heat and actual complex Frey realization.
Formalization assistance: OpenAI.

Complex normalized Cech data and raw source-labeled cubic-phase waveforms.
Both parts recover the SAME old real evolution. All six normalized sections
rotate together, including transition data; source phase badges affect only
raw vertices. Angle and heat time are independent. This is a finite selected
coefficient model, not geometric Hodge heat or an arithmetic flow.
Unelaborated source proof scripts; historical objects are unchanged.
-/
import GRWTSK.Analysis.Complex.CubicWavePhase
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexRealization
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCechHeat

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexCechWave

open FreyWeightedSections FreyWeightedBasis FreyComplexRealization
open GRWTSK.Algebra.Homology.ThreeCellCech
open GRWTSK.Analysis.Complex.CubicWavePhase
open GRWTSK.Analysis.LinearAlgebra
open scoped BigOperators
attribute [local instance] FreyWeightedSections.coefficientAlgebra

abbrev Data (a b : ℝ) (k : ℕ) := Triple (ComplexStage a b k) × Triple (ComplexStage a b k)

def componentData (a b : ℝ) (k : ℕ) (j : Fin 2) (v : Data a b k) : FreyCechHeat.Data a b k :=
  (fun p => component a b k j (v.1 p), fun p => component a b k j (v.2 p))

/-- Both real parts of every vertex and every edge detect the complex data. -/
theorem data_ext (a b : ℝ) (k : ℕ) (u v : Data a b k)
    (h : ∀ j, componentData a b k j u = componentData a b k j v) : u = v := by
  apply Prod.ext
  · funext p
    apply component_ext a b k
    intro j
    exact congrFun (congrArg Prod.fst (h j)) p
  · funext p
    apply component_ext a b k
    intro j
    exact congrFun (congrArg Prod.snd (h j)) p

/-- Direct complex section formula; this is not an illicit C-action on real W_k. -/
def mean (a b : ℝ) (k : ℕ) (z : Triple (ComplexStage a b k)) : ComplexStage a b k :=
  (((1 / 3 : ℝ) : ℂ)) • (z 0 + z 1 + z 2)

def heat (a b : ℝ) (k : ℕ) (t : ℝ) (z : Triple (ComplexStage a b k)) :
    Triple (ComplexStage a b k) :=
  fun p => mean a b k z + (ThreePhaseCoefficientHeat.decay t : ℂ) • (z p - mean a b k z)

/-- Same fixed tree and same varying closure edge as the real adapter. -/
def evolve (a b : ℝ) (k : ℕ) (t : ℝ) (v : Data a b k) : Data a b k :=
  (tree v.2 + heat a b k t (common v.1 v.2),
    replaceClosure v.2 ((ThreePhaseCoefficientHeat.decay t : ℂ) • delta1 v.2))

theorem component_mean (a b : ℝ) (k : ℕ) (j : Fin 2) (z : Triple (ComplexStage a b k)) :
    component a b k j (mean a b k z) =
      FreyCoefficientHeat.meanStage a b k (fun p => component a b k j (z p)) := by
  simp only [mean, component_real_smul, map_add, FreyCoefficientHeat.meanStage]

theorem component_heat (a b : ℝ) (k : ℕ) (j : Fin 2) (t : ℝ)
    (z : Triple (ComplexStage a b k)) (p : Fin 3) :
    component a b k j (heat a b k t z p) =
      FreyCoefficientHeat.heat a b k t (fun q => component a b k j (z q)) p := by
  simp only [heat, map_add, map_sub, component_real_smul, component_mean, FreyCoefficientHeat.heat]

/-- All six normalized sections agree with the OLD real adapter on each component. -/
theorem component_evolve (a b : ℝ) (k : ℕ) (j : Fin 2) (t : ℝ) (v : Data a b k) :
    componentData a b k j (evolve a b k t v) =
      FreyCechHeat.evolve a b k t (componentData a b k j v) := by
  apply Prod.ext
  · funext p
    change component a b k j (tree v.2 p + heat a b k t (common v.1 v.2) p) = _
    rw [map_add, component_heat]
    simp only [FreyCechHeat.evolve, componentData, map_tree, map_common, Pi.add_apply]
  · change (fun p => component a b k j (replaceClosure v.2
      ((ThreePhaseCoefficientHeat.decay t : ℂ) • delta1 v.2) p)) =
      replaceClosure (fun p => component a b k j (v.2 p))
        (FreyCoefficientHeat.closureHeat a b k t (delta1 (fun p => component a b k j (v.2 p))))
    rw [map_closure, FreyCoefficientHeat.closureHeat, ← component_real_smul]
    exact (map_replaceClosure (component a b k j) _ _).symm

@[simp] theorem evolve_zero (a b : ℝ) (k : ℕ) (v : Data a b k) : evolve a b k 0 v = v := by
  apply data_ext a b k
  intro j
  rw [component_evolve, FreyCechHeat.evolve_zero]

theorem evolve_add (a b : ℝ) (k : ℕ) (s t : ℝ) (v : Data a b k) :
    evolve a b k (s + t) v = evolve a b k s (evolve a b k t v) := by
  apply data_ext a b k
  intro j
  rw [component_evolve, component_evolve, component_evolve, FreyCechHeat.evolve_add]

/-- Component comparison concerns the actual mismatch, not an unrelated error vector. -/
theorem component_mismatch (a b : ℝ) (k : ℕ) (j : Fin 2) (v : Data a b k) (p : Fin 3) :
    component a b k j (mismatch v.1 v.2 p) =
      mismatch (componentData a b k j v).1 (componentData a b k j v).2 p := by
  fin_cases p <;> simp [componentData, mismatch, delta0]

theorem mismatch_evolve (a b : ℝ) (k : ℕ) (t : ℝ) (v : Data a b k) :
    mismatch (evolve a b k t v).1 (evolve a b k t v).2 =
      (ThreePhaseCoefficientHeat.decay t : ℂ) • mismatch v.1 v.2 := by
  funext p
  apply component_ext a b k
  intro j
  change component a b k j (mismatch (evolve a b k t v).1 (evolve a b k t v).2 p) =
    component a b k j ((ThreePhaseCoefficientHeat.decay t : ℂ) • mismatch v.1 v.2 p)
  rw [component_mismatch, component_evolve, component_real_smul, component_mismatch]
  exact congrFun (FreyCechHeat.mismatch_evolve a b k t (componentData a b k j v)) p

/-- Sum of the two OLD corrected-frame diagnostics; not the mismatch energy below. -/
def defect (a b : ℝ) (k : ℕ) (lam : ℝ) (v : Data a b k) : ℝ :=
  FreyCechHeat.defect a b k lam (componentData a b k 0 v) +
    FreyCechHeat.defect a b k lam (componentData a b k 1 v)

theorem defect_evolve (a b : ℝ) (k : ℕ) (lam t : ℝ) (v : Data a b k) :
    defect a b k lam (evolve a b k t v) = Real.exp (-6 * t) * defect a b k lam v := by
  simp only [defect, component_evolve, FreyCechHeat.defect_evolve]
  ring

/-- Scale vertices AND transitions in the common complex frame. -/
def scaleData (a b : ℝ) (k : ℕ) (c : ℂ) (v : Data a b k) : Data a b k :=
  (fun p => c • v.1 p, fun p => c • v.2 p)

theorem mismatch_scale (a b : ℝ) (k : ℕ) (c : ℂ) (v : Data a b k) :
    mismatch (scaleData a b k c v).1 (scaleData a b k c v).2 = c • mismatch v.1 v.2 := by
  funext p
  fin_cases p <;> simp [scaleData, mismatch, delta0, smul_sub]

/-- Raw vertices and normalized transitions are different fields, not one unlabeled triple. -/
structure Raw (a b : ℝ) (k : ℕ) where
  sections : Triple (ComplexStage a b k)
  transitions : Triple (ComplexStage a b k)

def encode (a b : ℝ) (k : ℕ) (v : Data a b k) : Raw a b k :=
  ⟨phaseEncode sourcePhase v.1, v.2⟩

def decode (a b : ℝ) (k : ℕ) (q : Raw a b k) : Data a b k :=
  (phaseDecode sourcePhase q.sections, q.transitions)

@[simp] theorem decode_encode (a b : ℝ) (k : ℕ) (v : Data a b k) :
    decode a b k (encode a b k v) = v := by
  apply Prod.ext
  · exact phaseDecode_encode sourcePhase v.1
  · rfl

@[simp] theorem encode_decode (a b : ℝ) (k : ℕ) (q : Raw a b k) :
    encode a b k (decode a b k q) = q := by
  cases q with
  | mk z e =>
    change Raw.mk (phaseEncode sourcePhase (phaseDecode sourcePhase z)) e = Raw.mk z e
    rw [phaseEncode_decode]

/-- Angle may be Omega*t_wave. Heat time tau remains an independent argument. -/
def wave (a b : ℝ) (k : ℕ) (angle tau : ℝ) (v : Data a b k) : Raw a b k :=
  encode a b k (scaleData a b k (rotation angle) (evolve a b k tau v))

theorem wave_period (a b : ℝ) (k : ℕ) (angle tau : ℝ) (v : Data a b k) :
    wave a b k (angle + 2 * Real.pi) tau v = wave a b k angle tau v := by
  simp only [wave, rotation_period]

/-- Removing cubic badges exposes the actual rotating, decaying Cech mismatch. -/
theorem wave_mismatch (a b : ℝ) (k : ℕ) (angle tau : ℝ) (v : Data a b k) :
    mismatch (decode a b k (wave a b k angle tau v)).1
        (decode a b k (wave a b k angle tau v)).2 =
      (rotation angle * (ThreePhaseCoefficientHeat.decay tau : ℂ)) • mismatch v.1 v.2 := by
  simp only [wave, decode_encode, mismatch_scale, mismatch_evolve, mul_smul]

/-- One full phase cycle cannot create exact matching or an exact dependent lift. -/
theorem wave_matching_iff (a b : ℝ) (k : ℕ) (angle tau : ℝ) (v : Data a b k) :
    delta0 (decode a b k (wave a b k angle tau v)).1 =
        (decode a b k (wave a b k angle tau v)).2 ↔ delta0 v.1 = v.2 := by
  have hd : (ThreePhaseCoefficientHeat.decay tau : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (Real.exp_pos (-3 * tau)))
  have hm := wave_mismatch a b k angle tau v
  have hz : mismatch (decode a b k (wave a b k angle tau v)).1
        (decode a b k (wave a b k angle tau v)).2 = 0 ↔ mismatch v.1 v.2 = 0 := by
    rw [hm, smul_eq_zero]
    simp only [mul_ne_zero (rotation_ne_zero angle) hd, false_or]
  simpa only [mismatch, sub_eq_zero] using hz

theorem wave_glue_iff (a b : ℝ) (k : ℕ) (angle tau : ℝ) (v : Data a b k) :
    Nonempty (GlueFiber (decode a b k (wave a b k angle tau v)).1
        (decode a b k (wave a b k angle tau v)).2) ↔ Nonempty (GlueFiber v.1 v.2) := by
  rw [glue_inhabited_iff, glue_inhabited_iff, wave_matching_iff]

/-- Separate Hermitian norm of the actual edge mismatch, not the corrected-frame D. -/
def mismatchEnergy (a b : ℝ) (k : ℕ) (v : Data a b k) : ℝ :=
  ∑ p, FreyComplexRealization.energy a b k (mismatch v.1 v.2 p)

theorem wave_mismatch_energy (a b : ℝ) (k : ℕ) (angle tau : ℝ) (v : Data a b k) :
    mismatchEnergy a b k (decode a b k (wave a b k angle tau v)) =
      Real.exp (-6 * tau) * mismatchEnergy a b k v := by
  have hd : Complex.normSq (ThreePhaseCoefficientHeat.decay tau : ℂ) = Real.exp (-6 * tau) := by
    simpa [Complex.normSq_apply, pow_two] using ThreePhaseCoefficientHeat.decay_square tau
  simp only [mismatchEnergy, wave_mismatch, Pi.smul_apply, energy_smul, map_mul,
    rotation_normSq, one_mul, hd, Finset.mul_sum]

/-- Exactly the old complex stageEquiv acts on all normalized input channels. -/
def port (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (v : Data a b k) : Data a b k :=
  (fun p => complexLift a b l hl k (v.1 p), fun p => complexLift a b l hl k (v.2 p))

theorem component_port (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ)
    (j : Fin 2) (v : Data a b k) :
    componentData a b k j (port a b l hl k v) =
      FreyCechHeat.port a b l hl k (componentData a b k j v) := by
  apply Prod.ext <;> funext p <;> exact component_lift a b l hl k j _

theorem port_evolve (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (tau : ℝ) (v : Data a b k) :
    port a b l hl k (evolve a b k tau v) = evolve a b k tau (port a b l hl k v) := by
  apply data_ext a b k
  intro j
  rw [component_port, component_evolve, component_evolve, component_port, FreyCechHeat.port_evolve]

/-- Badges are complex scalar multipliers; port transport retains their source labels. -/
def rawPort (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ) (q : Raw a b k) : Raw a b k :=
  ⟨fun p => complexLift a b l hl k (q.sections p),
    fun p => complexLift a b l hl k (q.transitions p)⟩

theorem rawPort_wave (a b l : ℝ) (hl : a * b * l = 1) (k : ℕ)
    (angle tau : ℝ) (v : Data a b k) :
    rawPort a b l hl k (wave a b k angle tau v) = wave a b k angle tau (port a b l hl k v) := by
  have hp : port a b l hl k (scaleData a b k (rotation angle) (evolve a b k tau v)) =
      scaleData a b k (rotation angle) (evolve a b k tau (port a b l hl k v)) := by
    rw [← port_evolve]
    apply Prod.ext <;> funext p <;> exact (complexLift a b l hl k).map_smul _ _
  have he : rawPort a b l hl k (encode a b k
      (scaleData a b k (rotation angle) (evolve a b k tau v))) =
      encode a b k (port a b l hl k (scaleData a b k (rotation angle) (evolve a b k tau v))) := by
    unfold rawPort encode port phaseEncode
    congr 1
    funext p
    exact (complexLift a b l hl k).map_smul _ _
  change rawPort a b l hl k (encode a b k _) = encode a b k _
  rw [he, hp]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexCechWave

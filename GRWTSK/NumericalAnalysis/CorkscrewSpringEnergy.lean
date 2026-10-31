/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy

/-!
# Passive two-inertia corkscrew spring: discrete work and energy

Local attribution: grwtsk contributors.

This is a source candidate for the updated visual toy, not a result about
unrestricted three-dimensional Navier--Stokes solutions. The crank and rotor
are connected by a torsional spring whose extension is

  d = crankAngle - inverseGear * rotorAngle.

One fully implicit time step solves the two momentum equations and the
position updates below. It dissipates energy under zero external hand torque.
Nonzero hand torque contributes its exact signed discrete work. The cloth
modes keep their separate nonincreasing quadratic energy via the existing
FiniteModeDrapeEnergy.advance theorem; no transfer of mechanical energy into
cloth amplitude is silently assumed.

A browser's fixed-precision, pointer-input implementation requires an
independent source-to-executable refinement check. The algebraic relation
below captures precisely the full implicit real-arithmetic recurrence.

Formal status at publication: LEAN_BUILD_NOT_RUN, KERNEL_NOT_RUN,
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No general PDE regularity theorem.
-/

namespace GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy

open GRWTSK.NumericalAnalysis.FiniteModeDrapeEnergy

structure Parameters where
  inertiaCrank : ℝ
  inertiaRotor : ℝ
  stiffness : ℝ
  dampingCrank : ℝ
  dampingRotor : ℝ
  inverseGear : ℝ

structure State where
  crankAngle : ℝ
  rotorAngle : ℝ
  crankSpeed : ℝ
  rotorSpeed : ℝ

/-- Signed extension of the spring, with no loss of winding numbers. -/
def twist (p : Parameters) (s : State) : ℝ :=
  s.crankAngle - p.inverseGear * s.rotorAngle

/-- Stored torsional spring energy. -/
noncomputable def potential (p : Parameters) (s : State) : ℝ :=
  p.stiffness * (twist p s) ^ 2 / 2

/-- Both inertias are retained; a kinematic gear identification is not assumed. -/
noncomputable def kinetic (p : Parameters) (s : State) : ℝ :=
  (p.inertiaCrank * s.crankSpeed ^ 2 +
    p.inertiaRotor * s.rotorSpeed ^ 2) / 2

noncomputable def mechanicalEnergy (p : Parameters) (s : State) : ℝ :=
  kinetic p s + potential p s

/--
The source-faithful fully implicit, force-driven step. The parameter `torque`
is external hand torque, not an endogenous unbounded drive.
-/
def Step (p : Parameters) (h torque : ℝ) (old next : State) : Prop :=
  p.inertiaCrank * (next.crankSpeed - old.crankSpeed) +
      h * p.dampingCrank * next.crankSpeed +
      h * p.stiffness * twist p next = h * torque ∧
  p.inertiaRotor * (next.rotorSpeed - old.rotorSpeed) +
      h * p.dampingRotor * next.rotorSpeed -
      h * p.stiffness * p.inverseGear * twist p next = 0 ∧
  next.crankAngle = old.crankAngle + h * next.crankSpeed ∧
  next.rotorAngle = old.rotorAngle + h * next.rotorSpeed

/-!
The explicit closed-form update used by the JavaScript simulator. This is
mathematical source data, not a claim that a WebGL implementation executes
exact real arithmetic. An independent Lean proof that this closed form
satisfies `Step` remains an explicit verification obligation.
-/
noncomputable def implicitSpringStep (p : Parameters) (h torque : ℝ)
    (old : State) : State :=
  let A := p.inertiaCrank + h * p.dampingCrank
  let B := p.inertiaRotor + h * p.dampingRotor
  let pc := p.inertiaCrank * old.crankSpeed + h * torque
  let pr := p.inertiaRotor * old.rotorSpeed
  let d := (twist p old + h * (pc / A - p.inverseGear * pr / B)) /
    (1 + h ^ 2 * p.stiffness * (1 / A + p.inverseGear ^ 2 / B))
  let vc := (pc - h * p.stiffness * d) / A
  let vr := (pr + h * p.stiffness * p.inverseGear * d) / B
  { crankAngle := old.crankAngle + h * vc
    rotorAngle := old.rotorAngle + h * vr
    crankSpeed := vc
    rotorSpeed := vr }

/-- The three implicit solver denominators stay strictly positive. -/
theorem implicit_denominators_pos (p : Parameters) (h : ℝ)
    (hh : 0 ≤ h)
    (hic : 0 < p.inertiaCrank) (hir : 0 < p.inertiaRotor)
    (hk : 0 ≤ p.stiffness)
    (hdc : 0 ≤ p.dampingCrank) (hdr : 0 ≤ p.dampingRotor) :
    0 < p.inertiaCrank + h * p.dampingCrank ∧
    0 < p.inertiaRotor + h * p.dampingRotor ∧
    0 < 1 + h ^ 2 * p.stiffness *
      (1 / (p.inertiaCrank + h * p.dampingCrank) +
        p.inverseGear ^ 2 / (p.inertiaRotor + h * p.dampingRotor)) := by
  have hc : 0 < p.inertiaCrank + h * p.dampingCrank := by
    have hm := mul_nonneg hh hdc
    linarith
  have hr : 0 < p.inertiaRotor + h * p.dampingRotor := by
    have hm := mul_nonneg hh hdr
    linarith
  have hd : 0 < 1 + h ^ 2 * p.stiffness *
      (1 / (p.inertiaCrank + h * p.dampingCrank) +
        p.inverseGear ^ 2 / (p.inertiaRotor + h * p.dampingRotor)) := by
    have hterm : 0 ≤ h ^ 2 * p.stiffness *
      (1 / (p.inertiaCrank + h * p.dampingCrank) +
        p.inverseGear ^ 2 / (p.inertiaRotor + h * p.dampingRotor)) := by
      positivity
    linarith
  exact ⟨hc, hr, hd⟩

/-- Work-balanced numerical dissipation includes every momentum increment. -/
noncomputable def numericalDissipation (p : Parameters) (old next : State) : ℝ :=
  (p.inertiaCrank * (next.crankSpeed - old.crankSpeed) ^ 2 +
   p.inertiaRotor * (next.rotorSpeed - old.rotorSpeed) ^ 2 +
   p.stiffness * (twist p next - twist p old) ^ 2) / 2

noncomputable def frictionLoss (p : Parameters) (h : ℝ) (next : State) : ℝ :=
  h * (p.dampingCrank * next.crankSpeed ^ 2 +
       p.dampingRotor * next.rotorSpeed ^ 2)

/-- The twist increment is the difference of the two genuine gear velocities. -/
theorem twist_increment (p : Parameters) (h torque : ℝ)
    (old next : State) (hs : Step p h torque old next) :
    twist p next - twist p old =
      h * (next.crankSpeed - p.inverseGear * next.rotorSpeed) := by
  rcases hs with ⟨_, _, hc, hr⟩
  dsimp [twist]
  rw [hc, hr]
  ring

/--
Exact signed discrete work identity for the implicit torsional spring.
The correction is nonnegative when inertias, stiffness, damping, and h are.
-/
theorem step_energy_balance (p : Parameters) (h torque : ℝ)
    (old next : State) (hs : Step p h torque old next) :
    mechanicalEnergy p next - mechanicalEnergy p old +
      numericalDissipation p old next + frictionLoss p h next =
        h * torque * next.crankSpeed := by
  rcases hs with ⟨hc, hr, hpc, hpr⟩
  have ht : twist p next - twist p old =
      h * (next.crankSpeed - p.inverseGear * next.rotorSpeed) := by
    dsimp [twist]
    rw [hpc, hpr]
    ring
  have hc' := congrArg (fun x : ℝ => x * next.crankSpeed) hc
  have hr' := congrArg (fun x : ℝ => x * next.rotorSpeed) hr
  have ht' := congrArg (fun x : ℝ => p.stiffness * (twist p next) * x) ht
  dsimp [mechanicalEnergy, kinetic, potential,
    numericalDissipation, frictionLoss]
  nlinarith [hc', hr', ht']

/-- Actual physical energies are nonnegative at every real configuration. -/
theorem mechanicalEnergy_nonneg (p : Parameters) (s : State)
    (hc : 0 ≤ p.inertiaCrank) (hr : 0 ≤ p.inertiaRotor)
    (hk : 0 ≤ p.stiffness) : 0 ≤ mechanicalEnergy p s := by
  dsimp [mechanicalEnergy, kinetic, potential]
  positivity

/-- The spring stores no more than the full physical mechanical energy. -/
theorem potential_le_mechanicalEnergy (p : Parameters) (s : State)
    (hc : 0 ≤ p.inertiaCrank) (hr : 0 ≤ p.inertiaRotor) :
    potential p s ≤ mechanicalEnergy p s := by
  dsimp [mechanicalEnergy, kinetic, potential]
  have hc' : 0 ≤ p.inertiaCrank * s.crankSpeed ^ 2 := mul_nonneg hc (sq_nonneg _)
  have hr' : 0 ≤ p.inertiaRotor * s.rotorSpeed ^ 2 := mul_nonneg hr (sq_nonneg _)
  linarith

/-- External input can add energy only through its signed discrete work. -/
theorem step_energy_le_work (p : Parameters) (h torque : ℝ)
    (old next : State) (hs : Step p h torque old next)
    (hh : 0 ≤ h)
    (hc : 0 ≤ p.inertiaCrank) (hr : 0 ≤ p.inertiaRotor)
    (hk : 0 ≤ p.stiffness)
    (hdc : 0 ≤ p.dampingCrank) (hdr : 0 ≤ p.dampingRotor) :
    mechanicalEnergy p next ≤
      mechanicalEnergy p old + h * torque * next.crankSpeed := by
  have he := step_energy_balance p h torque old next hs
  have hn : 0 ≤ numericalDissipation p old next := by
    dsimp [numericalDissipation]
    positivity
  have hf : 0 ≤ frictionLoss p h next := by
    dsimp [frictionLoss]
    positivity
  linarith

/-- Releasing the crank makes the implicit physical energy nonincreasing. -/
theorem free_step_energy_le (p : Parameters) (h : ℝ)
    (old next : State) (hs : Step p h 0 old next)
    (hh : 0 ≤ h)
    (hc : 0 ≤ p.inertiaCrank) (hr : 0 ≤ p.inertiaRotor)
    (hk : 0 ≤ p.stiffness)
    (hdc : 0 ≤ p.dampingCrank) (hdr : 0 ≤ p.dampingRotor) :
    mechanicalEnergy p next ≤ mechanicalEnergy p old := by
  have he := step_energy_le_work p h 0 old next hs hh hc hr hk hdc hdr
  simpa using he

/-- After any number of released steps, there is no physical-energy blowup. -/
theorem free_trace_energy_le (p : Parameters) (h : ℝ) (path : ℕ → State)
    (hstep : ∀ n, Step p h 0 (path n) (path (n + 1)))
    (hh : 0 ≤ h)
    (hc : 0 ≤ p.inertiaCrank) (hr : 0 ≤ p.inertiaRotor)
    (hk : 0 ≤ p.stiffness)
    (hdc : 0 ≤ p.dampingCrank) (hdr : 0 ≤ p.dampingRotor)
    (n : ℕ) :
    mechanicalEnergy p (path n) ≤ mechanicalEnergy p (path 0) := by
  induction n with
  | zero => exact le_refl _
  | succ n ih =>
      exact (free_step_energy_le p h (path n) (path (n + 1))
        (hstep n) hh hc hr hk hdc hdr).trans ih

/-- Finite external torque contributions are kept with their original signs. -/
noncomputable def totalHandWork (h : ℝ) (torque : ℕ → ℝ)
    (path : ℕ → State) (n : ℕ) : ℝ :=
  ∑ j ∈ Finset.range n, h * torque j * (path (j + 1)).crankSpeed

/-- Work-budget inequality for arbitrary signed manual winding and braking. -/
theorem driven_trace_energy_le (p : Parameters) (h : ℝ)
    (torque : ℕ → ℝ) (path : ℕ → State)
    (hstep : ∀ n, Step p h (torque n) (path n) (path (n + 1)))
    (hh : 0 ≤ h)
    (hc : 0 ≤ p.inertiaCrank) (hr : 0 ≤ p.inertiaRotor)
    (hk : 0 ≤ p.stiffness)
    (hdc : 0 ≤ p.dampingCrank) (hdr : 0 ≤ p.dampingRotor)
    (n : ℕ) :
    mechanicalEnergy p (path n) ≤
      mechanicalEnergy p (path 0) + totalHandWork h torque path n := by
  induction n with
  | zero => simp [totalHandWork]
  | succ n ih =>
      have he := step_energy_le_work p h (torque n)
        (path n) (path (n + 1)) (hstep n) hh hc hr hk hdc hdr
      rw [totalHandWork, Finset.sum_range_succ]
      dsimp [totalHandWork] at ih
      linarith

/--
The cloth modes have their own exact quadratic bound under any crank-derived
phase. This is a separate observation, not a transfer of spring work to modes.
-/
theorem coupled_cloth_energy_le (p : Parameters) (h torque q : ℝ)
    (old next : State)
    (phase : (Fin 7 → ℝ × ℝ) → Fin 7 → ℝ)
    (modes : Fin 7 → ℝ × ℝ)
    (hs : Step p h torque old next)
    (hh : 0 ≤ h)
    (hc : 0 ≤ p.inertiaCrank) (hr : 0 ≤ p.inertiaRotor)
    (hk : 0 ≤ p.stiffness)
    (hdc : 0 ≤ p.dampingCrank) (hdr : 0 ≤ p.dampingRotor)
    (hq0 : 0 ≤ q) (hq1 : q ≤ 1) :
    mechanicalEnergy p next + modalEnergy (advance q phase modes) ≤
      mechanicalEnergy p old + modalEnergy modes +
        h * torque * next.crankSpeed := by
  have he := step_energy_le_work p h torque old next hs hh hc hr hk hdc hdr
  have hm := advance_energy_le q phase modes hq0 hq1
  linarith

end GRWTSK.NumericalAnalysis.CorkscrewSpringEnergy

import Mathematics.ConnesBitfield.System
import Mathematics.MobiusOntology.PerturbationTail

/-!
# Contractive invariant-law dynamics

The finite kernel is explicit.  Its action on probability laws is mediated by
a certified Wasserstein carrier so that no unproved metric construction is
hidden behind the dynamics.  The resulting boundary certificate reuses the
generic affine perturbation-tail calculus.
-/

namespace Mathematics.ConnesBitfield

open Set
open scoped BigOperators NNReal

universe u

/-- A finite Markov kernel on the random bitfield. -/
structure FiniteBitfieldKernel
    (system : RandomBitfieldSystem) where
  transitionWeight :
    Bitfield system.bits →
      Bitfield system.bits →
      ℝ≥0
  rowMassOne :
    ∀ state,
      ∑ nextState, transitionWeight state nextState = 1
  preservesAdmissibility :
    ∀ {state nextState},
      system.admissible state →
      transitionWeight state nextState ≠ 0 →
      system.admissible nextState

/--
A proof-bearing realization of probability laws and their Wasserstein
distance.  `push_formula` binds the abstract law carrier to the finite kernel.
-/
structure WassersteinLawCarrier
    (system : RandomBitfieldSystem) where
  Law : Type u
  metric : PseudoMetricSpace Law
  realize :
    Law → FiniteProbabilityLaw (Bitfield system.bits)
  dirac :
    Bitfield system.bits → Law
  realize_dirac :
    ∀ point state,
      (realize (dirac point)).weight state =
        if state = point then 1 else 0
  push :
    FiniteBitfieldKernel system → Law → Law
  push_formula :
    ∀ kernel law nextState,
      (realize (push kernel law)).weight nextState =
        ∑ state,
          (realize law).weight state *
            kernel.transitionWeight state nextState
  wasserstein : Law → Law → ℝ≥0
  wasserstein_eq_nndist :
    ∀ left right,
      wasserstein left right = nndist left right
  wasserstein_dirac :
    ∀ left right,
      wasserstein (dirac left) (dirac right) =
        NNReal.ofReal
          (system.metric.distance left right)
  separated :
    ∀ {left right},
      wasserstein left right = 0 →
      left = right

attribute [instance] WassersteinLawCarrier.metric

/--
A family of admitted kernels with one fixed law and one uniform contraction
factor.  This is the authority for schedule-independent boundary semantics.
-/
structure ScheduleKernelFamily
    (system : RandomBitfieldSystem)
    (carrier : WassersteinLawCarrier system)
    (Schedule : Type*) where
  defaultSchedule : Schedule
  kernel : Schedule → FiniteBitfieldKernel system
  invariantLaw : carrier.Law
  contraction : ℝ≥0
  contraction_lt_one : contraction < 1
  commonInvariant :
    ∀ schedule,
      carrier.push (kernel schedule) invariantLaw =
        invariantLaw
  uniformlyWassersteinContractive :
    ∀ schedule left right,
      carrier.wasserstein
          (carrier.push (kernel schedule) left)
          (carrier.push (kernel schedule) right) ≤
        contraction * carrier.wasserstein left right

namespace ScheduleKernelFamily

def toBoundaryCertificate
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type*}
    (family :
      ScheduleKernelFamily system carrier Schedule) :
    Mathematics.MobiusOntology.ContractiveBoundaryCertificate
      carrier.Law Schedule where
  basin := Set.univ
  step := fun schedule law =>
    carrier.push (family.kernel schedule) law
  boundary := family.invariantLaw
  contraction := family.contraction
  contraction_lt_one := family.contraction_lt_one
  boundary_mem := Set.mem_univ _
  invariant := by
    intro _ law _law_mem
    exact Set.mem_univ _
  boundary_fixed :=
    family.commonInvariant
  contractive := by
    intro schedule left right _left_mem _right_mem
    simpa [carrier.wasserstein_eq_nndist] using
      family.uniformlyWassersteinContractive
        schedule left right

def iterateLaw
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type*}
    (family :
      ScheduleKernelFamily system carrier Schedule)
    (schedule : Nat → Schedule)
    (depth : Nat)
    (initial : carrier.Law) :
    carrier.Law :=
  Mathematics.MobiusOntology.iterateSchedule
    family.toBoundaryCertificate.step
    schedule
    depth
    initial

theorem iterateLaw_wasserstein_le
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type*}
    (family :
      ScheduleKernelFamily system carrier Schedule)
    (schedule : Nat → Schedule)
    (depth : Nat)
    (initial : carrier.Law) :
    carrier.wasserstein
        (family.iterateLaw schedule depth initial)
        family.invariantLaw ≤
      family.contraction ^ depth *
        carrier.wasserstein initial family.invariantLaw := by
  simpa
      [iterateLaw, carrier.wasserstein_eq_nndist]
    using
      family.toBoundaryCertificate.nndist_to_boundary_le_pow
        schedule
        (Set.mem_univ initial)
        depth

theorem invariantLaw_unique
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type*}
    (family :
      ScheduleKernelFamily system carrier Schedule)
    (candidate : carrier.Law)
    (candidateFixed :
      ∀ schedule,
        carrier.push (family.kernel schedule) candidate =
          candidate) :
    candidate = family.invariantLaw := by
  apply carrier.separated
  have contractionBound :=
    family.uniformlyWassersteinContractive
      family.defaultSchedule
      candidate family.invariantLaw
  rw [candidateFixed, family.commonInvariant] at
    contractionBound
  have contractionReal :
      (family.contraction : ℝ) < 1 := by
    exact_mod_cast family.contraction_lt_one
  have distanceReal :
      (carrier.wasserstein
        candidate family.invariantLaw : ℝ) ≤
        (family.contraction : ℝ) *
          (carrier.wasserstein
            candidate family.invariantLaw : ℝ) := by
    exact_mod_cast contractionBound
  have distanceNonnegative :
      0 ≤
        (carrier.wasserstein
          candidate family.invariantLaw : ℝ) :=
    NNReal.coe_nonneg _
  have distanceZero :
      (carrier.wasserstein
        candidate family.invariantLaw : ℝ) = 0 := by
    nlinarith
  exact_mod_cast distanceZero

end ScheduleKernelFamily

/--
Schedule-specific implementation defects over a common exact kernel family.
The weighted tail is evaluated along the actual admitted schedule.
-/
structure PerturbedScheduleKernelDynamics
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type*}
    (exact :
      ScheduleKernelFamily system carrier Schedule) where
  implementedPush :
    Nat → Schedule → carrier.Law → carrier.Law
  errorBound : Nat → Schedule → ℝ≥0
  localDefect :
    ∀ depth schedule law,
      carrier.wasserstein
          (implementedPush depth schedule law)
          (carrier.push (exact.kernel schedule) law) ≤
        errorBound depth schedule

def PerturbedScheduleKernelDynamics.toBoundaryCertificate
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type*}
    {exact :
      ScheduleKernelFamily system carrier Schedule}
    (implemented :
      PerturbedScheduleKernelDynamics exact) :
    Mathematics.MobiusOntology.PerturbedBoundaryCertificate
      exact.toBoundaryCertificate where
  implementedStep := implemented.implementedPush
  perturbation := implemented.errorBound
  implementedInvariant := by
    intro _ _ _ _
    exact Set.mem_univ _
  localDefect := by
    intro depth schedule law _
    simpa [carrier.wasserstein_eq_nndist] using
      implemented.localDefect depth schedule law

def PerturbedScheduleKernelDynamics.TailOutcome
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type*}
    {exact :
      ScheduleKernelFamily system carrier Schedule}
    (implemented :
      PerturbedScheduleKernelDynamics exact)
    (schedule : Nat → Schedule) :=
  Mathematics.MobiusOntology.PerturbationTailOutcome
    implemented.toBoundaryCertificate
    schedule

/--
The single-kernel specialization retained for deterministic deployments.
-/
structure ContractiveBitfieldDynamics
    (system : RandomBitfieldSystem)
    (carrier : WassersteinLawCarrier system) where
  kernel : FiniteBitfieldKernel system
  invariantLaw : carrier.Law
  contraction : ℝ≥0
  contraction_lt_one : contraction < 1
  invariant :
    carrier.push kernel invariantLaw = invariantLaw
  wassersteinContractive :
    ∀ left right,
      carrier.wasserstein
          (carrier.push kernel left)
          (carrier.push kernel right) ≤
        contraction * carrier.wasserstein left right

namespace ContractiveBitfieldDynamics

def toScheduleFamily
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    (dynamics :
      ContractiveBitfieldDynamics system carrier) :
    ScheduleKernelFamily system carrier Unit where
  defaultSchedule := ()
  kernel := fun _ => dynamics.kernel
  invariantLaw := dynamics.invariantLaw
  contraction := dynamics.contraction
  contraction_lt_one := dynamics.contraction_lt_one
  commonInvariant := fun _ =>
    dynamics.invariant
  uniformlyWassersteinContractive :=
    fun _ left right =>
      dynamics.wassersteinContractive left right

def toBoundaryCertificate
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    (dynamics :
      ContractiveBitfieldDynamics system carrier) :
    Mathematics.MobiusOntology.ContractiveBoundaryCertificate
      carrier.Law Unit where
  dynamics.toScheduleFamily.toBoundaryCertificate

/-- Exact law iteration is the generic scheduled boundary iteration. -/
def iterateLaw
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    (dynamics :
      ContractiveBitfieldDynamics system carrier)
    (depth : Nat)
    (initial : carrier.Law) :
    carrier.Law :=
  Mathematics.MobiusOntology.iterateSchedule
    dynamics.toBoundaryCertificate.step
    (fun _ => ())
    depth
    initial

theorem iterateLaw_wasserstein_le
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    (dynamics :
      ContractiveBitfieldDynamics system carrier)
    (depth : Nat)
    (initial : carrier.Law) :
    carrier.wasserstein
        (dynamics.iterateLaw depth initial)
        dynamics.invariantLaw ≤
      dynamics.contraction ^ depth *
        carrier.wasserstein initial dynamics.invariantLaw := by
  simpa
      [iterateLaw, carrier.wasserstein_eq_nndist]
    using
      dynamics.toBoundaryCertificate.nndist_to_boundary_le_pow
        (fun _ => ())
        (Set.mem_univ initial)
        depth

theorem invariantLaw_unique
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    (dynamics :
      ContractiveBitfieldDynamics system carrier)
    (candidate : carrier.Law)
    (candidateFixed :
      carrier.push dynamics.kernel candidate =
        candidate) :
    candidate = dynamics.invariantLaw := by
  apply carrier.separated
  have contractionBound :=
    dynamics.wassersteinContractive
      candidate dynamics.invariantLaw
  rw [candidateFixed, dynamics.invariant] at
    contractionBound
  have contractionReal :
      (dynamics.contraction : ℝ) < 1 := by
    exact_mod_cast dynamics.contraction_lt_one
  have distanceReal :
      (carrier.wasserstein
        candidate dynamics.invariantLaw : ℝ) ≤
        (dynamics.contraction : ℝ) *
          (carrier.wasserstein
            candidate dynamics.invariantLaw : ℝ) := by
    exact_mod_cast contractionBound
  have distanceNonnegative :
      0 ≤
        (carrier.wasserstein
          candidate dynamics.invariantLaw : ℝ) :=
    NNReal.coe_nonneg _
  have distanceZero :
      (carrier.wasserstein
        candidate dynamics.invariantLaw : ℝ) = 0 := by
    nlinarith
  exact_mod_cast distanceZero

end ContractiveBitfieldDynamics

/--
An implemented, time-indexed kernel action with an explicit one-step
Wasserstein defect.  The law carrier is unrestricted, so robust invariance is
automatic; nontrivial admissible subsets should use the generic certificate
directly.
-/
structure PerturbedBitfieldDynamics
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    (exact :
      ContractiveBitfieldDynamics system carrier) where
  implementedPush :
    Nat → carrier.Law → carrier.Law
  errorBound : Nat → ℝ≥0
  localDefect :
    ∀ depth law,
      carrier.wasserstein
          (implementedPush depth law)
          (carrier.push exact.kernel law) ≤
        errorBound depth

namespace PerturbedBitfieldDynamics

def toBoundaryCertificate
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {exact :
      ContractiveBitfieldDynamics system carrier}
    (implemented :
      PerturbedBitfieldDynamics exact) :
    Mathematics.MobiusOntology.PerturbedBoundaryCertificate
      exact.toBoundaryCertificate where
  implementedStep := fun depth _ law =>
    implemented.implementedPush depth law
  perturbation := fun depth _ =>
    implemented.errorBound depth
  implementedInvariant := by
    intro _ _ _ _
    exact Set.mem_univ _
  localDefect := by
    intro depth _ law _
    simpa [carrier.wasserstein_eq_nndist] using
      implemented.localDefect depth law

def iterateLaw
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {exact :
      ContractiveBitfieldDynamics system carrier}
    (implemented :
      PerturbedBitfieldDynamics exact)
    (depth : Nat)
    (initial : carrier.Law) :
    carrier.Law :=
  Mathematics.MobiusOntology.iteratePerturbed
    implemented.toBoundaryCertificate
    (fun _ => ())
    depth
    initial

def weightedTail
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {exact :
      ContractiveBitfieldDynamics system carrier}
    (implemented :
      PerturbedBitfieldDynamics exact)
    (depth : Nat) : ℝ≥0 :=
  Mathematics.MobiusOntology.weightedPerturbationTail
    implemented.toBoundaryCertificate
    (fun _ => ())
    depth

def TailOutcome
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {exact :
      ContractiveBitfieldDynamics system carrier}
    (implemented :
      PerturbedBitfieldDynamics exact) :=
  Mathematics.MobiusOntology.PerturbationTailOutcome
    implemented.toBoundaryCertificate
    (fun _ => ())

/--
Only exact and certified residual tails may enter the closure package.
Unbounded and unknown tails remain resolver outcomes, never certificates.
-/
inductive CertifiedBoundaryLawOutcome
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {exact :
      ContractiveBitfieldDynamics system carrier}
    (implemented :
      PerturbedBitfieldDynamics exact)
  | exactBoundary
      (certificate :
        Mathematics.MobiusOntology.ExactBoundaryTail
          implemented.toBoundaryCertificate
          (fun _ => ()))
  | residualBoundary
      (certificate :
        Mathematics.MobiusOntology.ResidualBoundaryTail
          implemented.toBoundaryCertificate
          (fun _ => ()))

theorem cross_implementation_wasserstein_le
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {exact :
      ContractiveBitfieldDynamics system carrier}
    (left right :
      PerturbedBitfieldDynamics exact)
    (depth : Nat)
    (leftInitial rightInitial : carrier.Law) :
    carrier.wasserstein
        (left.iterateLaw depth leftInitial)
        (right.iterateLaw depth rightInitial) ≤
      exact.contraction ^ depth *
          (carrier.wasserstein
              leftInitial exact.invariantLaw +
            carrier.wasserstein
              rightInitial exact.invariantLaw) +
        left.weightedTail depth +
        right.weightedTail depth := by
  simpa
      [iterateLaw, weightedTail,
        carrier.wasserstein_eq_nndist]
    using
      Mathematics.MobiusOntology.perturbed_cross_schedule_nndist_le
        left.toBoundaryCertificate
        right.toBoundaryCertificate
        (fun _ => ())
        (fun _ => ())
        (Set.mem_univ leftInitial)
        (Set.mem_univ rightInitial)
        depth

end PerturbedBitfieldDynamics

end Mathematics.ConnesBitfield

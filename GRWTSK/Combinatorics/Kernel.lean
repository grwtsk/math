import Mathematics.SpectralClosure.Metric
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Finite probability laws and Markov kernels

These definitions are mathematical values.  They carry no mutation or
admission capability.
-/

namespace Mathematics.SpectralClosure

structure FiniteLaw (X : Type) [Fintype X] where
  mass : X → ℝ
  nonnegative : ∀ point, 0 ≤ mass point
  totalMass : ∑ point, mass point = 1

structure MarkovKernel (X : Type) [Fintype X] where
  transition : X → X → ℝ
  nonnegative : ∀ source target, 0 ≤ transition source target
  rowMass : ∀ source, ∑ target, transition source target = 1
  kernelRevision : SpectralId

def MarkovKernel.push
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (law : FiniteLaw X) :
    FiniteLaw X where
  mass target :=
    ∑ source, law.mass source * kernel.transition source target
  nonnegative target := by
    apply Finset.sum_nonneg
    intro source _
    exact mul_nonneg
      (law.nonnegative source)
      (kernel.nonnegative source target)
  totalMass := by
    rw [Finset.sum_comm]
    calc
      (∑ source, ∑ target,
          law.mass source * kernel.transition source target) =
          ∑ source,
            law.mass source *
              (∑ target, kernel.transition source target) := by
                apply Finset.sum_congr rfl
                intro source _
                rw [Finset.mul_sum]
      _ = ∑ source, law.mass source := by
            apply Finset.sum_congr rfl
            intro source _
            rw [kernel.rowMass source, mul_one]
      _ = 1 := law.totalMass

def LawSupported
    {X : Type} [Fintype X]
    (law : FiniteLaw X)
    (admissible : X → Prop) : Prop :=
  ∀ point, ¬admissible point → law.mass point = 0

def KernelPreservesAdmissibility
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (admissible : X → Prop) : Prop :=
  ∀ source target,
    admissible source →
    ¬admissible target →
    kernel.transition source target = 0

structure AdmissibilityCertificate
    {X : Type} [Fintype X]
    (kernel : MarkovKernel X)
    (admissible : X → Prop) where
  preserved : KernelPreservesAdmissibility kernel admissible
  proofRef : SpectralId

structure KernelPerturbation
    {X : Type} [Fintype X]
    (canonical implemented : MarkovKernel X) where
  localDefect : ℝ
  localDefectNonnegative : 0 ≤ localDefect
  comparisonStatement : Prop
  comparisonStatus : ProofDisposition

end Mathematics.SpectralClosure

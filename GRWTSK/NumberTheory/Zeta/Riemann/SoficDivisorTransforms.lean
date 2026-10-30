import GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorPartition

/-!
# Finite transforms from indexed zero records to analytic test kernels

Copyright (c) 2026 grwtsk contributors. MIT.
This is an algebraic factorization of finite source records, not an analytic
identification with the infinite Riemann zero divisor or a proof of RH.
SOURCE_CANDIDATE / COMPILATION NOT_RUN / KERNEL NOT_RUN / AXIOM AUDIT NOT_RUN.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorTransforms

open GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorPrimeCountingBridge
open GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorPartition

/-- A function of indexed zero records is the uncompressed source space. -/
abbrev RecordField (n : ℕ) := Fin n → ℂ

/-- Evaluation of a kernel on each indexed zero record, retaining duplicates. -/
def kernelField {n : ℕ} (D : FiniteDivisor n) (kernel : ℂ → ℂ) :
    RecordField n :=
  fun i => (D.multiplicity i : ℂ) * kernel (D.root i)

/-- Real-part/height projection into a selected sector. -/
def project {n : ℕ} (D : FiniteDivisor n)
    (sigma height : ℝ) (v : RecordField n) : RecordField n :=
  fun i => if i ∈ selected D sigma height then v i else 0

/-- Complementary sector, required to reconstruct the original field. -/
def reject {n : ℕ} (D : FiniteDivisor n)
    (sigma height : ℝ) (v : RecordField n) : RecordField n :=
  fun i => if i ∈ selected D sigma height then 0 else v i

/-- Pointwise exact reconstruction: no selected record is silently discarded. -/
theorem project_add_reject {n : ℕ} (D : FiniteDivisor n)
    (sigma height : ℝ) (v : RecordField n) :
    (fun i => project D sigma height v i + reject D sigma height v i) = v := by
  funext i
  simp only [project, reject]
  split <;> simp_all

/-- The field-to-(selected,rejected) transform has a left inverse. -/
theorem project_reject_injective {n : ℕ} (D : FiniteDivisor n)
    (sigma height : ℝ) :
    Function.Injective (fun v : RecordField n =>
      (project D sigma height v, reject D sigma height v)) := by
  intro v w h
  have hp := congrArg Prod.fst h
  have hr := congrArg Prod.snd h
  funext i
  have a := congrFun hp i
  have b := congrFun hr i
  have av := congrFun (project_add_reject D sigma height v) i
  have aw := congrFun (project_add_reject D sigma height w) i
  calc
    v i = project D sigma height v i + reject D sigma height v i := av.symm
    _ = project D sigma height w i + reject D sigma height w i := by rw [a, b]
    _ = w i := aw

/-- A finite spectral transform against a supplied test function. -/
def evaluate {n : ℕ} (v : RecordField n) : ℂ :=
  ∑ i : Fin n, v i

theorem evaluate_kernelField {n : ℕ}
    (D : FiniteDivisor n) (kernel : ℂ → ℂ) :
    evaluate (kernelField D kernel) = zeroSum D kernel := rfl

/-- The zero-divisor transform factors through the two complementary
projections; no analytic tail estimate is implied by the factorization. -/
theorem evaluate_partition {n : ℕ} (D : FiniteDivisor n)
    (sigma height : ℝ) (v : RecordField n) :
    evaluate v =
      evaluate (project D sigma height v) +
      evaluate (reject D sigma height v) := by
  unfold evaluate
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  exact (congrFun (project_add_reject D sigma height v) i).symm

/-- The finite transform for the actual complex exponential power kernel.
A separate analytic theorem must identify it with a truncated explicit
formula for the Chebyshev prime-counting function. -/
def primeKernel (x : ℝ) (rho : ℂ) : ℂ :=
  Complex.exp (rho * Complex.log (x : ℂ)) / rho

theorem primeKernel_zero (x : ℝ) : primeKernel x 0 = 0 := by
  simp [primeKernel]

end GRWTSK.NumberTheory.Zeta.Riemann.SoficDivisorTransforms

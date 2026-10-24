/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPointwise
import GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection

/-!
# Canonical von Mangoldt residue-class finite sum

This transports the pointwise prime-power weight identification into
the exact inclusive residue filter n % q = r. The q=0 behavior is
retained as defined by Nat.mod; no reduced-residue or coprimality
hypothesis is inserted.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtResidueBridge

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtPointwise

/-- The finite residue-class psi packet is the canonical von Mangoldt
sum over exactly the same inclusive residue filter. -/
theorem finitePsiResidue_eq_vonMangoldt_sum (N q r : ℕ) :
    finitePsiResidue N q r =
      ∑ n ∈ (Finset.range (N + 1)).filter (fun n => n % q = r),
        ArithmeticFunction.vonMangoldt n := by
  unfold finitePsiResidue
  apply Finset.sum_congr rfl
  intro n hn
  exact primePowerWeight_eq_vonMangoldt n

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtResidueBridge

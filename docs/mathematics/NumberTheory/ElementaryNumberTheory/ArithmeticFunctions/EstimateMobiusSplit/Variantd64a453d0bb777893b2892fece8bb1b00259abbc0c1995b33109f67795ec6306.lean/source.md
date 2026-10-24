# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.EstimateMobiusSplit.Variantd64a453d0bb777893b2892fece8bb1b00259abbc0c1995b33109f67795ec6306

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2281b04e7f2a7670fe857ce156dc43ea63c798e0` · SHA-256 `51411461cdd1ba80155ae9cba5d05e926b13a37cd38bd912c8bd08da61aa15ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory.ArithmeticFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ClosedPrimeWeight.Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.ArithmeticFunctions.SourceCorpus.ClosedPrimeWeight.Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f","mathematical_subject":"NumberTheory.ArithmeticFunctions","original_sha256":"0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateMobiusSplit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimeSmoothDefect
import Mathlib.NumberTheory.ArithmeticFunction.Moebius

/-!
# RH estimate: exact finite Möbius split of the prime-smooth defect

The closed prime moment is rewritten by the exact arithmetic-function identity

  vonMangoldt = moebius * log.

Everything remains finite at each source radius.  The resulting divisor
variable is split at the actual moving threshold d = A^2, with equality placed
in the small-divisor sector.

This is an algebraic transport only.  No Mertens bound, zero-free region,
probabilistic sign model, or estimate for either sector is assumed.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.ClosedPrimeWeight.Variant0bb257f2bbbeb3ef3550f74589112ce718bf9611facbf78b24d3822fa8a3434f

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit

open FormalResearch.RiemannHypothesis.SourcePairing
open EstimatePrimeSmoothDefect
open PrimePowerDescent
open scoped ArithmeticFunction.Moebius

noncomputable section

/-- The exact real weight multiplying von Mangoldt in the closed prime moment. -/
def closedPrimeWeight (A : ℝ) (n : ℕ) : ℝ :=
  exponentialTest
    (sourceCorrelation Realization.explicitSecondDerivative A)
    (Real.log n)

/-- One term in the finite Möbius-log convolution at source index n. -/
def mobiusLogTerm (A : ℝ) (n : ℕ) (dk : ℕ × ℕ) : ℝ :=
  ((ArithmeticFunction.moebius dk.1 : ℤ) : ℝ) *
    Real.log dk.2 * closedPrimeWeight A n

/-- Pointwise finite Möbius inversion of the actual von Mangoldt coefficient. -/
theorem vonMangoldt_eq_mobius_log_convolution
    (n : ℕ) :
    ArithmeticFunction.vonMangoldt n =
      ∑ dk ∈ n.divisorsAntidiagonal,
        ((ArithmeticFunction.moebius dk.1 : ℤ) : ℝ) *
          Real.log dk.2 := by
  have h :=
    congrArg (fun f : ArithmeticFunction ℝ ↦ f n)
      ArithmeticFunction.moebius_mul_log_eq_vonMangoldt
  simpa only [ArithmeticFunction.mul_apply,
    ArithmeticFunction.log_apply,
    ArithmeticFunction.intCoe_apply] using h.symm

/-- The complete finite Möbius expansion of the closed source prime moment. -/
def mobiusClosedPrimeMoment (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ∑ dk ∈ n.divisorsAntidiagonal,
      mobiusLogTerm A n dk

/-- The exact closed prime moment is its finite Möbius-log expansion. -/
theorem closedPrimeMoment_eq_mobius
    (A : ℝ) :
    closedPrimeMoment A = mobiusClosedPrimeMoment A := by
  unfold closedPrimeMoment mobiusClosedPrimeMoment
  apply Finset.sum_congr rfl
  intro n hn
  rw [vonMangoldt_eq_mobius_log_convolution n,
    Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro dk hdk
  unfold mobiusLogTerm closedPrimeWeight
  ring

/-- Small-divisor sector. The equality case d = A^2 belongs here. -/
def smallDivisorMobiusMoment (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ∑ dk ∈ n.divisorsAntidiagonal,
      if (dk.1 : ℝ) ≤ A ^ 2
      then mobiusLogTerm A n dk
      else 0

/-- Large-divisor sector, strictly d > A^2. -/
def largeDivisorMobiusMoment (A : ℝ) : ℝ :=
  ∑ n ∈ primePowerInventory (2 * A),
    ∑ dk ∈ n.divisorsAntidiagonal,
      if A ^ 2 < (dk.1 : ℝ)
      then mobiusLogTerm A n dk
      else 0

/-- The moving divisor split is exhaustive and disjoint, with the boundary
assigned to the small sector. -/
theorem mobiusClosedPrimeMoment_eq_small_add_large
    (A : ℝ) :
    mobiusClosedPrimeMoment A =
      smallDivisorMobiusMoment A +
        largeDivisorMobiusMoment A := by
  unfold mobiusClosedPrimeMoment
  unfold smallDivisorMobiusMoment largeDivisorMobiusMoment
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro dk hdk
  by_cases hsmall : (dk.1 : ℝ) ≤ A ^ 2
  · have hlarge : ¬ A ^ 2 < (dk.1 : ℝ) :=
      not_lt_of_ge hsmall
    simp [hsmall, hlarge]
  · have hlarge : A ^ 2 < (dk.1 : ℝ) :=
      lt_of_not_ge hsmall
    simp [hsmall, hlarge]

/-- Exact Möbius divisor decomposition of the unchanged closed prime moment. -/
theorem closedPrimeMoment_eq_small_add_large
    (A : ℝ) :
    closedPrimeMoment A =
      smallDivisorMobiusMoment A +
        largeDivisorMobiusMoment A := by
  rw [closedPrimeMoment_eq_mobius,
    mobiusClosedPrimeMoment_eq_small_add_large]

/-- The prime-smooth discrepancy keeps the same exact cancellation after the
Möbius split. -/
theorem primeSmoothDefect_eq_mobius_split
    (A : ℝ) :
    primeSmoothDefect A =
      smallDivisorMobiusMoment A +
        largeDivisorMobiusMoment A -
        smoothMoment A := by
  unfold primeSmoothDefect
  rw [closedPrimeMoment_eq_small_add_large]
  ring

/-- The large-divisor term contains exactly the strict divisor sector requested
by the arithmetic-tail program; no atom at d = A^2 is included. -/
theorem largeDivisorMobiusMoment_boundary_excluded
    (A : ℝ) (n : ℕ) (dk : ℕ × ℕ)
    (hboundary : (dk.1 : ℝ) = A ^ 2) :
    (if A ^ 2 < (dk.1 : ℝ)
      then mobiusLogTerm A n dk
      else 0) = 0 := by
  simp [hboundary]

/-- Current exact Möbius checkpoint for the remaining arithmetic frontier. -/
def MobiusSplitCheckpoint : Prop :=
  (∀ A : ℝ,
    closedPrimeMoment A =
      smallDivisorMobiusMoment A +
        largeDivisorMobiusMoment A) ∧
  (∀ A : ℝ,
    primeSmoothDefect A =
      smallDivisorMobiusMoment A +
        largeDivisorMobiusMoment A -
        smoothMoment A)

theorem mobius_split_checkpoint :
    MobiusSplitCheckpoint :=
  ⟨closedPrimeMoment_eq_small_add_large,
    primeSmoothDefect_eq_mobius_split⟩

end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusSplit
```

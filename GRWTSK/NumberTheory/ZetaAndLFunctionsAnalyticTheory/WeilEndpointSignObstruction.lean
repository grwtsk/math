/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilObservedSchurCertificate
import Mathlib.Tactic

/-!
# Explicit endpoint packets and a failed even Schur sign test

Primary source: Connes--Consani--Moscovici, *Zeta Spectral Triples*,
arXiv:2511.22755v1, (3.19)--(3.20). The two distinct research obligations
remain Connes, arXiv:2602.04022v1, Section 6.6.

Reuse the ACTUAL orthonormal-cosine endpoint row from
`LowSchur.Observed.endpointRow`. The constant coefficient is 1/sqrt(2).
The packet occupies consecutive nonconstant modes M+1,...,M+K. Its endpoint
is one and its squared norm is 1/K after the analytical orthonormal-basis
identification. Its graph norm is O_T(log(K)/sqrt(K)) at fixed M,T, using
A_T=D_T+V_T from the periodic comparison. Consequently endpoint-zero cosine
polynomials are graph dense; their endpoint constraint is not a closed
operator-domain condition or a proposed trial's orthogonal complement.

The associated analytical note proves an explicit source sign obstruction:
at T=1/2 and beta=1/10000, for EVERY N>=100000000, the exact even Schur
operator has a negative vector on the unlifted endpoint kernel. Its high
block is coercive, and a complete arithmetic even trial is below beta.
Thus the sufficient endpoint-kernel lower-sign test with Y=0 cannot pass
at these parameters, no matter how accurately the residual is enclosed.
This is a fixed-support negative witness, NOT cofinal support separation,
NOT odd-sector positivity, and NOT a claim about nonzero reconstruction Y.

Formal scope here: literal finite packet indices, endpoint and squared-norm
identities, exact trial coefficients and rational final-margin arithmetic.
The source operator, graph-core proof, interval evaluator correctness,
source-series estimates, eigenvalues and Schur return require separate
analytical arguments. They are not proved by naming them in this module. The independent Python
integer-interval computation is not imported as a Lean theorem or axiom.

AI-assisted manual source drafting. Elaboration, fresh kernel checking,
transitive axiom auditing and independent analytical review: NOT_RUN.
No new RH or DirichletGRH predicate, default import or dependency pin.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Matrix

namespace GRWTSK.NumberTheory.WeilQuadraticForm.EndpointSign

open LowSchur.Observed

/-- Every packet index is a genuine nonconstant cosine mode. -/
def packetIndex (M K : ℕ) (i : Fin K) : Fin (M + K + 1) :=
  ⟨M + 1 + i.val, by omega⟩

theorem packetIndex_gt (M K : ℕ) (i : Fin K) :
    M < (packetIndex M K i).val := by
  simp only [packetIndex]
  omega

theorem packetIndex_injective (M K : ℕ) : Function.Injective (packetIndex M K) := by
  intro i j h
  apply Fin.ext
  have hv := congrArg Fin.val h
  simp only [packetIndex] at hv
  omega

/-- Read the same endpoint row as the existing observed-Schur target. -/
def packetCoefficient (M K : ℕ) (amplitude : ℝ) (i : Fin K) : ℝ :=
  amplitude * endpointRow (M + K) (packetIndex M K i) / (K : ℝ)

theorem packet_endpointRow_sq (M K : ℕ) (i : Fin K) :
    endpointRow (M + K) (packetIndex M K i) ^ 2 = 1 := by
  have hi : (packetIndex M K i).val ≠ 0 := by
    have h := packetIndex_gt M K i
    omega
  simp only [endpointRow, if_neg hi]
  rw [← pow_mul, Nat.mul_comm _ 2, pow_mul]
  norm_num

/-- Endpoint of the packet, before embedding its distinct indices in the head. -/
theorem packet_endpoint (M K : ℕ) (hK : 0 < K) (amplitude : ℝ) :
    (∑ i : Fin K, endpointRow (M + K) (packetIndex M K i) *
      packetCoefficient M K amplitude i) = amplitude := by
  have hK0 : (K : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hK)
  calc
    (∑ i : Fin K, endpointRow (M + K) (packetIndex M K i) *
        packetCoefficient M K amplitude i) = ∑ _i : Fin K, amplitude / (K : ℝ) := by
      apply Finset.sum_congr rfl
      intro i _
      unfold packetCoefficient
      calc
        endpointRow (M + K) (packetIndex M K i) *
            (amplitude * endpointRow (M + K) (packetIndex M K i) / (K : ℝ)) =
            amplitude * endpointRow (M + K) (packetIndex M K i) ^ 2 / (K : ℝ) := by ring
        _ = amplitude / (K : ℝ) := by rw [packet_endpointRow_sq, mul_one]
    _ = (K : ℝ) * (amplitude / (K : ℝ)) := by simp [nsmul_eq_mul]
    _ = amplitude := by field_simp [hK0]

/-- Exact coefficient norm; the physical L2 return uses cosine orthonormality. -/
theorem packet_squared_norm (M K : ℕ) (hK : 0 < K) (amplitude : ℝ) :
    (∑ i : Fin K, packetCoefficient M K amplitude i ^ 2) =
      amplitude ^ 2 / (K : ℝ) := by
  have hK0 : (K : ℝ) ≠ 0 := by exact_mod_cast (Nat.ne_of_gt hK)
  simp only [packetCoefficient, div_pow, mul_pow, packet_endpointRow_sq, mul_one]
  simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul]
  field_simp [hK0]

/-- Literal low trial in the orthonormal cosine coordinates at T=1/2. -/
def trialCoordinates : Fin 4 → ℝ :=
  ![Real.sqrt 2 * (2801 / 5000), 152151 / 250000,
    43729 / 1000000, -(3991 / 500000)]

theorem trial_endpoint :
    endpointRow 3 ⬝ᵥ trialCoordinates = 3307 / 1000000 := by
  have hs : Real.sqrt 2 ≠ 0 := ne_of_gt (Real.sqrt_pos.2 (by norm_num))
  norm_num [dotProduct, Fin.sum_univ_succ, endpointRow, trialCoordinates] <;>
    field_simp [hs] <;> ring

theorem trial_squared_norm :
    (∑ i : Fin 4, trialCoordinates i ^ 2) = 1000022846581 / 1000000000000 := by
  have hs : Real.sqrt 2 ^ 2 = (2 : ℝ) := Real.sq_sqrt (by norm_num)
  norm_num [trialCoordinates, Fin.sum_univ_succ, mul_pow, hs]

theorem trial_norm_margin :
    1 < (∑ i : Fin 4, trialCoordinates i ^ 2) ∧
      (∑ i : Fin 4, trialCoordinates i ^ 2) < 4 := by
  rw [trial_squared_norm]
  norm_num

theorem trial_endpoint_margin :
    0 < endpointRow 3 ⬝ᵥ trialCoordinates ∧
      endpointRow 3 ⬝ᵥ trialCoordinates < 1 / 250 := by
  rw [trial_endpoint]
  norm_num

/-- Final rational price AFTER the analytically established packet estimates.
This does not certify the transcendental arithmetic trial by itself. -/
theorem packet_price_at_cutoff :
    (1 / 200000 : ℝ) + (104 / 250 + 56 / 62500) / 10000 =
      29181 / 625000000 := by norm_num

theorem packet_price_strict_margin :
    (29181 / 625000000 : ℝ) < 1 / 20000 := by norm_num

theorem packet_price_slack :
    (1 / 20000 : ℝ) - 29181 / 625000000 = 2069 / 625000000 := by norm_num

/-- The source consumer uses a positive beta and the TRUE reconstructed norm.
Here the constructed packet is orthogonal to the four-mode trial, so its norm
is larger than one. The analytical note proves both energy and norm premises. -/
theorem shifted_witness_negative (energy normSquared : ℝ)
    (he : energy < 1 / 20000) (hn : 1 ≤ normSquared) :
    energy - (1 / 10000) * normSquared < -(1 / 20000) := by
  nlinarith

end GRWTSK.NumberTheory.WeilQuadraticForm.EndpointSign

# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.BaselSeries.Variantf6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed464a68823f193bc87326fd43692fd521f0173c` · SHA-256 `f6f97e4237ae23871452dc03745564f38d77b994d2f4d8f6ec2243ff2336ca82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.Mathlib.Certificate
import AnalyticNumber.Mathlib.IntervalArithmetic
import AnalyticNumber.Zeta
import Number.NumericalEstimate

/-!
# Mathlib-backed case study: the Basel series with a rational enclosure

This file proves a finite-to-analytic pattern:

  finite rational partial sum + finite metadata
  + Mathlib proof of convergence/value/tail bound
  → proof-carrying analytic certificate.

The finite payload is not the proof. The proof is the Lean term carried by
`baselMathlibProofCertificate.proof`.

Contents, all Mathlib-backed:

* `HasSum baselTerm (Real.pi ^ 2 / 6)`, from Mathlib's Basel identity
  `hasSum_zeta_two`, reindexed by one;
* the exact finite computation `baselPartialSum 10 = 1968329 / 1270080`;
* a tail bound `∑' n, baselTerm (n + 10) ≤ 1 / 10`, proved independently by
  comparison with the telescoping series `1/(n+10) - 1/(n+11)`
  (`basel_tail_bound_10_telescoping`), with no appeal to the Basel identity
  or to any bound on π;
* the rational enclosure
  `baselPartialSum 10 ≤ π² / 6 ≤ baselPartialSum 10 + 1 / 10`.

This file certifies only a concrete convergent positive series and a
rational enclosure. It asserts nothing about analytic continuation, RH, or
zero locations.
-/

namespace AnalyticNumber
namespace MathlibBridge
namespace BaselSeries

/-- The Basel series term `1 / (n + 1)²`. Noncomputable because real
division is noncomputable. -/
noncomputable def baselTerm (n : ℕ) : ℝ :=
  1 / ((n + 1 : ℝ)) ^ 2

/-- Every Basel term is nonnegative. -/
theorem basel_term_nonneg (n : ℕ) : 0 ≤ baselTerm n := by
  unfold baselTerm
  positivity

/-- Basel's identity, reindexed from Mathlib's `hasSum_zeta_two`. -/
theorem basel_hasSum_pi_sq_div_six :
    HasSum baselTerm (Real.pi ^ 2 / 6) := by
  have h0 :
      HasSum (fun n : ℕ => (1 : ℝ) / (n : ℝ) ^ 2)
        (Real.pi ^ 2 / 6 +
          ∑ i ∈ Finset.range 1, (1 : ℝ) / (i : ℝ) ^ 2) := by
    simpa using hasSum_zeta_two
  have h1 :=
    (hasSum_nat_add_iff
      (f := fun n : ℕ => (1 : ℝ) / (n : ℝ) ^ 2) 1).mpr h0
  have h2 : HasSum (fun n : ℕ => baselTerm n) (Real.pi ^ 2 / 6) := by
    simpa [baselTerm, Nat.cast_add, Nat.cast_one] using h1
  exact h2

/-- The Basel series is summable. -/
theorem basel_summable : Summable baselTerm :=
  basel_hasSum_pi_sq_div_six.summable

/-- The finite computation side: the rational partial sum. -/
def baselPartialSum (N : ℕ) : ℚ :=
  ∑ n ∈ Finset.range N, (1 : ℚ) / ((n + 1 : ℚ)) ^ 2

/-- The exact value of the tenth partial sum. -/
theorem basel_partial_sum_10_eq :
    baselPartialSum 10 = 1968329 / 1270080 := by
  norm_num [baselPartialSum, Finset.sum_range_succ]

/-- The rational partial sum casts to the real partial sum. -/
theorem basel_partial_sum_real_eq
    (N : ℕ) :
    ((baselPartialSum N : ℚ) : ℝ) =
      ∑ n ∈ Finset.range N, baselTerm n := by
  unfold baselPartialSum baselTerm
  push_cast
  rfl

/-- The real value of the tenth partial sum. -/
theorem basel_partial_sum_10_real_eq :
    (∑ n ∈ Finset.range 10, baselTerm n) = (1968329 : ℝ) / 1270080 := by
  rw [← basel_partial_sum_real_eq, basel_partial_sum_10_eq]
  norm_num

/-- Splitting the Basel series at 10: head plus tail equals `π² / 6`. -/
theorem basel_split_10 :
    (∑ n ∈ Finset.range 10, baselTerm n) +
      (∑' n : ℕ, baselTerm (n + 10)) =
      Real.pi ^ 2 / 6 := by
  rw [← basel_hasSum_pi_sq_div_six.tsum_eq]
  exact basel_summable.sum_add_tsum_nat_add 10

/-- Each Basel tail term is dominated by the corresponding telescoping
term: `1/(n+11)² ≤ 1/((n+10)(n+11)) = 1/(n+10) - 1/(n+11)`. -/
theorem basel_tail_term_le_telescoping
    (n : ℕ) :
    baselTerm (n + 10) ≤
      (1 : ℝ) / (n + 10) - (1 : ℝ) / (n + 11) := by
  have hn : (0 : ℝ) ≤ (n : ℝ) := Nat.cast_nonneg n
  have hterm : baselTerm (n + 10) = 1 / (((n : ℝ) + 11) ^ 2) := by
    unfold baselTerm
    push_cast
    ring
  have hkey :
      (1 : ℝ) / ((n : ℝ) + 10) - (1 : ℝ) / ((n : ℝ) + 11) =
        1 / (((n : ℝ) + 10) * ((n : ℝ) + 11)) := by
    have h10 : ((n : ℝ) + 10) ≠ 0 := by positivity
    have h11 : ((n : ℝ) + 11) ≠ 0 := by positivity
    field_simp
    ring
  rw [hterm]
  calc
    (1 : ℝ) / (((n : ℝ) + 11) ^ 2)
        ≤ 1 / (((n : ℝ) + 10) * ((n : ℝ) + 11)) :=
          one_div_le_one_div_of_le (by positivity) (by nlinarith [hn])
    _ = (1 : ℝ) / ((n : ℝ) + 10) - (1 : ℝ) / ((n : ℝ) + 11) := hkey.symm

/-- Finite telescoping identity for the comparison series. -/
theorem basel_telescoping_sum
    (N : ℕ) :
    (∑ n ∈ Finset.range N,
      ((1 : ℝ) / (n + 10) - (1 : ℝ) / (n + 11))) =
      (1 : ℝ) / 10 - (1 : ℝ) / (N + 10) := by
  induction N with
  | zero => simp
  | succ m ih =>
      rw [Finset.sum_range_succ, ih]
      push_cast
      ring

/-- Tail bound at 10 via comparison with the telescoping series. This proof
is independent of the Basel identity and of any bound on π. -/
theorem basel_tail_bound_10_telescoping :
    (∑' n : ℕ, baselTerm (n + 10)) ≤ (1 : ℝ) / 10 := by
  apply Real.tsum_le_of_sum_range_le (fun n => basel_term_nonneg (n + 10))
  intro N
  calc
    (∑ n ∈ Finset.range N, baselTerm (n + 10))
        ≤ ∑ n ∈ Finset.range N,
            ((1 : ℝ) / (n + 10) - (1 : ℝ) / (n + 11)) :=
          Finset.sum_le_sum fun n _ => basel_tail_term_le_telescoping n
    _ = (1 : ℝ) / 10 - (1 : ℝ) / (N + 10) := basel_telescoping_sum N
    _ ≤ (1 : ℝ) / 10 := by
          have hpos : (0 : ℝ) ≤ 1 / ((N : ℝ) + 10) := by positivity
          linarith

/-- Tail bound at 10, canonical name. -/
theorem basel_tail_bound_10 :
    (∑' n : ℕ, baselTerm (n + 10)) ≤ (1 : ℝ) / 10 :=
  basel_tail_bound_10_telescoping

/-- Lower bound: the tenth partial sum is at most `π² / 6`, because the
terms are nonnegative. -/
theorem basel_tsum_lower_bound_10 :
    ((baselPartialSum 10 : ℚ) : ℝ) ≤ Real.pi ^ 2 / 6 := by
  rw [basel_partial_sum_real_eq, ← basel_hasSum_pi_sq_div_six.tsum_eq]
  exact
    basel_summable.sum_le_tsum (Finset.range 10)
      (fun i _ => basel_term_nonneg i)

/-- Upper bound: `π² / 6` is at most the tenth partial sum plus the tail
bound `1 / 10`. -/
theorem basel_tsum_upper_bound_10 :
    Real.pi ^ 2 / 6 ≤
      ((baselPartialSum 10 : ℚ) : ℝ) + (1 : ℝ) / 10 := by
  rw [basel_partial_sum_real_eq]
  linarith [basel_split_10, basel_tail_bound_10]

/-- The rational enclosure of `π² / 6` from the finite computation and the
tail bound. -/
theorem basel_interval_enclosure_10 :
    ((baselPartialSum 10 : ℚ) : ℝ) ≤ Real.pi ^ 2 / 6 ∧
      Real.pi ^ 2 / 6 ≤
        ((baselPartialSum 10 : ℚ) : ℝ) + (1 : ℝ) / 10 :=
  ⟨basel_tsum_lower_bound_10,
    basel_tsum_upper_bound_10⟩

/-! ## Finite numerical payload (metadata only)

`lower = baselPartialSum 10 = 1968329 / 1270080` and
`upper = baselPartialSum 10 + 1 / 10 = 2095337 / 1270080`. The payload is
finite metadata; the analytic enclosure is `basel_interval_enclosure_10`.
-/

def baselEndpointLower :
    _root_.Number.NumericalEstimate.RationalIntervalEndpoint where
  numerator := 1968329
  denominator := 1270080
  denominatorPositive := by decide

def baselEndpointUpper :
    _root_.Number.NumericalEstimate.RationalIntervalEndpoint where
  numerator := 2095337
  denominator := 1270080
  denominatorPositive := by decide

def baselFiniteInterval :
    _root_.Number.NumericalEstimate.RationalInterval where
  lower := baselEndpointLower
  upper := baselEndpointUpper
  enclosureHash := 0
  finiteSound := True
  finiteSoundProof := trivial

def baselFiniteDomain :
    _root_.Number.NumericalEstimate.FiniteDomain where
  label := "real line near pi^2/6"
  domainHash := 0
  dimension := 1
  finiteSound := True
  finiteSoundProof := trivial

def baselPrecision :
    _root_.Number.NumericalEstimate.PrecisionSpec where
  workingPrecision := 32
  outputPrecision := 8
  positiveWorkingPrecision := by decide
  positiveOutputPrecision := by decide
  roundingModeHash := 0
  finiteSound := True
  finiteSoundProof := trivial

def baselAlgorithm :
    _root_.Number.NumericalEstimate.AlgorithmSpec where
  algorithmLabel := "finite partial sum plus telescoping tail bound"
  algorithmVersionHash := 0
  implementationHash := 0
  deterministic := true
  finiteSound := True
  finiteSoundProof := trivial

def baselErrorModel :
    _root_.Number.NumericalEstimate.ErrorModel where
  modelLabel := "exact rational arithmetic with tail bound 1/10"
  absoluteErrorNumerator := 1
  absoluteErrorExponent := 1
  relativeErrorNumerator := 1
  relativeErrorExponent := 1
  roundingErrorHash := 0
  truncationErrorHash := 0
  finiteSound := True
  finiteSoundProof := trivial

def baselFinitePayload :
    _root_.Number.NumericalEstimate.FiniteNumericalEstimatePayload where
  kind := _root_.Number.NumericalEstimate.NumericalEstimateKind.tailBound
  domain := baselFiniteDomain
  precision := baselPrecision
  algorithm := baselAlgorithm
  errorModel := baselErrorModel
  intervalArithmetic := none
  tailBound := some
    { seriesOrIntegralLabel := "Basel series"
      cutoff := 10
      tailBound := baselFiniteInterval
      majorantHash := 0
      monotonicityCheckHash := 0
      finiteSound := True
      finiteSoundProof := trivial }
  contourIntegral := none
  argumentPrincipleCount := none
  validatedIntegration := none
  spectralEnclosure := none
  operatorNormBound := none
  rigorousQuadrature := none
  payloadHash := 0
  finiteSound := True
  finiteSoundProof := trivial

/-! ## Theorem-level schema and authority with real proof fields -/

def baselEstimateSymbol :
    VerifiedNumericalEstimate.NumericalEstimateSymbol where
  kind := _root_.Number.NumericalEstimate.NumericalEstimateKind.tailBound
  label := "Basel series rational enclosure at N = 10"
  estimateHash := 0

def baselDomainSymbol :
    VerifiedNumericalEstimate.AnalyticDomainSymbol where
  label := "real line near pi^2/6"
  domainHash := 0

def baselPrecisionSymbol :
    VerifiedNumericalEstimate.PrecisionSymbol where
  label := "tail bound 1/10"
  precisionHash := 0

def baselAlgorithmSymbol :
    VerifiedNumericalEstimate.AlgorithmSymbol where
  label := "finite partial sum plus telescoping tail bound"
  algorithmHash := 0

def baselErrorModelSymbol :
    VerifiedNumericalEstimate.ErrorModelSymbol where
  label := "exact rational arithmetic with tail bound 1/10"
  errorModelHash := 0

/-- The verified numerical schema for the Basel enclosure, with genuine
proof fields. -/
def baselNumericalSchema :
    VerifiedNumericalEstimate.NumericalAnalyticCertificateSchema where
  estimate := baselEstimateSymbol
  payload := baselFinitePayload
  domain := baselDomainSymbol
  precision := baselPrecisionSymbol
  algorithm := baselAlgorithmSymbol
  errorModel := baselErrorModelSymbol
  enclosureSound :=
    ((baselPartialSum 10 : ℚ) : ℝ) ≤ Real.pi ^ 2 / 6 ∧
      Real.pi ^ 2 / 6 ≤
        ((baselPartialSum 10 : ℚ) : ℝ) + (1 : ℝ) / 10
  enclosureProof := basel_interval_enclosure_10
  theoremInterpretation :=
    HasSum baselTerm (Real.pi ^ 2 / 6) ∧
      (((baselPartialSum 10 : ℚ) : ℝ) ≤ Real.pi ^ 2 / 6 ∧
        Real.pi ^ 2 / 6 ≤
          ((baselPartialSum 10 : ℚ) : ℝ) + (1 : ℝ) / 10)
  theoremInterpretationProof :=
    ⟨basel_hasSum_pi_sq_div_six, basel_interval_enclosure_10⟩

/-- The interval-arithmetic authority for the Basel enclosure, with a
genuine proof field. -/
def baselIntervalArithmeticAuthority :
    VerifiedNumericalEstimate.IntervalArithmeticAuthority where
  schema := baselNumericalSchema
  intervalArithmeticSound :=
    ((baselPartialSum 10 : ℚ) : ℝ) ≤ Real.pi ^ 2 / 6 ∧
      Real.pi ^ 2 / 6 ≤
        ((baselPartialSum 10 : ℚ) : ℝ) + (1 : ℝ) / 10
  intervalArithmeticProof := basel_interval_enclosure_10

/-! ## MathlibProofCertificate route -/

def baselContext :
    BoundaryCalculus.AnalyticContext where
  label := "Basel series finite computation plus proof-carrying tail bound"
  finiteHash := 0

def baselClaim :
    BoundaryCalculus.AnalyticClaim
      baselContext
      Authority.BoundaryKind.theoremLevelInterpretation where
  label :=
    "Mathlib proof: Basel series value and rational enclosure from finite data"
  statement :=
    HasSum baselTerm (Real.pi ^ 2 / 6) ∧
      ((baselPartialSum 10 : ℚ) : ℝ) ≤ Real.pi ^ 2 / 6 ∧
      Real.pi ^ 2 / 6 ≤
        ((baselPartialSum 10 : ℚ) : ℝ) + (1 : ℝ) / 10

def baselMathlibProofCertificate :
    MathlibProofCertificate
      baselContext
      Authority.BoundaryKind.theoremLevelInterpretation
      baselClaim where
  theoremName := "Basel series finite enclosure"
  moduleName := "AnalyticNumber.Mathlib.BaselSeries"
  proof := by
    exact
      ⟨basel_hasSum_pi_sq_div_six,
        basel_tsum_lower_bound_10,
        basel_tsum_upper_bound_10⟩

/-- The Basel case study, transported through the boundary calculus. -/
theorem basel_case_study_through_boundary_calculus :
    HasSum baselTerm (Real.pi ^ 2 / 6) ∧
      ((baselPartialSum 10 : ℚ) : ℝ) ≤ Real.pi ^ 2 / 6 ∧
      Real.pi ^ 2 / 6 ≤
        ((baselPartialSum 10 : ℚ) : ℝ) + (1 : ℝ) / 10 :=
  mathlib_proof_through_boundary_calculus
    baselMathlibProofCertificate

/-- The finite numerical payload alone does not own the theorem-level
interpretation. -/
theorem basel_finite_payload_not_analytic_authority :
    ¬ _root_.Number.NumericalEstimate.FinitePayloadOwnsTheoremLevelInterpretation
        baselFinitePayload :=
  _root_.Number.NumericalEstimate.finite_payload_not_theorem_level_interpretation
    baselFinitePayload

end BaselSeries
end MathlibBridge
end AnalyticNumber
```

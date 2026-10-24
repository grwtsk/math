# Complete source: GRWTSK.Analysis.Fourier.FiniteTraceFourierSupport

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5c485b8369274c85e67038702f0542fcaff6be3` · SHA-256 `68b17e5b17460cc7061e03db224aa720b383b8cace700df0661bb544e767fc3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
The cited Selberg trace-formula conventions are due to Selberg and, in the
twisted-moduli application, Marklof--Monk; Mathlib owns imported lemmas.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#665. Parent PR #664 head
8b155e1981a8232a9ba14867b952d5234109fd36.
-/
import GRWTSK.Analysis.Fourier.FiniteTraceIteratePacket

/-!
# A uniform Fourier-support certificate for a finite iterate cutoff

A finite primitive-candidate family carries supplied strictly positive
lengths and a supplied Fourier test function. An explicit positive lower
length bound delta, a one-sided Fourier support radius B, and a cutoff K
satisfying B <= K*delta imply that every positive iterate n > K has
n*length > B. Such terms have zero Fourier factors.

This *discharges the finite omitted-iterate premise* in #661 for every
larger finite cutoff M. It does not certify any candidate as a genuine
oriented primitive geodesic, enumerate all geodesics of a surface, supply
a uniform systole over varying surfaces/genus, or establish a Selberg
trace formula, Haar integral, spectral variance, Chowla, or RH result.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Fourier.FiniteTraceFourierSupport

open scoped BigOperators
open GRWTSK.Analysis.Fourier.FiniteTraceIteratePacket
open GRWTSK.Analysis.Fourier.FiniteHolonomyAliasing

variable {γ : Type*} {m : ℕ}

/-- All analytic input is stated explicitly. A lower length bound is not
inferred from the names of primitive candidates; the Fourier test's
one-sided vanishing property is also an additional premise.

Because every retained iterate evaluates the Fourier test at positive
n*length, a one-sided support statement suffices. No smoothness or
compactness of the Fourier test is inferred from this record. -/
structure FiniteFourierSupportCertificate
    (t : TraceShapedInput γ m) where
  radius : ℝ
  radius_nonneg : 0 ≤ radius
  lengthFloor : ℝ
  lengthFloor_pos : 0 < lengthFloor
  floor_le : ∀ a ∈ t.primitiveCandidates, lengthFloor ≤ t.length a
  vanish_above : ∀ x : ℝ, radius < x → t.fourierTest x = 0

/-- The chosen cutoff must cover the support radius using the supplied
positive length floor. At equality the next iterate is strictly beyond
the radius; no strictness of B < K*delta is required. -/
def AdmissibleCutoff (t : TraceShapedInput γ m)
    (c : FiniteFourierSupportCertificate t) (K : ℕ) : Prop :=
  c.radius ≤ (K : ℝ) * c.lengthFloor

/-- A valid cutoff stays valid when the positive iterate horizon grows. -/
theorem admissibleCutoff_mono
    (t : TraceShapedInput γ m)
    (c : FiniteFourierSupportCertificate t)
    {K M : ℕ} (hKM : K ≤ M)
    (hK : AdmissibleCutoff t c K) :
    AdmissibleCutoff t c M := by
  unfold AdmissibleCutoff at *
  have hReal : (K : ℝ) ≤ (M : ℝ) := by exact_mod_cast hKM
  have hProduct :
      (K : ℝ) * c.lengthFloor ≤ (M : ℝ) * c.lengthFloor :=
    mul_le_mul_of_nonneg_right hReal (le_of_lt c.lengthFloor_pos)
  exact hK.trans hProduct

/-- The key strict inequality: if n>K and B<=K*delta, every selected
candidate satisfies B < n*length. The source's own length positivity is
consistent with the explicit positive floor, but the latter is what
makes this bound uniform across candidate IDs. -/
theorem iterate_above_support_radius
    (t : TraceShapedInput γ m)
    (c : FiniteFourierSupportCertificate t)
    (K n : ℕ) (hK : AdmissibleCutoff t c K)
    (hn : K < n) (a : γ) (ha : a ∈ t.primitiveCandidates) :
    c.radius < (n : ℝ) * t.length a := by
  have hCut : c.radius ≤ (K : ℝ) * c.lengthFloor := hK
  have hnReal : (K : ℝ) < (n : ℝ) := by exact_mod_cast hn
  have hnNonneg : (0 : ℝ) ≤ (n : ℝ) := by positivity
  have hStep :
      (K : ℝ) * c.lengthFloor < (n : ℝ) * c.lengthFloor :=
    mul_lt_mul_of_pos_right hnReal c.lengthFloor_pos
  have hFloor :
      (n : ℝ) * c.lengthFloor ≤ (n : ℝ) * t.length a :=
    mul_le_mul_of_nonneg_left (c.floor_le a ha) hnNonneg
  exact (lt_of_le_of_lt hCut hStep).trans_le hFloor

/-- Every excluded high iterate has a vanishing *actual supplied* Fourier
test value. No statement about unlisted primitive candidate IDs follows. -/
theorem fourierTest_zero_after_cutoff
    (t : TraceShapedInput γ m)
    (c : FiniteFourierSupportCertificate t)
    (K n : ℕ) (hK : AdmissibleCutoff t c K)
    (hn : K < n) (a : γ) (ha : a ∈ t.primitiveCandidates) :
    t.fourierTest ((n : ℝ) * t.length a) = 0 := by
  exact c.vanish_above _ (iterate_above_support_radius t c K n hK hn a ha)

/-- The concrete complex coefficient from #661 vanishes for every
omitted high iterate of a named candidate, without any appeal to an
infinite trace sum or to an unnamed Fourier transform normalization. -/
theorem traceShapeWeight_zero_after_cutoff
    (t : TraceShapedInput γ m)
    (c : FiniteFourierSupportCertificate t)
    (K n : ℕ) (hK : AdmissibleCutoff t c K)
    (hn : K < n) (a : γ) (ha : a ∈ t.primitiveCandidates) :
    traceShapeWeight t (a, n) = 0 :=
  traceShapeWeight_zero_of_fourier_zero t (a, n)
    (fourierTest_zero_after_cutoff t c K n hK hn a ha)

/-- An omitted source term between finite iteration bounds has exactly
the same primitive candidate ID and a strictly larger iteration number.
The claim does not require K<=M: if K>M, the omitted set is empty. -/
theorem omittedSource_has_high_iterate
    (t : TraceShapedInput γ m) (K M : ℕ)
    (a : γ × ℕ) (ha : a ∈ omittedSources t K M) :
    a.1 ∈ t.primitiveCandidates ∧ K < a.2 ∧ a.2 ≤ M := by
  classical
  have hbig : a ∈ iterateSources t M := (Finset.mem_sdiff.mp ha).1
  have hnot : a ∉ iterateSources t K := (Finset.mem_sdiff.mp ha).2
  rcases (mem_iterateSources_iff t M a).mp hbig with
    ⟨hsource, hlow, hhigh⟩
  have hstrict : K < a.2 := by
    by_contra hn
    have hsmall : a.2 ≤ K := Nat.le_of_not_gt hn
    have hmem : a ∈ iterateSources t K :=
      (mem_iterateSources_iff t K a).mpr ⟨hsource, hlow, hsmall⟩
    exact hnot hmem
  exact ⟨hsource, hstrict, hhigh⟩

/-- Uniform radius + length-floor hypotheses discharge the explicit
per-omitted-source Fourier zero premise required by the parent theorem. -/
theorem fourierTest_zero_on_omitted
    (t : TraceShapedInput γ m)
    (c : FiniteFourierSupportCertificate t)
    (K M : ℕ) (hK : AdmissibleCutoff t c K)
    (a : γ × ℕ) (ha : a ∈ omittedSources t K M) :
    t.fourierTest ((a.2 : ℝ) * t.length a.1) = 0 := by
  obtain ⟨hsource, hhigh, _⟩ := omittedSource_has_high_iterate t K M a ha
  exact fourierTest_zero_after_cutoff t c K a.2 hK hhigh a.1 hsource

/-- The finite omitted-iterate L1 budget from #661 is exactly zero for
*every* finite extension M, provided the scalar support certificate
holds at K. This is not a completeness statement for all geodesics. -/
theorem omittedMass_zero_of_support
    (t : TraceShapedInput γ m)
    (c : FiniteFourierSupportCertificate t)
    (K M : ℕ) (hK : AdmissibleCutoff t c K) :
    omittedMass t K M = 0 := by
  apply omittedMass_zero_of_fourier_zero t K M
  intro a ha
  exact fourierTest_zero_on_omitted t c K M hK a ha

/-- The selected RH-adjacent dependency: an explicit quantitative cutoff
certificate discharges only the *finite omitted-iterate error*. The
modular alias L1 mass remains visible and unestimated. -/
theorem finite_trace_cutoff_error_le_alias_of_support
    (t : TraceShapedInput γ m)
    (c : FiniteFourierSupportCertificate t)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M)
    (hK : AdmissibleCutoff t c K) :
    ‖torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket t M)‖ ≤
      aliasMass q (tracePacket t K) := by
  exact finite_trace_cutoff_error_of_fourier_zero t q hKM
    (fourierTest_zero_on_omitted t c K M hK)

/-!
## Positive and hostile finite fixtures

The toy test is deliberately only a finite algebraic observable. It is
NOT smooth, a trace-formula test function, or a sample of a hyperbolic
surface. It prevents an always-reject certificate from looking complete
and detects the insufficient cutoff K=1 in the presence of a surviving
second iterate of length 2.
-/

/-- A single supplied candidate with length 1 and test value 1 for
x<=2 and 0 for x>2. This is only a finite-source fixture. -/
def toyTraceInput : TraceShapedInput PUnit 1 where
  primitiveCandidates := Finset.univ
  homology := fun _ _ => 1
  length := fun _ => 1
  length_pos := by
    intro a ha
    norm_num
  fourierTest := fun x => if 2 < x then 0 else 1
  target := fun _ => 0

/-- Nonvacuous support certificate: radius B=2 and length floor δ=1. -/
def toySupportCertificate : FiniteFourierSupportCertificate toyTraceInput where
  radius := 2
  radius_nonneg := by norm_num
  lengthFloor := 1
  lengthFloor_pos := by norm_num
  floor_le := by
    intro a ha
    norm_num [toyTraceInput]
  vanish_above := by
    intro x hx
    simp [toyTraceInput, hx]

/-- Iteration cutoff K=2 exactly covers the toy test's support radius. -/
theorem toy_cutoff_two_admissible :
    AdmissibleCutoff toyTraceInput toySupportCertificate 2 := by
  norm_num [AdmissibleCutoff, toySupportCertificate]

/-- With B=2 and δ=1, the smaller K=1 does not satisfy the required
inequality. A cutoff may not be justified merely by being positive. -/
theorem toy_cutoff_one_not_admissible :
    ¬ AdmissibleCutoff toyTraceInput toySupportCertificate 1 := by
  norm_num [AdmissibleCutoff, toySupportCertificate]

/-- The excluded n=2 term at K=1 has a nonzero Fourier input in this
toy source, demonstrating that its omission cannot be declared zero. -/
theorem toy_second_iterate_fourier_nonzero :
    toyTraceInput.fourierTest
      ((2 : ℝ) * toyTraceInput.length PUnit.unit) ≠ 0 := by
  norm_num [toyTraceInput]

end GRWTSK.Analysis.Fourier.FiniteTraceFourierSupport
```

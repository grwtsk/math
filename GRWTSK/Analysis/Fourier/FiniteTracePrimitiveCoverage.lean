/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
Finite character, norm, and finite sum methods retain their original
Mathlib attribution; Selberg/Marklof--Monk supply external geometry only.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#674. Parent draft: PR #669, exact head
f02af7af84c59f9e19d372ce864c5e82c3ec8eb2.
-/
import GRWTSK.Analysis.Fourier.FiniteTraceFourierSupport

/-!
# A finite primitive-source coverage boundary

The earlier trace-shaped packet contains a finite selected family of
*primitive candidate IDs* and a finite positive iterate cutoff. Here a
separate, finite candidate universe is supplied as a strict or non-strict
extension of the selected family. Lengths, homology, Fourier test,
orientation/source IDs, and target are kept IDENTICAL by construction.

We retain three independent finite errors:
* modular aliasing of retained terms (#653);
* omitted positive iterates of retained candidates (#661);
* omitted primitive candidates in the separately supplied universe.

A Fourier-support radius and positive selected length floor from #665
may eliminate the iterate error. A further *finite-universe coverage*
premise ("every universal candidate of length <= B is selected") may
eliminate the primitive error.

No theorem here constructs a hyperbolic surface, lists every genuine
primitive oriented closed geodesic, proves completeness of that list,
or identifies a Selberg spectral trace. Every conclusion is finite
and conditional on an explicit source-preserving candidate universe.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Fourier.FiniteTracePrimitiveCoverage

open scoped BigOperators
open GRWTSK.Analysis.Fourier.FiniteTraceIteratePacket
open GRWTSK.Analysis.Fourier.FiniteTraceFourierSupport
open GRWTSK.Analysis.Fourier.FiniteHolonomyAliasing

variable {γ : Type*} {m : ℕ}

/-- A SECOND, FINITE candidate universe with unchanged source identities.
Being in this universe does not establish that an ID denotes an actual
oriented primitive geodesic of a hyperbolic surface. -/
structure FinitePrimitiveUniverse (t : TraceShapedInput γ m) where
  allCandidates : Finset γ
  selected_subset : t.primitiveCandidates ⊆ allCandidates
  length_pos : ∀ a ∈ allCandidates, 0 < t.length a

/-- Extend only the finite candidate set and its positivity proof.
All numerical and source-bearing fields are literally inherited from t. -/
def fullInput (t : TraceShapedInput γ m)
    (u : FinitePrimitiveUniverse t) : TraceShapedInput γ m where
  primitiveCandidates := u.allCandidates
  homology := t.homology
  length := t.length
  length_pos := u.length_pos
  fourierTest := t.fourierTest
  target := t.target

/-- The full input does not alter the integer homology of any term. -/
@[simp] theorem fullInput_iterateHomology
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (a : γ × ℕ) :
    iterateHomology (fullInput t u) a = iterateHomology t a := rfl

/-- The full input does not alter any complex Selberg-shaped coefficient.
Only the finite source index set is enlarged. -/
@[simp] theorem fullInput_traceShapeWeight
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (a : γ × ℕ) :
    traceShapeWeight (fullInput t u) a = traceShapeWeight t a := rfl

/-- Every selected primitive/iterate term remains a distinct source ID
when the finite universe is enlarged. -/
theorem selectedSources_subset
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (M : ℕ) :
    iterateSources t M ⊆ iterateSources (fullInput t u) M := by
  intro a ha
  rcases (mem_iterateSources_iff t M a).mp ha with ⟨hs, hn, hM⟩
  exact (mem_iterateSources_iff (fullInput t u) M a).mpr
    ⟨u.selected_subset hs, hn, hM⟩

/-- Genuine omissions *within the supplied finite universe*, at the
same positive-iterate cutoff M. No omission has been reclassified
as a modular alias, and no full-geodesic enumeration is claimed. -/
def primitiveMissingSources
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (M : ℕ) : Finset (γ × ℕ) :=
  iterateSources (fullInput t u) M \ iterateSources t M

/-- An omitted term is precisely a positive iterate of a finite-universe
primitive candidate absent from the selected primitive set. -/
theorem mem_primitiveMissingSources_iff
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (M : ℕ) (a : γ × ℕ) :
    a ∈ primitiveMissingSources t u M ↔
      a.1 ∈ u.allCandidates ∧ a.1 ∉ t.primitiveCandidates ∧
        1 ≤ a.2 ∧ a.2 ≤ M := by
  classical
  unfold primitiveMissingSources
  constructor
  · intro ha
    have hfull : a ∈ iterateSources (fullInput t u) M :=
      (Finset.mem_sdiff.mp ha).1
    have hnot : a ∉ iterateSources t M :=
      (Finset.mem_sdiff.mp ha).2
    rcases (mem_iterateSources_iff (fullInput t u) M a).mp hfull with
      ⟨hU, hn, hM⟩
    have hmiss : a.1 ∉ t.primitiveCandidates := by
      intro hs
      exact hnot ((mem_iterateSources_iff t M a).mpr ⟨hs, hn, hM⟩)
    exact ⟨hU, hmiss, hn, hM⟩
  · rintro ⟨hU, hmiss, hn, hM⟩
    apply Finset.mem_sdiff.mpr
    constructor
    · exact (mem_iterateSources_iff (fullInput t u) M a).mpr
        ⟨hU, hn, hM⟩
    · intro hsel
      exact hmiss ((mem_iterateSources_iff t M a).mp hsel).1

/-- The integer-homology-selected complex amplitude of omitted primitive
candidates, still at a FINITE positive iteration horizon. -/
def primitiveMissingSelected
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (M : ℕ) : ℂ :=
  ∑ a ∈ primitiveMissingSources t u M,
    if iterateHomology t a = t.target then traceShapeWeight t a else 0

/-- Independent nonnegative L1 error for omitted primitive sources. -/
def primitiveMissingMass
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (M : ℕ) : ℝ :=
  ∑ a ∈ primitiveMissingSources t u M, ‖traceShapeWeight t a‖

/-- Exact source-preserving primitive decomposition. Unlike a supplied
"complete universe" field, this is a finite sum identity derived from
actual inclusion S subset U and the SAME amplitude/homology functions. -/
theorem integralProjection_full_eq_selected_add_missing
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (M : ℕ) :
    integralProjection (tracePacket (fullInput t u) M) =
      integralProjection (tracePacket t M) +
        primitiveMissingSelected t u M := by
  classical
  have hsum :=
    (Finset.sum_sdiff
      (f := fun a : γ × ℕ =>
        if iterateHomology t a = t.target then traceShapeWeight t a else 0)
      (selectedSources_subset t u M)).symm
  simpa only [integralProjection, tracePacket, fullInput,
    iterateHomology, traceShapeWeight,
    primitiveMissingSelected, primitiveMissingSources, add_comm] using hsum

/-- Complex triangle inequality for precisely the omitted primitive
source IDs. It does not use any independence or cancellation estimate. -/
theorem primitiveMissingSelected_norm_le
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (M : ℕ) :
    ‖primitiveMissingSelected t u M‖ ≤ primitiveMissingMass t u M := by
  classical
  calc
    ‖primitiveMissingSelected t u M‖ ≤
        ∑ a ∈ primitiveMissingSources t u M,
          ‖(if iterateHomology t a = t.target
            then traceShapeWeight t a else (0 : ℂ))‖ := by
      exact norm_sum_le _ _
    _ ≤ primitiveMissingMass t u M := by
      unfold primitiveMissingMass
      apply Finset.sum_le_sum
      intro a ha
      split_ifs <;> simp

/-- THREE INDEPENDENT finite errors. The primitive budget at M is not
the modular-alias budget at K, and neither is the omitted-iterate
budget between K and M. No numerical size is inferred for any one. -/
theorem finite_three_error_bound
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M) :
    ‖torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket (fullInput t u) M)‖ ≤
      aliasMass q (tracePacket t K) + omittedMass t K M +
        primitiveMissingMass t u M := by
  have hfull := integralProjection_full_eq_selected_add_missing t u M
  have hdiff :
      torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket (fullInput t u) M) =
      (torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket t M)) -
        primitiveMissingSelected t u M := by
    rw [hfull]
    abel
  rw [hdiff]
  exact (norm_sub_le _ _).trans
    (add_le_add
      (finite_trace_cutoff_alias_error t q hKM)
      (primitiveMissingSelected_norm_le t u M))

/-- A finite-universe COVERAGE premise. It must be sourced by a separate,
genuine enumeration checker if this route is used for real geodesics.
The predicate alone neither constructs nor authenticates the universe. -/
def CoversContributingCandidates
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (B : ℝ) : Prop :=
  ∀ a ∈ u.allCandidates, t.length a ≤ B → a ∈ t.primitiveCandidates

/-- If a primitive ID is missing, it must have length > B when the
finite-universe coverage predicate holds. Every positive iterate of
that ID then has n*length > B. -/
theorem primitiveMissing_fourier_zero_of_coverage
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (c : FiniteFourierSupportCertificate t)
    (hcover : CoversContributingCandidates t u c.radius)
    (M : ℕ) (a : γ × ℕ)
    (ha : a ∈ primitiveMissingSources t u M) :
    t.fourierTest ((a.2 : ℝ) * t.length a.1) = 0 := by
  rcases (mem_primitiveMissingSources_iff t u M a).mp ha with
    ⟨hU, hmiss, hn, _⟩
  have hlong : c.radius < t.length a.1 := by
    by_contra hnot
    have hle : t.length a.1 ≤ c.radius := le_of_not_gt hnot
    exact hmiss (hcover a.1 hU hle)
  have hnReal : (1 : ℝ) ≤ (a.2 : ℝ) := by exact_mod_cast hn
  have hlen : 0 ≤ t.length a.1 := le_of_lt (u.length_pos a.1 hU)
  have hiterate : t.length a.1 ≤ (a.2 : ℝ) * t.length a.1 := by
    calc
      t.length a.1 = (1 : ℝ) * t.length a.1 := by ring
      _ ≤ (a.2 : ℝ) * t.length a.1 :=
        mul_le_mul_of_nonneg_right hnReal hlen
  exact c.vanish_above _ (hlong.trans_le hiterate)

/-- The independent finite missing-primitive L1 budget vanishes under
explicit finite-universe coverage and Fourier support. It does NOT
make the universe complete among all geodesics on a surface. -/
theorem primitiveMissingMass_zero_of_coverage
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (c : FiniteFourierSupportCertificate t)
    (M : ℕ)
    (hcover : CoversContributingCandidates t u c.radius) :
    primitiveMissingMass t u M = 0 := by
  classical
  unfold primitiveMissingMass
  apply Finset.sum_eq_zero
  intro a ha
  rw [traceShapeWeight_zero_of_fourier_zero t a
    (primitiveMissing_fourier_zero_of_coverage t u c hcover M a ha)]
  simp

/-- Conditional source-level total omission discharge:
iteration and primitive-candidate omissions vanish only under DIFFERENT
hypotheses. The original finite modular-alias mass remains. -/
theorem finite_full_universe_error_le_alias_of_support
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (c : FiniteFourierSupportCertificate t)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M)
    (hK : AdmissibleCutoff t c K)
    (hcover : CoversContributingCandidates t u c.radius) :
    ‖torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket (fullInput t u) M)‖ ≤
      aliasMass q (tracePacket t K) := by
  have h := finite_three_error_bound t u q hKM
  rw [omittedMass_zero_of_support t c K M hK,
    primitiveMissingMass_zero_of_coverage t u c M hcover] at h
  simpa only [add_zero] using h

/-- Exact equality is available only with a third, independent
non-aliasing premise for the retained finite homology packet. -/
theorem finite_full_universe_exact_of_noAlias
    (t : TraceShapedInput γ m) (u : FinitePrimitiveUniverse t)
    (c : FiniteFourierSupportCertificate t)
    (q : ℕ) [NeZero q] {K M : ℕ} (hKM : K ≤ M)
    (hK : AdmissibleCutoff t c K)
    (hcover : CoversContributingCandidates t u c.radius)
    (hno : NoAlias q (tracePacket t K)) :
    torsionProjection q (tracePacket t K) =
      integralProjection (tracePacket (fullInput t u) M) := by
  have hbound :=
    finite_full_universe_error_le_alias_of_support t u c q hKM hK hcover
  have hzero : aliasMass q (tracePacket t K) = 0 := by
    have hset := aliasSources_eq_empty_of_noAlias q (tracePacket t K) hno
    simp [aliasMass, hset]
  rw [hzero] at hbound
  have hnorm :
      ‖torsionProjection q (tracePacket t K) -
        integralProjection (tracePacket (fullInput t u) M)‖ = 0 :=
    le_antisymm hbound (norm_nonneg _)
  exact sub_eq_zero.mp (norm_eq_zero.mp hnorm)

/-!
## Bounded hostile and positive fixtures

These are algebraic source-ID fixtures, NOT genuine geodesics or
smooth Selberg tests. They demonstrate that the coverage condition
accepts a truly omitted primitive only when its length is beyond B,
and rejects an omitted primitive with a potentially contributing length.
-/

/-- A selected singleton {false}; the unselected true candidate has
configurable length r. Only the selected source needs positive length
in this input, and its length is always 1. -/
def toySelected (r : ℝ) : TraceShapedInput Bool 1 where
  primitiveCandidates := {false}
  homology := fun _ _ => 0
  length := fun a => if a then r else 1
  length_pos := by
    intro a ha
    have hf : a = false := by simpa using ha
    subst a
    norm_num
  fourierTest := fun x => if 2 < x then 0 else 1
  target := fun _ => 0

/-- A *finite* two-candidate universe, with supplied proof that r>0. -/
def toyUniverse (r : ℝ) (hr : 0 < r) :
    FinitePrimitiveUniverse (toySelected r) where
  allCandidates := Finset.univ
  selected_subset := Finset.subset_univ _
  length_pos := by
    intro a ha
    cases a <;> simp [toySelected, hr]

/-- A real support certificate for the toy *finite algebra* only. Its
Fourier test is discontinuous and not a Selberg trace test. -/
def toyCertificate (r : ℝ) :
    FiniteFourierSupportCertificate (toySelected r) where
  radius := 2
  radius_nonneg := by norm_num
  lengthFloor := 1
  lengthFloor_pos := by norm_num
  floor_le := by
    intro a ha
    have hf : a = false := by simpa [toySelected] using ha
    subst a
    norm_num [toySelected]
  vanish_above := by
    intro x hx
    simp [toySelected, hx]

/-- Positive fixture: a truly omitted primitive of length 3 is beyond
the support radius B=2; coverage holds for the finite universe. -/
theorem toy_far_candidate_covered :
    CoversContributingCandidates (toySelected 3)
      (toyUniverse 3 (by norm_num)) 2 := by
  intro a ha hlen
  cases a <;> simp [toySelected] at *

/-- Hostile fixture: when the omitted true candidate has length 2,
the candidate coverage predicate is FALSE at radius B=2. -/
theorem toy_near_candidate_not_covered :
    ¬ CoversContributingCandidates (toySelected 2)
        (toyUniverse 2 (by norm_num)) 2 := by
  intro hc
  have hmissing : true ∈ (toySelected 2).primitiveCandidates :=
    hc true (by simp [toyUniverse]) (by norm_num [toySelected])
  simpa [toySelected] using hmissing

/-- The hostile primitive/positive-iterate source really is omitted. -/
theorem toy_near_primitive_omitted :
    (true, 1) ∈ primitiveMissingSources
        (toySelected 2) (toyUniverse 2 (by norm_num)) 1 := by
  rw [mem_primitiveMissingSources_iff]
  simp [toySelected, toyUniverse]

/-- Its supplied Fourier factor is genuinely nonzero. A missing
candidate of length <=B cannot be ignored merely because a selected
iteration cutoff was certified. -/
theorem toy_near_missing_fourier_nonzero :
    (toySelected 2).fourierTest
      ((1 : ℝ) * (toySelected 2).length true) ≠ 0 := by
  norm_num [toySelected]

end GRWTSK.Analysis.Fourier.FiniteTracePrimitiveCoverage

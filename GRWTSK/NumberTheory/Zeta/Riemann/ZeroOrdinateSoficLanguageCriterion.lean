/-
Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No rational/algebraic-to-sofic theorem or non-sofic zeta trace is proved.
-/
import GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover
import GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry
import Mathlib

/-!
# Actual zeta-zero ordinate and exact sofic factor-language criteria

This supplies the exact *zeta-specific* predicates missing from the
previous type-agnostic GRH/sofic logical interface:
  source point z : C
  nontrivial zero: NontrivialZetaZero z
  ordinate gamma: z.im
  critical line: z.re = 1/2
  sofic property: exact finite labeled graph for ALL finite factors of
    a chosen infinite symbolic trace, not a mere accepted path.

A real arithmetic model is required to identify "rational" with the
image of Q in R and "algebraic" with the root of a nonzero Q-polynomial.
Its correctness proofs and the concrete symbolic/source map remain
supplier fields. No fake arithmetic predicates are substituted.

Irrationality follows WITHOUT a critical-line assumption from
  rational ordinate -> exact sofic language,
  plus a genuinely independent non-soficity theorem.
Conditional critical-line placement (as a consequence of GRH if
actually supplied) enables the stronger
  algebraic ordinate on line -> exact sofic language
and hence transcendence. GRH alone yields no arithmetic conclusion.

The 7/8 -> 3/4 program is kept independent. Any analytic refinement
theorem needs valid zero-free estimates at ALL stages, not merely a
vanishing overhead ratio or any finite symbolic presentation.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion

open GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic
open GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover
open GRWTSK.DynamicalSystems.Symbolic.DynamicSoficSpectralCover

universe u v

/-- The actual arithmetic notion "rational real" with no invented fields. -/
def RationalReal (gamma : ℝ) : Prop :=
  ∃ q : ℚ, (q : ℝ) = gamma

/-- A real algebraic number is the root of a nonzero Q-polynomial.
The polynomial is transported to R before evaluation. -/
def AlgebraicReal (gamma : ℝ) : Prop :=
  ∃ p : Polynomial ℚ, p ≠ 0 ∧
    (p.map (algebraMap ℚ ℝ)).eval gamma = 0

/-- A genuine arithmetic adapter identifies the old abstract predicates
with the explicit rational and algebraic definitions, rather than
silently calling an unrelated property "algebraic." -/
structure CorrectRealArithmetic where
  arithmetic : HeightArithmetic ℝ
  rational_iff : ∀ gamma, arithmetic.rational gamma ↔ RationalReal gamma
  algebraic_iff : ∀ gamma, arithmetic.algebraic gamma ↔ AlgebraicReal gamma

/-- Exact source predicate for the nontrivial Riemann zeta zeros. -/
def ActualZetaZero (z : ℂ) : Prop := NontrivialZetaZero z

/-- The complex ordinate readout, independent of the real-part location. -/
def zetaHeight (z : ℂ) : ℝ := z.im

/-- Zeta-critical-line placement is the RH component of GRH, not all of GRH. -/
def ZetaCriticalPlacement : Prop :=
  GRHFor ActualZetaZero (fun z : ℂ => z.re = (1 : ℝ) / 2)

/-- Independent arithmetic and non-soficity suppliers for a SPECIFIED trace.
The first two fields contain full exact-language presentations, not merely
finite-state collisions or one accepted path. No constructors are supplied. -/
structure ZetaSoficSuppliers (trace : ℂ → ℕ → Bool) where
  rationalPresentation :
    ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
      IsSoficTrace (trace z)
  algebraicOnLinePresentation :
    ∀ z, ActualZetaZero z → z.re = (1 : ℝ) / 2 →
      AlgebraicReal (zetaHeight z) → IsSoficTrace (trace z)
  nonsoficActualZero :
    ∀ z, ActualZetaZero z → ¬ IsSoficTrace (trace z)

/-- The irrationality statement uses ONLY rational presentation and
non-soficity. It does not assume GRH or critical-line placement. -/
theorem zeta_zero_ordinate_irrational_without_GRH
    (trace : ℂ → ℕ → Bool)
    (rationalPresentation :
      ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
        IsSoficTrace (trace z))
    (nonsofic : ∀ z, ActualZetaZero z → ¬ IsSoficTrace (trace z)) :
    ∀ z, ActualZetaZero z → ¬ RationalReal (zetaHeight z) := by
  intro z hz hRat
  exact nonsofic z hz (rationalPresentation z hz hRat)

/-- The stronger algebraic-height implication is required independently
on the critical line; no transcendence inference is derived from GRH alone. -/
theorem zeta_zero_ordinate_transcendental_on_line
    (trace : ℂ → ℕ → Bool)
    (algebraicOnLinePresentation :
      ∀ z, ActualZetaZero z → z.re = (1 : ℝ) / 2 →
        AlgebraicReal (zetaHeight z) → IsSoficTrace (trace z))
    (nonsofic : ∀ z, ActualZetaZero z → ¬ IsSoficTrace (trace z))
    (z : ℂ) (hz : ActualZetaZero z)
    (hline : z.re = (1 : ℝ) / 2) :
    ¬ AlgebraicReal (zetaHeight z) := by
  intro hAlg
  exact nonsofic z hz (algebraicOnLinePresentation z hz hline hAlg)

/-- The demanded arithmetic split, with all three independent suppliers
visible in the theorem type. Critical-line placement uses the exact
zeta component of GRH, not a surrogate proof of full GRH. -/
theorem actual_zeta_zero_irrational_and_conditional_transcendental
    (trace : ℂ → ℕ → Bool)
    (S : ZetaSoficSuppliers trace)
    (hCritical : ZetaCriticalPlacement) :
    ∀ z, ActualZetaZero z →
      (¬ RationalReal (zetaHeight z)) ∧
      (z.re = (1 : ℝ) / 2) ∧
      (¬ AlgebraicReal (zetaHeight z)) := by
  intro z hz
  have hRat : ¬ RationalReal (zetaHeight z) := by
    intro h
    exact S.nonsoficActualZero z hz (S.rationalPresentation z hz h)
  have hline : z.re = (1 : ℝ) / 2 := hCritical z hz
  have hAlg : ¬ AlgebraicReal (zetaHeight z) := by
    intro h
    exact S.nonsoficActualZero z hz
      (S.algebraicOnLinePresentation z hz hline h)
  exact ⟨hRat, hline, hAlg⟩

/-- When a proposed genuine process cover supplies the actual trace,
its symbolic trace is a candidate observable; this theorem still
requires genuine rational/algebraic language and non-soficity
supplier proofs. The process cover itself does NOT supply them. -/
theorem ordinate_split_for_dynamic_spectral_cover
    {Obs : Type u} {State : Type v} {Spectral : Type*}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover ℂ Obs State Bool Spectral)
    (S : ZetaSoficSuppliers C.labelTrace)
    (hCritical : ZetaCriticalPlacement) :
    ∀ z, ActualZetaZero z →
      (¬ RationalReal (zetaHeight z)) ∧
      (z.re = (1 : ℝ) / 2) ∧
      (¬ AlgebraicReal (zetaHeight z)) :=
  actual_zeta_zero_irrational_and_conditional_transcendental
    C.labelTrace S hCritical

/-- The eventual version is logically stronger in its NON-SOFIC
supplier. A single non-sofic initial factor language does not by
definition establish non-soficity of every eventual tail. -/
structure ZetaEventualSoficSuppliers (trace : ℂ → ℕ → Bool) where
  rationalEventually :
    ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
      EventuallySoficTrace (trace z)
  algebraicOnLineEventually :
    ∀ z, ActualZetaZero z → z.re = (1 : ℝ) / 2 →
      AlgebraicReal (zetaHeight z) →
        EventuallySoficTrace (trace z)
  noEventuallySoficZero :
    ∀ z, ActualZetaZero z → ¬ EventuallySoficTrace (trace z)

/-- No GRH or critical-line placement is needed to rule out
RATIONAL ordinates when rationality entails eventual exact sofic
factor-language compressibility and the actual spectral trace has
no eventually sofic tail. BOTH are independent missing suppliers. -/
theorem irrational_of_eventual_language_obstruction
    (trace : ℂ → ℕ → Bool)
    (rationalEventually :
      ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
        EventuallySoficTrace (trace z))
    (noEventually :
      ∀ z, ActualZetaZero z → ¬ EventuallySoficTrace (trace z)) :
    ∀ z, ActualZetaZero z →
      ¬ RationalReal (zetaHeight z) := by
  intro z hz hrat
  exact noEventually z hz (rationalEventually z hz hrat)

/-- Separate after-GRH conclusion. Critical-line placement
does not prove the algebraic-to-sofic bridge or non-soficity. -/
theorem eventual_sofic_irrational_and_conditional_transcendental
    (trace : ℂ → ℕ → Bool)
    (S : ZetaEventualSoficSuppliers trace)
    (hCritical : ZetaCriticalPlacement) :
    ∀ z, ActualZetaZero z →
      (¬ RationalReal (zetaHeight z)) ∧
      (z.re = (1 : ℝ) / 2) ∧
      (¬ AlgebraicReal (zetaHeight z)) := by
  intro z hz
  have hrat : ¬ RationalReal (zetaHeight z) :=
    irrational_of_eventual_language_obstruction trace
      S.rationalEventually S.noEventuallySoficZero z hz
  have hline : z.re = (1 : ℝ) / 2 := hCritical z hz
  have halg : ¬ AlgebraicReal (zetaHeight z) := by
    intro h
    exact S.noEventuallySoficZero z hz
      (S.algebraicOnLineEventually z hz hline h)
  exact ⟨hrat, hline, halg⟩

/-- The entire proposed chain is now typed at the ACTUAL zeta
predicate: source z -> dynamic refinement -> finite labeled graph path
-> complex-linear spectral orbit -> full label trace -> z.im readout.
The arithmetic proof still requires independently constructing
eventual exact-language presentations and non-eventual-soficity. -/
theorem eventual_ordinate_split_for_dynamic_spectral_cover
    {Obs : Type u} {State : Type v} {Spectral : Type*}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover ℂ Obs State Bool Spectral)
    (S : ZetaEventualSoficSuppliers C.labelTrace)
    (hCritical : ZetaCriticalPlacement) :
    ∀ z, ActualZetaZero z →
      (¬ RationalReal (zetaHeight z)) ∧
      (z.re = (1 : ℝ) / 2) ∧
      (¬ AlgebraicReal (zetaHeight z)) :=
  eventual_sofic_irrational_and_conditional_transcendental
    C.labelTrace S hCritical

/-- Actual stagewise analytic premises, seeded at 7/8 and cofinal toward
3/4, retain a separate dynamic refinement. The existence of this
structure is a large, UNPROVED zero-free-stage supplier. -/
structure DynamicThreeQuarterSoficProgram
    {Obs : Type u} {State : Type v} {Spectral : Type*}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral] where
  analytic : ThreeQuarterRefinement ℂ
  analyticIsZeta : analytic.isZero = ActualZetaZero
  analyticRealPart : ∀ z, analytic.realPart z = z.re
  process : DynamicSpectralCover ℂ Obs State Bool Spectral

/-- Asymptotically free accounting is not used to infer stagewise bounds:
the three-quarter exclusion is CONDITIONAL on the complete analytic
scheme.stageZeroFree field. The remaining boundary is strict. -/
theorem DynamicThreeQuarterSoficProgram.zeroFree_strict_threeQuarters
    {Obs : Type u} {State : Type v} {Spectral : Type*}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (P : DynamicThreeQuarterSoficProgram
      (Obs := Obs) (State := State) (Spectral := Spectral)) :
    ∀ z : ℂ, (3 : ℝ) / 4 < z.re → ¬ ActualZetaZero z := by
  intro z hz
  have h := P.analytic.limit_zeroFree z
  rw [P.analyticRealPart z, P.analyticIsZeta] at h
  exact h hz


/-! ## Finite-context obstruction, rather than an opaque non-sofic label -/

/-- A source-bound and independently unproved nonsoficity supplier:
every actual zeta-zero trace, after EVERY finite burn-in, has arbitrarily
many pairwise continuation-distinguishable finite words.

For each finite labeled graph with N states, the reachable-end-state
argument gives at most 2^N possible right contexts. The present
predicate requires a separate arithmetic/spectral construction
violating ALL those finite bounds. It is not furnished by GRH, by
an arbitrarily varying finite graph, or by one accepted graph path. -/
def ZetaUnboundedTailContexts (trace : ℂ → ℕ → Bool) : Prop :=
  ∀ z, ActualZetaZero z →
    ∀ offset : ℕ,
      UnboundedRightContexts
        (HasFiniteBlock (tailTrace (trace z) offset))

/-- The explicit right-context certificate would discharge precisely the
NON-EVENTUAL-SOFIC field, and nothing about rational/algebraic ordinate
arithmetic or the existence of the chosen trace. -/
theorem no_eventual_sofic_of_zeta_rightContexts
    (trace : ℂ → ℕ → Bool)
    (hcontexts : ZetaUnboundedTailContexts trace) :
    ∀ z, ActualZetaZero z → ¬ EventuallySoficTrace (trace z) := by
  intro z hz
  exact not_eventuallySoficTrace_of_all_tail_rightContexts
    (trace z) (hcontexts z hz)

/-- Form the prior exact supplier packet from TWO independent arithmetic
presentations and the NEW independently supplied symbolic context
certificate. No arithmetic-to-finite-graph theorem is hidden here. -/
def eventualSuppliers_of_zeta_rightContexts
    (trace : ℂ → ℕ → Bool)
    (rationalEventually :
      ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
        EventuallySoficTrace (trace z))
    (algebraicOnLineEventually :
      ∀ z, ActualZetaZero z → z.re = (1 : ℝ) / 2 →
        AlgebraicReal (zetaHeight z) →
          EventuallySoficTrace (trace z))
    (hcontexts : ZetaUnboundedTailContexts trace) :
    ZetaEventualSoficSuppliers trace where
  rationalEventually := rationalEventually
  algebraicOnLineEventually := algebraicOnLineEventually
  noEventuallySoficZero :=
    no_eventual_sofic_of_zeta_rightContexts trace hcontexts

/-- The unconditional-in-GRH irrationality route now has a concrete
automata-theoretic nonsoficity TEST, rather than a bare "not sofic"
hypothesis. It still requires proving the two substantive suppliers. -/
theorem zeta_irrational_of_rational_sofic_and_rightContexts
    (trace : ℂ → ℕ → Bool)
    (rationalEventually :
      ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
        EventuallySoficTrace (trace z))
    (hcontexts : ZetaUnboundedTailContexts trace) :
    ∀ z, ActualZetaZero z → ¬ RationalReal (zetaHeight z) :=
  irrational_of_eventual_language_obstruction
    trace rationalEventually
    (no_eventual_sofic_of_zeta_rightContexts trace hcontexts)

/-- Critical-line placement is a SEPARATE premise; GRH, even if supplied,
does not prove either the algebraic-to-sofic classification or unbounded
continuation contexts. Both are mathematically open at the zeta source. -/
theorem zeta_transcendental_of_critical_sofic_and_rightContexts
    (trace : ℂ → ℕ → Bool)
    (rationalEventually :
      ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
        EventuallySoficTrace (trace z))
    (algebraicOnLineEventually :
      ∀ z, ActualZetaZero z → z.re = (1 : ℝ) / 2 →
        AlgebraicReal (zetaHeight z) →
          EventuallySoficTrace (trace z))
    (hcontexts : ZetaUnboundedTailContexts trace)
    (hCritical : ZetaCriticalPlacement) :
    ∀ z, ActualZetaZero z →
      (¬ RationalReal (zetaHeight z)) ∧
      (z.re = (1 : ℝ) / 2) ∧
      (¬ AlgebraicReal (zetaHeight z)) :=
  eventual_sofic_irrational_and_conditional_transcendental trace
    (eventualSuppliers_of_zeta_rightContexts trace
      rationalEventually algebraicOnLineEventually hcontexts)
    hCritical



/-! ## Bounded right-context capacity certificates -/

/-- A finite, inspectable continuation-context certificate for one tail:
there are `n` finite words whose right-continuation behaviors are pairwise
distinguishable in the selected tail factor language. -/
def TailRightContextCertificate
    (trace : ℕ → Bool) (offset n : ℕ) : Prop :=
  ∃ words : Fin n → List Bool,
    ∀ i j : Fin n, i ≠ j →
      ∃ suffix : List Bool,
        ¬ (HasFiniteBlock (tailTrace trace offset) (words i ++ suffix) ↔
            HasFiniteBlock (tailTrace trace offset) (words j ++ suffix))

/-- A tail admits an exact finite labeled-graph presentation whose reachable
right-context capacity is at most the supplied bound. -/
def TailExactPresentationAtMost
    (trace : ℕ → Bool) (offset capacity : ℕ) : Prop :=
  ∃ P : ExactLanguagePresentation Bool
      (HasFiniteBlock (tailTrace trace offset)),
    P.stateCapacity ≤ capacity

/-- A certificate of `capacity + 1` pairwise distinguishable right contexts
rules out every exact presentation whose reachable-subset capacity is at most
`capacity`.  This is a bounded obstruction; it does not by itself rule out
larger finite presentations. -/
theorem no_tail_exactPresentationAtMost_of_contextCertificate
    (trace : ℕ → Bool) (offset capacity : ℕ)
    (hcert :
      TailRightContextCertificate trace offset (capacity + 1)) :
    ¬ TailExactPresentationAtMost trace offset capacity := by
  rintro ⟨P, hcapacity⟩
  rcases hcert with ⟨words, hdistinct⟩
  have hlower :
      capacity + 1 ≤ P.stateCapacity :=
    rightContexts_card_le_exactPresentation
      P (capacity + 1) words hdistinct
  omega

/-- Source-bound finite-capacity certificate for every selected zeta zero and
every finite burn-in.  Unlike `ZetaUnboundedTailContexts`, this fixes one
capacity bound and therefore gives a finite obstruction only at that bound. -/
def ZetaTailContextCapacityCertificate
    (trace : ℂ → ℕ → Bool) (capacity : ℕ) : Prop :=
  ∀ z, ActualZetaZero z →
    ∀ offset : ℕ,
      TailRightContextCertificate (trace z) offset (capacity + 1)

/-- A supplied zeta tail-context certificate at capacity `capacity` rules out
every exact presentation of every selected zero tail whose reachable-subset
capacity is at most that bound.  No arithmetic-to-sofic implication and no
unbounded/non-eventual-sofic conclusion follows from one fixed capacity. -/
theorem no_bounded_tail_presentation_of_zeta_contextCertificate
    (trace : ℂ → ℕ → Bool) (capacity : ℕ)
    (hcert : ZetaTailContextCapacityCertificate trace capacity) :
    ∀ z, ActualZetaZero z →
      ∀ offset : ℕ,
        ¬ TailExactPresentationAtMost (trace z) offset capacity := by
  intro z hz offset
  exact no_tail_exactPresentationAtMost_of_contextCertificate
    (trace z) offset capacity (hcert z hz offset)

/-- The existing unbounded-tail-context supplier yields every bounded capacity
certificate.  This direction is immediate but useful for finite validation
targets; the converse is deliberately not packaged here. -/
theorem zeta_capacityCertificate_of_unboundedTailContexts
    (trace : ℂ → ℕ → Bool)
    (hcontexts : ZetaUnboundedTailContexts trace)
    (capacity : ℕ) :
    ZetaTailContextCapacityCertificate trace capacity := by
  intro z hz offset
  exact hcontexts z hz offset (capacity + 1)


/-- An *entire family* of exact finite-capacity certificates, one for
every natural capacity and bound to the SAME actual zeta trace, supplies
unbounded continuation contexts at every burn-in offset.

The zero-word case is vacuous but is handled explicitly. A certificate
for one fixed capacity (or a family about unrelated changing traces)
does NOT meet this premise. -/
theorem zeta_unboundedTailContexts_of_all_capacityCertificates
    (trace : ℂ → ℕ → Bool)
    (hall : ∀ capacity : ℕ,
      ZetaTailContextCapacityCertificate trace capacity) :
    ZetaUnboundedTailContexts trace := by
  intro z hz offset n
  cases n with
  | zero =>
      refine ⟨fun i : Fin 0 => i.elim0, ?_⟩
      intro i j hij
      exact i.elim0
  | succ capacity =>
      exact hall capacity z hz offset

/-- Exact quantifier accounting: at the SAME source trace and for
EVERY zero and EVERY tail, unbounded right contexts are equivalent
to a certificate for EVERY finite reachable-state capacity.

This is a logical equivalence between unconstructed suppliers,
not a verification of either side for actual zeta zero ordinates. -/
theorem zeta_unboundedTailContexts_iff_all_capacityCertificates
    (trace : ℂ → ℕ → Bool) :
    ZetaUnboundedTailContexts trace ↔
      ∀ capacity : ℕ,
        ZetaTailContextCapacityCertificate trace capacity := by
  constructor
  · intro hcontexts capacity
    exact zeta_capacityCertificate_of_unboundedTailContexts
      trace hcontexts capacity
  · exact zeta_unboundedTailContexts_of_all_capacityCertificates trace

/-- Conditional arithmetic consumer: a complete all-capacity family
of concrete right-context certificates would supply the nonsofic
obstruction needed for irrationality, provided rational-height-to-
eventual-exact-soficity has INDEPENDENTLY been proved for this trace.
GRH is not used. No source family or arithmetic bridge is built here. -/
theorem zeta_irrational_of_all_capacityCertificates_and_rational_sofic
    (trace : ℂ → ℕ → Bool)
    (rationalEventually :
      ∀ z, ActualZetaZero z → RationalReal (zetaHeight z) →
        EventuallySoficTrace (trace z))
    (hall : ∀ capacity : ℕ,
      ZetaTailContextCapacityCertificate trace capacity) :
    ∀ z, ActualZetaZero z → ¬ RationalReal (zetaHeight z) :=
  zeta_irrational_of_rational_sofic_and_rightContexts
    trace rationalEventually
    (zeta_unboundedTailContexts_of_all_capacityCertificates trace hall)


end GRWTSK.RiemannHypothesis.ZeroOrdinateSoficLanguageCriterion

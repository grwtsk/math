/- Copyright (c) 2026 grwtsk contributors. MIT.
Source-level mathematical candidate. Lean elaboration, fresh kernel checking,
transitive axiom audit, and independent historical review: NOT_RUN. -/
import Mathlib

/-!
# Hypothesis-preserving proof registers for quadratic completion

MSC2020: 00A35, methodology of mathematics (under 00-XX, general and
overarching topics; collections).
Consumer: the cross-cultural mathematical-cognition program in
  GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/
    IntegrationDiscourseCognitiveModes.lean
  GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/
    CrossCulturalReasoningAndAgency.lean
and the 63-area ledger at grwtsk/math issue #1793.

This increment formalizes a *mathematical* method-comparison object:
three registers for the same quadratic equation and their exact biconditional
return. It then proves uniqueness and existence under nonnegative-length
hypotheses. The alternative strictly-increasing-function proof does not
depend on completing the square. Finally, a negative-root witness shows why
a valid algebraic root must not be interpreted as a physical side length.

## Complete primary mathematical argument

For x,b,c in the real numbers, let
  E(x,b,c) : x^2 + b*x = c.
Write S(x,b,c) for
  (2*x+b)^2 = b^2 + 4*c,
and B(x,b,c) for the balancing equation
  4*c + b^2 = (2*x+b)^2.
Expanding gives
  (2*x+b)^2 = 4*x^2 + 4*b*x + b^2.
Subtracting b^2 and dividing by 4 proves E iff S iff B for
*every real x,b,c*: the transformation itself has no lost branches.

For b>=0 and x>=0 the geometric register is literal: a square of side
2*x+b is dissected into four x-by-x squares, four b-by-x rectangles,
and one b-by-b square; all lengths and component areas are nonnegative.
The same polynomial identity holds for negative x but its signed terms
then do NOT describe a dissection into nonnegative rectangles.

When b,c>=0 let t = sqrt(c+b^2/4). This is real and nonnegative.
The identity t^2=c+b^2/4 implies t>=b/2: otherwise the two positive
numbers b/2-t and b/2+t would have product
  b^2/4-t^2 = -c <= 0,
a contradiction. Set x=t-b/2>=0. Expansion shows E(x,b,c).
If x,y>=0 are any two solutions, subtraction gives
  (x-y)*(x+y+b)=0.
If x+y+b=0, every summand is nonnegative, so x=y=0.
Otherwise x-y=0. Hence the nonnegative solution is unique.

Independently, on 0<=x<y and b>=0,
  [y^2+b*y]-[x^2+b*x] = (y-x)*(y+x+b)>0.
Thus the quadratic left side is strictly increasing on the
nonnegative ray. This supplies a second proof of uniqueness.

Hostile check: with b=2 and c=3, both x=1 and x=-3 satisfy
x^2+2*x=3 and the square-completed identity. Only x=1 is a
nonnegative geometric side. The complete-square transformation is
reversible; it is the *domain interpretation*, not the algebra, that
excludes the negative root. If b^2+4*c<0, the equation has no real
solutions since a real square is nonnegative.

These are elementary algebraic results, not a priority or novelty claim.

## Historical, linguistic and interpretive comparison (not formal hypotheses)

* Al-Khwarizmi, Kitab al-mukhtasar fi hisab al-jabr wal-muqabala,
  c. 820-825 CE, Arabic; geometric square completion for quadratic
  equation classes is documented. Source bridge: Frederic Rosen (1831)
  translation; MacTutor "Al-Khwarizmi"; AMS Feature Column
  "Completing the Square" (2020):
  https://mathvoices.ams.org/featurecolumn/2020/11/01/fc-2020-10-2/
* Brahmagupta, Brahmasphutasiddhanta, chapter XVIII, verse 44,
  seventh-century Sanskrit formulation of a quadratic rule; the
  English interpretation and numerical normalization remain mediated
  by later editions/translations, not an original-language audit:
  https://mathshistory.st-andrews.ac.uk/Biographies/Brahmagupta/
* Descartes, La Geometrie (1637), French; the algebra/geometry
  relationship is source-documented, but this file does not assert
  Descartes derived the present lemma from Al-Khwarizmi:
  https://plato.stanford.edu/entries/descartes-mathematics/
* Liu Hui, commentary on the Nine Chapters (263 CE), Chinese;
  historical scholarship discusses systematic arguments for
  algorithmic correctness. It is a comparison of *proof practices*,
  not an attribution of this exact quadratic decomposition to Liu Hui:
  Chemla, "Using Documents from Ancient China to Teach Mathematical
  Proof" (2012), DOI 10.1007/978-94-007-2129-6_18.
* The Arabic-to-Latin medieval translations of al-jabr, including
  Robert of Chester's 1145 translation, are a reported transmission
  pathway (Stedall, Mathematics Emerging, 2008, chapter 1). Their
  existence does not by itself establish a direct influence edge to
  Descartes, Liu Hui, Brahmagupta or Ethiopian philosophy.
* Augustine (late antique), Anselm (medieval Latin scholastic), and
  the Ge'ez Hatata attributed to Zera Yacob (authorship disputed) are
  methodological *comparanda* for justification and independent
  inquiry in the adjacent CrossCulturalReasoningAndAgency.lean, not
  authors of the mathematical formula proved here.

The primary mathematical identity holds independent of the cultural
identity of the reasoner. Mathematical passages require original-text
and translation-specific coding before psychological or identity
hypotheses can be inferred. Similarity is not evidence of descent.
Contemporary goals of equity, choice of presentation register,
self-actualization, contestable readings and opt-out rights are
modern normative design criteria, not positions attributed to these
historical figures.

Assurance: mathematical arguments are stated fully here and represented
below as Lean source candidates. The external historical summary is not
an independent critical-edition review. No Lean executable or Lake
toolchain was available in this session; native elaboration, kernel
replay and transitive axiom audit are NOT_RUN. Nothing claims that the
entire MSC2020 area 00, or mathematics in general, is exhausted.
-/

namespace GRWTSK.GeneralAndOverarchingTopicsCollections.GeneralAndMiscellaneousSpecificTopics.ProofRegisterTranslation

/-- The original algebraic quadratic equation, with the coefficient of
    the squared term normalized to one. -/
def Equation (x b c : ℝ) : Prop := x * x + b * x = c

/-- The completed-square identity. This is meaningful over all real
    inputs, whether or not they represent nonnegative geometric lengths. -/
def CompletedSquare (x b c : ℝ) : Prop :=
  (2 * x + b) * (2 * x + b) = b * b + 4 * c

/-- An explicitly balanced version of the same identity. -/
def Balanced (x b c : ℝ) : Prop :=
  4 * c + b * b = (2 * x + b) * (2 * x + b)

/-- Algebraic, dissection-based, and balancing registers are choices about
    explanation, not labels of an author's ethnicity or cognitive essence. -/
inductive Register where
  | symbolic
  | squareDissection
  | verbalBalancing
  deriving DecidableEq, Repr

instance : Fintype Register :=
  Fintype.ofList
    [.symbolic, .squareDissection, .verbalBalancing]
    (by intro x; cases x <;> simp)

/-- The mathematical claim presented in a selected register. -/
def Register.holds : Register → ℝ → ℝ → ℝ → Prop
  | .symbolic, x, b, c => Equation x b c
  | .squareDissection, x, b, c => CompletedSquare x b c
  | .verbalBalancing, x, b, c => Balanced x b c

/-- Four x-by-x squares, four b-by-x rectangles and one b-by-b square.
    The polynomial identity is unconditional; actual positive areas additionally
    need the separate nonnegative-length hypotheses. -/
theorem area_dissection_identity (x b : ℝ) :
    (2 * x + b) * (2 * x + b) =
      4 * (x * x) + 4 * (b * x) + b * b := by
  ring

/-- The original equation and its square completion have exactly the
    same real solution set; neither implication discards a root. -/
theorem completed_square_iff (x b c : ℝ) :
    CompletedSquare x b c ↔ Equation x b c := by
  unfold CompletedSquare Equation
  constructor <;> intro h <;> nlinarith [h]

theorem balanced_iff (x b c : ℝ) :
    Balanced x b c ↔ Equation x b c := by
  unfold Balanced Equation
  constructor <;> intro h <;> nlinarith [h]

/-- A source-independent, bidirectional return to the same claim. -/
theorem register_agrees (r : Register) (x b c : ℝ) :
    r.holds x b c ↔ Equation x b c := by
  cases r with
  | symbolic => rfl
  | squareDissection => exact completed_square_iff x b c
  | verbalBalancing => exact balanced_iff x b c

/-- A learner can change registers without changing the mathematical
    answer, provided the original equation and all side conditions persist. -/
theorem registers_equivalent (r s : Register) (x b c : ℝ) :
    r.holds x b c ↔ s.holds x b c := by
  exact (register_agrees r x b c).trans
    (register_agrees s x b c).symm

/-- The geometric area interpretation requires a nonnegative outer side. -/
theorem geometric_side_nonnegative (x b : ℝ)
    (hx : 0 ≤ x) (hb : 0 ≤ b) : 0 ≤ 2 * x + b := by
  linarith

/-- A real square bounds the discriminant expression from below. -/
theorem discriminant_nonnegative_of_solution (x b c : ℝ)
    (h : Equation x b c) : 0 ≤ b * b + 4 * c := by
  have hs := (completed_square_iff x b c).2 h
  unfold CompletedSquare at hs
  rw [← hs]
  exact mul_self_nonneg (2 * x + b)

/-- Hostile no-root test: a negative discriminant cannot represent the
    square of a real length, regardless of which register is selected. -/
theorem no_real_solution_of_negative_discriminant (b c : ℝ)
    (hdisc : b * b + 4 * c < 0) :
    ¬ ∃ x : ℝ, Equation x b c := by
  rintro ⟨x, hx⟩
  have hnonneg := discriminant_nonnegative_of_solution x b c hx
  linarith

/-- An explicit nonnegative root exists when the geometric coefficients
    b,c are nonnegative. The proof pays for the square-root branch. -/
theorem nonnegative_root_exists (b c : ℝ)
    (hb : 0 ≤ b) (hc : 0 ≤ c) :
    ∃ x : ℝ, 0 ≤ x ∧ Equation x b c := by
  let t : ℝ := Real.sqrt (c + b * b / 4)
  have harg : 0 ≤ c + b * b / 4 := by
    nlinarith [sq_nonneg b]
  have ht_nonneg : 0 ≤ t := by
    dsimp [t]
    exact Real.sqrt_nonneg _
  have ht_sq : t * t = c + b * b / 4 := by
    dsimp [t]
    nlinarith [Real.sq_sqrt harg]
  let x : ℝ := t - b / 2
  have hx_nonneg : 0 ≤ x := by
    dsimp [x]
    by_contra hn
    have hlt : t < b / 2 := by
      linarith
    have hleft : 0 < b / 2 - t := by
      linarith
    have hright : 0 < b / 2 + t := by
      linarith
    have hproduct : 0 < (b / 2 - t) * (b / 2 + t) :=
      mul_pos hleft hright
    nlinarith [ht_sq]
  refine ⟨x, hx_nonneg, ?_⟩
  unfold Equation
  dsimp [x]
  nlinarith [ht_sq]

/-- Direct factorization proves uniqueness without solving a square root. -/
theorem nonnegative_root_unique (b c x y : ℝ)
    (hb : 0 ≤ b) (hx : 0 ≤ x) (hy : 0 ≤ y)
    (hxe : Equation x b c) (hye : Equation y b c) :
    x = y := by
  have hfactor : (x - y) * (x + y + b) = 0 := by
    unfold Equation at hxe hye
    nlinarith [hxe, hye]
  rcases mul_eq_zero.mp hfactor with h | h
  · linarith
  · linarith

/-- A full conditional existence and uniqueness statement on the
    nonnegative geometric domain. -/
theorem exists_unique_nonnegative_root (b c : ℝ)
    (hb : 0 ≤ b) (hc : 0 ≤ c) :
    ∃! x : ℝ, 0 ≤ x ∧ Equation x b c := by
  obtain ⟨x, hx, hxe⟩ := nonnegative_root_exists b c hb hc
  refine ⟨x, ⟨hx, hxe⟩, ?_⟩
  intro y hy
  exact nonnegative_root_unique b c y x hb hy.1 hx hy.2 hxe

/-- Independent second uniqueness route: monotonicity on the
    nonnegative ray follows from a product of two strictly positive terms. -/
theorem quadratic_strict_increase (b x y : ℝ)
    (hb : 0 ≤ b) (hx : 0 ≤ x) (hxy : x < y) :
    x * x + b * x < y * y + b * y := by
  have hgap : 0 < y - x := by
    linarith
  have hsum : 0 < x + y + b := by
    linarith
  have hp : 0 < (y - x) * (x + y + b) :=
    mul_pos hgap hsum
  nlinarith

/-- Both roots of x^2+2x=3 satisfy completion. The negative root is
    an algebraic solution but not a valid nonnegative geometric side. -/
theorem hostile_negative_branch :
    Equation (-3 : ℝ) 2 3 ∧
      CompletedSquare (-3 : ℝ) 2 3 ∧
      ¬ (0 ≤ (-3 : ℝ)) := by
  constructor
  · norm_num [Equation]
  constructor
  · norm_num [CompletedSquare]
  · norm_num

theorem positive_geometric_branch :
    Equation (1 : ℝ) 2 3 ∧ (0 ≤ (1 : ℝ)) := by
  constructor <;> norm_num [Equation]

/-- Modern, normative interface: an individual may choose among the proved
    equivalent presentation registers without consenting to a personal profile.
    Consent and contestability are not inferred from historical ethnicity. -/
structure LearnerAgency where
  preferredRegister : Register
  mayContestInterpretation : Bool
  consentToPersonalProfile : Bool
  mayWithdraw : Bool

/-- Source/translation and influence decisions remain outside the
    purely algebraic equivalence and must cite independent witnesses. -/
structure HistoricalComparison where
  leftWork : String
  rightWork : String
  leftLanguage : String
  rightLanguage : String
  sourceLocatorLeft : Option String
  sourceLocatorRight : Option String
  interpretiveAnalogy : String
  independentlyCheckedTransmission : Option String
  alternativeReadings : List String

end GRWTSK.GeneralAndOverarchingTopicsCollections.GeneralAndMiscellaneousSpecificTopics.ProofRegisterTranslation

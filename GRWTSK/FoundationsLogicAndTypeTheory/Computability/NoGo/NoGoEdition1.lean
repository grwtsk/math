import Mathlib.Computability.Halting
import Mathlib.NumberTheory.SumFourSquares
import Mathlib.Tactic

/-!
# Computability and arithmetic inference barriers

These no-go statements use Mathlib's exact partial-recursive machine model.
They exclude universal exact halting decisions, not usefulness on declared finite
research workloads. The arithmetic example has every modular solution but no
integer solution; it does not assert solubility at the real place.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Exact halting of a Mathlib partial-recursive code on a fixed input. -/
def ProgramHalts (input : ℕ) (program : Nat.Partrec.Code) : Prop :=
  (Nat.Partrec.Code.eval program input).Dom

/-- Total computable finite transcript generation and aggregation cannot decide all halting.
A concrete adaptive implementation needs its own compilation/totality proof before
this theorem applies to that implementation. -/
theorem finite_observation_halting_no_go (input : ℕ)
    (observe : Nat.Partrec.Code → ℕ) (aggregate : ℕ → Bool)
    (observeComputable : Computable observe) (aggregateComputable : Computable aggregate) :
    ¬(∀ program, aggregate (observe program) = true ↔ ProgramHalts input program) := by
  intro correct
  apply ComputablePred.halting_problem input
  apply ComputablePred.computable_iff.mpr
  refine ⟨fun program => aggregate (observe program),
    aggregateComputable.comp observeComputable, ?_⟩
  funext program
  exact propext (correct program).symm

/-- Exhaustive search for finite certificates of a total computable checker is semidecidable. -/
theorem accepted_certificates_re
    (accepts : Nat.Partrec.Code × ℕ → Bool) (checkerComputable : Computable accepts) :
    REPred (fun program => ∃ certificate, accepts (program, certificate) = true) := by
  have search : Partrec (fun program =>
      Nat.rfind fun certificate => Part.some (accepts (program, certificate))) :=
    Partrec.rfind checkerComputable.partrec
  apply search.dom_re.of_eq
  intro program
  constructor
  · intro h
    obtain ⟨certificate, haccepts, _⟩ := Nat.rfind_dom.mp h
    exact ⟨certificate, (Part.mem_some_iff.mp haccepts).symm⟩
  · rintro ⟨certificate, haccepts⟩
    exact Nat.rfind_dom.mpr ⟨certificate, Part.mem_some_iff.mpr haccepts.symm,
      fun {_} _ => trivial⟩

/-- Claimed sound and complete finite certificates in both polarities for every program. -/
structure EffectiveBinaryCertificates (input : ℕ) where
  /-- Computable candidate acceptance for positive certificates. -/
  positive : Nat.Partrec.Code × ℕ → Bool
  /-- Total effective checking of finite positive certificate codes. -/
  positiveComputable : Computable positive
  /-- Positive soundness and completeness for the exact halting predicate. -/
  positiveExact : ∀ program,
    (∃ certificate, positive (program, certificate) = true) ↔ ProgramHalts input program
  /-- Computable candidate acceptance for negative certificates. -/
  negative : Nat.Partrec.Code × ℕ → Bool
  /-- Total effective checking of finite negative certificate codes. -/
  negativeComputable : Computable negative
  /-- Negative soundness and completeness for the complement of the same predicate. -/
  negativeExact : ∀ program,
    (∃ certificate, negative (program, certificate) = true) ↔ ¬ProgramHalts input program

/-- No total computable finite checker is sound and complete for both halting polarities. -/
theorem bidirectional_certificate_no_go (input : ℕ) :
    ¬Nonempty (EffectiveBinaryCertificates input) := by
  rintro ⟨system⟩
  apply ComputablePred.halting_problem_not_re input
  exact (accepted_certificates_re system.negative system.negativeComputable).of_eq
    system.negativeExact

/-- An effectively decidable bounded proof-cost aperture with complete halting certificates. -/
structure EffectiveHaltingProofCost (input : ℕ) where
  /-- Declared description size for each exact program. -/
  descriptionSize : Nat.Partrec.Code → ℕ
  /-- Program description size is effective. -/
  descriptionSizeComputable : Computable descriptionSize
  /-- Finite proof code acceptance. -/
  accepts : Nat.Partrec.Code × ℕ → Bool
  /-- Acceptance is a total computable finite check. -/
  acceptsComputable : Computable accepts
  /-- Declared logical proof cost. -/
  proofCost : ℕ → ℕ
  /-- Cost measurement is effective. -/
  proofCostComputable : Computable proofCost
  /-- Each accepted certificate proves the exact halting predicate. -/
  sound : ∀ program certificate, accepts (program, certificate) = true →
    ProgramHalts input program
  /-- Halting programs have a finite accepted certificate in this system. -/
  complete : ∀ program, ProgramHalts input program →
    ∃ certificate, accepts (program, certificate) = true
  /-- Explicit finite inventory of the whole proof-cost ball. -/
  costBall : ℕ → Finset ℕ
  /-- Every finite code in the declared cost aperture is represented exactly. -/
  costBallComplete : ∀ bound certificate,
    certificate ∈ costBall bound ↔ proofCost certificate ≤ bound
  /-- Executable finite proof-ball search at a specified cost. -/
  searchBall : Nat.Partrec.Code × ℕ → Bool
  /-- Complete search of each declared ball is total and computable. -/
  searchBallComputable : Computable searchBall
  /-- The search covers exactly the accepted certificates within that cost ball. -/
  searchBallExact : ∀ program bound, searchBall (program, bound) = true ↔
    ∃ certificate, proofCost certificate ≤ bound ∧ accepts (program, certificate) = true

/-- A proposed description-size bound dominates the shortest accepted proof whenever it exists. -/
def UniversalHaltingProofBound {input : ℕ}
    (system : EffectiveHaltingProofCost input) (bound : ℕ → ℕ) : Prop :=
  ∀ program, ProgramHalts input program →
    ∃ certificate, system.proofCost certificate ≤ bound (system.descriptionSize program) ∧
      system.accepts (program, certificate) = true

/-- Effective proof balls preclude a computable universal upper bound on shortest halting proofs.
The search-ball completeness hypothesis is essential: no missing certificate is
silently interpreted as nonhalting. -/
theorem halting_proof_cost_bound_no_go {input : ℕ}
    (system : EffectiveHaltingProofCost input) (bound : ℕ → ℕ)
    (boundComputable : Computable bound) : ¬UniversalHaltingProofBound system bound := by
  intro dominates
  have searchComputable : Computable (fun program =>
      system.searchBall (program, bound (system.descriptionSize program))) :=
    system.searchBallComputable.comp
      (Computable.id.pair (boundComputable.comp system.descriptionSizeComputable))
  apply ComputablePred.halting_problem input
  apply ComputablePred.computable_iff.mpr
  refine ⟨fun program => system.searchBall (program, bound (system.descriptionSize program)),
    searchComputable, ?_⟩
  funext program
  apply propext
  constructor
  · intro halts
    exact (system.searchBallExact program _).mpr (dominates program halts)
  · intro accepted
    obtain ⟨certificate, _, hcertificate⟩ := (system.searchBallExact program _).mp accepted
    exact system.sound program certificate hcertificate

/-- Extensional future behavior of program codes is semantic equality of partial functions. -/
def SameProgramBehavior (first second : Nat.Partrec.Code) : Prop :=
  Nat.Partrec.Code.eval first = Nat.Partrec.Code.eval second

/-- Any computable extensional class of behaviors is trivial, by the pinned Rice theorem. -/
theorem computable_behavior_class_trivial (behaviorClass : Set Nat.Partrec.Code)
    (extensional : ∀ first second, SameProgramBehavior first second →
      (first ∈ behaviorClass ↔ second ∈ behaviorClass))
    (effective : ComputablePred (fun program => program ∈ behaviorClass)) :
    behaviorClass = ∅ ∨ behaviorClass = Set.univ :=
  (ComputablePred.rice₂ behaviorClass extensional).mp effective

/-- No total computable natural-number canonicalizer captures unrestricted program behavior. -/
theorem behavioral_canonicalization_no_go (canonical : Nat.Partrec.Code → ℕ)
    (canonicalComputable : Computable canonical) :
    ¬(∀ first second, canonical first = canonical second ↔ SameProgramBehavior first second) := by
  intro correct
  let behaviorClass : Set Nat.Partrec.Code :=
    {program | canonical program = canonical .zero}
  have effective : ComputablePred (fun program => program ∈ behaviorClass) := by
    apply ComputablePred.computable_iff.mpr
    refine ⟨fun program => canonical program == canonical .zero,
      Primrec.beq.to_comp.comp canonicalComputable (Computable.const _), ?_⟩
    funext program
    simp [behaviorClass]
  have extensional : ∀ first second, SameProgramBehavior first second →
      (first ∈ behaviorClass ↔ second ∈ behaviorClass) := by
    intro first second same
    change canonical first = canonical .zero ↔ canonical second = canonical .zero
    rw [(correct first second).mpr same]
  rcases computable_behavior_class_trivial behaviorClass extensional effective with empty | full
  · have member : Nat.Partrec.Code.zero ∈ behaviorClass := rfl
    rw [empty] at member
    exact member
  · have member : Nat.Partrec.Code.succ ∈ behaviorClass := by rw [full]; trivial
    have same := (correct .succ .zero).mp member
    have atZero := congrFun same 0
    change (Part.some 1 : Part ℕ) = Part.some 0 at atZero
    have impossible : (1 : ℕ) = 0 := Part.some_injective atZero
    omega

/-- Four squares plus one is strictly positive at every integral input. -/
theorem four_squares_plus_one_no_integer_solution :
    ¬∃ a b c d : ℤ, a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 + 1 = 0 := by
  rintro ⟨a, b, c, d, h⟩
  nlinarith [sq_nonneg a, sq_nonneg b, sq_nonneg c, sq_nonneg d]

/-- Nevertheless every positive modulus admits an exact solution of the same equation. -/
theorem four_squares_plus_one_modular_solution (modulus : ℕ) (positive : 0 < modulus) :
    ∃ a b c d : ℤ, (modulus : ℤ) ∣ a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 + 1 := by
  obtain ⟨a, b, c, d, hsquares⟩ := Nat.sum_four_squares (modulus - 1)
  refine ⟨a, b, c, d, ?_⟩
  have hnat : a ^ 2 + b ^ 2 + c ^ 2 + d ^ 2 + 1 = modulus := by omega
  have hint : (a : ℤ) ^ 2 + (b : ℤ) ^ 2 + (c : ℤ) ^ 2 + (d : ℤ) ^ 2 + 1 =
      (modulus : ℤ) := by exact_mod_cast hnat
  rw [hint]

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

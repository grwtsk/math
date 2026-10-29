import FormalResearch.TypeTheory.PureTypeSystem.Normalization
import FormalResearch.TypeTheory.PureTypeSystem.IndependentWN
import FormalResearch.TypeTheory.PureTypeSystem.BetaDenotation
import FormalResearch.TypeTheory.PureTypeSystem.BetaConversion
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Trust

/-!
Unconditional strong normalization of the actual literal-base monomorphic PTS.
The real upstream WN-to-SN theorem consumes the independently constructed
system-wide weak-normalization proof. The exact locally typed certificate is
bound to that instantiated source statement in the existing Trust interface.
The reducer and conversion checker execute at supplied natural-number fuel.
Exact heights certify sufficiency mathematically and are noncomputable; no
effective height computation or native resource-budget refinement is asserted.
Human research direction and evaluation: grwtsk contributors.
Formal construction and pinned replay: Codex.
-/

namespace FormalResearch.TypeTheory.IntendedPTS

open OAI.PureTypeSystem
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- The actual upstream theorem consumes an independent, fully instantiated WN premise. -/
theorem monomorphic_arrow_strongly_normalizing : SystemStronglyNormalizing monomorphicArrow :=
  weak_implies_strong monomorphicArrow monomorphic_arrow_weakly_normalizing

/-- Every actual permitted source transition preserves legality, including legal types. -/
theorem legal_preserved {S : Type*} {P : Specification S} {context : List (Expr S)}
    {term target : Expr S} (legal : Legal P context term) (reduction : Beta term target) :
    Legal P context target := by
  obtain ⟨type, typed | typed⟩ := legal
  · exact ⟨type, Or.inl (typed.subject_reduction reduction)⟩
  · obtain ⟨sort, equality⟩ | ⟨sort, sorted⟩ := typed.regularity
    · subst term
      exact False.elim (Normal.sort sort _ reduction)
    · exact ⟨type, Or.inr (.conversion typed (sorted.subject_reduction reduction)
        (.rel _ _ reduction))⟩

/-- A legal source term supplies accessibility for the complete annotated reducer. -/
def admittedState (context : List (Expr Bool)) (valid : ValidContext monomorphicArrow context)
    (term : Expr Bool) (legal : Legal monomorphicArrow context term) :
    FormalResearch.TypeTheory.BetaReduction.AccessibleState Bool :=
  ⟨term, monomorphic_arrow_strongly_normalizing context valid term legal⟩

/-- Supplied fuel above the mathematical height executes to an actual source normal form. -/
theorem admitted_normalization_at_fuel (context : List (Expr Bool))
    (valid : ValidContext monomorphicArrow context) (term : Expr Bool)
    (legal : Legal monomorphicArrow context term) (fuel : ℕ)
    (sufficient : FormalResearch.TypeTheory.BetaReduction.height
      (admittedState context valid term legal) ≤ fuel) :
    ∃ target, FormalResearch.TypeTheory.BetaReduction.normalizeFuel fuel term = some target ∧
      Reduces term target ∧ Normal target := by
  obtain ⟨target, success⟩ := FormalResearch.TypeTheory.BetaReduction.normalizeFuel_complete
    (admittedState context valid term legal) fuel sufficient
  obtain ⟨path, normal⟩ := FormalResearch.TypeTheory.BetaReduction.normalizeFuel_sound success
  exact ⟨target, success, path, normal⟩

/-- A noncomputable exact height mathematically certifies sufficient normalization fuel. -/
theorem admitted_normalization (context : List (Expr Bool))
    (valid : ValidContext monomorphicArrow context) (term : Expr Bool)
    (legal : Legal monomorphicArrow context term) :
    ∃ target,
      FormalResearch.TypeTheory.BetaReduction.normalizeFuel
        (FormalResearch.TypeTheory.BetaReduction.height (admittedState context valid term legal))
        term = some target ∧ Reduces term target ∧ Normal target :=
  FormalResearch.TypeTheory.BetaReduction.normalizeFuel_certified
    (admittedState context valid term legal)

/-- Sufficient supplied fuel decides actual source conversion of any two legal expressions. -/
theorem admitted_conversion_at_fuel (context : List (Expr Bool))
    (valid : ValidContext monomorphicArrow context) (first second : Expr Bool)
    (firstLegal : Legal monomorphicArrow context first)
    (secondLegal : Legal monomorphicArrow context second) (firstFuel secondFuel : ℕ)
    (firstSufficient : FormalResearch.TypeTheory.BetaReduction.height
      (admittedState context valid first firstLegal) ≤ firstFuel)
    (secondSufficient : FormalResearch.TypeTheory.BetaReduction.height
      (admittedState context valid second secondLegal) ≤ secondFuel) :
    ∃ result, FormalResearch.TypeTheory.BetaReduction.conversionFuel
      firstFuel secondFuel first second = some result ∧
      (result = true ↔ Converts first second) :=
  FormalResearch.TypeTheory.BetaReduction.conversionFuel_complete
    (admittedState context valid first firstLegal) (admittedState context valid second secondLegal)
    firstFuel secondFuel firstSufficient secondSufficient

/-- Noncomputable exact heights mathematically certify sufficient source-conversion fuel. -/
theorem admitted_conversion (context : List (Expr Bool))
    (valid : ValidContext monomorphicArrow context) (first second : Expr Bool)
    (firstLegal : Legal monomorphicArrow context first)
    (secondLegal : Legal monomorphicArrow context second) :
    ∃ result,
      FormalResearch.TypeTheory.BetaReduction.conversionFuel
        (FormalResearch.TypeTheory.BetaReduction.height
          (admittedState context valid first firstLegal))
        (FormalResearch.TypeTheory.BetaReduction.height
          (admittedState context valid second secondLegal)) first second = some result ∧
      (result = true ↔ Converts first second) :=
  FormalResearch.TypeTheory.BetaReduction.conversionFuel_complete
    (admittedState context valid first firstLegal) (admittedState context valid second secondLegal)
    _ _ (Nat.le_refl _) (Nat.le_refl _)

/-- A certificate carries the actual kernel-typed proof of the exact WN instance. -/
abbrev WeakNormalizationCertificate := PLift (SystemWeaklyNormalizing monomorphicArrow)

/-- The local target identity records the exact instantiated SN declaration. -/
def normalizationTargetIdentity : String :=
  "FormalResearch.TypeTheory.IntendedPTS.monomorphic_arrow_strongly_normalizing"

/-- Local soundness consumes the proof certificate and the replayed actual upstream theorem.
Acceptance here applies only to an already kernel-typed proof certificate; the
external payload and a remote checker bit supply no mathematical premise. -/
def normalizationJurisdiction : LocalJurisdiction WeakNormalizationCertificate where
  targetIdentity := normalizationTargetIdentity
  statement := SystemStronglyNormalizing monomorphicArrow
  accepts := fun _ => true
  sound := fun certificate _ => weak_implies_strong monomorphicArrow certificate.down

/-- The independent local WN theorem is the concrete proof-bearing certificate. -/
def normalizationCertificate : WeakNormalizationCertificate :=
  ⟨monomorphic_arrow_weakly_normalizing⟩

/-- Historical source identities are retained after all live external premises disappear. -/
def normalizationTranslation : CertificateTranslation WeakNormalizationCertificate where
  externalCandidate := {
    targetIdentity := normalizationTargetIdentity
    payload := "OAI weak_implies_strong; independent literal-base arrow WN"
    provenance := {"openai/math:adc7f1241b42e322a6451854ab7e4b4c146bf78a"}
    liveDependencies := ∅ }
  localTargetIdentity := normalizationTargetIdentity
  certificate := normalizationCertificate
  targetPreserved := rfl
  liveDependencies := ∅
  provenance := {"openai/math:adc7f1241b42e322a6451854ab7e4b4c146bf78a",
    "FormalResearch.TypeTheory.IntendedPTS.monomorphic_arrow_weakly_normalizing"}

/-- The local checker observation is exactly the checker's value on the local proof. -/
def normalizationReplay : LocalReplayResult WeakNormalizationCertificate where
  translation := normalizationTranslation
  checkerAccepted := normalizationJurisdiction.accepts normalizationCertificate

/-- The exact local replay carries no live external interface. -/
theorem normalization_successful_descent :
    SuccessfulDescent normalizationJurisdiction normalizationReplay :=
  ⟨rfl, rfl, rfl, rfl⟩

/-- Existing Trust descent concludes the actual source SN statement from local soundness. -/
theorem normalization_descent_statement : SystemStronglyNormalizing monomorphicArrow :=
  successfulDescent_statement normalizationJurisdiction normalizationReplay
    normalization_successful_descent

end FormalResearch.TypeTheory.IntendedPTS

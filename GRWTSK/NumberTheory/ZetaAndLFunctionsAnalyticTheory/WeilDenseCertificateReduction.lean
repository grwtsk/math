/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI ChatGPT.
Imported Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.NumberTheory.LSeries.DirichletContinuation
import GRWTSK.MathematicalLogicAndFoundations.GeneralLogic.ApproximateCertificateCoverage

/-!
# Conditional certificate return to primitive Dirichlet GRH

Direct formalization candidate of OCERT-1, Theorem P and the soundness part of
Theorem N, from research revision e19563adbaf29d08c6b2e17761f78b96adb9e247:
https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/e19563adbaf29d08c6b2e17761f78b96adb9e247/research/06-weil-spectral/certified-search/oc10-backchain-v1.md

The target uses mathlib's analytically continued `DirichletCharacter.LFunction`,
not `LSeries`, whose value outside convergence is zero by definition. A source
contains an actual nonzero modulus and primitive character. The modulus-one
source is included and is identified with `riemannZeta` below.

The input form, support spaces, dense encodings and arithmetic return are
parameters, NOT constructed arithmetic objects. To apply the positive theorem,
the supplied return must concern the exact full Weil form and its actual test
domain: all prime powers, conductor and gamma/parity terms, both applicable pole
orientations and zero multiplicities. The theorem supplies neither that return
nor universal positive coverage. Its source return is a premise, not an axiom.

No smooth dictionary construction, certified arithmetic evaluator, operational
scheduler or runtime implementation is asserted. Elaboration, fresh kernel
replay, axiom audit and independent review: NOT_RUN. Coordination: math#1807.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilDenseCertificateReduction

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Inference.ApproximateCertificates
open GRWTSK.FunctionalAnalysis.DenseNonnegativeApproximation

/-- An actual primitive Dirichlet source. Zero modulus is excluded; modulus one
is deliberately retained. No strings or source hashes replace these objects. -/
structure PrimitiveDirichletSource where
  modulus : ℕ
  modulus_ne_zero : modulus ≠ 0
  character : DirichletCharacter ℂ modulus
  primitive : character.IsPrimitive

/-- The analytically continued L-function of the exact character in the source. -/
noncomputable def PrimitiveDirichletSource.lFunction
    (source : PrimitiveDirichletSource) : ℂ → ℂ :=
  letI : NeZero source.modulus := ⟨source.modulus_ne_zero⟩
  DirichletCharacter.LFunction source.character

/-- The critical-strip zero statement for one primitive source. -/
def PrimitiveDirichletSource.SatisfiesGRH (source : PrimitiveDirichletSource) : Prop :=
  ∀ s : ℂ, 0 < s.re → s.re < 1 → source.lFunction s = 0 → s.re = (1 / 2 : ℝ)

/-- Primitive Dirichlet GRH, including the source of conductor one. -/
def PrimitiveDirichletGRH : Prop :=
  ∀ source : PrimitiveDirichletSource, source.SatisfiesGRH

/-- The modulus-one primitive source. -/
noncomputable def zetaSource : PrimitiveDirichletSource where
  modulus := 1
  modulus_ne_zero := Nat.one_ne_zero
  character := 1
  primitive := DirichletCharacter.isPrimitive_one_level_one

/-- No extra Euler factor is introduced for the conductor-one source. -/
@[simp]
theorem zetaSource_lFunction : zetaSource.lFunction = riemannZeta := by
  change DirichletCharacter.LFunction (1 : DirichletCharacter ℂ 1) = riemannZeta
  exact DirichletCharacter.LFunction_modOne_eq

/-- The chosen GRH target really includes the critical-strip zeta statement. -/
theorem zeta_critical_strip_of_primitiveGRH (h : PrimitiveDirichletGRH)
    (s : ℂ) (left : 0 < s.re) (right : s.re < 1) (zero : riemannZeta s = 0) :
    s.re = (1 / 2 : ℝ) := by
  have hz : zetaSource.lFunction s = 0 := by
    rw [zetaSource_lFunction]
    exact zero
  exact h zetaSource s left right hz

/-- Backward-chain consumer: universal accepted dyadic lower bounds on every
dense support-window dictionary imply the original target ONLY through the
explicit supplied arithmetic return. No common global topology or uniform
conductor bound is assumed. Each source/window has its own continuity proof. -/
theorem primitiveGRH_of_dense_certificate_coverage
    {Window : ℕ → Type*} [∀ A : ℕ, TopologicalSpace (Window A)]
    {Code : ℕ → Type*} {Certificate : Type*}
    (form : PrimitiveDirichletSource → ∀ A : ℕ, Window A → ℝ)
    (encode : ∀ A : ℕ, Code A → Window A)
    (dense : ∀ A : ℕ, DenseRange (encode A))
    (continuous : ∀ (source : PrimitiveDirichletSource) (A : ℕ),
      Continuous (form source A))
    (checker : ∀ A : ℕ,
      CertificateChecker PrimitiveDirichletSource Certificate (Code A × ℕ)
        (lowerBoundMeaning (fun source d => form source A (encode A d))
          (fun k => (1 / 2 : ℝ) ^ k)))
    (covered : ∀ (source : PrimitiveDirichletSource) (A : ℕ) (d : Code A) (k : ℕ),
      ∃ c : Certificate, (checker A).Accepts source c (d, k))
    (returnsToArithmetic :
      (∀ (source : PrimitiveDirichletSource) (A : ℕ) (f : Window A),
        0 ≤ form source A f) → PrimitiveDirichletGRH) :
    PrimitiveDirichletGRH := by
  apply returnsToArithmetic
  intro source A f
  exact dense_nonneg_of_complete_coverage (fun s => form s A) (encode A)
    (fun k => (1 / 2 : ℝ) ^ k) (checker A) source (dense A)
    (continuous source A) dyadic_errors_arbitrarily_small (covered source A) f

/-- The opposite source-return direction is separately required for a negative
certificate. An arbitrary auxiliary negative matrix does not meet this premise. -/
theorem not_primitiveGRH_of_accepted_upper {Code Certificate : Type*}
    (value : PrimitiveDirichletSource → Code → ℝ)
    (checker : CertificateChecker PrimitiveDirichletSource Certificate (Code × ℝ)
      (upperBoundMeaning value))
    (nonnegativeUnderGRH : PrimitiveDirichletGRH →
      ∀ (source : PrimitiveDirichletSource) (d : Code), 0 ≤ value source d)
    (source : PrimitiveDirichletSource) (d : Code) (upper : ℝ) (c : Certificate)
    (accepted : checker.Accepts source c (d, upper)) (negative : upper < 0) :
    ¬ PrimitiveDirichletGRH := by
  intro h
  exact (not_le_of_gt (negative_of_accepted_upper value checker source d upper c
    accepted negative)) (nonnegativeUnderGRH h source d)

end GRWTSK.NumberTheory.WeilDenseCertificateReduction

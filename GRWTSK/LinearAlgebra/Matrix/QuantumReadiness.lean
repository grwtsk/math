/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Spectral.Sheaf.SynchronizedSchurJet
import Mathlib.LinearAlgebra.Matrix.ConjTranspose
import Mathlib.Tactic.NoncommRing

set_option autoImplicit false

open scoped Matrix

/-!
# Symmetry-preserving steering and a quantum-readiness metric

The finite spectral system may be represented in tensor-product coordinates, but this fact
alone provides neither a block encoding nor a circuit. This file separates those evidence
levels.

A steering system contains supplied phase matrices, marked and reference projectors, and
two commuting involutions. The associated reflections and Grover-type product preserve both
involution labels whenever the projectors do.

`ReadinessProfile.score` is an incidental engineering metric. Its evidence types are
parameters, so a consumer may replace them by substantive machine-checked certificates.
The score has no mathematical authority over spectral zeros and asserts no quantum speedup.
-/

namespace GRWTSK.LinearAlgebra.Matrix.QuantumReadiness

open GRWTSK.Spectral.Sheaf.SynchronizedSchurJet

noncomputable section

/-- A finite symmetry-preserving phase and reflection system. -/
structure SteeringSystem (ι : Type*) [Fintype ι] [DecidableEq ι] where
  actions : MatrixInvolutions ι
  phase : ℝ → Matrix ι ι ℂ
  phase_sigma : ∀ t, Commutes (phase t) actions.sigma
  phase_tau : ∀ t, Commutes (phase t) actions.tau
  markedProjector : Matrix ι ι ℂ
  marked_idempotent : markedProjector * markedProjector = markedProjector
  marked_sigma : Commutes markedProjector actions.sigma
  marked_tau : Commutes markedProjector actions.tau
  referenceProjector : Matrix ι ι ℂ
  reference_idempotent : referenceProjector * referenceProjector = referenceProjector
  reference_sigma : Commutes referenceProjector actions.sigma
  reference_tau : Commutes referenceProjector actions.tau

namespace SteeringSystem

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

/-- Reflection about the complement of the marked subspace. -/
def markedReflection (system : SteeringSystem ι) : Matrix ι ι ℂ :=
  1 - 2 • system.markedProjector

/-- Reflection about the supplied reference subspace. -/
def referenceReflection (system : SteeringSystem ι) : Matrix ι ι ℂ :=
  2 • system.referenceProjector - 1

/-- Grover-type product of the two supplied reflections. -/
def grover (system : SteeringSystem ι) : Matrix ι ι ℂ :=
  system.referenceReflection * system.markedReflection

theorem markedReflection_sigma (system : SteeringSystem ι) :
    Commutes system.markedReflection system.actions.sigma := by
  unfold Commutes markedReflection
  calc
    (1 - 2 • system.markedProjector) * system.actions.sigma =
        system.actions.sigma - 2 •
          (system.markedProjector * system.actions.sigma) := by
      simp [sub_mul]
    _ = system.actions.sigma - 2 •
          (system.actions.sigma * system.markedProjector) := by
      rw [system.marked_sigma]
    _ = system.actions.sigma *
          (1 - 2 • system.markedProjector) := by
      simp [mul_sub]

theorem markedReflection_tau (system : SteeringSystem ι) :
    Commutes system.markedReflection system.actions.tau := by
  unfold Commutes markedReflection
  calc
    (1 - 2 • system.markedProjector) * system.actions.tau =
        system.actions.tau - 2 •
          (system.markedProjector * system.actions.tau) := by
      simp [sub_mul]
    _ = system.actions.tau - 2 •
          (system.actions.tau * system.markedProjector) := by
      rw [system.marked_tau]
    _ = system.actions.tau *
          (1 - 2 • system.markedProjector) := by
      simp [mul_sub]

theorem referenceReflection_sigma (system : SteeringSystem ι) :
    Commutes system.referenceReflection system.actions.sigma := by
  unfold Commutes referenceReflection
  calc
    (2 • system.referenceProjector - 1) * system.actions.sigma =
        2 • (system.referenceProjector * system.actions.sigma) -
          system.actions.sigma := by
      simp [sub_mul]
    _ = 2 • (system.actions.sigma * system.referenceProjector) -
          system.actions.sigma := by
      rw [system.reference_sigma]
    _ = system.actions.sigma *
          (2 • system.referenceProjector - 1) := by
      simp [mul_sub]

theorem referenceReflection_tau (system : SteeringSystem ι) :
    Commutes system.referenceReflection system.actions.tau := by
  unfold Commutes referenceReflection
  calc
    (2 • system.referenceProjector - 1) * system.actions.tau =
        2 • (system.referenceProjector * system.actions.tau) -
          system.actions.tau := by
      simp [sub_mul]
    _ = 2 • (system.actions.tau * system.referenceProjector) -
          system.actions.tau := by
      rw [system.reference_tau]
    _ = system.actions.tau *
          (2 • system.referenceProjector - 1) := by
      simp [mul_sub]

/-- The Grover-type iterate preserves the first involution labels. -/
theorem grover_sigma (system : SteeringSystem ι) :
    Commutes system.grover system.actions.sigma := by
  unfold Commutes grover
  calc
    (system.referenceReflection * system.markedReflection) *
        system.actions.sigma =
      system.referenceReflection *
        (system.markedReflection * system.actions.sigma) := by
          rw [Matrix.mul_assoc]
    _ = system.referenceReflection *
        (system.actions.sigma * system.markedReflection) := by
          rw [system.markedReflection_sigma]
    _ = (system.referenceReflection * system.actions.sigma) *
        system.markedReflection := by
          rw [← Matrix.mul_assoc]
    _ = (system.actions.sigma * system.referenceReflection) *
        system.markedReflection := by
          rw [system.referenceReflection_sigma]
    _ = system.actions.sigma *
        (system.referenceReflection * system.markedReflection) := by
          rw [Matrix.mul_assoc]

/-- The Grover-type iterate preserves the second involution labels. -/
theorem grover_tau (system : SteeringSystem ι) :
    Commutes system.grover system.actions.tau := by
  unfold Commutes grover
  calc
    (system.referenceReflection * system.markedReflection) *
        system.actions.tau =
      system.referenceReflection *
        (system.markedReflection * system.actions.tau) := by
          rw [Matrix.mul_assoc]
    _ = system.referenceReflection *
        (system.actions.tau * system.markedReflection) := by
          rw [system.markedReflection_tau]
    _ = (system.referenceReflection * system.actions.tau) *
        system.markedReflection := by
          rw [← Matrix.mul_assoc]
    _ = (system.actions.tau * system.referenceReflection) *
        system.markedReflection := by
          rw [system.referenceReflection_tau]
    _ = system.actions.tau *
        (system.referenceReflection * system.markedReflection) := by
          rw [Matrix.mul_assoc]

end SteeringSystem

/-- A concrete isometric embedding into an `n`-qubit coordinate space. -/
structure TensorEmbeddingCertificate (dimension qubits : ℕ) where
  dimension_fits : dimension ≤ 2 ^ qubits
  embedding : Matrix (Fin (2 ^ qubits)) (Fin dimension) ℂ
  isometry :
    Matrix.conjTranspose embedding * embedding = 1

/-- A supplied unitary block encoding of a finite operator. -/
structure BlockEncodingCertificate
    (dimension qubits : ℕ)
    (operator : Matrix (Fin dimension) (Fin dimension) ℂ) where
  tensorEmbedding : TensorEmbeddingCertificate dimension qubits
  unitary : Matrix (Fin (2 ^ qubits)) (Fin (2 ^ qubits)) ℂ
  unitary_left :
    Matrix.conjTranspose unitary * unitary = 1
  unitary_right :
    unitary * Matrix.conjTranspose unitary = 1
  normalization : ℝ
  normalization_positive : 0 < normalization
  block_identity :
    Matrix.conjTranspose tensorEmbedding.embedding *
        unitary * tensorEmbedding.embedding =
      (((normalization : ℂ)⁻¹) • operator)

/-- Count one optional evidence object. -/
def optionScore {α : Type*} : Option α → ℕ
  | none => 0
  | some _ => 1

/-- Evidence levels used only as an optimization metric.

The parameter types should themselves encode whatever proof obligations the application
requires. Merely filling an arbitrary type does not establish a valid quantum construction. -/
structure ReadinessProfile
    (Embedding BlockEncoding Oracle Circuit Complexity : Type*) where
  dimension : ℕ
  qubits : ℕ
  dimension_fits : dimension ≤ 2 ^ qubits
  embedding : Option Embedding
  blockEncoding : Option BlockEncoding
  oracle : Option Oracle
  circuit : Option Circuit
  complexity : Option Complexity

namespace ReadinessProfile

variable {Embedding BlockEncoding Oracle Circuit Complexity : Type*}

/-- Number of supplied post-dimension evidence layers, from zero through five. -/
def score
    (profile :
      ReadinessProfile Embedding BlockEncoding Oracle Circuit Complexity) : ℕ :=
  optionScore profile.embedding +
    optionScore profile.blockEncoding +
    optionScore profile.oracle +
    optionScore profile.circuit +
    optionScore profile.complexity

/-- A profile is a strictly better readiness target when it carries more certified evidence. -/
def Better
    (new old :
      ReadinessProfile Embedding BlockEncoding Oracle Circuit Complexity) : Prop :=
  old.score < new.score

end ReadinessProfile

end

end GRWTSK.LinearAlgebra.Matrix.QuantumReadiness

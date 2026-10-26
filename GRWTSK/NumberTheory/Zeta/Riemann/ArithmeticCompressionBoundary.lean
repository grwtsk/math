/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/

import GRWTSK.GraphSandwichDiffusion
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThresholdDescentProgram
import Mathlib.Tactic

set_option autoImplicit false

noncomputable section

/-!
# Arithmetic compression boundary and threshold correspondence

This module isolates the proposed expression

`3 / 4 + a`, with `a ≤ 9 / 16`,

from the stronger target `a ≤ 1 / 2`.

The repository search currently finds no declaration that identifies `a` as a
spectral error, correlation exponent, diffusion height, arithmetic loss term,
or quadratic-threshold output.  That absence is represented as a typed coverage
obligation.  The weaker bound is proved insufficient by an explicit
counterexample.

The existing quadratic threshold map

`quadraticThreshold ρ = 2 * ρ - 1`

can supply the stronger target only after an exact parameter correspondence is
provided and the source threshold satisfies `ρ ≤ 3 / 4`.  No such
correspondence is constructed here.  In particular, one step from `7 / 8`
produces `3 / 4`, not `1 / 2`; the second contraction remains an independent
analytic supplier.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED /
PARAMETER_IDENTIFICATION_OPEN / STRONG_COMPRESSION_SUPPLIER_OPEN.
-/

namespace GRWTSK.RiemannHypothesis
namespace ArithmeticCompressionBoundary

open GRWTSK.GraphSandwichDiffusion

/-- Mathematical interpretations permitted for the proposed parameter `a`.
The `unidentified` constructor is a coverage status, not a mathematical
interpretation. -/
inductive CompressionQuantityKind where
  | unidentified
  | spectralError
  | correlationExponent
  | diffusionHeight
  | arithmeticLoss
  | quadraticThresholdOutput
  | other
  deriving DecidableEq, Repr

/-- A source-bound compression parameter.  Domain, normalization, and
comparison are explicit data because inequalities between differently
normalized quantities are not meaningful without a bridge. -/
structure CompressionParameter where
  value : ℝ
  kind : CompressionQuantityKind
  domainDescription : String
  normalizationDescription : String
  comparisonDescription : String
  exactDeclaration : Option String
  provenance : List SourceIdentity
  deriving Repr

/-- The parameter has been identified only when both its mathematical kind and
an exact source declaration are present. -/
def ParameterIdentified (parameter : CompressionParameter) : Prop :=
  parameter.kind ≠ .unidentified ∧
    ∃ declaration : String,
      parameter.exactDeclaration = some declaration

/-- The proposed boundary retains the weaker `9 / 16` estimate without
silently promoting it to the stronger `1 / 2` target. -/
structure ProposedCompressionBoundary where
  parameter : CompressionParameter
  weakerBound : parameter.value ≤ (9 : ℝ) / 16

/-- The complete proposed exponent before any stronger compression. -/
def totalExponent (boundary : ProposedCompressionBoundary) : ℝ :=
  (3 : ℝ) / 4 + boundary.parameter.value

/-- The desired stronger estimate, deliberately separate from `weakerBound`. -/
def StrongCompressionTarget (boundary : ProposedCompressionBoundary) : Prop :=
  boundary.parameter.value ≤ (1 : ℝ) / 2

/-- Missing source identification is an explicit coverage obligation. -/
def MissingParameterIdentification
    (boundary : ProposedCompressionBoundary) : Prop :=
  ¬ ParameterIdentified boundary.parameter

/-- The weaker estimate controls the total exponent only at `21 / 16`. -/
theorem totalExponent_le_twentyOneSixteenths
    (boundary : ProposedCompressionBoundary) :
    totalExponent boundary ≤ (21 : ℝ) / 16 := by
  unfold totalExponent
  linarith [boundary.weakerBound]

/-- The stronger target would improve the total exponent to `5 / 4`. -/
theorem totalExponent_le_fiveQuarters_of_strong
    (boundary : ProposedCompressionBoundary)
    (strong : StrongCompressionTarget boundary) :
    totalExponent boundary ≤ (5 : ℝ) / 4 := by
  unfold totalExponent StrongCompressionTarget at *
  linarith

/-- Negative control: `a ≤ 9 / 16` does not imply `a ≤ 1 / 2`. -/
theorem weakerBound_does_not_imply_strongTarget :
    ¬ (∀ a : ℝ,
      a ≤ (9 : ℝ) / 16 →
        a ≤ (1 : ℝ) / 2) := by
  intro purported
  have impossible :=
    purported ((9 : ℝ) / 16) (by norm_num)
  norm_num at impossible

/-- A genuine supplier must discharge source identification and the stronger
bound independently. -/
structure StrongCompressionSupplier
    (boundary : ProposedCompressionBoundary) where
  parameterIdentified : ParameterIdentified boundary.parameter
  target : StrongCompressionTarget boundary
  transformationDescription : String
  assumptions : List String
  provenance : List SourceIdentity

/-- The stronger estimate is available exactly when supplied; it is not
reconstructed from the weaker estimate. -/
theorem strongTarget_of_supplier
    {boundary : ProposedCompressionBoundary}
    (supplier : StrongCompressionSupplier boundary) :
    StrongCompressionTarget boundary :=
  supplier.target

/-- Source identity of the existing placeholder compression certificate.  Its
fields assume the stronger estimate and therefore do not identify `a`. -/
def graphSandwichCompressionSource : SourceIdentity where
  kind := .leanDeclaration
  identifier := "GRWTSK.GraphSandwichDiffusion.CompressionCertificate"
  locator := "conditional rational compression certificate"
  repository := some "grwtsk/math"
  commit := some "bffe3410d8652c736943a6385496169ef4ecd051"
  path := some "GRWTSK/GraphSandwichDiffusion.lean"
  blob := some "798c78b0bafd56439246d91a1d30d748c1d7d568"

/-- Exact source identity of the quadratic threshold map used for comparison. -/
def quadraticThresholdSource : SourceIdentity where
  kind := .leanDeclaration
  identifier := "GRWTSK.RiemannHypothesis.quadraticThreshold"
  locator := "Q(rho) = 2 * rho - 1"
  repository := some "grwtsk/math"
  commit := some "bffe3410d8652c736943a6385496169ef4ecd051"
  path := some
    "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThresholdDescentProgram.lean"
  blob := some "6e0eca3e3863a9147a4ef3facde60556355543ea"

/-- The user-proposed expression has no exact repository declaration identifying
its parameter at this source pin. -/
def unresolvedProposalSource : SourceIdentity where
  kind := .unresolved
  identifier := "proposed expression: 3/4 + a, a <= 9/16"
  locator := "parameter meaning and normalization not established"
  repository := some "grwtsk/math"
  commit := some "bffe3410d8652c736943a6385496169ef4ecd051"
  path := none
  blob := none

/-- Canonical unresolved representation of the proposed parameter.  This is a
coverage record, not a claim that `a` has any listed mathematical meaning. -/
def unresolvedProposedBoundary
    (a : ℝ) (weakerBound : a ≤ (9 : ℝ) / 16) :
    ProposedCompressionBoundary where
  parameter :=
    { value := a
      kind := .unidentified
      domainDescription :=
        "unresolved: no source declaration fixes the domain of a"
      normalizationDescription :=
        "unresolved: no source declaration fixes the normalization of a"
      comparisonDescription :=
        "ordinary real order after a future exact identification"
      exactDeclaration := none
      provenance :=
        [unresolvedProposalSource, graphSandwichCompressionSource] }
  weakerBound := weakerBound

@[simp]
theorem unresolvedProposedBoundary_kind
    (a : ℝ) (weakerBound : a ≤ (9 : ℝ) / 16) :
    (unresolvedProposedBoundary a weakerBound).parameter.kind =
      .unidentified :=
  rfl

/-- The current proposed parameter is deliberately not marked identified. -/
theorem unresolvedProposedBoundary_missingIdentification
    (a : ℝ) (weakerBound : a ≤ (9 : ℝ) / 16) :
    MissingParameterIdentification
      (unresolvedProposedBoundary a weakerBound) := by
  intro identified
  exact identified.1 rfl

/-- Exact correspondence required before `a` may be interpreted as the output
of the quadratic threshold map. -/
structure QuadraticThresholdCorrespondence
    (boundary : ProposedCompressionBoundary) where
  rho : ℝ
  parameter_eq :
    boundary.parameter.value = quadraticThreshold rho
  kind_eq :
    boundary.parameter.kind = .quadraticThresholdOutput
  declaration : String
  declaration_eq :
    boundary.parameter.exactDeclaration = some declaration
  assumptions : List String
  provenance : List SourceIdentity

/-- Negative control: the canonical unresolved boundary cannot be silently
reinterpreted as a quadratic-threshold output.  A new identified parameter
record is required before such a correspondence can be constructed. -/
theorem unresolvedProposedBoundary_no_quadraticCorrespondence
    (a : ℝ) (weakerBound : a ≤ (9 : ℝ) / 16) :
    ¬ QuadraticThresholdCorrespondence
      (unresolvedProposedBoundary a weakerBound) := by
  intro correspondence
  simpa using correspondence.kind_eq

/-- An exact quadratic-threshold correspondence discharges the source
identification requirement. -/
theorem QuadraticThresholdCorrespondence.parameterIdentified
    {boundary : ProposedCompressionBoundary}
    (correspondence : QuadraticThresholdCorrespondence boundary) :
    ParameterIdentified boundary.parameter := by
  constructor
  · rw [correspondence.kind_eq]
    decide
  · exact ⟨correspondence.declaration, correspondence.declaration_eq⟩

/-- The quadratic mechanism supplies `a ≤ 1 / 2` only with both an exact
parameter correspondence and the independent threshold estimate
`rho ≤ 3 / 4`. -/
structure QuadraticThresholdCompressionSupplier
    (boundary : ProposedCompressionBoundary) where
  correspondence : QuadraticThresholdCorrespondence boundary
  rho_le_threeQuarters :
    correspondence.rho ≤ (3 : ℝ) / 4

/-- Conditional relevance theorem for the existing quadratic threshold
program.  No correspondence or analytic contraction is constructed here. -/
theorem strongTarget_of_quadraticThresholdSupplier
    {boundary : ProposedCompressionBoundary}
    (supplier : QuadraticThresholdCompressionSupplier boundary) :
    StrongCompressionTarget boundary := by
  unfold StrongCompressionTarget
  rw [supplier.correspondence.parameter_eq]
  unfold quadraticThreshold
  linarith [supplier.rho_le_threeQuarters]

/-- A quadratic-threshold supplier can be viewed as an ordinary strong
compression supplier while retaining its hypotheses and provenance. -/
def QuadraticThresholdCompressionSupplier.toStrongSupplier
    {boundary : ProposedCompressionBoundary}
    (supplier : QuadraticThresholdCompressionSupplier boundary) :
    StrongCompressionSupplier boundary where
  parameterIdentified := supplier.correspondence.parameterIdentified
  target := strongTarget_of_quadraticThresholdSupplier supplier
  transformationDescription :=
    "exact identification a = quadraticThreshold rho followed by rho <= 3/4"
  assumptions := supplier.correspondence.assumptions ++
    ["rho <= 3/4"]
  provenance := supplier.correspondence.provenance ++
    [quadraticThresholdSource]

/-- Negative control: one quadratic step from `7 / 8` yields `3 / 4`, which
still exceeds the desired `1 / 2` bound. -/
theorem sevenEighths_threshold_not_strong :
    ¬ quadraticThreshold ((7 : ℝ) / 8) ≤ (1 : ℝ) / 2 := by
  norm_num [quadraticThreshold]

/-- The second arithmetic threshold identity reaches the desired boundary
exactly, but it does not prove the analytic contraction that would realize the
step. -/
theorem threeQuarters_threshold_eq_half :
    quadraticThreshold ((3 : ℝ) / 4) = (1 : ℝ) / 2 := by
  exact quadraticThreshold_threeQuarters

end ArithmeticCompressionBoundary
end GRWTSK.RiemannHypothesis

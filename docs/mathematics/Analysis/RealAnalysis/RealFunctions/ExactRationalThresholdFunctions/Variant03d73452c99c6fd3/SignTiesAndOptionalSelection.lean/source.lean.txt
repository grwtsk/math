/-
SignTiesAndOptionalSelection
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.5.010.010 real functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Threshold functions retain all positive/negative/zero branches, complete three-policy datatype and optional owner override. These are exact pure rational-to-Bool functions and conditional equalities, not an ownership authority or evidence of a foreign API. Four-coordinate rotation is copied as a function; no cardinality/inverse law is fabricated. The exact original namespace BitMatrix.Runtime.Semantics is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

import BitMatrix.Codec.BitDocument
import BitMatrix.Core.Basic
import BitMatrix.Geometry.GridCell
import BitMatrix.Geometry.Stroke
import BitMatrix.Rhetorical.Core
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Rat.Floor

/-!
# Runtime-visible Bit semantics

These definitions are the formal side of the runtime correspondence ledger.
They do not claim byte-for-byte equivalence with a Rust or JavaScript program;
that promotion additionally requires the executable conformance tests recorded
by the concept ledger.
-/

namespace BitMatrix.Runtime.Semantics

/-- A threshold tie either selects, rejects, or delegates to sign-sensitive
ownership policy. -/
inductive TiePolicy where
  | select
  | reject
  | ownership
  deriving DecidableEq, Repr

/-- Sign-sensitive ownership policies for exact threshold equality. -/
structure OwnershipTiePolicies where
  positive : Bool
  negative : Bool
  zero : Bool

/-- Exact threshold resolution, including positive, negative, and zero ties. -/
def resolveThreshold (coverage threshold scalar : ℚ) (policy : TiePolicy)
    (ownership : OwnershipTiePolicies) : Bool :=
  if coverage > threshold then true
  else if coverage < threshold then false
  else match policy with
    | .select => true
    | .reject => false
    | .ownership =>
        if scalar > 0 then ownership.positive
        else if scalar < 0 then ownership.negative
        else ownership.zero

@[simp] theorem resolveThreshold_positive_tie (threshold scalar : ℚ)
    (ownership : OwnershipTiePolicies) (positive : 0 < scalar) :
    resolveThreshold threshold threshold scalar .ownership ownership =
      ownership.positive := by
  simp [resolveThreshold, positive]

@[simp] theorem resolveThreshold_negative_tie (threshold scalar : ℚ)
    (ownership : OwnershipTiePolicies) (negative : scalar < 0) :
    resolveThreshold threshold threshold scalar .ownership ownership =
      ownership.negative := by
  simp [resolveThreshold, negative, not_lt.mpr negative.le]

@[simp] theorem resolveThreshold_zero_tie (threshold : ℚ)
    (ownership : OwnershipTiePolicies) :
    resolveThreshold threshold threshold 0 .ownership ownership =
      ownership.zero := by
  simp [resolveThreshold]

/-- Optional carrier ownership overrides an exact ownership-policy threshold
tie; all other cases use sign-sensitive threshold resolution. -/
def resolveRasterBit (coverage threshold scalar : ℚ) (policy : TiePolicy)
    (ownership : OwnershipTiePolicies) (ownerSelection : Option Bool) : Bool :=
  if policy = .ownership ∧ coverage = threshold then
    ownerSelection.getD
      (resolveThreshold coverage threshold scalar policy ownership)
  else resolveThreshold coverage threshold scalar policy ownership

@[simp] theorem resolveRasterBit_owner_tie (threshold scalar : ℚ)
    (ownership : OwnershipTiePolicies) (selected : Bool) :
    resolveRasterBit threshold threshold scalar .ownership ownership
      (some selected) = selected := by
  simp [resolveRasterBit]

@[simp] theorem resolveRasterBit_without_owner (coverage threshold scalar : ℚ)
    (policy : TiePolicy) (ownership : OwnershipTiePolicies) :
    resolveRasterBit coverage threshold scalar policy ownership none =
      resolveThreshold coverage threshold scalar policy ownership := by
  simp [resolveRasterBit]

end BitMatrix.Runtime.Semantics

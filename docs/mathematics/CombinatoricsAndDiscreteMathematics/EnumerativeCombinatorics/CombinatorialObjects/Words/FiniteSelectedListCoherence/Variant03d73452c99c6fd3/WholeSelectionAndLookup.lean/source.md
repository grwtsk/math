# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.FiniteSelectedListCoherence.Variant03d73452c99c6fd3.WholeSelectionAndLookup

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22c7a3a3f756e1b42c6f66651d194b2b9c18b2ae` · SHA-256 `1fab0f439551c7ff487626993489b4a6991f6d06f773a5b0c2778f7eb25061a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
WholeSelectionAndLookup
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac
Organized SHA-256: 18147cff30376cf2b26a729354bbb2914d5a0965b7e297eec3e6c980b337d8b4
PMD: 510.7.010.030.080 words (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Midpoint coverage counts Fin samples×Fin samples, zero sampling denotes0 and the unit-interval result retains samplesPositive. Ownership and occupancy records remain distinct; normalized ownership mass requires selectedOwnerCount≠0. The list-selection record retains all four raw data fields. Its separate Coherent predicate requires mask-length agreement, nonempty selection and weight/owner equalities; the raw record constructor does not establish these properties. zip/findSome semantics are unchanged. The exact original namespace BitMatrix.Runtime.Semantics is retained for structure-extension and theorem lookup; no GRWTSK alias or replacement historical provider is introduced. Physical subject placement and logical module are GRWTSK. Distinct historical providers and duplicate declaration versions cannot be assumed compatible coimports. -/

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

/-- Number of selected bits in a runtime-shaped ownership list. -/
def selectedMaskListCount (mask : List Bool) : Nat :=
  mask.foldl (fun count selected => if selected then count + 1 else count) 0

/-- Normalize a nonempty runtime-shaped ownership list. -/
def normalizedMaskListWeights (mask : List Bool) : List ℚ :=
  let selected := selectedMaskListCount mask
  mask.map (fun bit => if bit then 1 / selected else 0)

/-- Retain exactly those candidate carriers selected by the corresponding
mask coordinate. -/
def selectedCarrierOwners {Carrier : Type}
    (candidates : List Carrier) (mask : List Bool) : List Carrier :=
  (candidates.zip mask).filterMap fun entry =>
    if entry.2 then some entry.1 else none

/-- Composite result of `resolveCarrierOwnership`: candidate order, configured
mask, normalized weights, and the selected owners remain available together. -/
structure CarrierOwnershipResult (Carrier : Type) where
  candidates : List Carrier
  mask : List Bool
  normalizedWeights : List ℚ
  owners : List Carrier
  deriving DecidableEq, Repr

/-- Internal fields of a composite ownership result all arise from the same
candidate-aligned, nonempty mask. -/
def CarrierOwnershipResult.Coherent {Carrier : Type}
    (ownership : CarrierOwnershipResult Carrier) : Prop :=
  ownership.mask.length = ownership.candidates.length ∧
    selectedMaskListCount ownership.mask ≠ 0 ∧
    ownership.normalizedWeights = normalizedMaskListWeights ownership.mask ∧
    ownership.owners =
      selectedCarrierOwners ownership.candidates ownership.mask

instance carrierOwnershipResultCoherentDecidable
    {Carrier : Type} [DecidableEq Carrier]
    (ownership : CarrierOwnershipResult Carrier) :
    Decidable ownership.Coherent := by
  unfold CarrierOwnershipResult.Coherent
  infer_instance

/-- Look up the mask decision associated with one grid-cell identity.  A cell
outside the candidate list has no ownership override. -/
def CarrierOwnershipResult.ownerSelection {count : Nat}
    (ownership : CarrierOwnershipResult (Fin count))
    (cell : Fin count) : Option Bool :=
  (ownership.candidates.zip ownership.mask).findSome?
    (fun entry => if entry.1 = cell then some entry.2 else none)

end BitMatrix.Runtime.Semantics
```

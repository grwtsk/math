# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CheckedFiniteCarrierCoordinates.Varianta330bd9a635a18f2.CertifiedCarrierEnumeration

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cfb92dd47021aeeb2907ec25c66ce9540fd2156` · SHA-256 `1e0de96a37d8b200f8888f6ddfb721a5bf0427075684d9d0c869f8347af502d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
CertifiedCarrierEnumeration — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: a330bd9a635a18f219f3025cd215fd0b7fb59c56e3cb9b1ff352349a371b4a8f
Organized SHA-256: b502477191351b0f048f5127ff10d07e7bca9102aa3e5815c57bcdee8a001337
PMD: 510.3.010.010 euclidean geometry (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole semantic and checked state records retain normalized real-weight distributions, exact-carrier soundness/completeness/injectivity, complete Bool and completeChecked proof. The equivalence/cardinality proof uses all enumeration premises; no complete flag by itself certifies geometry or foreign bytes. -/

import BitMatrix.Codec.Profiles
import BitMatrix.Geometry.CarrierGrid
import BitMatrix.Runtime.Semantics

/-!
# Concrete formal/runtime representation relations

These are typed models of the records exchanged with the runtime.  They prove
that abstraction preserves the stated operations.  They do not, on their own,
verify foreign JavaScript or Rust bytes. `BitMatrix.Runtime.ForeignTrace`
provides the separate checked-byte boundary for the two canonical document
encoders; executable conformance vectors remain bounded evidence for the
larger JavaScript geometry surface.
-/

namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CheckedFiniteCarrierCoordinates.Varianta330bd9a635a18f2

open BitMatrix.Runtime.Semantics
open BitMatrix.Geometry.CarrierGrid
open BitMatrix.Codec
open BitMatrix.Codec.Profiles

namespace BitMatrix.Runtime.Correspondence

/-- Semantic finite state together with complete source-point carrier
provenance. -/
structure CarrierIndexedState (size carrierCount : Nat) where
  sourcePoint : NormalizedPoint
  carrier : Fin carrierCount → GridCell size size
  distribution : FiniteRasterState carrierCount
  carrierSound : ∀ index, ExactCarrier size sourcePoint (carrier index)
  carrierComplete : ∀ cell, ExactCarrier size sourcePoint cell →
    ∃ index, carrier index = cell
  carrierInjective : Function.Injective carrier


/-- A typed runtime record for a carrier-indexed state.  The `complete` field
models the runtime provenance bit only after its proof obligations are met. -/
structure CarrierStateRecord (size carrierCount : Nat) where
  point : NormalizedPoint
  carriers : Fin carrierCount → GridCell size size
  weights : FiniteRasterState carrierCount
  eachCarrierIsExact : ∀ index, ExactCarrier size point (carriers index)
  everyExactCarrierPresent : ∀ cell, ExactCarrier size point cell →
    ∃ index, carriers index = cell
  carriersInjective : Function.Injective carriers
  complete : Bool
  completeChecked : complete = true


/-- Abstract a checked runtime state record to its semantic finite state. -/
def abstractCarrierState {size carrierCount : Nat}
    (record : CarrierStateRecord size carrierCount) :
    CarrierIndexedState size carrierCount where
  sourcePoint := record.point
  carrier := record.carriers
  distribution := record.weights
  carrierSound := record.eachCarrierIsExact
  carrierComplete := record.everyExactCarrierPresent
  carrierInjective := record.carriersInjective


/-- Concrete relation between certified runtime state records and semantic
carrier-indexed finite states. -/
def carrierStateRepresentation (size carrierCount : Nat) :
    RepresentationRelation (CarrierIndexedState size carrierCount)
      (CarrierStateRecord size carrierCount) where
  abstract := abstractCarrierState
  represents record semantic := abstractCarrierState record = semantic
  represents_iff _ _ := Iff.rfl


/-- Abstraction preserves every runtime weight exactly. -/
@[simp]
theorem abstractCarrierState_weight {size carrierCount : Nat}
    (record : CarrierStateRecord size carrierCount)
    (index : Fin carrierCount) :
    (abstractCarrierState record).distribution.weight index =
      record.weights.weight index :=
  rfl


/-- Certified runtime provenance is sound for every retained carrier. -/
theorem carrierStateRecord_support_sound {size carrierCount : Nat}
    (record : CarrierStateRecord size carrierCount) (index : Fin carrierCount) :
    ExactCarrier size (abstractCarrierState record).sourcePoint
      ((abstractCarrierState record).carrier index) :=
  record.eachCarrierIsExact index


/-- Certified runtime provenance is complete: it cannot silently substitute
an adjacent noncarrier for a true carrier. -/
theorem carrierStateRecord_support_complete {size carrierCount : Nat}
    (record : CarrierStateRecord size carrierCount)
    (cell : GridCell size size)
    (supported : ExactCarrier size
      (abstractCarrierState record).sourcePoint cell) :
    ∃ index, (abstractCarrierState record).carrier index = cell :=
  record.everyExactCarrierPresent cell supported


/-- Soundness, completeness, and duplicate-freedom make the carrier array an
actual enumeration of the exact-carrier subtype, rather than merely a covering
list that may repeat one carrier. -/
noncomputable def CarrierIndexedState.carrierEquivExactCarrier
    {size carrierCount : Nat}
    (state : CarrierIndexedState size carrierCount) :
    Fin carrierCount ≃
      { cell : GridCell size size // ExactCarrier size state.sourcePoint cell } where
  toFun index := ⟨state.carrier index, state.carrierSound index⟩
  invFun cell := Classical.choose (state.carrierComplete cell.1 cell.2)
  left_inv index := by
    apply state.carrierInjective
    exact Classical.choose_spec
      (state.carrierComplete
        (state.carrier index) (state.carrierSound index))
  right_inv cell := by
    apply Subtype.ext
    exact Classical.choose_spec (state.carrierComplete cell.1 cell.2)


/-- A certified state has exactly the geometric carrier multiplicity of its
source point.  In particular, duplicate array entries cannot inflate the
runtime carrier count. -/
theorem CarrierIndexedState.carrierCount_eq_carrierMultiplicity
    {size carrierCount : Nat}
    (state : CarrierIndexedState size carrierCount) :
    carrierCount = carrierMultiplicity size state.sourcePoint := by
  calc
    carrierCount = Fintype.card
        { cell : GridCell size size //
          ExactCarrier size state.sourcePoint cell } := by
      simpa using Fintype.card_congr state.carrierEquivExactCarrier
    _ = carrierMultiplicity size state.sourcePoint :=
      card_exactCarrier_eq_carrierMultiplicity state.sourcePoint


/-- The checked runtime record therefore has the same exact count law after
abstraction. -/
theorem carrierStateRecord_count_eq_carrierMultiplicity
    {size carrierCount : Nat}
    (record : CarrierStateRecord size carrierCount) :
    carrierCount = carrierMultiplicity size record.point :=
  (abstractCarrierState record).carrierCount_eq_carrierMultiplicity


end BitMatrix.Runtime.Correspondence

end GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CheckedFiniteCarrierCoordinates.Varianta330bd9a635a18f2
```

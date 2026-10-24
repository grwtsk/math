# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PlaceInteraction.Variantc85d0f5d5faf31cd3374b14553641717859d34b0cc7431658a4d4489e913b721

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `15579fb0a9513a635d1285123faa7f707a36891c` · SHA-256 `c85d0f5d5faf31cd3374b14553641717859d34b0cc7431658a4d4489e913b721`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.CochainReconstruction

/-!
# Higher place interaction

Closedness of the first cochain is automatic.  The second finite difference is
a new sign-bearing invariant.
-/

namespace Mathematics.SemiLocalDefect

universe uPrime

def placeInteraction
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    model.Operator :=
  capacity.defect (insert left (insert right cut)) -
    capacity.defect (insert left cut) -
    capacity.defect (insert right cut) +
    capacity.defect cut

theorem placeInteraction_eq_incrementDifference
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) :
    placeInteraction capacity cut left right =
      capacity.increment (insert right cut) left -
        capacity.increment cut left := by
  simp only [placeInteraction,
    PrimeCutDefectCapacity.increment]
  abel

inductive InteractionSign
  | diminishing
  | additive
  | reinforcing
  | indefinite
deriving DecidableEq, Repr

structure PlaceInteractionCertificate
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (cut : Finset Prime)
    (left right : Prime) where
  sign : InteractionSign
  diminishing :
    sign = .diminishing →
      model.Nonnegative
        (-placeInteraction
          capacity cut left right)
  additive :
    sign = .additive →
      placeInteraction capacity cut left right = 0
  reinforcing :
    sign = .reinforcing →
      model.Nonnegative
        (placeInteraction
          capacity cut left right)

end Mathematics.SemiLocalDefect
```

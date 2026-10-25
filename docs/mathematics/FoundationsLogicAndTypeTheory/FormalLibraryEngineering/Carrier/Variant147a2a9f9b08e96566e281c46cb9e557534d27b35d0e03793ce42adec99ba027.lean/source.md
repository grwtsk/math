# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Carrier.Variant147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba7e38a4b57b1ae59ea67c1f42034402743c1b95` · SHA-256 `147a2a9f9b08e96566e281c46cb9e557534d27b35d0e03793ce42adec99ba027`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Kind

/-!
# Non-collapsing square-carrier coordinates

Availability, checker validity, and theorem status occupy distinct channels.
An unresolved cell is therefore not an encoding of false.
-/

namespace Mathematics.Resolution

inductive EvidenceAvailability
  | missing
  | supplied
  deriving DecidableEq, Repr

inductive EvidenceValidity
  | unchecked
  | accepted
  | rejected
  deriving DecidableEq, Repr

inductive TheoremCoordinate
  | certifiedTrue
  | certifiedFalse
  | unknown
  deriving DecidableEq, Repr

structure ResolutionCarrierCell where
  availability : EvidenceAvailability
  validity : EvidenceValidity
  theoremStatus : TheoremCoordinate
  frequency : Nat
  deriving DecidableEq, Repr

def ResolutionCarrierCell.ofStatus :
    ProofStatus → Nat → ResolutionCarrierCell
  | .proved, frequency =>
      ⟨.supplied, .accepted, .certifiedTrue, frequency⟩
  | .unknownMissing, frequency =>
      ⟨.missing, .unchecked, .unknown, frequency⟩
  | .unknownUnaccepted, frequency =>
      ⟨.supplied, .rejected, .unknown, frequency⟩

theorem unresolved_status_is_not_false
    (status : ProofStatus)
    (unresolved : status ≠ .proved)
    (frequency : Nat) :
    (ResolutionCarrierCell.ofStatus status frequency).theoremStatus =
      TheoremCoordinate.unknown := by
  cases status <;> simp_all [ResolutionCarrierCell.ofStatus]

end Mathematics.Resolution
```

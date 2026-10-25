# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cost.Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `015a4ced4d365f6af138d201be7de7e837f2ed7b` · SHA-256 `831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.Tally

/-!
# Exact reuse cost and contextual tally optimality

The exact cost vector remains authoritative.  A scalar weighting is optional,
and tally optimality is restricted to unit-transparent encodings.
-/

namespace Mathematics.AbelReynolds

structure ExactCostVector where
  fieldAdditions : Nat
  fieldMultiplications : Nat
  inversions : Nat
  polynomialOperations : Nat
  factorizationSteps : Nat
  proofChecks : Nat
  hashes : Nat
  bytesRead : Nat
  bytesWritten : Nat
  bitChanges : Nat
  queueCommits : Nat
  persistenceOperations : Nat
  transportChecks : Nat
  deriving DecidableEq, Repr

def ExactCostVector.zero : ExactCostVector where
  fieldAdditions := 0
  fieldMultiplications := 0
  inversions := 0
  polynomialOperations := 0
  factorizationSteps := 0
  proofChecks := 0
  hashes := 0
  bytesRead := 0
  bytesWritten := 0
  bitChanges := 0
  queueCommits := 0
  persistenceOperations := 0
  transportChecks := 0

def ExactCostVector.add
    (left right : ExactCostVector) : ExactCostVector where
  fieldAdditions := left.fieldAdditions + right.fieldAdditions
  fieldMultiplications :=
    left.fieldMultiplications + right.fieldMultiplications
  inversions := left.inversions + right.inversions
  polynomialOperations :=
    left.polynomialOperations + right.polynomialOperations
  factorizationSteps :=
    left.factorizationSteps + right.factorizationSteps
  proofChecks := left.proofChecks + right.proofChecks
  hashes := left.hashes + right.hashes
  bytesRead := left.bytesRead + right.bytesRead
  bytesWritten := left.bytesWritten + right.bytesWritten
  bitChanges := left.bitChanges + right.bitChanges
  queueCommits := left.queueCommits + right.queueCommits
  persistenceOperations :=
    left.persistenceOperations + right.persistenceOperations
  transportChecks := left.transportChecks + right.transportChecks

structure ReuseCost where
  primeCount : Nat
  reusableBlock : Nat
  bindingPerPrime : Nat
  persistence : Nat
  symmetry : Nat
  equivariance : Nat
  transport : Nat
  proofChecking : Nat
  deriving DecidableEq, Repr

def ReuseCost.fresh (cost : ReuseCost) : Nat :=
  cost.primeCount * cost.reusableBlock

def ReuseCost.reused (cost : ReuseCost) : Nat :=
  cost.reusableBlock +
    cost.primeCount * cost.bindingPerPrime +
    cost.persistence +
    cost.symmetry +
    cost.equivariance +
    cost.transport +
    cost.proofChecking

def PositiveReuse (cost : ReuseCost) : Prop :=
  cost.reused < cost.fresh

structure UnitTransparentEncoding where
  witnessCells : Nat → Nat
  oneWitnessPerUnit :
    ∀ count, count ≤ witnessCells count

def tallyEncoding : UnitTransparentEncoding where
  witnessCells := id
  oneWitnessPerUnit := fun _ => Nat.le_refl _

theorem tally_length_optimal
    (encoding : UnitTransparentEncoding)
    (count : Nat) :
    tallyEncoding.witnessCells count ≤
      encoding.witnessCells count :=
  encoding.oneWitnessPerUnit count

structure BinaryTransparencyAccounting where
  numeralBits : Nat
  provenanceSidecarCells : Nat
  countedUnits : Nat
  unitTransparent :
    countedUnits ≤ numeralBits + provenanceSidecarCells

end Mathematics.AbelReynolds
```

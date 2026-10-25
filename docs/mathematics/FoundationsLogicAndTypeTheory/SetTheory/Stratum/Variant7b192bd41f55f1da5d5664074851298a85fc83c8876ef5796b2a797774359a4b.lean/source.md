# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Stratum.Variant7b192bd41f55f1da5d5664074851298a85fc83c8876ef5796b2a797774359a4b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d33ef127e375d7daf3aaf591e44381530029bccb` · SHA-256 `7b192bd41f55f1da5d5664074851298a85fc83c8876ef5796b2a797774359a4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.FundamentalSequence

/-!
# Ordinal strata

An executable normal form and a registered countable limit are distinct
sources of stratum identity.  Both expose an ordinal target, but equality of
that target does not identify the source record.
-/

namespace Mathematics.StratifiedBoundary.OrdinalTally

inductive OrdinalStratum
    (limits : LimitSemantics)
  | executable
      (code : CanonicalCode limits)
  | countableLimit
      (registered : RegisteredCountableLimit)

namespace OrdinalStratum

def value
    {limits : LimitSemantics} :
    OrdinalStratum limits → Ordinal
  | .executable code => code.value
  | .countableLimit registered =>
      registered.target

def RegisteredIn
    {limits : LimitSemantics}
    (stratum : OrdinalStratum limits)
    (registry :
      CountableLimitRegistry) : Prop :=
  match stratum with
  | .executable _ => True
  | .countableLimit registered =>
      registry.AdmitsTarget registered

def sourceId
    {limits : LimitSemantics} :
    OrdinalStratum limits →
      Option FundamentalSequenceId
  | .executable _ => none
  | .countableLimit registered =>
      some registered.id

end OrdinalStratum

structure StratumBoundaryIndex
    (limits : LimitSemantics) where
  stratum : OrdinalStratum limits

namespace StratumBoundaryIndex

def value
    {limits : LimitSemantics}
    (index : StratumBoundaryIndex limits) :
    Ordinal :=
  Ordinal.omega ^ index.stratum.value

@[simp] theorem value_eq
    {limits : LimitSemantics}
    (index : StratumBoundaryIndex limits) :
    index.value =
      Ordinal.omega ^ index.stratum.value :=
  rfl

end StratumBoundaryIndex

end Mathematics.StratifiedBoundary.OrdinalTally
```

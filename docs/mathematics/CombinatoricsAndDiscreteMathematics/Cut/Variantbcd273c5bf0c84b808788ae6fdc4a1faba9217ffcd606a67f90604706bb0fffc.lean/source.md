# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Cut.Variantbcd273c5bf0c84b808788ae6fdc4a1faba9217ffcd606a67f90604706bb0fffc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17668919c2285d20cf62afd8d93e8be694cebdfc` · SHA-256 `bcd273c5bf0c84b808788ae6fdc4a1faba9217ffcd606a67f90604706bb0fffc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Kind
import Mathlib.Data.Finset.Basic

/-!
# Finite committed invocation cuts

The cut is immutable and contains finite obligation, proof, and exactly-once
event registries.  Its seed witnesses make every obligation frequency positive.
-/

namespace Mathematics.Resolution

universe u v w

structure InvocationCut
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event] where
  snapshotDigest : String
  graphDigest : String
  instanceDigest : String
  authorityDigest : String
  obligations : Finset Obligation
  proofRegistry : Obligation → Finset Proof
  events : Finset Event
  canonicalize : Event → Obligation
  seed : Obligation → Event
  seed_mem :
    ∀ obligation ∈ obligations, seed obligation ∈ events
  seed_target :
    ∀ obligation ∈ obligations,
      canonicalize (seed obligation) = obligation
  overflowPolicy : OverflowPolicy

structure CutValidator
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event] where
  Valid : InvocationCut Obligation Proof Event → Prop
  decidableValid :
    ∀ cut, Decidable (Valid cut)

attribute [instance] CutValidator.decidableValid

structure CommittedCut
    (Obligation : Type u)
    (Proof : Type v)
    (Event : Type w)
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    (validator : CutValidator Obligation Proof Event) where
  cut : InvocationCut Obligation Proof Event
  valid : validator.Valid cut

end Mathematics.Resolution
```

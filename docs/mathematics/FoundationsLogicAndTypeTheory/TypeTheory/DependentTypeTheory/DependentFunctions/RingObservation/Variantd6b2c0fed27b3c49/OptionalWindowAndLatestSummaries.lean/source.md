# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.RingObservation.Variantd6b2c0fed27b3c49.OptionalWindowAndLatestSummaries

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a73224ce1e012d151cf20d6fa18c986050e50e1d` · SHA-256 `7f1787d17c2263694f6cac058575587bec1a1d25097de82fb8c817449e89e48d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
OptionalWindowAndLatestSummaries — exact individually reviewed source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: d6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef
Organized SHA-256: 4f5fb5f5be2c8cf51368336c277b3549c49ff3c95e3c5d402bab57fb9e388175
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Finite newest-first optional window and latest-entry mapped summary/digest are pure function definitions. The count guard, sequence subtraction and modulo-positive proof remain exact; no decoding law, collision resistance, wraparound machine word or platform memory-ordering claim follows from the labels. Original declaration namespaces and historical providers remain exact; only explicit public same-source component imports are added. Whole-file documentation below may describe companion material. No kernel replay or runtime/platform implementation is claimed. -/

import DAF.Runtime.RingState
import DAF.Causal.ObserverFactor
import BitMatrix.Runtime.MatrixRing
import BitMatrix.Runtime.PacketRing

/-!
# Binary-matrix and filesystem ring-buffer adapters

The generic state and indexing laws are owned by `DAF.Runtime.RingState`,
which has no matrix or filesystem dependency.  This module retains the
observable-system constructions and domain adapters, including framed packet
entries.  Platform atomics and memory ordering remain outside the pure model.

The full observer exposes every slot and the sequence, and is injective;
therefore its causal quotient performs no compression.  Reduced observations
must still carry a semiconjugacy proof before they qualify as observer factors.
For example, the latest-entry reducer below is certified.  A digest or selected
matrix projection is merely an observation until such a transition proof is
provided.
-/

namespace BitMatrix.Runtime

open ObservableRecursion
open ObserverFactor
open FilesystemCodec
open DAF.Runtime

universe u

/-- The last `window` positions, newest first; unavailable positions are `none`. -/
def fixedWindowObservation
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (window : Nat) : Fin window → Option Entry :=
  fun offset =>
    if _havailable : offset.val < state.count then
      some (state.slots
        ⟨(state.sequence - 1 - offset.val) % capacity,
          Nat.mod_lt _ hcapacity⟩)
    else
      none

/-- Apply an explicit field decoder or other summary to the latest entry only. -/
def latestDecodedSummary
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (decode : Entry → Summary) : Option Summary :=
  (state.latestEntry hcapacity).map decode

/-- A digest is merely one possible latest-entry summary. -/
def latestDigestObservation
    (state : RingState capacity Entry)
    (hcapacity : 0 < capacity)
    (digest : Entry → Digest) : Option Digest :=
  latestDecodedSummary state hcapacity digest

end BitMatrix.Runtime
```

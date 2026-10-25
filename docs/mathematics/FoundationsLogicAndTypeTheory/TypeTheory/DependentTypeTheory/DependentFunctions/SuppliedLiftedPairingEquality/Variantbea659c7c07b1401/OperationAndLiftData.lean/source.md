# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedLiftedPairingEquality.Variantbea659c7c07b1401.OperationAndLiftData

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3bacc0d0bbb3bd7b8d970970277a8bfffc41ade` · SHA-256 `b6e172d2a3377180c9cc0a979047225337acc2f8814faf7cec6fa3d9e52fbb8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
OperationAndLiftData — individually reviewed exact source
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: bea659c7c07b1401097f72737a6596c096a163d860afcc94b5cae9fd22a62da3
Organized SHA-256: bcdd229bf0bc7c694bd667bb8c65362eb4e47a1e367363b79fbd19809fc63c91
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Whole arbitrary Type u carrier with one/mul/inv/center/lift/commutator and its exact lifted-pairing equation under full K/Field/E/G/m/W. No associativity, identity, inverse, centrality, commutator formula or group-extension construction is supplied by these names. The original universe declaration is retained. -/

import Folder.Arithmetic.WeilPairing

/-!
# Folder.Arithmetic.HeisenbergExtension

Radiation role: elliptic-compatibility
BinaryMatrix spine: This module names arithmetic compatibility structures that may act on shell torsion without identifying it with BinaryMatrix data.
Ontology: arithmetic.heisenberg_extension
Pivot role: none
Zero typology: elliptic
Contract boundary: contract
Composite stack role: torsion
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedLiftedPairingEquality.Variantbea659c7c07b1401

open Folder
open Folder.Arithmetic

universe u

structure HeisenbergExtension
    {K : Type _} [Field K]
    {E : ShortWeierstrass K}
    (G : ECGroupLaw E)
    (m : Nat)
    (W : WeilPairingContract G m) where
  H : Type u
  one : H
  mul : H → H → H
  inv : H → H
  center : Cellular.Phase m → H
  lift : MTorsionPoint G m → H
  commutator : H → H → H
  commutator_lift :
    ∀ P Q,
      commutator (lift P) (lift Q) =
        center (W.pairing P Q)


end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.SuppliedLiftedPairingEquality.Variantbea659c7c07b1401
```

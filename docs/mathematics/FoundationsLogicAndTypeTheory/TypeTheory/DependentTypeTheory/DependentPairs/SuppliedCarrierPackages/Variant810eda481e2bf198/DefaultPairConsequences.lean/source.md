# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentPairs.SuppliedCarrierPackages.Variant810eda481e2bf198.DefaultPairConsequences

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `70a5d432e1c599563712085fd776ebad0eedca7c` · SHA-256 `2ee6c5ff699f487cdcee0148cb2ee50f1564f31d43a5a0b0a95ab51b39f29004`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Exact Nat and real field equalities under the full supplied default-pair premise
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 810eda481e2bf198d17c82171e2668bfc72a88b04e7c08a24233eb44b0faa8fc
Organized SHA-256: f93e204996413c63c6b2212e7ae9f12fd6754b89d4faf1f143498440b4eaeb09
PMD: 510.0.070.020.020 dependent pairs (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/


/- Both actual equality predicates and full S/h theorem only. The original h : S.pivots = defaultDualPivot remains essential; all constructor/dsimp/rw/rfl proof bytes stay exact. Same-version data namespace preserves CompositeStack.method bindings. No arbitrary pair is identified with the default and no spectral/arithmetic bridge is inferred. -/

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentPairs.SuppliedCarrierPackages.Variant810eda481e2bf198.CarrierElements
import Folder.Core.DualPivot
import Folder.Spectral.Tensor
import Folder.Spectral.Residual
import Folder.Cellular.HeatQuantizedTorsion
import Folder.Monodromy.EllipticShellBridge

/-!
# Folder.Core.CompositeStack

Radiation role: core-architecture
BinaryMatrix spine: This module packages the typed composite stack whose finite carrier component may be realized by BinaryMatrix data.
Ontology: core.composite_stack
Pivot role: dual
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/

open Folder
open Folder.Core

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentPairs.SuppliedCarrierPackages.Variant810eda481e2bf198

def CompositeStack.hasArithmeticPivot
    (S : CompositeStack) : Prop :=
  S.pivots.arithmetic.val = 1

def CompositeStack.hasSpectralPivot
    (S : CompositeStack) : Prop :=
  S.pivots.spectral = (1 / 2 : ℝ)

theorem default_stack_pivots
    (S : CompositeStack)
    (h : S.pivots = defaultDualPivot) :
    S.hasArithmeticPivot ∧ S.hasSpectralPivot := by
  constructor
  · dsimp [CompositeStack.hasArithmeticPivot]
    rw [h]
    rfl
  · dsimp [CompositeStack.hasSpectralPivot]
    rw [h]
    rfl

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentPairs.SuppliedCarrierPackages.Variant810eda481e2bf198
```

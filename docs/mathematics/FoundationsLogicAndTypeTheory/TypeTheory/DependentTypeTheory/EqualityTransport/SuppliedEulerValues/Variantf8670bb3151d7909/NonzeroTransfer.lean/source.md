# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.EqualityTransport.SuppliedEulerValues.Variantf8670bb3151d7909.NonzeroTransfer

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f096de63715c0839e7ac9aa456bf0612507ac381` · SHA-256 `855fc86e564b393b237cf679798fd9c5e8c8e024201cc7d37b527f83f11e897b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
# Individually reviewed mathematical candidate: Nonzero transfer through supplied Euler-value equalities

Status: SOURCE_READ_SEAMS_REVIEWED_STATIC_ONLY.
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED.
Shared clarification issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional computation: OpenAI/Codex — composite search, probabilistic symbolic
recombination, and linearized diffusive computation.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are provisional user-specified roles, not independently established
model mechanisms or final per-declaration authorship. Existing source notices
remain exact in the archives and copied source documentation.
Original source SHA256: f8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8
Organized source SHA256: 44a0c0281e32c7d406c454681b22b93f75377447d1b658f4de925b80b48d61b1
Review: attribution-254-review-000130.
PMD: 510.0.070.020 dependent type theory; editorial navigation only.
Conditional equality transport of a supplied integer nonzero value only. The exact source/target complex matches, source Euler match and supplied preservation equality remain prerequisites. No critical-line conclusion, analytic flow action, actual Euler/index construction or new provider is asserted.
Original whole-source documentation may describe the complete unsplit context.
No Lean compilation, kernel acceptance or public umbrella admission is asserted.
-/

import Folder.DerivedSheaf.BaseCaseIndexAnchor
import Folder.DerivedSheaf.RodgersTaoEulerTransport
import Folder.CrystallineIndex.IndexFixedTensorBridge
import Folder.CrystallineIndex.IndexBoundaryAlignmentBridge

/-!
# Folder.DerivedSheaf.BaseCasePropagation

Radiation role: research-boundary
BinaryMatrix spine: This module propagates supplied base-case Euler/index data, not BinaryMatrix data.
Ontology: base.index_propagation
Pivot role: spectral
Zero typology: nonzero-index
Contract boundary: contract-composition
Composite stack role: derived-sheaf
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.EqualityTransport.SuppliedEulerValues.Variantf8670bb3151d7909

open Folder
open Folder.DerivedSheaf

/--
Transported base-case Euler data.

The transport is supplied as a `RodgersTaoDerivedTransport` and is assumed
Euler-preserving. The source Euler value is explicitly matched to the base-case
Euler value.
-/
structure TransportedBaseCaseEuler where
  source : BaseCaseSectionComplex
  targetComplex : SectionComplex
  transport : RodgersTaoDerivedTransport
  source_matches_transport :
    transport.sourceComplex = source.complex
  target_matches_transport :
    transport.targetComplex = targetComplex
  source_euler_matches :
    transport.eulerTransport.sourceEuler.value = source.euler.value

theorem transported_base_case_euler_nonzero
    (T : TransportedBaseCaseEuler) :
    T.transport.eulerTransport.targetEuler.value ≠ 0 := by
  intro hTarget
  have hEq :
      T.transport.eulerTransport.targetEuler.value =
        T.transport.eulerTransport.sourceEuler.value :=
    rodgers_tao_transport_preserves_euler_characteristic T.transport
  apply T.source.euler_nonzero
  rw [← T.source_euler_matches]
  rw [← hEq]
  exact hTarget

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.EqualityTransport.SuppliedEulerValues.Variantf8670bb3151d7909
```

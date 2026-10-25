# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCasePropagation.Variantf8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8917c39ed95f4e9fde33381dbecc0da18c3ed322` · SHA-256 `f8670bb3151d79097c65455a055e7916cd813f31530e2ced8aa59aa18e713ac8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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

namespace Folder
namespace DerivedSheaf

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

/--
Full base-case-to-critical-line propagation as contract composition.

This record does not construct the fixed tensor or boundary alignment; it only
stores the supplied bridge proposition and conclusion.
-/
structure BaseCaseCriticalLinePropagation
    (M : MellKTheory) where
  anchor : BaseCaseIndexAnchor M
  transportedEuler : TransportedBaseCaseEuler
  nonzeroIndexToBoundary : Prop
  criticalLineConclusion : Prop
  criticalLineConclusion_certified : criticalLineConclusion

theorem base_case_propagation_conclusion
    {M : MellKTheory}
    (P : BaseCaseCriticalLinePropagation M) :
    P.criticalLineConclusion :=
  P.criticalLineConclusion_certified

end DerivedSheaf
end Folder
```

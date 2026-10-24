# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.SuperconnectionTransportModel.Variant1f67950a2e0409b079b75d8ddba1c23c7bebe212652619413b9639dc7c7280f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `313fdc9c90e8fd2d7e0e26e8ed81f5c1de446404` · SHA-256 `1f67950a2e0409b079b75d8ddba1c23c7bebe212652619413b9639dc7c7280f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.CanonicalPath.SuperconnectionTransportModel

Radiation role: research-boundary
BinaryMatrix spine: This module records a superconnection transport model, not BinaryMatrix data.
Ontology: canonical.superconnection_transport_model
Pivot role: spectral
Zero typology: families-index
Contract boundary: contract
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

/--
Contract model inspired by superconnection proofs of families index invariance.
-/
structure SuperconnectionFamiliesIndexModel where
  ParameterSpace : Type
  SuperconnectionData : Type
  familyIndexClass : Type
  heatEquationProofLike : Prop
  familyIndexInvariant : Prop
  familyIndexInvariant_certified : familyIndexInvariant
  sourceLabel : String

theorem superconnection_family_index_invariant_if_supplied
    (S : SuperconnectionFamiliesIndexModel) :
    S.familyIndexInvariant :=
  S.familyIndexInvariant_certified

end CanonicalPath
end Folder
```

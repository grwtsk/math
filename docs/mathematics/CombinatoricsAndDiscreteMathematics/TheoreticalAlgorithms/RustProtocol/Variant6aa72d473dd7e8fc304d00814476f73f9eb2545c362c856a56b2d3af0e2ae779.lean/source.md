# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RustProtocol.Variant6aa72d473dd7e8fc304d00814476f73f9eb2545c362c856a56b2d3af0e2ae779

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b611c11d111544ba1b4046557acc5bdd16533ff2` · SHA-256 `6aa72d473dd7e8fc304d00814476f73f9eb2545c362c856a56b2d3af0e2ae779`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.Json

namespace Surface
namespace Incremental

structure RustIncrementalRequestFrame where
  requestId : String
  changedPath : String
  beforeHash? : Option String
  afterHash : String
  generatorVersionHash : String
  toolchainHash : String
  claimBoundary : List String
deriving Repr

structure RustIncrementalResultFrame where
  requestId : String
  affectedModulesHash : String
  orderHash : String
  reportHash : String
  success : Bool
  rustIsNotProofAuthority : True
  claimBoundary : List String
deriving Repr

theorem rustIncrementalResult_is_transport_not_authority
    (R : RustIncrementalResultFrame) :
    R.rustIsNotProofAuthority = True.intro :=
  rfl

end Incremental
end Surface
```

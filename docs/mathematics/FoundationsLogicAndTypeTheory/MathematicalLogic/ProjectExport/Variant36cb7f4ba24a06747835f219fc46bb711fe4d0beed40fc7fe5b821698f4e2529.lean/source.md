# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProjectExport.Variant36cb7f4ba24a06747835f219fc46bb711fe4d0beed40fc7fe5b821698f4e2529

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `688e6c4b8a33c589f9a0ddda63454b4034ea44a6` · SHA-256 `36cb7f4ba24a06747835f219fc46bb711fe4d0beed40fc7fe5b821698f4e2529`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ContractElements.Id

/-! # Sovereign project export metadata. -/

namespace URSM.Contracts

structure ProjectTable (n : Nat) where
  project : Fin n → ProjectKey
  unique : Function.Injective project
  tableDigest : DigestRef

structure ProjectExport where
  key : ProjectKey
  packageName : String
  publicRoot : String
  leanToolchainDigest : DigestRef
  lakeGraphDigest : DigestRef
  sourceDigest : DigestRef
  compiledEnvironmentDigest : DigestRef
  publicApiDigest : DigestRef
  theoremIndexDigest : DigestRef
  kernelCheckDigest : DigestRef
  unresolvedDigest : DigestRef
  payloadRoot : ObjectRef
  exportDigest : DigestRef
  deriving DecidableEq, Repr

structure ProjectCodec (A : Type) where
  codecId : String
  schemaDigest : DigestRef
  encode : A → ByteArray
  decode? : ByteArray → Option A
  leftInverse : ∀ value, decode? (encode value) = some value
  maximumBytes : Nat

end URSM.Contracts
```

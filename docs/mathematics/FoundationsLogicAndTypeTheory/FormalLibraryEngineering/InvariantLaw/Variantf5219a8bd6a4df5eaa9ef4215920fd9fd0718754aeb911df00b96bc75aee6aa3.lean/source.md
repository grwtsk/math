# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InvariantLaw.Variantf5219a8bd6a4df5eaa9ef4215920fd9fd0718754aeb911df00b96bc75aee6aa3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f36afbb1a57e09afb5fbe5331403cd0a3baaf3d` · SHA-256 `f5219a8bd6a4df5eaa9ef4215920fd9fd0718754aeb911df00b96bc75aee6aa3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Registered invariant-law observation surface
-/

namespace Mathematics.GraphAccess

structure InvariantLaw (State Observable : Type u) where
  lawRef : String
  observableValue : Observable → State → Int
  canonicalTrace : Observable → Int

end Mathematics.GraphAccess
```

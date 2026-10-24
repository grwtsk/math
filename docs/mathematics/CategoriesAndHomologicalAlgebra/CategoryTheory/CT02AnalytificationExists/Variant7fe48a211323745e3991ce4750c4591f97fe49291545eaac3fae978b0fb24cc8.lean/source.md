# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CT02AnalytificationExists.Variant7fe48a211323745e3991ce4750c4591f97fe49291545eaac3fae978b0fb24cc8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `05f27bd4b3b9c31cb010aa831a09935a9f53d06a` · SHA-256 `7fe48a211323745e3991ce4750c4591f97fe49291545eaac3fae978b0fb24cc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-02: functorial analytification and natural support.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct02_analytificationExists
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT02Claim S :=
  registry.ct02

end FCRS.Theorems
```

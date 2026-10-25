# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variante60fe245109cadeb4ce228619ccad6c1fe340b6b8245546f92239a33a93c1b3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceb74eded4856b6303126612af632dbedcdac23c` · SHA-256 `e60fe245109cadeb4ce228619ccad6c1fe340b6b8245546f92239a33a93c1b3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Meta.AST
import Surface.Meta.Slug

/-!
# Surface metaprogramming adapters

What is formalized:
Small metadata helpers used by Surface generation. Runner-facing export helpers
that depend on the root `Surface` namespace are intentionally kept outside this
aggregator to avoid an import cycle.

What is certificate-gated:
Any use of generated metadata as evidence for theorem status.

What is not claimed:
Metaprogramming adapters do not replace Lean kernel checking or claim-boundary
audits.

Primary mathematical source:
Internal Surface generation utilities.
-/
```

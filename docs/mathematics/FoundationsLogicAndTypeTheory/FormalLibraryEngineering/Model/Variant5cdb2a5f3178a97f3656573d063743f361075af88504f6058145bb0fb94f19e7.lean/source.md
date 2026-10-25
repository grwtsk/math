# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Model.Variant5cdb2a5f3178a97f3656573d063743f361075af88504f6058145bb0fb94f19e7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04d4e0a80ebed68170331b8a3faa18ff894b014c` · SHA-256 `5cdb2a5f3178a97f3656573d063743f361075af88504f6058145bb0fb94f19e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Kernel.Channel

/-!
# Arbitrary-project kernel models

A project snapshot may expose any index type.  It supplies a finite number of
feature channels, each of finite dimension.  The kernel construction itself
contains no references to source paths or to the project that defines it.
-/

noncomputable section

namespace Mathematics.Kernel

universe u

/-- Complete semantic-kernel input for one finite project snapshot. -/
structure ProjectKernelModel (Index : Type u) where
  channelCount : Nat
  channel : Fin channelCount → FeatureChannelModel Index

/-- Semantic kernel of one project snapshot. -/
def ProjectKernelModel.semanticKernel
    {Index : Type u} (model : ProjectKernelModel Index) : PositiveKernel Index :=
  featureChannelKernel fun index => (model.channel index).toKernelChannel

end Mathematics.Kernel
```

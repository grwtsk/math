# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Model.Variantbb9ad53ccdec1f82b925cef93fadad9fe2331a5f48d2c45a540b2db6391cdf52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fd0db942a62995f9041ce72a42ee5c83a86a8ae` · SHA-256 `bb9ad53ccdec1f82b925cef93fadad9fe2331a5f48d2c45a540b2db6391cdf52`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Kernel.Channel

/-!
# Arbitrary-project kernel models

A project snapshot may expose any index type.  It supplies a finite number of
feature channels, each of finite dimension.  The kernel construction itself
contains no references to source paths or to the project that defines it.
-/

noncomputable section

namespace MathDiscovery.Kernel

universe u

/-- Complete semantic-kernel input for one finite project snapshot. -/
structure ProjectKernelModel (Index : Type u) where
  channelCount : Nat
  channel : Fin channelCount → FeatureChannelModel Index

/-- Semantic kernel of one project snapshot. -/
def ProjectKernelModel.semanticKernel
    {Index : Type u} (model : ProjectKernelModel Index) : PositiveKernel Index :=
  featureChannelKernel fun index => (model.channel index).toKernelChannel

end MathDiscovery.Kernel
```

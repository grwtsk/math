# Complete source: GRWTSK.Algebra.GroupTheory.HeatSemigroup.Variantf3d5a92fd7bc575684512e1f2c4a96f9b22d92d070e626ee0d8f62b48a0e7218

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4d91ae12f5868e12d43596c5b0d7fad85560619` · SHA-256 `f3d5a92fd7bc575684512e1f2c4a96f9b22d92d070e626ee0d8f62b48a0e7218`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Transform.HeatSemigroup

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: transform.heat_semigroup
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Transform

structure HeatSemigroup (α : Type _) where
  heat : NNReal → α → α
  heat_zero : ∀ x, heat 0 x = x
  heat_add : ∀ t u x, heat (t + u) x = heat t (heat u x)

end Transform
end Folder
```

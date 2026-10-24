# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Gram.Variantd45740332bfe90da8b4d58542af51010d46ce197933e7d549eede14241eae180

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f46b358115ef21609e63aa7a8c6f4997c9d503e` · SHA-256 `d45740332bfe90da8b4d58542af51010d46ce197933e7d549eede14241eae180`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Trajectory.Carrier
import Mathlib.Analysis.InnerProductSpace.LinearMap

/-! # Trajectory comparison by Gram data -/

noncomputable section

namespace Mathematics.Trajectory

variable {𝕜 E F Index : Type*}
variable [RCLike 𝕜]
variable [NormedAddCommGroup E] [InnerProductSpace 𝕜 E]
variable [NormedAddCommGroup F] [InnerProductSpace 𝕜 F]

def gram (trajectory : Index → E) (left right : Index) : 𝕜 :=
  inner 𝕜 (trajectory left) (trajectory right)

theorem gram_equality_of_unitary_transport
    (transport : E ≃ₗᵢ[𝕜] F)
    (trajectory : Index → E)
    (left right : Index) :
    gram (𝕜 := 𝕜) (E := F) (fun index ↦ transport (trajectory index)) left right =
      gram (𝕜 := 𝕜) (E := E) trajectory left right := by
  exact transport.inner_map_map (trajectory left) (trajectory right)

end Mathematics.Trajectory
```

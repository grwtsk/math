# Complete source: GRWTSK.Algebra.QuarticCubicResidueDescent

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab347368b99b1e56b81e3ad5bdae7ed3e7f1fcb1` · SHA-256 `4fe32fdcad46249a6a432850531d08c788f3184f7394744e9bdf12db3f817803`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticCubicResidueSeparable
import Mathlib.FieldTheory.Separable

/-!
# Residue cubic separability via a splitting extension

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The reduced cubic need not split in its residue field F. It suffices
that it splits after base change to a field extension E/F: discriminant
nonvanishing survives the injection F → E, and separability descends
from E to F via Polynomial.separable_map. Existence of such an E is
a separate standard splitting-field construction.
-/

namespace GRWTSK.Algebra.QuarticCubicResidueDescent

open Polynomial
open GRWTSK.Algebra.QuarticCubicDiscriminant
open GRWTSK.Algebra.QuarticCubicDiscriminantReduction
open GRWTSK.Algebra.QuarticCubicResidueSeparable

noncomputable section

variable {R F E : Type*}
variable [CommRing R] [Field F] [Field E] [Algebra F E]

/-- The reduced adjacency cubic is separable over F if it becomes
split over E and its discriminant is nonzero in F. No splitting
assumption on F, and no restriction on residue characteristic. -/
theorem reduced_adjacencyCubic_separable_of_extension_splits
    (f : R →+* F) (s₁ s₂ s₃ s₄ : R)
    (hs : ((adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly.map
      (algebraMap F E)).Splits)
    (hd : f (adjacencyCubic s₁ s₂ s₃ s₄).discr ≠ 0) :
    (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).toPoly.Separable := by
  let P : Cubic F := adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)
  have hdF : P.discr ≠ 0 := by
    change (adjacencyCubic (f s₁) (f s₂) (f s₃) (f s₄)).discr ≠ 0
    rw [adjacencyCubic_discr_map]
    exact hd
  have hdE : (algebraMap F E) P.discr ≠ 0 :=
    (map_ne_zero hdF)
  have ha : P.a ≠ 0 := by
    simp [P, adjacencyCubic]
  have hn : (Cubic.map (algebraMap F E) P).roots.Nodup :=
    (Cubic.discr_ne_zero_iff_roots_nodup ha hs).mp hdF
  have hsepE : (P.toPoly.map (algebraMap F E)).Separable := by
    apply (Polynomial.nodup_roots_iff_of_splits ?_ hs).mp
    · simpa [Cubic.map] using hn
    · intro h
      have hc := congrArg (fun q : E[X] => q.coeff 3) h
      simp [Cubic.toPoly, P, adjacencyCubic] at hc
  exact (Polynomial.separable_map (algebraMap F E)).mp hsepE

end
end GRWTSK.Algebra.QuarticCubicResidueDescent
```

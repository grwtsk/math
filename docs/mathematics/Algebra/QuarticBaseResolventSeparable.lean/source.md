# Complete source: GRWTSK.Algebra.QuarticBaseResolventSeparable

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74c8404ad1031e142a2e467953c646c399d9b8fd` · SHA-256 `875e6fa34681d4406e60b56d144e156edfa4370d17b9154d81524ecff4b9662f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Algebra.QuarticBaseResolventRoots
import Mathlib.FieldTheory.Separable

/-!
# Separability of the quartic cubic resolvent over the base field

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

The previous source proves that the explicit cubic over K becomes separable
over a field extension L when a monic separable quartic splits in L. The
pinned Mathlib theorem Polynomial.separable_map reflects separability
back to K. No Galois-image, irreducibility, or characteristic restriction.
-/

namespace GRWTSK.Algebra.QuarticBaseResolventSeparable

open Polynomial
open GRWTSK.Algebra.QuarticBaseResolvent
open GRWTSK.Algebra.QuarticBaseResolventRoots
open GRWTSK.Algebra.PolygonalQuarticSplitting

noncomputable section

variable {K L : Type*} [Field K] [Field L] [Algebra K L]

/-- The cubic resolvent is separable over K whenever a separable monic
quartic with the displayed coefficients splits over L. -/
theorem baseAdjacencyResolvent_separable
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 +
      C B * X ^ 2 + C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (hsep : p.Separable)
    (e : QuarticRootEnumeration (L := L) p) :
    (baseAdjacencyResolvent A B C₀ D).Separable := by
  apply (Polynomial.separable_map (algebraMap K L)).mp
  exact actual_quartic_resolvent_distinct_roots p A B C₀ D hp hs hm hsep e

/-- Splitting plus exact degree four supplies the enumeration, so it
need not be passed as an independent hypothesis. -/
theorem baseAdjacencyResolvent_separable_of_quartic
    (p : K[X]) (A B C₀ D : K)
    (hp : p = X ^ 4 + C A * X ^ 3 +
      C B * X ^ 2 + C C₀ * X + C D)
    (hs : (p.map (algebraMap K L)).Splits)
    (hm : (p.map (algebraMap K L)).Monic)
    (hdegree : p.natDegree = 4)
    (hsep : p.Separable) :
    (baseAdjacencyResolvent A B C₀ D).Separable := by
  obtain ⟨e⟩ := enumeration_of_splitting_degree_four (L := L) p hs hdegree
  exact baseAdjacencyResolvent_separable p A B C₀ D hp hs hm hsep e

end
end GRWTSK.Algebra.QuarticBaseResolventSeparable
```

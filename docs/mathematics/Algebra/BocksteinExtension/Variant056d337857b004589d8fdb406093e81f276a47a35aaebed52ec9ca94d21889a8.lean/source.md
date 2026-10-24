# Complete source: GRWTSK.Algebra.BocksteinExtension.Variant056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `595a0a24454dbb57fb0b8fee1589133863cb303c` · SHA-256 `056d337857b004589d8fdb406093e81f276a47a35aaebed52ec9ca94d21889a8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.Rounding
import Mathlib.Algebra.Exact.Basic

/-!
# Unsplit Bockstein phase extension

The continuous torus and finite phase torsion form a short exact extension.
No direct-product coordinates and no section are included here.
-/

namespace Mathematics.Homology

universe u v w

/-- An exact additive extension `0 → Torus → Phase → Torsion → 0`. -/
structure BocksteinExtension
    (Torus : Type u) (Phase : Type v) (Torsion : Type w)
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion] where
  inclusion : Torus →+ Phase
  bockstein : Phase →+ Torsion
  inclusion_injective : Function.Injective inclusion
  bockstein_surjective : Function.Surjective bockstein
  exact : Function.Exact inclusion bockstein
  coefficientSequenceDigest : Digest
  certificate : ObjectAddress

namespace BocksteinExtension

variable
    {Torus : Type u} {Phase : Type v} {Torsion : Type w}
    [AddCommGroup Torus]
    [AddCommGroup Phase]
    [AddCommGroup Torsion]
    (extension : BocksteinExtension Torus Phase Torsion)

/-- The continuous torus lies in the kernel of the Bockstein map. -/
theorem bockstein_include_zero (continuous : Torus) :
    extension.bockstein (extension.inclusion continuous) = 0 :=
  extension.exact.apply_apply_eq_zero continuous

/-- Equal finite phases differ by a continuous torus element. -/
theorem difference_lifts_from_torus
    {left right : Phase}
    (samePhase :
      extension.bockstein left = extension.bockstein right) :
    ∃ continuous,
      extension.inclusion continuous = left - right := by
  have zero :
      extension.bockstein (left - right) = 0 := by
    rw [map_sub, samePhase, sub_self]
  exact (extension.exact (left - right)).mp zero

end BocksteinExtension

end Mathematics.Homology
```

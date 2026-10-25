# Complete source: GRWTSK.Logic.InformationLoss.AugmentedRepairCriterion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa60e69e2a170c8b588227aab97d359adf04586e` · SHA-256 `2ea39e9327d2e5fea5ac332124d1249d8590e7fa23218d820b4c2c68b3314a7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
No public root import or analytic reconstruction claim.
-/
import GRWTSK.Logic.InformationLoss.FactorizationUniqueReconstruction

/-!
# Exact criterion for whether an added observation repairs lost information

An old profile may not determine a readout. An added measurement repairs
that information loss exactly when the readout is constant on the fibers
of the paired profile. This criterion does not claim that the pair is
injective, that an old collision vanishes, or that an effective decoder exists.
-/

set_option autoImplicit false

universe u v w t

namespace GRWTSK.Logic.InformationLoss

/-- A measurement added to an old profile admits a unique decoder on
the *observed image* exactly when it separates every pair whose readouts
differ, including pairs already distinguished by the old profile. -/
theorem existsUnique_augmented_decoder_iff
    {X : Type u} {Y : Type v} {Z : Type w} {W : Type t}
    (profile : X → Y) (extra : X → W) (readout : X → Z) :
    (∃! decode : Set.range (augmentedProfile profile extra) → Z,
      readout = decode ∘ observedProfile (augmentedProfile profile extra)) ↔
      ∀ x y : X,
        profile x = profile y →
        extra x = extra y →
        readout x = readout y := by
  rw [existsUnique_decoder_observedProfile_iff]
  constructor
  · intro h x y hp he
    apply h x y
    exact Prod.ext hp he
  · intro h x y hp
    exact h x y (congrArg Prod.fst hp) (congrArg Prod.snd hp)

/-- If the extra measurement itself factors through the old profile,
it cannot fix a failure of old-profile fiber constancy. -/
theorem augmented_redundant_fiber_iff
    {X : Type u} {Y : Type v} {Z : Type w} {W : Type t}
    (profile : X → Y) (extra : X → W) (readout : X → Z)
    (hextra : FactorsThrough profile extra) :
    (∀ x y : X,
      augmentedProfile profile extra x = augmentedProfile profile extra y →
      readout x = readout y) ↔
    (∀ x y : X, profile x = profile y → readout x = readout y) := by
  constructor
  · intro h x y hp
    apply h x y
    exact Prod.ext hp (eq_of_factorsThrough profile extra hextra hp)
  · intro h x y hp
    exact h x y (congrArg Prod.fst hp)

end GRWTSK.Logic.InformationLoss
```

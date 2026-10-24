# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeMomentUniqueDecoder

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db38127cc402436f6e2e07bf3af012de4c3a5513` · SHA-256 `1b214ae0b5ce4cfb733515100fc150347b485a3f768aac0b11c5aac5ff0fd4da`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Not root imported.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss
import GRWTSK.Logic.InformationLoss.FactorizationUniqueReconstruction

/-!
# Unique decoding of the actual augmented canonical-tent coefficient profile

The already-authored injectivity statement for the two Bombieri rows plus
the third arithmetic coordinate implies a UNIQUE set-theoretic decoder on
the observed image for every readout of Combination 2.

This connects a source-specific arithmetic measurement to the exact
information-loss reconstruction theorem. It does not strengthen the
previous injection or establish classical Guinand--Weil transport,
admissibility, boundedness, positivity, density or RH.
-/

set_option autoImplicit false
noncomputable section

universe u

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeMomentUniqueDecoder

open GRWTSK.Logic.InformationLoss
open GRWTSK.RiemannHypothesis
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThirdCoordinateInformationLoss
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentInformationLoss

/-- Every coefficient readout has exactly one decoder on the ACTUAL IMAGE
of the two Bombieri moments augmented by the stage-four coefficient.
The decoder is not asserted to be effective, linear or continuous. -/
theorem existsUnique_source_readout_decoder
    {α : Type u} (readout : Combination 2 → α) :
    ∃! decode :
      Set.range (augmentedProfile bombieriMomentProfile thirdCoordinateReadout) → α,
      readout =
        decode ∘ observedProfile
          (augmentedProfile bombieriMomentProfile thirdCoordinateReadout) := by
  apply (existsUnique_decoder_observedProfile_iff
    (augmentedProfile bombieriMomentProfile thirdCoordinateReadout)
    readout).2
  intro x y hxy
  exact congrArg readout (augmentedThreeMomentProfile_injective hxy)

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeMomentUniqueDecoder
```

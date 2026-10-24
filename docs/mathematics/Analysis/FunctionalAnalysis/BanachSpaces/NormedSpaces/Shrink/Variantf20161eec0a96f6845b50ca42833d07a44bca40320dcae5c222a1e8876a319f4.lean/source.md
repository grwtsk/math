# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Shrink.Variantf20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a67750960b7209575a970f67e5cc7d1e073b7287` · SHA-256 `f20161eec0a96f6845b50ca42833d07a44bca40320dcae5c222a1e8876a319f4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module

public import Mathlib.Analysis.Normed.Module.TransferInstance
public import Mathlib.Algebra.Group.Shrink

/-!
# Transfer normed algebraic structures from `α` to `Shrink α`
-/

public section

noncomputable section

namespace Shrink

universe v
variable {𝕜 α : Type*} [Small.{v} α] [NormedField 𝕜]

instance [SeminormedAddCommGroup α] : SeminormedAddCommGroup (Shrink.{v} α) :=
  (equivShrink α).symm.seminormedAddCommGroup

instance [NormedAddCommGroup α] : NormedAddCommGroup (Shrink.{v} α) :=
  (equivShrink α).symm.normedAddCommGroup

instance [SeminormedAddCommGroup α] [NormedSpace 𝕜 α] : NormedSpace 𝕜 (Shrink.{v} α) :=
  (Shrink.addEquiv (α := α)).normedSpace 𝕜

end Shrink
```

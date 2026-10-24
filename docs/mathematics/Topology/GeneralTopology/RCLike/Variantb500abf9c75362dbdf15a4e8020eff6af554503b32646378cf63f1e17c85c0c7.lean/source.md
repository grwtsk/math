# Complete source: GRWTSK.Topology.GeneralTopology.RCLike.Variantb500abf9c75362dbdf15a4e8020eff6af554503b32646378cf63f1e17c85c0c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84eb9a42a5c84f49da3ca5b6c73c9fc4885a827c` · SHA-256 `b500abf9c75362dbdf15a4e8020eff6af554503b32646378cf63f1e17c85c0c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Xavier Généreux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Généreux, Patrick Massot
-/
module

public import Mathlib.Analysis.RCLike.Basic
public import Mathlib.Data.EReal.Inv

/-!
# A collection of specific limit computations for `RCLike`

-/

public section

open Filter
open scoped Topology

namespace RCLike

variable (𝕜 : Type*) [RCLike 𝕜]

theorem tendsto_ofReal_cobounded_cobounded :
    Tendsto ofReal (Bornology.cobounded ℝ) (Bornology.cobounded 𝕜) :=
  tendsto_norm_atTop_iff_cobounded.mp (mod_cast tendsto_norm_cobounded_atTop)

theorem tendsto_ofReal_atTop_cobounded :
    Tendsto ofReal atTop (Bornology.cobounded 𝕜) :=
  tendsto_norm_atTop_iff_cobounded.mp (mod_cast tendsto_abs_atTop_atTop)

theorem tendsto_ofReal_atBot_cobounded :
    Tendsto ofReal atBot (Bornology.cobounded 𝕜) :=
  tendsto_norm_atTop_iff_cobounded.mp (mod_cast tendsto_abs_atBot_atTop)

end RCLike
```

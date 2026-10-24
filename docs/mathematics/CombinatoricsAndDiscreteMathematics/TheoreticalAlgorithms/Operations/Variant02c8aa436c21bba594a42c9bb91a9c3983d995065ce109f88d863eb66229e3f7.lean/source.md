# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Operations.Variant02c8aa436c21bba594a42c9bb91a9c3983d995065ce109f88d863eb66229e3f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc84dbfa07e3a8b2acb65fba9a4503a8b6e8a4a6` · SHA-256 `02c8aa436c21bba594a42c9bb91a9c3983d995065ce109f88d863eb66229e3f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Data.EReal.Operations

open ENNReal

namespace EReal

proof_wanted recENNReal_neg_coe_ennreal {motive : EReal → Sort*} (coe : ∀ x : ℝ≥0∞, motive x)
    (neg_coe : ∀ x : ℝ≥0∞, 0 < x → motive (-x)) {x : ℝ≥0∞} (hx : 0 < x) :
    recENNReal coe neg_coe (-x) = neg_coe x hx

end EReal
```

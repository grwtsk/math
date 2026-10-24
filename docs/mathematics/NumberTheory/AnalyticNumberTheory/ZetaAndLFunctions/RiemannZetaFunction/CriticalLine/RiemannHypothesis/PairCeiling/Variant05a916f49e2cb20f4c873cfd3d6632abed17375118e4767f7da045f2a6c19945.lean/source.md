# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PairCeiling.Variant05a916f49e2cb20f4c873cfd3d6632abed17375118e4767f7da045f2a6c19945

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88a2fe976ba0747f2c5a7d4563f7e838f5f3fadf` · SHA-256 `05a916f49e2cb20f4c873cfd3d6632abed17375118e4767f7da045f2a6c19945`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
import Zeta23.PairCeiling.CeilingLaw256
import Zeta23.PairCeiling.Signed

-- the bandwidth-one ceiling (no trusted statement file: every theorem below except the two kernel checks carries the
-- displayed hypothesis EnclOK; LawN256_check is by decide and depends on propext only, LawN256_edge on no axioms)
#print axioms Zeta23.PairCeiling.ceiling_stability
#print axioms Zeta23.PairCeiling.ceiling_nearCUE
#print axioms Zeta23.PairCeiling.lawN256_rows
#print axioms Zeta23.PairCeiling.ceiling_law256
#print axioms Zeta23.PairCeiling.ceiling_law256_decimal
#print axioms Zeta23.PairCeiling.ceiling_signed
#print axioms Zeta23.PairCeiling.ceiling_nearCUE_signed
#print axioms Zeta23.PairCeiling.ceiling_law256_signed
#print axioms Zeta23.PairCeiling.D1_nonneg_of_edgeNonneg
#print axioms Zeta23.PairCeiling.LawN256_check
#print axioms Zeta23.PairCeiling.LawN256_edge
```

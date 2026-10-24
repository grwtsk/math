# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrintAxioms.Variant8e70c31e8eb0b51452c5ae0c76178e84a6618d4094b8936f027b172f8eba3bf1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c379361166b431bc47332df88479706857e5d81` · SHA-256 `8e70c31e8eb0b51452c5ae0c76178e84a6618d4094b8936f027b172f8eba3bf1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
scripts/PrintAxioms.lean — quick axiom audit of the seventeen headline theorems WITHOUT the comparator
tool:   lake build Solution && lake env lean scripts/PrintAxioms.lean
Every line must print exactly:  'X' depends on axioms: [propext, Classical.choice, Quot.sound]
(no sorryAx, no other axiom).  The comparator run (README.md, "Verifying the statements") is the stronger check: it also
verifies that these statements coincide with the trusted ones in Challenge.lean.
-/
import Solution

#print axioms two_thirds_on_critical_line
#print axioms two_thirds_on_critical_line_cumulative
#print axioms two_thirds_simple_on_critical_line
#print axioms two_thirds_simple_on_critical_line_cumulative
#print axioms five_sixths_distinct
#print axioms five_sixths_distinct_cumulative
#print axioms montgomery_taylor_on_critical_line
#print axioms montgomery_taylor_simple_on_critical_line_mult
#print axioms montgomery_taylor_simple_on_critical_line_mult_cumulative
#print axioms montgomery_taylor_distinct_mult
#print axioms montgomery_taylor_distinct_mult_cumulative
#print axioms dirichlet_two_thirds_on_critical_line
#print axioms dirichlet_two_thirds_simple_on_critical_line
#print axioms dirichlet_five_sixths_distinct
#print axioms dirichlet_montgomery_taylor_on_critical_line
#print axioms dirichlet_montgomery_taylor_simple_on_critical_line_mult
#print axioms dirichlet_montgomery_taylor_distinct_mult
```

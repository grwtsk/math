# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Final.Variant879226ec5632ac4f4430512b8535f801ad443423cf68450c0fbabec293831a90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d1be90b44d73d76792d9d2c4197b92f759b873bf` · SHA-256 `879226ec5632ac4f4430512b8535f801ad443423cf68450c0fbabec293831a90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
/-
  Part of the Zeta23 formalization of the paper
  "More than two thirds of the zeros of the Riemann zeta function lie on the critical line".
-/
import Zeta23.PrimeSideB.Traces
import Zeta23.PrimeSideA.Bridge

/-!
# [thm:traces], final form: `P.Valid → PaperInputs Z → ThmTracesHyp P Z`
Three lines combining `Traces.lean` (the instantiated assembly, taking the
taper facts as `LocalHypsEventually`) with `Bridge.lean` (which proves them).  Kept in its own file
so that `Traces.lean` does not depend on the Taper/Poisson tree.
-/

noncomputable section

namespace Zeta23
namespace PrimeSide

/-- **Theorem [thm:traces]** (the paper §5 "Summary") for the concrete prime-side matrix
([eq:Gdef] 2nd expression) — i.e. the hypothesis `ThmTracesHyp P Z` derived from `P.Valid`
and the published inputs `PaperInputs Z` alone. -/
theorem thm_traces {P : Params} {Z : ZeroConfig} (hP : P.Valid) (inp : PaperInputs Z) : ThmTracesHyp P Z :=
  thm_traces_of_localHyps hP inp (localHypsEventually hP)


end PrimeSide
end Zeta23

end
```

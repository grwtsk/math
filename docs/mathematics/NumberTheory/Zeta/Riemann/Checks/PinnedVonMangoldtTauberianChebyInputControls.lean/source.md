# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedVonMangoldtTauberianChebyInputControls

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c597c57dedecd31cab44dfc648226d6b8083b744` · SHA-256 `f5a534c1089edf157c58ce1ae759f20651ebd15b636f8de382a0f9b7813f948c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtTauberianChebyInput
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.PinnedVonMangoldtTauberianChebyInputControls

open GRWTSK.RiemannHypothesis

/-- Test the exact zero stage, including the historical
range-zero convention. This does NOT require division by zero. -/
theorem pinned_cumsum_zero :
    pinnedVonMangoldtRangeSum 0 = 0 := by
  simp [pinnedVonMangoldtRangeSum]

/-- The range-one sum contains Lambda(0), matching psi(0). -/
theorem pinned_cumsum_one :
    pinnedVonMangoldtRangeSum 1 = Chebyshev.psi (0 : ℝ) := by
  simpa using pinnedVonMangoldtRangeSum_succ_eq_psi 0

/-- Replay the exact source at an arbitrary finite integer endpoint. -/
theorem pinned_cumsum_succ_eq_inclusivePsi (N : ℕ) :
    pinnedVonMangoldtRangeSum (N + 1) =
      Chebyshev.psi (N : ℝ) :=
  pinnedVonMangoldtRangeSum_succ_eq_psi N

/-- Replay the actual historic norm-growth hypothesis. -/
theorem pinned_wienerIkehara_cheby_input :
    PinnedVonMangoldtCheby :=
  pinnedVonMangoldtCheby

/-- Replays an EXPLICIT finite coefficient for every stage without
using Brun-Titchmarsh, PNT, or a zeta half-plane theorem. -/
theorem pinned_wienerIkehara_cheby_with_explicit_constant :
    PinnedVonMangoldtChebyWith (Real.log 4 + 4) :=
  pinnedVonMangoldtRangeNorm_le_chebyshev

/-- The witness constant is nonnegative and fixed once, not chosen
individually for each N. -/
theorem pinned_wienerIkehara_cheby_nonnegative :
    ∃ C : ℝ, 0 ≤ C ∧ PinnedVonMangoldtChebyWith C :=
  pinnedVonMangoldtCheby_nonnegativeWitness

/-- Precisely separates one proved unconditional arithmetic input
from the as-yet unported Tauberian and weak-PNT proof terms. -/
def remainingTauberianProofSuppliers : List String :=
  ["historical WienerIkeharaTheorem' proof must be ported or independently proved at the local pin",
   "separately source-check the pinned LSeries absolute summability with the same normalization",
   "separately source-check the pole subtraction and continuous auxiliary on re(s)>=1",
   "replay exact local proof terms and transitive axioms under trust issue #100",
   "do not assert WeakPNT, theta PNT, not-capacity, or RH from this cheby upper bound"]

/-- Hostile promotion ledger, not a theorem substitute. -/
def prohibitedPromotions : List String :=
  ["norm-cumsum O(N) -> norm-cumsum asymptotic N without a Tauberian theorem",
   "Chebyshev.psi_le_const_mul_self -> theta(x)~x",
   "an imported historic theorem label -> accepted local Wiener-Ikehara proof",
   "source-only Chebyshev bound -> source proof of the external PNT theorem",
   "zero-stage range convention -> division by N valid at N=0",
   "a source-level conditional not-capacity -> an unconditional RH theorem",
   "historical later sorry declarations -> definitely included in WeakPNT closure",
   "absence of prior sorry text -> certified proof closure with no axioms",
   "source-draft Lean file -> accepted kernel proof without Lean/Lake replay"]

end GRWTSK.RiemannHypothesis.Checks.PinnedVonMangoldtTauberianChebyInputControls
```

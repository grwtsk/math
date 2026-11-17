# Scale-dependent certificates for the Riemann95 checker

Local attribution: grwtsk contributors.

The [Lean source](Riemann95ScaledGapCertificates.lean) uses the original blank-tape candidate and `Riemann120.ShuniaCounterexample`. An ordinal window `w` and slot `j : Fin 95` test the literal arithmetic argument `95*w + j + 2`. The [original checker adapter](Riemann95StageCertificatesCryptids.lean) establishes this predicate identity and the preceding fixed-gap theorem. Prime labels continue to be addressed by ordinal. The arithmetic argument in this theorem is the original integer test.

## Exact source

The isolated environment uses Lean `v4.35.0-rc4`, Mathlib `1f414401f69059aa7eead47b53ee40bd38455eeb` and Google DeepMind Cryptids `3647718b5df22e1a61462dec0376bd204526285a`. Upstream code remains Google LLC 2026 under Apache-2.0. The new proofs are local consequences of the following pinned declarations.

- `ConjectureMachines.Riemann120Analytic.not_riemannHypothesis_imp_exists_self_sub_psi_gt` and `shuniaCounterexample_of_self_sub_psi_gt` supply the one-sided Chebyshev oscillation and the original threshold conversion. Source blob `469ca1a628495aef02674162dce48c95cb6ec1ff`. [Cryptids analytic reduction](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann120/Analytic.lean#L892-L906)
- `ConjectureMachines.Riemann95.Semantics.halts_candidate_iff_not_riemannHypothesis` supplies the exact blank-tape comparison, source blob `476d1101cb827e1a29ce61232d2e7b8b0727fecf`. `ConjectureMachines.Riemann95.halts_candidate_iff_counterexample` supplies the arithmetic witness return, source blob `3fd86d0b954485707b620846f36ccd98d5ba970f`. [Semantics](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Semantics/Riemann95.lean#L13) · [Candidate theorem](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/Riemann95.lean#L23) · [Physical witness proof](https://github.com/google-deepmind/cryptids/blob/3647718b5df22e1a61462dec0376bd204526285a/Cryptids/ReductionSupport/Riemann95/Witness95.lean)

## Argument and declarations

All names below are in `GRWTSK.NumberTheory.Riemann95StageCertificates`. Write `S(n) = √n·(log n)²`.

- `exists_bad_interval_at_scaled_span` takes halting, a natural cutoff `bound` and a real `C ≥ 0`. It supplies integers `a ≤ n` with `a ≥ max(254,bound)`, `n−a ≥ C S(n)` and every integer in `[a,n]` an original counterexample. Put `B=max(254,bound)`. Apply the pinned oscillation with `K=11+B+C` and take `a=n−ceil(C S(n))`. The rounding loss costs at most one. The input `S(n) ≥ 1` and nonnegativity of `ψ` ensure space for both the cutoff and the span. Monotonicity gives `m−ψ(m) ≥ n−ψ(n)−(n−m)` and `S(m) ≤ S(n)` throughout the interval, hence `m−ψ(m)>10 S(m)`. The native arithmetic reduction applies since every such `m` exceeds 253.
- `exists_all_bad_scaled_gap_block` takes `gap : ℕ → ℕ` with `gap(w) ≤ C(1+S(w))` after any specified cutoff. Align the bad argument interval with the next ordinal window. Its alignment uses at most 95 arguments, and its scale is bounded by the scale at the right endpoint. Using coefficient `95(2C+2)` leaves room for every slot in every window from `w` through `w+gap(w)`.
- `scaled_gap_safe_slot_iff_cryptids_RH` proves that having one safe slot in some window of each such range is equivalent to RH. Halting would produce a whole comparison range with every slot bad. The reverse direction uses the original all-window return. `cryptids_RH_of_scaled_gap_slot_certificates` accepts any Boolean certificate checker whose positive verdict implies safety of the literal original arithmetic argument. Existence of such positive verdicts throughout the prescribed ranges is a separate premise.
- `square_window_fixed_slot_safe_iff_cryptids_RH` specializes to any fixed slot `j` and any cutoff `k₀`. Safety of the single argument `95*k²+j+2` for every `k ≥ k₀` is equivalent to RH. The next square above `w` is within `2 floor(√w)+1`, which is bounded by `2(1+S(w))` for `w ≥ 254`. `cryptids_RH_of_square_window_slot_certificates` supplies the corresponding certificate consumer.
- `slotAccepts_iff_safe` binds the executable one-slot decision to the literal Cryptids predicate, and `window_accepts_iff_all_slots_accept` relates it to the original whole-window checker. `square_window_slot_accepts_iff_cryptids_RH` states the Boolean square criterion. `cryptids_halts_iff_cofinal_rejected_square_slot` proves completeness of sparse counterexample discovery. A rejection gives a witness to the original machine's halting, while halting forces a rejection past any prescribed cutoff.
- `square_windows_have_unbounded_gaps` is the boundary control. Given any cutoff and fixed gap, take a sufficiently large square and the integer immediately after it. The entire prescribed comparison range lies strictly below the next square. The new result therefore uses the scaled oscillation estimate genuinely beyond the preceding fixed-gap implication.

## Remaining premises

For a concrete HS deployment, a positive runtime acknowledgement must imply the exact one-slot verdict at its decoded ordinal address. The resulting sound gate must supply positive certificates on the specified infinite schedule. A finite prefix is evidence about those tested arguments. The Lean results give no effective upper bound on the first rejected square slot. Source-bound verification and publication are tracked in [issue #1820](https://github.com/grwtsk/math/issues/1820).

## Verification

The targeted Lake build in the isolated package and the standalone `--trust=0 -DwarningAsError=true` check passed at the listed pins. Target kernel replay with dependencies preloaded passed. The transitive audit of all 11 public theorems reported only subsets of `propext`, `Classical.choice`, and `Quot.sound`. Full fresh replay of the transitive import closure and independent mathematical review are `NOT_RUN`. Novelty is unassessed.

## Square-index gaps of logarithmic-square size

The same pinned arithmetic source also gives
`log_thinned_square_accepts_iff_cryptids_RH`. Fix a cutoff and let
a natural gap function $g(k)$ satisfy $g(k)\le k$ and
$g(k)\le C\log^2(k+1)$ beyond that cutoff, for a fixed $C\ge0$.
It suffices that every interval of square indices $[k,k+g(k)]$
contain an index whose square-numbered window has one accepting slot.
Both the square and the slot may vary. RH conversely gives these
verdicts at the first square in each interval.

For an ordinal window $w\ge4$, set $s=\lfloor\sqrt{w}\rfloor$ and
$d=g(s+1)$. The next sampled square in the comparison lies no later
than $(s+1+d)^2$. Since $w\ge s^2$, the resulting gap is bounded by
$(1+d)(2s+1+d)$. The second factor is at most $5\sqrt{w}$ and the
first at most $(1+C)\log^2 w$. The original defect-scale result then
forces a rejected comparison range if the blank-tape candidate halts.
The local proof uses the same Chebyshev oscillation premise as the
existing square schedule.

The concrete `logSquareAllowance` takes the smaller of $k$ and
$\lfloor\log^2(k+1)\rfloor$, and
`logSquareAllowance_unbounded` checks that this permits arbitrarily
long skipped intervals of square indices. The allowance with value zero
reduces to needing a hit at every square index. The certificate consumer
`cryptids_RH_of_logSquareAllowance_certificates` still requires both
soundness for the original Shunia predicate and existence of a
positive verdict in every prescribed range. No finite prefix provides
that existence premise. The first missing runtime lemma remains that an
accepted HS record denotes the literal decoded arithmetic slot, followed
by a proof of certificate supply for the specified infinite ranges.

Verification for this extension is recorded in [issue #1820](https://github.com/grwtsk/math/issues/1820).

## Delaying the certified window itself

Fix a slot, a cutoff, and any nonnegative constant C. Let the window
selected at index k be k²+d(k), for a natural delay with
d(k) ≤ C k log²(k+1) beyond the cutoff. Acceptance of that slot at
every selected window is equivalent to RH. At any sufficiently late
ordinal window w, take k=floor(sqrt(w))+1. Its square is ahead of w
by at most 2 floor(sqrt(w))+1. If w≥4, then k≤2 sqrt(w) and
log(k+1)≤log(w). The delayed window therefore lies within the
existing defect-scale comparison block with coefficient 2+2C.
The original checker is used at the delayed window and actual slot.

The control d(k)=k, with cutoff at least 2, yields the same
equivalence while every chosen window lies strictly between two
consecutive squares. To use the result for external certificates,
each proposed slot verdict must be sound for the exact delayed
argument, and the supplier must cover every selected window on
the chosen tail.

Pinned strict compilation, target kernel replay, the nonsquare
control and both transitive axiom audits passed. Fresh full import
replay and independent review were NOT_RUN.

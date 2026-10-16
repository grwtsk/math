Logarithmic-cell residual integration
====================================

Human mathematical direction: R.A. Jacob Martone.
Original deduction, implementation and candidate formalization: OpenAI ChatGPT.
Integration and defensive-verifier changes: OpenAI ChatGPT. MIT.
Base commit: 9adf061bf5aa34e65fb8237ed56c766539e22506 (grwtsk/math/main).

Scope
-----
The active additions are scripts/log_cell_relaxation.py,
scripts/verify_log_cell_relaxation.py and tests/test_log_cell_relaxation.py.
The evaluator reconstructs the complete signed Mobius pickup from its actual
prefixes, certifies the first 4096 within-cell variances using exact rational
intervals, and retains the analytically bounded uncomputed tail. It also
replays the positive residual-operator norm and trace certificates.

The written result is E(log(N+1)) = G_N + R_N, with 0 <= R_N < 533/25000.
The actual cell means and their signed prefix coupling stay in G_N. This is
NOT a bound on E or G_N, and NOT the missing uniform signed-energy estimate.
The positive residual screw is not identified with Suzuki's arithmetic kernel.

Fresh evidence
--------------
replay-normal.json and replay-optimized.json record separate complete runs:
64 tests in each mode; full 4096-cell source replays at 160 and 192 bits;
full 4096-cell operator replays; independent trial factorization through 4096;
precision-interval overlap; three strict rational bound comparisons.
Each run binds the executed source bytes and full captured stdout/stderr.
Interrupted aggregate attempts remain in preserved-attempts.json. They are not
rewritten into successes; the separate completed runs are new evidence.

Reproduction from the repository root
-------------------------------------
The test dependency is pinned in this directory's requirements-tests.txt.
The evaluator itself uses only the Python standard library.

python3 -B scripts/verify_log_cell_relaxation.py --mode normal
python3 -B scripts/verify_log_cell_relaxation.py --mode optimized

The default --mode both performs both batches in one process. The wrapper
performs no network, Git write, dependency installation, or Lean admission.
It caps each child at 120 seconds; timeout or nonzero exit fails the replay.
The decoder rejects duplicate keys at every level, nonexact JSON numbers,
unknown or missing fields, status promotion, malformed/incomplete row lists,
and excessive input or combined subcell work. Reversed rational intervals
are rejected before outward rounding can conceal the reversal. Resource
limits return failure, never a certificate. The arithmetic is unchanged.

Historical inputs and formal boundary
-------------------------------------
original-derivation.txt is the supplied DERIVATION.md byte for byte.
original-verification.json and original-source-bindings.json are the supplied
historical reports, including their then-true no-publication statements.
Their internal relative paths refer to the original package, NOT this layout.
Its SHA-256 is recorded in integration-receipt.json. integration-hardening.patch
records the exact source/test delta from that package.

uncompiled-lean-additions.patch preserves the three original candidate modules;
uncompiled-audit.lean.txt preserves the original selected-declaration audit;
formal-admission-obligations.txt preserves the original outstanding interfaces.
No candidate is imported or installed under active GRWTSK paths. No compiler
pin, existing source, prior receipt, canonical documentation or navigation is
modified. This directory is archival evidence, not a maintained Markdown guide.

Native Lean/Lake execution and owned-declaration auditing were unavailable.
A full checkout could not be obtained in this runtime, so whole-repository
layout/documentation checks were NOT_RUN. Canonical documentation registration
and actual dependency/consumer verification remain requirements before Lean
admission. Exact finite Python checks do not establish those admissions or the
written continuum implications. The existing height-40 atlas is unchanged.

Remaining mathematical input: a proved all-N growth bound for the actual
coupled cell means G_N, or the separate complete signed bilinear-energy target.
No additional all-height nonvanishing margin or RH proof is asserted.

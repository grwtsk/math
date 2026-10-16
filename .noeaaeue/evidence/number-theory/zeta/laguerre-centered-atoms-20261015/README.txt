Centered Laguerre atoms: publication, diagonal bound and retained signed cross
============================================================================

Direction: R.A. Jacob Martone. Derivation, implementation and replay:
OpenAI ChatGPT. MIT. Inspected main: ba77517b0b4e74d36a824d34c2948b276471b844.

The written derivation retains the exact discrepancy Delta(x)=psi(x)-x+1 as
sum_(2<=n<=x)(Lambda(n)-1)+(floor(x)-x). Every integer label, every prime power,
both mixed-pair orders, the upper endpoint and the fractional-cell interaction
remain. The finite projected atom Gram is dominated by the explicit full Gram
(1/max(m,n)-1/X)/2. Its use on the diagonal proves, for every N and X,

 Q_(N,X) <= (log X)^2 + (log X)/2.

At X_N=2^(11N), Q_(N,X_N)<=64 N^2+4 N. The fractional-cell coefficient energy
is at most 1/2 at every depth. These are universal written proofs, not finite
extrapolations. The signed off-diagonal UPPER bound remains open. The exact
Dirichlet-polynomial interface includes its common endpoint subtraction and
stable factor 2/(3+w). No Guth--Maynard estimate for this source is assumed.

The pending Laguerre-energy package is also installed: its unchanged producer,
runner, tests, derivation, pin manifest, source ledger and requirements are at
their original paths. Its 128 actual moments, two-term filter, 2^(11N) tail
schedule and dissipative realization remain unchanged. The 21/100 bound is
restricted to depth at most 128; the huge finite-head consequence does not
claim enumeration through 2^1408. No new zero or heat-interval claim is made.

REPLAY, from the repository root with the recorded test dependencies installed:

 python3 -B scripts/verify_laguerre_discrepancy_energy.py --mode both
 python3 -B scripts/verify_laguerre_centered_atoms.py --mode both

The first runner reproduces 147 tests in each mode and 128 source moments at
768 and 896 working bits, with an outward 160-bit output grid. The second adds
26 tests in each mode and full centered-atom profiles at X=256 and 1024,
N=8, at 192 and 256 working bits. Both modes were run afresh. All 24 leaf
subprocesses completed; all 173 unittest tests per mode passed. Three inherited
tests are numerical diagnostics. Twelve additional historical-receipt rejection
checks passed per mode and are counted separately. All four pending producer
outputs match the prepared source outputs byte for byte. Each new profile
retains every atom and each finite diagonal comparison, including all non-prime
labels with coefficient -1. Full normal/optimized outputs agree and all 48
corresponding moment boxes overlap across precision in each new mode.

HISTORY AND COMPLETE LOGS

All 24 original pending repository payloads are preserved: seven at their exact
original paths and seventeen as exact regular-file members of the lossless
history-and-replay.tar.xz archive. The archive additionally contains the fresh
publication-run/ logs, with complete stdout/stderr, plus the interrupted outer-
timeout attempt. Historical no-publication statements and dates are not changed.
The original compressed replay remains compressed as its exact archive member.
No source PDF is redistributed. publication-plan.json supplies the exact copy
map, and archive-index.json gives every member's hash and the ordered parts.

Seven binary parts store the archive. To inspect without extracting over files:

 dir=evidence/number-theory/zeta/laguerre-centered-atoms-20261015
 cat "$dir"/history-and-replay.tar.xz.part-00[0-6] > /tmp/laguerre-history.tar.xz
 sha256sum /tmp/laguerre-history.tar.xz
 tar -tJf /tmp/laguerre-history.tar.xz

Expected joined SHA-256:
 cec46e9b13a500f988b17f3a714c767f3fc580adf981b164088bab8c915cb59b

The decoded archive contains only the members listed in archive-index.json.
Use a separate empty directory to extract. No extraction or network access is
needed for either mathematical replay. Hashes bind bytes, not theorem truth;
Git history is the anchor for reviewing legitimate pin changes.

LIMITS

The tested checkout is a source-bound partial snapshot. Direct Git access failed
DNS resolution; publication uses the authenticated Git-data connector. Native
Lean/Lake are unavailable. No compiler admission, owned-declaration axiom audit,
whole-repository layout/documentation check, source-PDF companion replay or
external theorem proof audit was performed. The arithmetic all-depth cross
estimate and RH remain unproved. Existing repository files, compiler pins,
active Lean imports, workflows, canonical guides and concurrent Gaussian work
are not modified. results.json states the exact finite and written proof scope.

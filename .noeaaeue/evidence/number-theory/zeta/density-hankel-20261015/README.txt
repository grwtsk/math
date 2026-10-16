Arithmetic quotient sections and density-stratified source tails
==============================================================
Direction: grwtsk contributors. Derivation and implementation: OpenAI ChatGPT. MIT.

This directory is raw research evidence, not a new canonical guide or native
Lean admission. The intended base is grwtsk/math/main at
0242bb202aafc15c8212aee3015e9bf9002edb3e. The local session exposed no GitHub write
actions and could not resolve github.com from Git, so no remote update was made.

The active new program generates the actual zero-time Xi quotient coefficients
from zeta and digamma Euler--Maclaurin identities with written complex remainder
bounds and outward rational arithmetic. It uses no numerical zeta routine and
no zero table. A new triangular quotient certificate retains the shared
numerator/denominator and needs only the constant denominator to be separated.
It does not assume a global Neumann contraction or a global Schur property.

The first 32 coefficients are freshly computed at 256 and 384 bits. Complete
literal Hankel cubic moments are enclosed for N=1,2,4,8,16. The full normalized
cubic mean, the terminal coefficient and every signed matrix product remain.
The executable also emits the complete 300-band density exponent certificate.
Its analytic collar/density dependencies and unevaluated constants remain
separate from the unconditional source coefficient calculations.

From a repository root containing these additions:

  python3 -B scripts/verify_density_hankel.py --mode both

The production module uses only the standard library. Tests additionally use
the versions in requirements-tests.txt. Three tests use mpmath as independent
numerical diagnostics, never as enclosure acceptance. The other new tests and
the historical sixteen checks concern finite exact algebra and rejection guards.
No all-depth estimate, new zero exclusion, Lean audit, or full-repository layout
check is claimed. Existing formal sources and documentation are unchanged.

historical/ preserves the supplied synthesis package without editing its prior
status or failed-attempt records. attempts/ preserves the new serializer failure
and the failed source bytes. The repaired report uses outward-rounded diagnostic
upper bounds without disabling integer-string limits or changing the exact
coefficient recurrence. Fresh replay output is separate from these old records.

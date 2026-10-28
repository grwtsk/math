# Centered sieve and phase-bearing cyclic orbit: source correspondence

Local mathematical attribution: grwtsk contributors.

## External contextual source

Anton Gorodetski and Alexandro Luna, *Thomae's function and the space of ergodic
measures*, arXiv:2206.13794v1, 28 June 2022.
Stable source: https://arxiv.org/abs/2206.13794v1
Inspected full HTML: https://arxiv.org/html/2206.13794v1
The paper studies (x,y)->(x,x+y mod 1) on the torus. Its rational-orbit measure
and phase coordinate exp(2*pi*i*q*y)/q motivate retaining phase beyond the
barycenter. The full weak-* and ergodic-measure-space assertions are NOT local
Lean premises or newly verified theorems.

## Exact local scope

`GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.CyclicOrbitObservability`
constructs orbitSample and orbitMoment using ZMod.stdAddChar. For q>0, its
orbitMoment_eq is the exact full-character identity. barycenter_zero additionally
assumes q>1. phase_return retains z^q; phase_return_rotation retains the same
orbit phase; popcornPhase_norm assumes norm z=1 and retains radius 1/q.
same_barycenter_different_phase is the explicit q=2, z=1 versus z=i collision.
These are independently scripted finite character consequences, not imports of
the paper's theorem. The complete declaration roster and local commit/blob are
bound in the accompanying passive manifest.

Imported mathematics: the repository's FiniteAdditiveProjector full-character
orthogonality and pinned Mathlib canonical additive characters; arithmetic sieve
identities use Mathlib's actual Mobius and squarefree definitions (Aaron Anderson,
with upstream licensing preserved). No prime-density, zero-height, integer
Chowla, or full Mobius-soficity theorem is imported. The new centered consumers
reuse AnchoredAuthenticCenteredDefectComparison, RegularOrbitCenteredWindingZeroModeVariance,
AnchoredPairGreenCoefficientBridge, MertensSignedPairDescent and the concurrent
CenteredResidueReturn at their exact source identities.

Classifications: imported upstream mathematics as identified above; new local
source proof candidates; independently run exact finite diagnostics; conditional
RH consumer with its growth/coverage inputs retained. No new kernel-verified
bridge is claimed. Pure shape analogies do not imply historical influence or
source identity. Remaining bridges include actual spectral ordinate matching,
weak-* topological realization, quantitative signed cancellation, and any fixed
finite presentation of the infinite arithmetic language.

Verification commands: all native `lake build` / `lake env lean` commands,
fresh independent kernel replay, and complete transitive axiom audit are
NOT_RUN, exits UNAVAILABLE, receipts NONE for this increment. Commands and source
pins are in docs/verification/NumberTheory/Farey/CenteredSieveLanguage/.
The large central paper-to-formalization ledger was not replaced or truncated;
its cross-reference to this exact supplement remains a reconciliation task.

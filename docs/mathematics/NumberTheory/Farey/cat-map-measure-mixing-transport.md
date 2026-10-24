# Exact real-measure mixing → open return transport for the Farey cat map

**Date / status:** 2026-10-23, new standalone Lean mathematical
source is `SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED`.
No local theorem is promoted from a source proof candidate to an
accepted Lean or kernel proof by Git readback.

## 1. The precise missing bridge

The earlier source
`GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge`
defines the actual torus `Torus2=UnitAddTorus (Fin 2)`,
the Arnold/Farey `RL` map `catTorus`,
the embedded nine distinct `F₃²` three-torsion
states `torsionEmbedding`, and a nonzero finite
complex readout `finiteCatReadout` with eigenvalue `-1`
on those nine torsion points.

The earlier source
`GRWTSK.NumberTheory.Farey.CatMapContinuousPhaseObstruction`
has the **conditional**, source-faithful theorem
`no_continuous_cat_phase_extension_of_eventualOpenMixing`.
It excludes a *global continuous* `-1` Koopman
eigenfunction agreeing with the finite readout, but only
**assuming** `EventualOpenMixing catTorus`.
Thus the local missing supplier was not another finite
mod-three calculation: it was a *measure correlation
to open-return* theorem.

The new `CatMapMeasuredMixingTransport` module
proves that generic supplier with the exact
`Measure.real` correlation form of the external
Morgenstern mixing theorem and with a **separately
supplied open-set positivity premise**. In symbols,
for a real-measured Borel topological space X:

    hMix: ∀ measurable A,B,
      Tendsto (n ↦ μ.real (A ∩ (T^[n])⁻¹' B))
        atTop (nhds (μ.real A * μ.real B))

    hSupport: ∀ U open nonempty, 0 < μ.real U.

Then every nonempty open U,V has eventual
`U ∩ (T^[n])⁻¹' V` nonempty; in particular
any open neighborhood of any p has a return
at an **odd** time.

The proof consumes the strictly positive
limit `μ.real U * μ.real V > 0`,
uses `Filter.eventually_gt_nhds` to obtain
eventual positive real intersection measure,
and invokes the pinned Mathlib theorem
`MeasureTheory.nonempty_of_measureReal_ne_zero`
from `Mathlib.MeasureTheory.Measure.Real`.
This is an exact deductive bridge under the
two **explicit** hypotheses, rather than a
numerical or finite-sampling analogy.

**Important hostile boundary:** strong mixing
on a measure whose support is a proper closed
subset does not generally imply global open-set
mixing. For example, a delta mass at the first
point of a two-point discrete identity system
has exact delta-mass product correlations but
the two disjoint singleton open sets never meet
under any iterate. Full support/positive open
measure is therefore a genuine essential premise.
The theorem does not silently assert that every
invariant measure has full support.

## 2. Actual consumed declarations

The new module is
`GRWTSK.NumberTheory.Farey.CatMapMeasuredMixingTransport`,
path
`GRWTSK/NumberTheory/Farey/CatMapMeasuredMixingTransport.lean`,
introduced on existing main by routine non-force commit
`d616f89179e541ee6669f3cbacc9202f1418c8a8`,
Git blob `3dbe401843fd2609231dc20ab77a430d1692a433`.

Full declaration names (all prefixed by that namespace):

- `HasPositiveOpenRealMass`: definition,
  for a `Measure X` on Borel `X`, of real-positive
  measure of **every** nonempty open set.
- `HasRealSetMixing`: definition,
  for `T:X→X` and `μ:Measure X`, of
  convergence of **all measurable-set**
  real correlations to the product of
  real measures.
- `eventualOpenMixing_of_realSetMixing`:
  consumes BOTH hypotheses to construct the
  exact earlier `EventualOpenMixing T` predicate.
- `oddLocalReturns_of_realSetMixing`:
  consumes BOTH hypotheses and an arbitrary
  point `p`, yielding exact
  `HasOddLocalReturns T p`.
- `catTorus_oddLocalReturns_of_realSetMixing`:
  specializes the generic implication to
  `CatMapArithmeticBridge.catTorus` and
  the actual torsion witness
  `torsionEmbedding finiteWitness`.
  `μ`, `hMix` and `hSupport`
  remain **explicit** inputs.
- `no_continuous_cat_phase_extension_of_realSetMixing`:
  with those explicit inputs, excludes a
  continuous `F:Torus2→ℂ` satisfying both a
  **global** `F(catTorus x)=-F(x)`
  and agreement on **every** embedded
  three-torsion source vector.

**Direct repository dependency** is
`GRWTSK.NumberTheory.Farey.CatMapContinuousPhaseObstruction`,
blob `b76d4c8bf7544a1800917fd111cc017011d172c0`,
which imports
`GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge`,
blob `8ef5c4b4f732040cf0af29f11406008c08b4daec`,
and its actual `ProjectiveQuadraticChannel`
dependency. Additional direct imports:
`Mathlib.MeasureTheory.Measure.Real`
(pinned Mathlib blob
`2be899626f4e667ab2434919350e73a0074fc0e8`)
and `Mathlib.Tactic`.
The exact transitive GRWTSK/Mathlib closure,
including generated definitions and axioms,
still requires a fresh source-pinned Lean check.

## 3. Precisely matched external theorem — not an imported Lean bridge

**Marcel Morgenstern (2026)**,
[lean4-ergodic-theory](https://github.com/marcmorningstar/lean4-ergodic-theory),
source commit
`040fec2e0ddf4fcba49af9f76c866d295308dd7f`,
file
`ErgodicTheory/Examples/CatMapMixing.lean`,
blob `680a64b9746cf75579586041bda758c0f0eb824c`,
declaration
`ErgodicTheory.CatMapToral.catTorus_mixing`.

Its ACTUAL type quantifies
`(A B:Set T2)` with
`(hA:MeasurableSet A)` and
`(hB:MeasurableSet B)`, and states:

    Filter.Tendsto
      (fun k => (volume:Measure T2).real
          (A ∩ catTorus^[k] ⁻¹' B))
      Filter.atTop
      (𝓝 ((volume:Measure T2).real A *
          (volume:Measure T2).real B)).

This is the exact same correlation-shape
as `HasRealSetMixing`. The external code
uses an explicitly normalized local Haar
MeasureSpace instance and proves strong
measure mixing of its own genuine
`ErgodicTheory.CatMapToral.catTorus`.
The external project pins
Lean `v4.30.0-rc2`; `grwtsk/math`
pins Lean `v4.33.0` and Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.
Two external CI check runs were reported
successful for the external exact commit,
but were not reproduced here and **do not**
count as a cross-repository Lean import.

**Historical mathematics, not a claim of historical influence:**
R. L. Adler and B. Weiss,
*Entropy, a Complete Metric Invariant for Automorphisms
of the Torus*, *PNAS* **57**(6)
(**1967**), 1573–1576, DOI
[10.1073/pnas.57.6.1573](https://doi.org/10.1073/pnas.57.6.1573).
Their entropy/Markov-partition classification is
methodological background, not a premise of
the new elementary measure-to-topology lemma.
No KS entropy theorem is imported into
the new GRWTSK file.

## 4. What remains and how to prevent overclaiming

This increment discharges the **abstract implication**
from mixing correlations plus positive open mass to
eventual open mixing and odd local returns, at the
level of proposed Lean source theorems.
Two **concrete premises are still unproved locally**:

1. `HasRealSetMixing
   CatMapArithmeticBridge.catTorus μ`
   for one actual, explicitly normalized
   Haar probability measure `μ` on
   `UnitAddTorus (Fin 2)`;
2. `HasPositiveOpenRealMass μ` for
   that SAME `μ`, requiring full Haar
   support and a proved measure identity
   on the locally defined torus.

Also missing: a checked identification of the
source map/torus/measure with Morgenstern's
external definitions in a **common toolchain**,
or an independent complete local proof
of (1) and (2). Equal integer matrices
do not automatically make two separately
compiled theorem constants judgmentally
identical.

The non-extension conclusion requires **continuity**
and a **global** `-1` eigenrelation.
The result does NOT preclude arbitrary
continuous interpolation of the nine values,
nor discontinuous eigenfunctions supported
on finite torsion orbits, which may be Haar-null.
A measure-theoretic a.e.-vanishing conclusion
alone says nothing pointwise at those nine
points without continuity and full support.
No Sturmian spectral-gap theorem, dynamical
sofic-group conclusion, Sarnak disjointness,
prime-distribution bound, zeta zero-free
strip, RH, GRH, or Hodge theorem follows.

## 5. Verification boundary and pending replay

New source proof candidates, not new
kernel-accepted Lean theorems.
Pinned math toolchain:
`leanprover/lean4:v4.33.0`,
Mathlib
`db584cd6d46c92f209a44c0f1c829460d327499d`.

**ACTUAL commands for this leaf: `NOT_RUN`.**
Specifically, no warning-clean
`lake build --wfail` of this leaf
and its transitive imports,
direct `lake env lean --trust=0`,
fresh native kernel checker, complete
`#print axioms`/generated/private/unsafe
dependency closure or external formal theorem
import was executed.
The executable tools `lean`, `lake`,
`leanchecker` are unavailable in the
interactive runtime. Source inspections and
previous finite-torsion Python receipts
(do not test real measured mixing)
cannot upgrade the new theorem's status.
All effectful execution state and eventual
verifier receipts belong in `grwtsk/noeaaeue`,
not in `grwtsk/math`; preserve prior
no-Railway, no-force and no-merge constraints.

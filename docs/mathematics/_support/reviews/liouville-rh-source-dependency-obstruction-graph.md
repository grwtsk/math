# Original Liouville RH target: source-bound dependency and obstruction graph

**Byline:** grwtsk contributors · **Observed baseline:** `grwtsk/math@8425bebeb3e693ea3efcbcd4569074425fcdc5c1` (October 31, 2026).

## Abstract

The goal is unchanged: for every ε>0 there is a finite C_ε>=0 such that for every T>=0 the original causal Liouville energy `H_lambda(T)` is bounded by `C_ε exp(εT)`. This review reconstructs the directly inspected source families and encodes *joint* required premises, alternatives, obstructions and evidence in [the companion typed graph](liouville-rh-source-obstruction-graph.json). Its principal research finding is a priority disposition, **not a new RH proof**: double-Abel boundary closure now has a written source candidate; the complete signed weighted arithmetic supplier is not established. The finite-prime inverse-band route is norm-equivalent to the original energy and the presently tuned rough estimate carries an unacceptable exponent-one allowance unless compensated by a genuinely signed remainder. The graph is a **seed-closed, source-inspected subgraph**, not an exhaustive graph of the whole MSC catalogue, because the large layout manifest's `followup_files` entries were unavailable to the present reader.

## 1. Original target and mathematical interpretation

The literal arithmetic source is `ArithmeticFunction.liouville`, cast to reals. With `r_n(u)=2 max(n^(-1/2)-exp(-u/2),0)` and `F_lambda(u)=sum_{1<=n<=exp u} lambda(n)r_n(u)`, define `H_lambda(T)=integral_0^T |F_lambda(u)|² du`.

The original all-positive-rate obligation has **quantifier order**

    forall ε>0, exists C_ε>=0, forall T>=0,
      H_lambda(T) <= C_ε exp(εT).

The original source is `LiouvilleCausalEnergyTarget.lean` blob `a00aaa07c067b4c88203372870b5d5d151de0de4`, declaration `GRWTSK.NumberTheory.LiouvilleCausalEnergy.UniformEnergySupplier` (**open Prop**). The mathematical RH-facing return depends on a source-correct square-divisor delay and analytic Laplace/zeta return as separate premises and verification tasks; a theorem with the same conditional hypotheses is not a proof of that supplier.

## 2. Graph semantics and evidence boundaries

The JSON graph includes 32 nodes (20 directly read Lean modules plus twelve mathematical, transfer, or coverage nodes), seven typed hyperedges, six obstruction records and five prioritized obligations. A hyperedge consumes *all* its premises (AND). The one-point, short-window, double-Abel and alternative rough routes are OR alternatives toward the same goal; no method must prove the others. Import arrows document syntactic dependency only. A finite-sum identity does not imply a cancellation inequality. A rejected inference pattern is not a counterexample to actual Liouville.

The graph uses these separate evidence roles: (i) mathematical argument in a companion review; (ii) theorem script in source; (iii) conditional `Prop` or theorem with explicit unproved hypotheses; (iv) exact-source native receipt. No new compilation, kernel replay, expected-interface or transitive-axiom audit was run for this graph; source scripts and historical claims keep their original statuses.

## 3. Path reconstruction and first unclosed mathematical bridge

| Path | Source anchor and role | First missing mathematical bridge | Obstruction or loss |
|---|---|---|---|
| One-point/Mellin | Original `LiouvilleCausalEnergyTarget`; the one-point Liouville prefix may be connected to causal energy by Abel analysis | Every-positive exponent `L(x)=O_delta(x^(1/2+delta))` | RH-strength; not an independent saving merely because it changes variables |
| Short-window/zero-mode | RH-FEJER-WINDOW-ENERGY-01 in canonical literature ledger, source reference `SignedCyclicWalkPacket` | All-N diffusive near-full-window mean-square bound, uniformly over the requested exponent | Mean-square `o(1)` on almost-all intervals is not the necessary diffusive `O(1/H)`; zero frequency persists |
| Prime delay/entropy | `LiouvillePrimeDelayObstruction`, `LiouvilleReciprocalPrimeMassObstruction`, `LiouvilleGrowingPrimeBandIdentity` | Exact one-prime delayed waveform identity and an **independent** signed arithmetic gain after preserving uncovered/covariance terms | Finite-prime and reciprocal-summable-delay models; normalized residual norm inversion with band-independent factors |
| Double-Abel weighted rectangles | `LiouvilleDoubleAbelCausalKernel`, `LiouvilleDoubleAbelAnalyticGates`, `LiouvilleDoubleAbelPolynomialMoment`, `LiouvilleDoubleAbelBoundaryClosure` | Every-positive-rate **complete Omega-weighted signed rectangle aggregate** upper bound | Rectangular supremum is RH-strength already from p=1/3 rows; polynomial kernel moment costs exponent zero after absorption |
| Rough/Buchstab and Type II | `LiouvilleRoughCausalBuchstab`, `LiouvilleSignedBuchstabTypeII`, `LiouvillePrimeOverlapReconstruction`, `LiouvilleCausalPhysicalGramIntegrability` | Actual squareful-aware signed Type II and rough-complement cancellation uniform in cutoff/band parameters | Distinct p≠q shared-index n=pqk is positive diagonal; unsifted absolute allowance is exponential |
| Global descendant potentials and tuned cutoff | `LiouvilleProportionalSemiprimeObstruction`, `LiouvilleProportionalThreeFactorObstruction`, `LiouvilleRoughUpperCancellation`, `LiouvilleRoughSignedConsumerTransfer` | A genuinely signed complement estimate which pays the tuned rough cost at **all** rates | Proportional-cutoff and three-factor obstruction interfaces; exponent-one rough allowance cannot be added into every-positive-rate consumer |

Each anchor's source path, exact observed Git blob, named declaration and source-level status are recorded in the graph. The finite prefix, integration and curvature tools are not reassigned arithmetic credit. All repeated-prime terms, squareful sources, unsifted integers, birth collars, prime-pair orientations and parameter dependence remain explicit.

## 4. Critical joint premise rules

- **R1 (one-point alternative):** the actual all-positive-rate one-point partial-sum bound AND the exact Abel transfer would supply the energy target. The one-point assumption is itself RH-strength.
- **R2 (short-window alternative):** a uniform all-N diffusive Fejér bound AND its exact source-to-energy transfer would supply the energy target. Almost-all or fixed-height results do not fill it.
- **R3 (double-Abel):** finite signed identity AND original causal kernel positivity/tail/boundary AND polynomial moment control AND *independent complete weighted rectangle arithmetic estimate* imply an energy bound, with diagonal and polynomial factors paid. The arithmetic premise is missing.
- **R4 (prime delay):** the existing Gram/cutoff source plus the exact single-prime delayed reindexing and finite integral interchange identify the original complete covariance. This is a formalization bridge, not a cancellation theorem.
- **R5 (signed Buchstab):** complete squareful-aware signed split AND valid mixed-covariance return AND independent weighted Type II bound AND complete rough/complement costs are required for a legitimate energy consumer. This composite is **proposed**, not already proved.
- **R6 (tuned rough):** the known exponent-one rough cost AND a small signed remainder are insufficient by naive absolute addition; the method must produce a stronger paired signed compensation or another all-positive-rate source bound.
- **R7 (terminal):** original all-positive-rate Liouville energy AND the faithful square-divisor/analytic return, with final formal dependency acceptance, is the RH route. No open proposition is an unconditional theorem.

The hyperedges are intentionally not a proof-reachability assertion. For R5 and R6, even the shape of the final sufficient joint premise remains subject to source-complete proof. A high graph score cannot upgrade this.

## 5. Obstruction dispositions and next-step priority

The six source-bound obstructions in JSON identify the **precise invalid inference** rather than a general failure of method:

1. Uniform finite/growing prime-band residual norm equivalence means a residual-only estimate does not independently simplify the target.
2. Finite-prime and reciprocal-summable exact-delay countermodels block deductions from multiplicativity and sign delays alone, not Liouville-specific arithmetic results.
3. Uniform rectangular square-root envelopes already encode both signs of a Liouville one-point estimate; this does **not** block the actual signed **weighted average**.
4. Proportional-cutoff semiprime/three-factor and exponent-one cost obstructions block naive global potential or triangle-inequality closure; an independently signed compensation may still be possible.
5. Positive p≠q shared-index diagonals must be paid, not reported as off-diagonal savings.
6. Native verification and arithmetic proof are orthogonal; no compilation or axiom acceptance can be inferred from publication.

**Priority #1 (bounded formalization, unlocks multiple routes):** close the original `PrimeDivisorWaveformIdentity` and integrated `weightedDelayedCovariance` return using `LiouvilleCausalPhysicalGramIntegrability.mixedPhysicalGram`. This will connect prime delay, Type II and the covariance supplier with no arbitrary bridge hypothesis; it does not by itself yield cancellation.

**Priority #2 (highest arithmetic value):** prove a directly weighted one-sided `Omega_T` rectangle-average estimate for the actual Liouville source, with every-positive-rate uniformity. Do **not** demand a pointwise envelope on every rectangle. Other high-value alternatives are a source-exact signed rough complement estimate and Type II off-diagonal cancellation with the full positive diagonal and unsifted costs.

These priorities reflect number of legitimate downstream consumers and nature of the missing information, not a measured computational ranking, novelty judgment, or probability of solving RH.

## 6. MSC layout and `followup_files` coverage gap

The authoritative current placement contract is `documentation/taxonomy/msc2020/source-layout-v1.json`, observed Git blob `ec7ae0dce9138e0e1f44f36b65d433e0e9897e00`; `documentation/taxonomy/msc2020/README.md` blob `1ed595558c4c520709c6cff141e10db67379332d` explicitly states that `followup_files` bind current canonical source locations and provider links. In this run, the manifest path and blob were fetched but the content response was empty (including base64 mode). Therefore neither **every followup file** nor a **complete current subject relocation map** has been enumerated. The direct paths in this graph were separately read from current `main`; historical aliases and additional MSC routes are *unreviewed*, not absent. Never describe the current 20-source seed collection as exhaustive across 73,641 indexed document entries.

The required coverage repair is to retrieve and parse the complete immutable manifest through an approved byte-capable source reader, expand every relevant `followup_files` edge recursively, compare the canonical source blobs to present `main`, and merge additions without changing their verification scope. Until then, graph saturation is **bounded to the inspected seed closure**.

## 7. Source, literature, proof status and revision

- Mathematical navigation: `documentation/mathematics/complete-source-index.md` and `documentation/taxonomy/msc2020/README.md`.
- Canonical literature: `documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md`; its RH Fejér entry and the separately published Liouville double-Abel, sieve, Type II and rough reviews remain in place. No external publication is newly invoked or upgraded in this graph.
- Structural inference method: `documentation/mathematics/_support/reference/structural-intelligence.md` and grwtsk/noeaaeue structural-formalization skill v0.3.2. The graph does not assert automatic reification or kernel acceptance.
- **Evidence:** source inspection against the stated baseline; exact observed blobs, declarations and dependency imports where available. No mathematical cancellation proof, new Lean proof term, native checker execution, independent model evaluation, or exhaustive followup traversal was performed.
- **Revision:** initial bounded graph, 2026-10-31. Future entries should preserve the baseline and record newly inspected edges rather than silently backdating completeness.

**Single next bounded proof obligation:** finish the literal prime-divisor waveform identity for actual Liouville, with p prime, every u in R, repeated powers and exact shifted causal support, then integrate and identify the existing complete weighted delayed covariance through the already-source-written mixed Gram. This bridge has several consumers and is not equivalent to the missing all-positive-rate arithmetic bound.

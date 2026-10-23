# Section pairing: source-bound verification specification

## Status and exact scope

`SOURCE_COMMITTED / NOT_RUN / NOT_KERNEL_AUDITED`.

This is a static mathematical review/replay target, not an executable manifest,
controller, receipt, or execution authorization. Owner: #230; consumers: #177 and #204.
The externally selected commit and tree must be pinned before checking.
The isolated root is `GRWTSK.Interfaces.PortFiberSectionPairing`.

The increment adds exactly two Lean modules and this document:

```text
GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing
GRWTSK.Interfaces.PortFiberSectionPairing
```

The new root imports the preceding linear interface. No earlier root imports it.
No historical source, manifest, specification, dependency pin, README, residual plan,
arithmetic supplier, or `GRWTSK.lean` is replaced. No Mathlib algebraic, inner-product,
normed-space, or complete-space instance is installed on the section quotient.

## Mandatory predecessors

The immediate prerequisite is `docs/verification/Interfaces/PortFiberSectionLinear/portfiber-section-linear-v1.md` at
`071aafd970aa059f40d70d5761e18942dfdef995`, Git blob
`b62ca602e98f58a40e3b916bdd4a4789f7d5cfed`. Its source module is blob
`660cf0f255a0a8cfa78115820358a0d5650c2107`, and its interface is blob
`96e6e21b30130c6a463d910708d81942f770e54c`.

Retain all 52 predecessor local modules, 122 predecessor controls, exact signatures,
trust requirements, and nonclaims at their original scopes. Its predecessors remain:

```text
quotient specification  afdd4c264debf5359283d75b0be59e5c5cb37f7b
energy specification    1ea7f7165ac48dcb3c3efa0abcb2f2ddc6904feb
v0.16 target            f4b5a55e253ef353da5969ee119ed84ce767b6ee
repaired energy source  4e0a5294e4dfa0cec63efff7560e73f766cf0b04
```

The historical constructor-binding erratum remains in force. No historical receipt is
asserted. The required coverage is now 54 local modules and 130 control specifications,
not executed coverage. Reconcile complete transitive local imports and explicit per-module
outcomes; root-only success does not establish coverage or trust.

The toolchain remains `leanprover/lean4:v4.33.0`; mathlib remains
`db584cd6d46c92f209a44c0f1c829460d327499d`. The unchanged `lake-manifest.json` binds all
other dependencies. New direct upstream imports are
`Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` and `Mathlib.Tactic.Ring`.

## Construction, integrability, and convention

`realSquare` evaluates the old positive squared fiber metric. Its continuity is derived
through the genuine total-space metric and section maps. `realSquare_integrable` obtains
strong measurability from this continuity and obtains finite integral from the existing
finite-energy subtype, using nonnegativity in `hasFiniteIntegral_iff_ofReal`.

`pairDensity` is the old Hermitian fiber pairing, conjugate-linear in its first argument
and linear in its second. No independently chosen local representative is substituted.
`weightedPair_polarization` establishes the exact scalar identity

```text
B(a,b) = (Q(a+b) - Q(a-b) - i*(Q(a+i*b) - Q(a-i*b))) / 4.
```

`pairDensity_polarization` binds all four terms to actual historical section operations.
`pairDensity_continuous` uses their intrinsic squared-length continuity, not unproved
continuity of `IndexedDomainCover.select` or of preferred-coordinate metric weights.
`pairDensity_integrable` applies finite closure to those four sections, real-to-complex
integrability, subtraction, and constant multiplication. Thus cross-pairing integrability
is derived for every pair of finite-energy sections, with no finite-total-mass premise.

`sectionPairing` is the complex Bochner integral on that exact finite-energy domain.
The integrability proof prevents reliance on the Bochner integral's nonintegrable-zero
default. `sectionPairing_congr_ae` permits each representative to change independently
on its own null set. Conjugate symmetry and right additivity/scaling retain the actual
measure and old fiber form. `sectionPairing_self` identifies the result with the complex
embedding of the original finite energy's real value; the real conversion is not used
to admit infinite-energy sections.

## Quotient and gauge binding

`quotientPairing` is a binary quotient lift over the unchanged `finiteEnergySetoid`.
The exact two-argument a.e. congruence theorem proves well-definedness. No canonical
representative, energy-value quotient, or ambient measurable-section carrier is chosen.
`quotientPairing_classOf` computes the original representative pairing.

Separate declarations establish conjugate symmetry, additivity in each slot, complex
linearity in the second slot, and conjugate linearity in the first slot. Each theorem
uses the old explicit quotient operations; it does not assume newly installed instances.
`quotientPairing_self` recovers historical quotient energy. Its real part is nonnegative,
its imaginary part is zero, and `quotientPairing_self_eq_zero_iff` is definiteness at the
old quotient zero. The proof explicitly excludes infinite quotient energy before using
`ENNReal.toReal_eq_zero_iff`. It does not recover pointwise values away from support.

`sectionPairing_gauge` uses both historical section/fiber-map bindings and the constructed
`transportMetric`. `quotientPairing_gauge` descends it through the old `gaugeEquiv`.
The measure is identical on both sides. An independently chosen target metric or measure
cannot replace those parameters. No unitary Hilbert-space operator has yet been bundled.

## Positive and negative fixtures

`sectionPairing_dirac` evaluates the actual fiber form at the exact support point.
The constant one and constant i sections give pairing i; reversing their order gives -i.
This rejects dropping the imaginary part, using the wrong conjugation convention, or
replacing the pairing by a symmetric complex-bilinear expression.

`infiniteEnergy_self_not_integrable` proves that a section with energy infinity has a
nonintegrable self-pair density. Its proof takes the real part and uses the original
finite-integral equivalence; it is not merely a label on an untested input. The old
infinite-mass unit-section fixture can supply its explicit premise, but no source-specific
infinite measure is inferred. Existing support, distinct equal-energy, nonadditive-energy,
zero-scalar, and fixed-versus-transported-metric counterexamples remain required.

## Additional hostile controls

| Identifier | Required exact-source check or rejection |
| --- | --- |
| `pairing-reject-global-frame-measurability-shortcut` | Check intrinsic `realSquare_continuous`, the scalar polarization identity, exact section-operation binding and `pairDensity_continuous`; reject assumed continuity of the choice selector or preferred weights. |
| `pairing-reject-integrability-by-assumption` | Check all four finite-section producers, `realSquare_integrable` and `pairDensity_integrable`; reject a new arbitrary-measure integrability or finite-mass premise standing in for the proof. |
| `pairing-reject-independent-representative-drift` | Check both a.e. hypotheses in `sectionPairing_congr_ae`, the actual binary lift and `quotientPairing_classOf`; equal energies do not supply either hypothesis. |
| `pairing-reject-conjugation-or-slot-loss` | Check both additive and both scalar laws, conjugate symmetry, `imaginary_pairing` and `reversed_imaginary_pairing`; retain the full complex value. |
| `pairing-reject-real-conversion-of-infinity` | Check finite subtype use, `sectionPairing_self`, `quotientPairing_self`, and `infiniteEnergy_self_not_integrable`; a default zero integral or `toReal infinity` cannot certify integrability. |
| `pairing-reject-pointwise-definiteness-promotion` | Check nonnegative real part, zero imaginary part, and the finite-energy premise in quotient zero-definiteness; retain the inherited Dirac support counterexample. |
| `pairing-reject-gauge-map-metric-measure-substitution` | Check both representative maps, the old quotient equivalence, the same measure and `transportMetric` in both gauge theorems; reject an unrelated bijection or independently chosen metric. |
| `pairing-reject-completeness-or-target-promotion` | Check all eight new portfolio claims and four preservation theorems, unchanged roots/pins and all inherited coverage; reject automatic Hilbert/completion, L2 surjectivity, differential adjoints, heat, arithmetic or terminal-target conclusions. |

## Acceptance and remaining mathematics

Require a clean checkout of the externally pinned head, exact source/parent/pin
reconciliation, all 54 local-module outcomes, all 130 controls, complete public signatures,
and transitive axiom/runtime audits. Allowed axioms remain only `propext`, `Classical.choice`,
and `Quot.sound`; reject `sorryAx`, unsafe declarations, unreported native dependencies,
and uninspected effects. Missing/failed/unavailable outcomes cannot become passes.
A source repair requires a new exact-head check and invalidates affected prior evidence.

Under a separately authorized execution profile, the target descriptions are:

```bash
lake build GRWTSK.Interfaces.PortFiberSectionPairing
lake env lean GRWTSK/Interfaces/PortFiberSectionPairing.lean
```

They are not execution permission or a record of execution. Effectful checking and
immutable receipts remain outside this pure source repository. Source proof terms and
static or symbolic diagnostics are not Lean elaboration or kernel/axiom/runtime audits.

Remaining mathematics: canonical algebraic/inner-product/norm bundling on the old quotient,
Cauchy-Schwarz and norm topology, completion or holomorphic-subspace closedness, continuous
operator extensions and global adjoints, differential domains/regularity, connections and
Laplacian/heat transport. No identification with all measurable L2 sections, pointwise
representative selection, source-specific arithmetic/elliptic measures, Picard/theta or
K/KK classification, Weil comparison, residual decay, or RH/ABC proof/refutation is supplied.

# Least natural prime

`GRWTSK.NumberTheory.two_is_first_prime` combines Mathlib's `Nat.prime_two` and `Nat.Prime.two_le`: two is prime, and every natural prime is at least two. This is a mathematical witness only.

Mathlib is pinned to `db584cd6d46c92f209a44c0f1c829460d327499d` under Lean 4.33.0. The theorem's observed axioms are `propext`, `Classical.choice` and `Quot.sound`; `Nat.Prime.two_le` uses only `propext`. No `sorryAx` is accepted.

```sh
lake update
lake exe cache get Mathlib/Data/Nat/Prime/Basic.lean
lake build
python3 scripts/check.py
```

The checker compiles the selected source again with trust zero, checks its exact target type and two conjunct consumers, and rejects prime one and the false lower bound three. The audit also proves a concrete refutation of that lower bound using prime two. See `evidence/check-results.json` and `evidence/source-manifest.json`.

A first checker incorrectly demanded an empty axiom list. Compilation passed, but that assertion failed. The retained failure record distinguishes the checker error from the mathematical result. The corrected check records the actual standard Lean axioms and rejects `sorryAx`; it does not derive a new theorem from the checker output.

Mathlib: Apache-2.0, upstream copyright and authorship preserved in `LICENSES`. Local conjunction and checking: R.A. Jacob Martone, with OpenAI Codex assistance, MIT. No mathematical originality claim.


Source attribution: [claim-bound citation](evidence/citation-prime.json), including Leonardo de Moura, Jeremy Avigad and Mario Carneiro. No priority or originality claim.

The Hadwiger–Nelson modules preserve 34 declarations, including exact reader coordinates. Citation: [Moser source](evidence/citation-moser.json). Check with `lake build`, `python3 scripts/check_moser.py` and `python3 scripts/check_finite.py`.


The RH target modules retain Mathlib's literal `RiemannHypothesis`, including
its trivial-zero and pole exclusions. They prove the equivalent vanishing
condition for the quadratic critical-line defect and unconditional zero
symmetries. The exact RH proposition remains open.

```sh
lake build --wfail
python3 scripts/check_rh_target.py
```

The RH checker freshly elaborates the six selected module files at trust zero,
exports every declaration owned by those modules, audits its transitive axioms,
and rejects a trivial-zero admission and a false positivity-to-vanishing step.
The exact declaration types and current source hashes are recorded in
`evidence/rh-target-checks.json`. Source attribution is in
`evidence/citation-rh-target.json`; local mathematical direction is by
R.A. Jacob Martone, with OpenAI Codex formalization and verification assistance.
Earlier local source and detailed authoring lineage are retained privately.
No unconditional RH proof or originality claim follows from this cell.


The ordered-product interface is described in [Ordered interval products](docs/ordered-product.md). Check it with `lake build --wfail` and `lake env lean --trust=0 -DwarningAsError=true checks/OrderedProductAudit.lean`.


The common-generator rotation interface is described in [Common-generator two-plane rotations](docs/common-j.md). Its complete supported formal family and two original consumers were checked against the canonical constants. Run `python3 scripts/check_common_j.py` for the independent public interface audit. Local candidate admission and review remain pending.

The local rational-shear counterexample interface is described in [docs/common-j-counterexamples.md](docs/common-j-counterexamples.md). Run `python3 scripts/check_common_j_counterexamples.py` for the complete interface, original declaration dependencies and hostile controls. Admission and review remain pending.

The local ordered-product gauge interface is described in [Ordered products under gauge and chart changes](docs/ordered-product-gauge.md). Run `python3 scripts/check_ordered_product_gauge.py` for its complete contracts, generated equations, proof dependencies and endpoint controls. Two original complex linear-isometry consumers were separately checked against this interface. Admission and review remain pending.

The local signed real polarization interface is described in [Real polarization and signed quadratic sectors](docs/polarization.md). Run `python3 scripts/check_polarization.py` for complete theorem contracts, proof dependencies and hostile assumption/sign controls. An original real L² energy-surplus consumer was separately replayed against the canonical identity. Admission and review remain pending.

The finite interval reflection interface is described in [Interval reflection and signed integral pairing](docs/interval-reflection.md). Run `python3 scripts/check_interval_reflection.py` for exact endpoint, measure, integrability, axiom and dependency checks. Five original source-pairing roots were independently checked against canonical constants. Admission and review remain pending.

The explicit finite-coverage interface is described in [Finite coverage and scope](docs/finite-coverage.md). Run `python3 scripts/check_finite_coverage.py` to check exact coverage/tail contracts, axioms and canonical-use wrappers. Local candidate admission remains pending.

The [RH inference guards](docs/rh-inference-guards.md) retain exact domain exclusions and negative inference examples. Their interface is checked against the existing zero definitions and symmetries; no RH proof is claimed.

The [Schrödinger transfer core](docs/schrodinger-transfer.md) preserves the exact current/previous state, commutative-ring recurrence, determinant-one packaging and rational inequality witness.

The [exact CCC prime-note cascade](docs/ccc-prime-cascade.md) proves the causal pickup identification, clipped insertion-energy recurrence, unconditional logarithmic prime-mass allowance and conditional prime/block return to P04. Its former uniform suppliers are analytically obstructed; see the recording-scale continuation below. Run `python3 scripts/check_prime_cascade.py` for its fresh source and premise audit.

The [CCC recording-scale pursuit](docs/ccc-recording-scale.md) proves exact horizon-matched prime blocks and a negative natural-prefix correlation, and gives a conditional net-scale return to RH. A prose PNT argument rejects the earlier uniform intermediate-prefix suppliers; that analytic obstruction is not Lean replayed. The complete signed scale estimate remains open. Run `python3 scripts/check_recording_scale.py` for fresh source and false-shortcut checks.

The [CCC finite Laplace recording](docs/ccc-prime-window-laplace.md) retains the exact signed boundary correction and checks a prime-two counterexample to dropping it at positive Laplace parameter one. An arithmetic upper estimate remains open. Continued research is recorded in [the prime-route handoff](docs/ccc-prime-research-continuation.md).

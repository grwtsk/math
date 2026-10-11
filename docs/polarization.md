# Real polarization and signed quadratic sectors

`GRWTSK.Analysis.Polarization` carries the established real inner-product identity `⟪x, y⟫_ℝ = (‖x + y‖² - ‖x - y‖²) / 4`. Its complete contract retains the original universe, space `E`, `NormedAddCommGroup E` and `InnerProductSpace ℝ E` assumptions. It applies Mathlib's existing real polarization lemma under its upstream identity.

The other two declarations retain an explicit negative signed difference despite separately nonnegative squared sectors, and the absence of a fixed universal lower bound over real pairs. These negative consequences limit the conclusions supported by separate sector positivity. No RH conclusion follows.

Three source theorems have complete formal type, universe, reference and transitive axiom checks. An original real L² energy-surplus proof was independently replayed against the canonical polarization constant with its original positive scale premise, integral pairing, finite coefficient inventories and actual states. One original intra-family proof and two separately counted synthetic public wrappers also depend on canonical constants.

Run `lake build --wfail` and `python3 scripts/check_polarization.py`. Checks cover exact positive contracts, allowed axioms, kernel proof checking, actual canonical dependencies, a missing inner-product instance, a wrong polarization sign and a false sector inference. Independent reconstruction uses pinned public dependencies, declared public package caches and fresh project outputs.

GRWTSK added canonical placement, contract preservation, consumer replay and independent interface checking. R.A. Jacob Martone supplied local mathematical direction, with OpenAI Codex formalization and verification assistance, under MIT. The historical human/machine authoring split is unknown. Lean and mathlib retain upstream identities, named authors and licenses through direct pinned dependencies. This is a verified local candidate; transactional admission and independent review remain pending. No new theorem, sole authorship, priority, executable equivalence or RH proof is claimed.

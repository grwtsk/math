# Interval reflection and signed integral pairing

`GRWTSK.Analysis.IntervalReflection` carries established real reflection, even/odd decomposition and conditional integral identities. Reflection uses the exact endpoints `a + b - t`; interval integrals are oriented and use Lebesgue measure. The generic zero-integral identities retain Mathlib's total-integral convention. Subsequent linearity requires its stated integrability premises.

Three definitions and eleven source theorems retain complete formal types, universes, definition bodies, generated helpers and allowed axiom closures. Signed square pairing requires both square-sector integrability assumptions. The even/odd pairing decomposition requires all four sector-product assumptions. Endpoint atoms and arithmetic boundary terms require separate treatment.

Five original source-pairing roots were checked with their original logarithmic lower endpoint, scaled upper endpoint, parameter domain, realization and explicit integrability assumptions. Their bodies depend on canonical constants. Original intra-family proofs and two synthetic public wrappers are counted separately.

Run `lake build --wfail` and `python3 scripts/check_interval_reflection.py`. Positive contracts and hostile endpoint, sign, missing premise and changed-measure controls are checked using Lean. Independent reconstruction uses pinned public dependencies, declared public package caches and fresh project outputs.

GRWTSK added canonical placement, preserved contracts, consumer replay and independent checks. Local direction: R.A. Jacob Martone; formalization and verification assistance: OpenAI Codex; MIT. Historical human/machine authorship split is unknown. Lean and Mathlib retain their upstream identities, authors and licenses. This is a verified local candidate with transactional admission and independent review pending. No new theorem, priority, executable equivalence or RH proof is claimed.

# Ordered interval products

`GRWTSK.Algebra.OrderedProduct` carries established finite-product and group identities. The newest factor acts on the left: the successor product is `A (n + k) * orderedProduct A n k`. Concatenating intervals puts the later interval on the left.

The basic product requires only `Monoid`. Gauge transport and conjugation use `Group`. Same-order inversion requires commuting factors. The sign-inverse theorem also requires the explicit edgewise conjugation law; neither hypothesis can be omitted.

Lean 4.33.0 and mathlib revision `db584cd6d46c92f209a44c0f1c829460d327499d` supply the upstream structures and lemmas. R.A. Jacob Martone maintains the local formalization under MIT, with OpenAI Codex assistance. Historical human and machine authoring contributions are incompletely reconstructed. GRWTSK adds a canonical interface, mechanical source organization, checking and consumer applications; no new mathematical theorem or priority is claimed.

The complete formal contracts of this local candidate have been compared with a separately verified baseline. Identified rational matrix-unit and complex linear-isometry consumers have been replayed against the canonical constants with their premise witnesses. The public audit independently exercises the generic interface. This does not prove a relation between those two carriers or an analytic or spectral estimate. It does not prove the Riemann Hypothesis.

This is a local candidate. Transactional admission, further review and public release remain pending. General custom-command transformations and native execution equivalence are outside the checked profile.

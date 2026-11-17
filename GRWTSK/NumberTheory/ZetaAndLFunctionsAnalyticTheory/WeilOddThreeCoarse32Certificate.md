# Conductor-three radius-one coarse checker: proof candidate and provenance

**Author/source attribution:** grwtsk contributors; AI-assisted source drafting. 2026-11-17.
**Owner:** `grwtsk/math` issue #1814; related complete-operator issue #1825.
**Claim scope:** original primitive parity-one conductor-three radius-one `DirichletStageChain.PrimitiveStageLower χ hp hn 0` for every **original** admissible test, conditional on kernel acceptance of the source proof candidates. This is neither RH nor conductor-three all-stage GRH.

## Base and supplier

- Source starting point: `grwtsk/math/main@e38f7691ab6721be025fd23636438ce011179cfd` (recheck publication head).
- Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Native source and reference integer algorithm: `scripts/verify_odd_three_sine_hs.py`, Git blob `b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 20–27, 84–97, 126–156.
- Existing original-source lemmas: `WeilOddThreeMultiplierTail.original_q3_multiplier_lipschitz_nine`, `WeilOddThreeCheckerCellDeficit.q3SineDeficit_le_checkerCellPrice`, `WeilOddSineCheckerSinc.abs_sincEntry_sub_scaled_sinc_lt`, `WeilOddSineCheckerTriangle.dense_eq_triangular`, `WeilOddSineDeficitRectangleGrid.sineDeficitRectangle_le_grid_envelope`, `WeilOddThreeStageSineReturn.q3_primitiveStageLower_of_rectangle_le_one`.
- Primary mathematical method: exact Weil/Plancherel original arithmetic identity, nonnegative sine-deficit Hilbert–Schmidt kernel estimate, and an exact rational outward envelope. No assumption of zeta/Dirichlet RH.

## New source and first consumer

- `WeilOddThreeCoarse32Geometry.lean`: each coarse 1/32 cell consists of four existing 1/128 cells. Take the **maximum** of their certified whole-cell deficit prices. Resample the SAME sinc lookup at index `4n`, with additional full coarse-cell variation `2*(500*128+1)+10^12/32`. Define the original-source coarse integer numerator and prove a continuum-to-rational bound with all ordered frequency pairs and both orientations retained.
- `WeilOddThreeCoarse32Certificate.lean`: kernel-evaluable theorem target for the literal numerator and denominator, exact strict rational comparison, and conditional composition with the existing original stage-zero return. No `sorry`, `admit`, or new axiom is inserted.
- `scripts/verify_odd_three_sine_coarse32.py`: **diagnostic**, reproduces exactly the integer checker input and coarse aggregation using the original `gamma_lower` and `trig` functions. Not a formal proof, not an independent mathematical review.

## Exact diagnostic integers

- Original fine frequency cells: 32768; original positive-price cells: 1381; last positive fine index: 20275.
- Coarse frequency cells: 8192; positive-price cells: 352; last positive coarse index: 5068.
- Numerator: `8697122502276302315122217776404148413005475681632975`.
- Denominator: `10106474906710399543890863104000000000000000000000000`.
- Positive difference: `1409352404434097228768645327595851586994524318367025`.
- Approximate ratio: 0.8605495568491117. The old strict `(219/250)^2` goal is NOT claimed by this certificate; stage zero only needs the rectangle ≤ 1.

## Verification and exact obligations

At the source-pinned commit, run both direct modules with `lake env lean`, then a root import build only if authorized. Use `leanchecker --fresh -v` for targeted modules and `#print axioms` on both terminal declarations; record stdout/stderr/exit status, compiler and mathlib pins, full import dependency SHA graph and actual branch SHA. Inspect the exact theorem statement and preservation of gamma, all prime powers 2–7 including signed entries 2,4,5,7 and zero entries 3,6, and the original `Admissible χ 1 f` quantifier.

**At publication:** Lean elaboration NOT_RUN; fresh kernel replay NOT_RUN; transitive axiom audit NOT_RUN; independent mathematical review NOT_RUN. Any compilation failure is a concrete failure to repair, not license to insert a `sorry` or weaken the source. The universal source-return route for all support radii/stages, the zeta source and primitive Dirichlet GRH remain OPEN.

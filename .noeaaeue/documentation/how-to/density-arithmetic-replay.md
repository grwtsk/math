# Reproduce density arithmetic checks

Run `python3 -B .noeaaeue/scripts/check_density_arithmetic.py` from the repository root. It uses pinned Lean 4.33.0 and Mathlib revision `db584cd6d46c92f209a44c0f1c829460d327499d`, fresh selected public dependency objects, trust zero, fatal warnings, literal theorem contracts and owned body/transitive-axiom audits. All selected project imports are freshly compiled in dependency order. Three hostile controls reject lost primality, an unpaid zero-cutoff extension and identification of the excluded correction with the unexcluded correction.

The public result is `.noeaaeue/evidence/NumberTheory/ArithmeticFunctions/density-arithmetic-checks.json`. Temporary snapshots and raw native output stay outside published documentation. A passing scoped replay does not establish independent human acceptance, a whole-repository build, excluded infinite moments or an arithmetic polynomial witness. P04, P05, original absolute MB6 and RH remain open.

The default checker covers the arithmetic modules and series consumers together. For incremental series checks after the arithmetic receipt exists, `python3 -B .noeaaeue/scripts/check_density_arithmetic.py --only-series --receipt .noeaaeue/evidence/NumberTheory/LSeries/density-series-checks.json` verifies unchanged source bindings, reuses their exact checked objects and freshly checks the two consumers.

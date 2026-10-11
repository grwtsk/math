# Verify a selected result

Use the committed Lean toolchain and Lake manifest with dependencies already installed. Do not run `lake update` as a verification step: it may change the dependency context. A missing cache is a prerequisite blocker, not a failed theorem.

For the least-prime family, a narrow replay can build only its consumer and audit:

```sh
lake build --wfail GRWTSK.NumberTheory.Prime.LeastPrime
lake env lean --trust=0 -DwarningAsError=true checks/PrimeArchitectureAudit.lean
```

Check the resulting axiom list against the recorded policy, not an assumed empty list. The accepted standard axioms here are `propext`, `Classical.choice`, `Quot.sound`; `sorryAx` is rejected. See [the actual selected receipt](../../evidence/prime-architecture-checks.json).

The present replay freshly elaborated the selected project sources with trust zero against existing pinned dependency objects. It was not a cold dependency reconstruction or whole-library build. Independently verify source hashes and dependency pins before transferring a receipt to another checkout.

Run `python3 -B scripts/check_documentation.py` for navigation/source/status validation. Older family commands are listed in the [page inventory](../reference/library-pages.md); their current-source validity must be checked individually. A timeout or interrupted run is an operational outcome, not mathematical refutation.

# Verify a selected result

Use the committed Lean toolchain and Lake manifest with dependencies already installed. Do not run `lake update` as a verification step: it may change the dependency context. A missing cache is a prerequisite blocker, not a failed theorem.

For the least-prime family, a narrow replay can build only its consumer and audit:

```sh
lake build --wfail GRWTSK.NumberTheory.Prime.LeastPrime
lake env lean --trust=0 -DwarningAsError=true GRWTSK/NumberTheory/Prime/Checks/ArchitectureAudit.lean
```

Check the resulting axiom list against the recorded policy, not an assumed empty list. The accepted standard axioms here are `propext`, `Classical.choice`, `Quot.sound`; `sorryAx` is rejected. See [the actual selected receipt](../../evidence/prime-architecture-checks.json).

The present replay freshly elaborated the selected project sources with trust zero against existing pinned dependency objects. It was not a cold dependency reconstruction or whole-library build. Independently verify source hashes and dependency pins before transferring a receipt to another checkout.

For repository-wide source verification, run the layout check, trust controls,
and frozen replay separately:

```sh
python3 -B .noeaaeue/scripts/check_math_layout.py
python3 -B .noeaaeue/scripts/check_math_trust.py --self-test
python3 -B .noeaaeue/scripts/check_math_trust.py --lean-self-test
python3 -B .noeaaeue/scripts/check_math_trust.py
```

The full replay defaults to a 4096 MiB Lean ceiling. If a retained receipt
shows a Lean `memory_exception`, `--memory-mib N` may raise that explicit
ceiling; the chosen value is recorded in the new receipt and does not convert
the earlier resource failure into a pass.

Run `python3 -B .noeaaeue/scripts/check_documentation.py` for navigation/source/status
validation and `python3 -B .noeaaeue/scripts/test_documentation_layout.py` for registry
controls. Older family commands are listed in the
[page inventory](../../../docs/reference/library-pages.md); their current-source validity
must be checked individually. A timeout, interruption, or memory ceiling is an
operational outcome, not mathematical refutation.

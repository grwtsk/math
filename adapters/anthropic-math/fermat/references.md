# Fermat consumer source and interface references

Local attribution: grwtsk contributors. Public upstream authorship and Apache-2.0
obligations remain in UPSTREAM-ATTRIBUTION.md, UPSTREAM-LICENSE and UPSTREAM-NOTICE.

The pinned dependency is anthropics/fermats-last-theorem at
6e837e75355538c7f80bab5b956861e86c4eacc2. Its FinalCheck.lean blob
3ffbd60b8f9736f5569e4dd4774701a114d18266 exports flt_pinned.
The [canonical paper ledger](../../../documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#anthropic-adapter-reconciliation)
retains exact Wiles/Taylor-Wiles identities and unresolved independent bridges.

The six local SOURCE_PROOF_CANDIDATE declarations and their exact expected types
are bound by [the static target](../../../documentation/mathematics/_verification/targets/NumberTheory/DiophantineEquations/anthropic-fermat-six-interfaces-20261029.json) at math
08f98951548df4b4cd74b1db97801a80c38b6e44. This checks positive-natural obstructions, zero factors,
full natural solution fibers and arbitrary bounded positive searches. Output zero
is included where the source includes it; the two axis candidates then coincide.
The [ledger continuation](../../../documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#anthropic-fermat-six-interfaces-20261029)
separates these roles. Compilation, Comparator, fresh independent replay, complete
transitive axiom audit and all six expected-interface checks remain NOT_RUN.
The native Lean4.33.1 project is outside the root default build.

## Integer parity fibers

The [canonical continuation](../../../documentation/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md#anthropic-fermat-integer-fibers-20261029)
records the five new SOURCE_PROOF_CANDIDATE roots at `18a0115ac4244d4540a25c47a496b42a22c6807d`,
blob `cfa2ac320c907a79324c452eedee295c8a26f4d8`, and their exact signed domains/hypotheses.
Proved source `flt_mathlib` plus pinned Mathlib Nat/Int transport supplies the
nonzero-coordinate obstruction; parity classifies the actual coordinates.
Odd zero-output fibers retain the full antidiagonal, while even fibers are the
four signed axis candidates, all coinciding at zero. The legacy homogeneous
quartic use is distinguished from the stronger `a^4+b^4=c^2` theorem.

[Target](../../../documentation/mathematics/_verification/targets/NumberTheory/DiophantineEquations/anthropic-fermat-integer-fibers-20261029.json), adjacent profile and TOML bind all5 roots and
literal expected types. Native4.33.1 remains isolated; all compilation, Comparator,
fresh replay, full axiom and interface facets are NOT_RUN. Original six natural
interfaces and historical outcomes remain unchanged and pending. No direct
root version-port or independent proof of the imported FLT closure is claimed.

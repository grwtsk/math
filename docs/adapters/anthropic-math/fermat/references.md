# Fermat consumer source and interface references

Local attribution: grwtsk contributors. Public upstream authorship and Apache-2.0
obligations remain in UPSTREAM-ATTRIBUTION.md, UPSTREAM-LICENSE and UPSTREAM-NOTICE.

The pinned dependency is anthropics/fermats-last-theorem at
6e837e75355538c7f80bab5b956861e86c4eacc2. Its FinalCheck.lean blob
3ffbd60b8f9736f5569e4dd4774701a114d18266 exports flt_pinned.

The six local SOURCE_PROOF_CANDIDATE declarations at math
08f98951548df4b4cd74b1db97801a80c38b6e44 address positive-natural obstructions, zero factors,
full natural solution fibers and arbitrary bounded positive searches. Output zero
is included where the source includes it; the two axis candidates then coincide.
Compilation, Comparator, fresh independent replay, complete
transitive axiom audit and all six expected-interface checks remain NOT_RUN.
The native Lean4.33.1 project is outside the root default build.

## Integer parity fibers

Five additional SOURCE_PROOF_CANDIDATE roots are recorded at `18a0115ac4244d4540a25c47a496b42a22c6807d`,
blob `cfa2ac320c907a79324c452eedee295c8a26f4d8`, with their exact signed domains and hypotheses.
Proved source `flt_mathlib` plus pinned Mathlib Nat/Int transport supplies the
nonzero-coordinate obstruction; parity classifies the actual coordinates.
Odd zero-output fibers retain the full antidiagonal, while even fibers are the
four signed axis candidates, all coinciding at zero. The legacy homogeneous
quartic use is distinguished from the stronger `a^4+b^4=c^2` theorem.

Verification requires all five roots and their
literal expected types. Native4.33.1 remains isolated; all compilation, Comparator,
fresh replay, full axiom and interface facets are NOT_RUN. Original six natural
interfaces and historical outcomes remain unchanged and pending. No direct
root version-port or independent proof of the imported FLT closure is claimed.

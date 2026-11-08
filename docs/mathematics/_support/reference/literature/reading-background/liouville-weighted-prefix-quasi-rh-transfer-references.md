# Liouville weighted-prefix quasi-RH transfer — source ledger shard

- **Title, attribution, date:** *Exact zero-abscissa closure and the strongest current weighted-prefix rate*, grwtsk contributors, 2026-10-31.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Lean source candidate:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedPrefixQuasiRHTransfer.lean`, Git blob `a4001d2e6fcedf46da6723b2b4ac0914c78d6659`.
- **Mathematical review:** `documentation/mathematics/_support/reviews/liouville-weighted-prefix-quasi-rh-transfer.md`, Git blob `ed68abea5fd4557956ac9df4404e62299219fdd1`.
- **Static target:** `documentation/mathematics/_verification/targets/liouville-weighted-prefix-quasi-rh-transfer.json`, Git blob `f487f357aa98047f711ce3196e35c655e4a55504`.
- **Local source pins:** zero-abscissa/odd-filter source blob `6cd289c5fce4754eab5f310d3d72b36bef30f00e`; weighted-prefix criterion blob `d62ab5b81eb8cec7b95964c88f875d3c2ef1f244`; odd-core channel source blob `983c4687208b736e34cb75e245c67ab030d5fecc`; polynomial absorption source blob `a8216e7e18982dce97bacb8d42d301a022f4f28e`.
- **External source pin:** OpenAI, *The Quasi-Riemann Hypothesis: A Zero-Free Half-Plane Re(s)>7/8*, `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, source `paper.tex` blob `268c4e3206d460c617d3d2129742a72b831b3def`.
- **Classical background:** Liouville Dirichlet series `zeta(2s)/zeta(s)`, power-abscissa/zero-free-half-plane correspondence, Mellin/Fourier Plancherel, and finite-prime Euler-factor removal.
- **Programme-specific result:** the exact weighted-prefix zero abscissa is `2*Theta-1`; the external `7/8` theorem therefore gives `J(T)=O_epsilon(exp((3/4+epsilon)T))`, with the same limiting fixed exponent for the odd filter and unchanged causal energy.
- **Boundary:** this is not `WeightedPrefixSquareAllRate`. The exact abscissa law makes that all-positive-rate supplier equivalent to `Theta=1/2`, hence to RH. The external theorem and its use have not been replayed in the local kernel.
- **Verification:** source inspection `DONE`; mathematical derivation `WRITTEN`; compilation, expected types, fresh kernel, transitive axiom audit, native execution and external theorem replay all `NOT_RUN`.

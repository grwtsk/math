# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Mu.Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d6b1ff684cde59c88654a846ec5231d2cf6aea0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d6b1ff684cde59c88654a846ec5231d2cf6aea0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Analytic.Stirling` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [abscissa_mem](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/abscissa-mem--3c0e3252cf40261a521960e4.md) | 35 | `result-track:3c0e3252cf40261a521960e4ec22c42246aa57ddc35ce00426bd10eb2bc45f58` |
| 2 | `lemma` | [re_term_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/re-term-eq--65558a48e2b102afea7dc001.md) | 49 | `result-track:65558a48e2b102afea7dc0017a859fcf570cdb3af154fca55e151ffe4171a482` |
| 3 | `lemma` | [re_inv_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/re-inv-eq--57068b31c36353d3581bf8b1.md) | 68 | `result-track:57068b31c36353d3581bf8b1621ae73b8acca9c691a5b37b0d7e07666c3ce517` |
| 4 | `lemma` | [summable_re_terms](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/summable-re-terms--c762c3903d8e9a2d93ecd7d8.md) | 77 | `result-track:c762c3903d8e9a2d93ecd7d82ee58e78a98de5ee2df733225752f9b18b8a3cd3` |
| 5 | `theorem` | [re_digamma_vertical](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/re-digamma-vertical--8482a59bb937ae87f3904ce0.md) | 87 | `result-track:8482a59bb937ae87f3904ce0271baaacfdf17ce7ec824cd3546c8fd868ae8c93` |
| 6 | `theorem` | [re_digamma_mono](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/re-digamma-mono--1d99e9cba65b96a643667a96.md) | 114 | `result-track:1d99e9cba65b96a643667a96c2ee9700ab7012c0a0ea950c585a5f4bd083a06d` |
| 7 | `lemma` | [mu_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/mu-eq--d292f618fe4cbf6b05901bf1.md) | 138 | `result-track:d292f618fe4cbf6b05901bf13fc1ebd1567168687441b6709344e199b2db7c5e` |
| 8 | `theorem` | [mu_monotoneOn](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/mu-monotoneon--a5bec3f9b2aa28ee3c790620.md) | 148 | `result-track:a5bec3f9b2aa28ee3c790620058312026b1e945c51f8caaae23600e3ce576c0a` |
| 9 | `theorem` | [mu_zero_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/mu-zero-le--d018a27d6bb969c3cbb944b7.md) | 161 | `result-track:d018a27d6bb969c3cbb944b73a213ee32170136a66c331dfa11cb4334e9e7621` |
| 10 | `theorem` | [neg_one_lt_mu_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/neg-one-lt-mu-zero--1d307e25a0274a34aeea643d.md) | 170 | `result-track:1d307e25a0274a34aeea643d3016e981e4d8ce38762163686718e0826f778de3` |
| 11 | `lemma` | [trigamma_tail_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/trigamma-tail-le--e0bf9e0c950c1ce905585520.md) | 223 | `result-track:e0bf9e0c950c1ce9055855200e5817991971eb3c665335f93fb5b658a48f16a2` |
| 12 | `lemma` | [summable_quarter_line](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/summable-quarter-line--f2e63fbf5c43f5da6452a93c.md) | 349 | `result-track:f2e63fbf5c43f5da6452a93cae717d220acc466700987dce71451f7ee10d1b8c` |
| 13 | `theorem` | [mu_deriv_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/Mu/Variantd1fa7c047443c82a7d229092174e5e059cfd91cd5804dab4d4c5c9e6354184f9.lean/declarations/mu-deriv-bound--88bca1bc5a5fa91ffb304e6d.md) | 367 | `result-track:88bca1bc5a5fa91ffb304e6dd6a5c8932a7bf8d4c6e0a6897efbd98210a64beb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

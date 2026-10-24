# Verification target: GRWTSK.NumberTheory.Chebyshev.TrivialZeroTentSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b186fd321c90002175fcbdfa2d818365675317c3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b186fd321c90002175fcbdfa2d818365675317c3`.

Source path: `GRWTSK/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.TrivialZeroResidues`](../../../../mathematics/NumberTheory/Zeta/Riemann/TrivialZeroResidues.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.TentResidueContributions`](../../../../mathematics/NumberTheory/Chebyshev/TentResidueContributions.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Real.TentRationalCorrection`](../../../../mathematics/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.InfiniteSum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [trivialMoment](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/trivialmoment--4dd670da689d5f3e02e63aee.md) | 42 | `declaration-track:4dd670da689d5f3e02e63aee892f10a1119bf94a95f8d9765e8db44f5354da2c` |
| 2 | `theorem` | [density_trivialPoint](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/density-trivialpoint--6ff2d8a273738b8031e9c70f.md) | 46 | `result-track:6ff2d8a273738b8031e9c70f1acc80d2df05f5dd825bf3b3dff7fb71dce573e6` |
| 3 | `theorem` | [powerWeight_intervalIntegrable](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/powerweight-intervalintegrable--551a92a7a52c991b23545d50.md) | 54 | `result-track:551a92a7a52c991b23545d50575dbef51532db2b84feea18e8645228ba73b176` |
| 4 | `theorem` | [trivialMoment_nonneg](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/trivialmoment-nonneg--4ddc36519553ddbb2e58c345.md) | 69 | `result-track:4ddc36519553ddbb2e58c345f7bf56601a056e46c042744824141e6a1ee50314` |
| 5 | `theorem` | [tentKernel_trivialPoint](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/tentkernel-trivialpoint--d387a04f08dd4dd2c221472c.md) | 77 | `result-track:d387a04f08dd4dd2c221472c60dd02cb80f623e7f4d1d246f0f7a6037be3079c` |
| 6 | `theorem` | [sum_trivialMoment_eq_neg_prefix](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/sum-trivialmoment-eq-neg-prefix--11be88c4f6b0b8bc7a22e7f0.md) | 109 | `result-track:11be88c4f6b0b8bc7a22e7f06eed7f1beb93c4f0925c479cfac8b4196c34adc5` |
| 7 | `theorem` | [hasSum_trivialMoment](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/hassum-trivialmoment--5553f82141cb4f1f9f7bcc75.md) | 119 | `result-track:5553f82141cb4f1f9f7bcc75d4ef905d8ef1b99113b732c96e4dda724af814f4` |
| 8 | `theorem` | [finite_trivial_coefficients](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/finite-trivial-coefficients--88249b975074807b365c9806.md) | 126 | `result-track:88249b975074807b365c98069f67be7602f51257b9bdcb96c8a56e685da35fe1` |
| 9 | `theorem` | [trivial_tent_residue_limit](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/trivial-tent-residue-limit--65268cf5f1b640af8174b878.md) | 136 | `result-track:65268cf5f1b640af8174b8783f1f08f5c0cc3f1adee01a1c4eacd0e57df3a93e` |
| 10 | `theorem` | [hasSum_trivial_tent_coefficients](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/hassum-trivial-tent-coefficients--fc661495616428e40e4c3e05.md) | 143 | `result-track:fc661495616428e40e4c3e05951424e508a42589af72ea733af9169a85656bf8` |
| 11 | `theorem` | [summable_norm_trivial_tent_coefficients](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/summable-norm-trivial-tent-coefficients--04b8a3c4d3be4c76b7ab575c.md) | 153 | `result-track:04b8a3c4d3be4c76b7ab575c6f1e34da1b4e5221b81fce8051d871de8021fff1` |
| 12 | `theorem` | [tsum_trivial_tent_coefficients](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/tsum-trivial-tent-coefficients--76a5e1de7612ea9feadc5de0.md) | 163 | `result-track:76a5e1de7612ea9feadc5de02e1f5887e320a51f7ec9c58341841ea5a925476f` |
| 13 | `theorem` | [trivial_tent_remainder_bound](../../../../mathematics/NumberTheory/Chebyshev/TrivialZeroTentSeries.lean/declarations/trivial-tent-remainder-bound--b3ea85295596d1ebfead70a1.md) | 168 | `result-track:b3ea85295596d1ebfead70a168692bfb48bc92f57c98f009b9fbf4d20d5d0dc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

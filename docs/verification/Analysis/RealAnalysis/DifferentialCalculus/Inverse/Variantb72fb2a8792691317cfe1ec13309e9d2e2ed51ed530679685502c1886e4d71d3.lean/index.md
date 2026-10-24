# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Inverse.Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b00344f178ed834b82d43ed4fd2c2284f0b7ee70",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b00344f178ed834b82d43ed4fd2c2284f0b7ee70`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictDerivAt.hasStrictFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/hasstrictderivat-hasstrictfderivat-equiv--e7ff45daa408c8afa48fba18.md) | 36 | `result-track:e7ff45daa408c8afa48fba18d4654166796e2411832d5362cec5d32ac8db4c6a` |
| 2 | `theorem` | [HasDerivAt.hasFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/hasderivat-hasfderivat-equiv--5ac288f97ea9a0f3c6951ae0.md) | 41 | `result-track:5ac288f97ea9a0f3c6951ae0c7cc27dc3cf12a865eb17b9856dd44ceb5f4413a` |
| 3 | `theorem` | [HasStrictDerivAt.of_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/hasstrictderivat-of-local-left-inverse--557ce87e883b9ecbafa1eb54.md) | 52 | `result-track:557ce87e883b9ecbafa1eb5452317f98a21cdda3ce3d3c6fb92dd9e29ebcca6c` |
| 4 | `theorem` | [PartialHomeomorph.hasStrictDerivAt_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/partialhomeomorph-hasstrictderivat-symm--e67d606e492adbde9efa828c.md) | 63 | `result-track:e67d606e492adbde9efa828c4f92d8510faa030daa4b36b23b581e2fafb3c03f` |
| 5 | `theorem` | [HasDerivAt.of_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/hasderivat-of-local-left-inverse--dd0ece8c32ff298dc7b0b402.md) | 73 | `result-track:dd0ece8c32ff298dc7b0b402e45adec54a13d253af5d4be6d67a7d781bb53d25` |
| 6 | `theorem` | [PartialHomeomorph.hasDerivAt_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/partialhomeomorph-hasderivat-symm--431de7cace5039615af1fb2d.md) | 83 | `result-track:431de7cace5039615af1fb2d1c8ea82acb2efe652eb79f780ab45e831e97a6b5` |
| 7 | `theorem` | [HasDerivWithinAt.eventually_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/hasderivwithinat-eventually-ne--2f1a391acc1fff1227d9a59c.md) | 87 | `result-track:2f1a391acc1fff1227d9a59cbb7c06d083e6fc7c9a20b3d730cca0224ae01615` |
| 8 | `theorem` | [HasDerivAt.eventually_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/hasderivat-eventually-ne--46e095f6cdc7cc9d663c316d.md) | 92 | `result-track:46e095f6cdc7cc9d663c316db1887dfd4b48bc262719ef0678aa6f52c7e8b6a0` |
| 9 | `theorem` | [HasDerivAt.tendsto_nhdsNE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/hasderivat-tendsto-nhdsne--6cda367fe9e3c49c612662a4.md) | 96 | `result-track:6cda367fe9e3c49c612662a4f2b81e9a01085a4b4dbf2359ec2623094376a7fc` |
| 10 | `theorem` | [derivWithin_zero_of_frequently_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/derivwithin-zero-of-frequently-const--40694a89c40521116bc057f1.md) | 107 | `result-track:40694a89c40521116bc057f1b8753d2b47f99e7290fa5f7fc9458493fec46b96` |
| 11 | `theorem` | [deriv_zero_of_frequently_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/deriv-zero-of-frequently-const--835940e9345bf6a7468280eb.md) | 118 | `result-track:835940e9345bf6a7468280ebaf6aee7c6270e2ad0a919daf4cf48f68233dc9a8` |
| 12 | `theorem` | [not_differentiableWithinAt_of_local_left_inverse_hasDerivWithinAt_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/not-differentiablewithinat-of-local-left-inverse-hasderivwithinat-zero--d657bd47363d95fb821d513b.md) | 122 | `result-track:d657bd47363d95fb821d513be99698c9fe246b06badd47047fd09933b3bbda51` |
| 13 | `theorem` | [not_differentiableAt_of_local_left_inverse_hasDerivAt_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variantb72fb2a8792691317cfe1ec13309e9d2e2ed51ed530679685502c1886e4d71d3.lean/declarations/not-differentiableat-of-local-left-inverse-hasderivat-zero--bac9128a6f05a58e3f244f2b.md) | 129 | `result-track:bac9128a6f05a58e3f244f2bb0b643a4165b66ed27ada17be316b8cb28553fd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

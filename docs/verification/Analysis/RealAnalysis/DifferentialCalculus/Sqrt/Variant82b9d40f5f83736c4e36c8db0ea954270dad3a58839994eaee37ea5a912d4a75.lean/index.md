# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Sqrt.Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "59278b087d33298a85403681c2bb68ceb3e7206d",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `59278b087d33298a85403681c2bb68ceb3e7206d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqPartialHomeomorph](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/sqpartialhomeomorph--e58921781da36cb35e818616.md) | 29 | `declaration-track:e58921781da36cb35e81861673d345938a68b253892b121732f21bfaa061d93c` |
| 2 | `theorem` | [deriv_sqrt_aux](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/deriv-sqrt-aux--3301d99d261b7a8a4f2945ed.md) | 43 | `result-track:3301d99d261b7a8a4f2945ed2bc4a899fcfd64b60a0dfbffda4924dc9370f243` |
| 3 | `theorem` | [hasStrictDerivAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/hasstrictderivat-sqrt--87f95ef5abc4e8dab33fb9dc.md) | 57 | `result-track:87f95ef5abc4e8dab33fb9dc7325a3a5a7147a7e78ecc546c3057729f8cfb268` |
| 4 | `theorem` | [contDiffAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/contdiffat-sqrt--04433490daecc98102864e02.md) | 61 | `result-track:04433490daecc98102864e022599674a03bd0db12341823ac560d77234389b31` |
| 5 | `theorem` | [hasDerivAt_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/hasderivat-sqrt--f862992fd460d24858ceda35.md) | 64 | `result-track:f862992fd460d24858ceda35f8b0c8377c07849eaa49ff93dcb12905ea808433` |
| 6 | `theorem` | [HasDerivWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/hasderivwithinat-sqrt--683009de63fa9c8ecffced66.md) | 75 | `result-track:683009de63fa9c8ecffced66e9f83feed34d0af2352ffeca8ed3011160b7e178` |
| 7 | `theorem` | [HasDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/hasderivat-sqrt--286a554dbdcb2cd34dc65409.md) | 80 | `result-track:286a554dbdcb2cd34dc65409533ed8d76749cfc18562dd865581cb14bfd677fe` |
| 8 | `theorem` | [HasStrictDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/hasstrictderivat-sqrt--bd4248aacb0fa297b5c63eaa.md) | 84 | `result-track:bd4248aacb0fa297b5c63eaa31647a4a79c3ba2988094061c05c05f512a66124` |
| 9 | `theorem` | [derivWithin_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/derivwithin-sqrt--2b762dd115de159a8636b3a5.md) | 88 | `result-track:2b762dd115de159a8636b3a56536173de99a42d8782775db17b8615375edae3f` |
| 10 | `theorem` | [deriv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/deriv-sqrt--25ec54201b998ca41714fc7d.md) | 94 | `result-track:25ec54201b998ca41714fc7d13a5ee62cc7cde939a28c357998e71058ba8c882` |
| 11 | `theorem` | [HasFDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/hasfderivat-sqrt--fc30667c5d6a8e5f1f9ec601.md) | 105 | `result-track:fc30667c5d6a8e5f1f9ec6017b8f33b7fb98c6f430003815f43915dcfa4317ec` |
| 12 | `theorem` | [HasStrictFDerivAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/hasstrictfderivat-sqrt--2ea55f597ac6ad7c844fb5d6.md) | 109 | `result-track:2ea55f597ac6ad7c844fb5d66510ce2bb19dc90ebd83b86e350bfc8a3edadd34` |
| 13 | `theorem` | [HasFDerivWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/hasfderivwithinat-sqrt--85e6376096d145a917dd5c4f.md) | 113 | `result-track:85e6376096d145a917dd5c4f82a2f584940396b5a08471ae06ea3206fd56fe17` |
| 14 | `theorem` | [DifferentiableWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/differentiablewithinat-sqrt--a5174954a22dea460ec6ab35.md) | 118 | `result-track:a5174954a22dea460ec6ab35cfa71fff7a190eaf4eb0a534bfab9e36a2650ee3` |
| 15 | `theorem` | [DifferentiableAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/differentiableat-sqrt--46f1cb1414c95324d41122b2.md) | 123 | `result-track:46f1cb1414c95324d41122b2aaac7d3c8754208a3a51b6d987b59f827505296b` |
| 16 | `theorem` | [DifferentiableOn.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/differentiableon-sqrt--4715cbaf271264b4608d0855.md) | 128 | `result-track:4715cbaf271264b4608d08550acf9990b34bd1dbfe11bb00fdbc678f42d3fc8e` |
| 17 | `theorem` | [Differentiable.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/differentiable-sqrt--2d7ebaaedea4fa550d4782f7.md) | 132 | `result-track:2d7ebaaedea4fa550d4782f786ef8799af541d77986a41bded93e859f950108c` |
| 18 | `theorem` | [fderivWithin_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/fderivwithin-sqrt--c9f042775719f8a69f5f13a4.md) | 135 | `result-track:c9f042775719f8a69f5f13a494abfd1c40468d3dc07b4a7b162b0b7a55eb8d2e` |
| 19 | `theorem` | [fderiv_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/fderiv-sqrt--e886ab808912dba25cd99e02.md) | 141 | `result-track:e886ab808912dba25cd99e02832e1730c25fc9ebcd4c010d9c9d6ab1eabe2a73` |
| 20 | `theorem` | [ContDiffAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/contdiffat-sqrt--527a3f54f1b9ef74d5b2a46b.md) | 146 | `result-track:527a3f54f1b9ef74d5b2a46ba4051460fe900709fe1d59d5f8c11780fbe061a4` |
| 21 | `theorem` | [ContDiffWithinAt.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/contdiffwithinat-sqrt--3e88383bfdc6b4290ec0a381.md) | 151 | `result-track:3e88383bfdc6b4290ec0a3814406a83d35523d738c493905f7aae236bb46fd5d` |
| 22 | `theorem` | [ContDiffOn.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/contdiffon-sqrt--b3d6313cea14211e898c78be.md) | 156 | `result-track:b3d6313cea14211e898c78be920561c2fef68a593f8734d8d95cf825ffee1430` |
| 23 | `theorem` | [ContDiff.sqrt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Sqrt/Variant82b9d40f5f83736c4e36c8db0ea954270dad3a58839994eaee37ea5a912d4a75.lean/declarations/contdiff-sqrt--803fa323347af4af66b429d4.md) | 160 | `result-track:803fa323347af4af66b429d4050c40693e07e2ef4eb1e875abfbb5f32e487951` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

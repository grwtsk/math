# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AffineMap.Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "68523f78048984735aa9ba59cb3319198c0b88d2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `68523f78048984735aa9ba59cb3319198c0b88d2`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Linear` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineMap` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/hasstrictderivat--5ab66c912e3c9a236d6a1e54.md) | 40 | `result-track:5ab66c912e3c9a236d6a1e54f32f6c77597fa491b60ca288aec827f76beef215` |
| 2 | `theorem` | [hasDerivAtFilter](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/hasderivatfilter--c7a11f1dbad38e4325a327cd.md) | 44 | `result-track:c7a11f1dbad38e4325a327cdc16e95314f4a260b52d5859a1a87f9cad6f057a9` |
| 3 | `theorem` | [hasDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/hasderivwithinat--9c2c4048517d88c82eec8613.md) | 48 | `result-track:9c2c4048517d88c82eec861396e528216060ffa8e582f2b20d1c5ed86784f69a` |
| 4 | `theorem` | [hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/hasderivat--3745cc7f07390a40f13fb3c0.md) | 49 | `result-track:3745cc7f07390a40f13fb3c03e46249b28f94b2e6c5428fb6951de6873463971` |
| 5 | `theorem` | [derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/derivwithin--ee42ff6975d4e013b9da61b1.md) | 51 | `result-track:ee42ff6975d4e013b9da61b1e765d408e257c9b13a42e5d9ce3a4a4c5050956e` |
| 6 | `theorem` | [deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/deriv--554a00ec5f07324c2afec302.md) | 55 | `result-track:554a00ec5f07324c2afec30208ebd630c30489c0b930ee3f099a81fbeb713b54` |
| 7 | `theorem` | [differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/differentiableat--87514ffd1a6c1a965135e8a9.md) | 57 | `result-track:87514ffd1a6c1a965135e8a906cf2927f0d8b88cc8944b8b2ecb11822b9d25bc` |
| 8 | `theorem` | [differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/differentiable--2f452803458651248a3c2574.md) | 58 | `result-track:2f452803458651248a3c2574b83b39b6a2f88d4d8597e9e7ca7c461537ed51cc` |
| 9 | `theorem` | [differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/differentiablewithinat--4dcf197770a2fc9ec6dea7cc.md) | 60 | `result-track:4dcf197770a2fc9ec6dea7cc8f1d4af5131ce38e53aa1f5a5cbeec002081f9b5` |
| 10 | `theorem` | [differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/differentiableon--1e503bc482e6dc1a9d595e9d.md) | 63 | `result-track:1e503bc482e6dc1a9d595e9de61d3bef589bab489829944ccca19dd400f9f82a` |
| 11 | `theorem` | [hasStrictDerivAt_lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/hasstrictderivat-linemap--ebaab1e45844bea1e347a3ae.md) | 72 | `result-track:ebaab1e45844bea1e347a3aeabf157a0d7904da01433122e574e3f81d0cf7836` |
| 12 | `theorem` | [hasDerivAt_lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/hasderivat-linemap--a1f4e940575982d164c31dae.md) | 75 | `result-track:a1f4e940575982d164c31daeab695a782fbc111c697f25a1f629dabc18b52cb6` |
| 13 | `theorem` | [hasDerivWithinAt_lineMap](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/AffineMap/Variant7e01b41c9361bb0fa44aea45832cf37bdee64cdbcb0ba61ede358664ba5d07d8.lean/declarations/hasderivwithinat-linemap--f0a0fe37db23c7d14aaace09.md) | 78 | `result-track:f0a0fe37db23c7d14aaace092d12feb8da333e17d5c50cab95b38274b7bce716` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ComplexDeriv.Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ba1507a68a258fb18ad9daa7e51c06018f9bd3d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ba1507a68a258fb18ad9daa7e51c06018f9bd3d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean/declarations/macro-rules--bc21323e72bfc0369f182aae.md) | 27 | `declaration-track:bc21323e72bfc0369f182aaee0eddd6e810b3b7fed3f9f2a9143db17edc4c04e` |
| 2 | `theorem` | [hasStrictDerivAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean/declarations/hasstrictderivat-tan--5651a22ce8626e5738abdf8f.md) | 35 | `result-track:5651a22ce8626e5738abdf8fab3cb679e9b338a25af586a96a53becbe84808cb` |
| 3 | `theorem` | [hasDerivAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean/declarations/hasderivat-tan--3859c6442629d3b6ccc93579.md) | 41 | `result-track:3859c6442629d3b6ccc9357906b9d7f8c3ccbb14d55cb102e9c52d7f187b7e24` |
| 4 | `theorem` | [tendsto_abs_tan_of_cos_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean/declarations/tendsto-abs-tan-of-cos-eq-zero--62d9343661fe0dccfa7ad7b9.md) | 47 | `result-track:62d9343661fe0dccfa7ad7b9cedf4b933abeaee2f6f059ac78aa1533c19aaf86` |
| 5 | `theorem` | [tendsto_abs_tan_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean/declarations/tendsto-abs-tan-attop--9fc548717452d1514ebfb586.md) | 57 | `result-track:9fc548717452d1514ebfb586792970e92b43d61971eba16398e701d62208f79a` |
| 6 | `theorem` | [continuousAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean/declarations/continuousat-tan--90fa89821367f70f396aea9b.md) | 63 | `result-track:90fa89821367f70f396aea9bb63d8e5b08253dffe2d4d3ca71910dc66b5d0e14` |
| 7 | `theorem` | [differentiableAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean/declarations/differentiableat-tan--5f23919ba5e5b19e3bfd95fc.md) | 70 | `result-track:5f23919ba5e5b19e3bfd95fcaf9e51034a3c4110d4081a44ce653dbf65501fea` |
| 8 | `theorem` | [deriv_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean/declarations/deriv-tan--c2793de9b0a877f779dd047a.md) | 75 | `result-track:c2793de9b0a877f779dd047a0563fc0c4a7442d6d28d8d8b11bc96c2c9f2ebcf` |
| 9 | `theorem` | [contDiffAt_tan](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ComplexDeriv/Variant6d032fba3e5695a7ba79198db095020405f375261320c0ce3e1753e78d362b90.lean/declarations/contdiffat-tan--7c3138139b93301b43ad9edc.md) | 83 | `result-track:7c3138139b93301b43ad9edcc6cf738d0abb26723f9b747dae542f6ecb444192` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

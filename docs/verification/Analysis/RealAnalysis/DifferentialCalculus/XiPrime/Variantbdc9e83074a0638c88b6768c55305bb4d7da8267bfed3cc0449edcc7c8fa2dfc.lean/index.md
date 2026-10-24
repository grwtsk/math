# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.XiPrime.Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "631c0a3302b20c512f8e41bddba51cebd6a701a8",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `631c0a3302b20c512f8e41bddba51cebd6a701a8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xi](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/xi--0c96f68c69f7d3b8f05d2918.md) | 31 | `declaration-track:0c96f68c69f7d3b8f05d29184c1eaaa0a0a3f2ae31d308472292baa649dda8af` |
| 2 | `def` | [xiDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/xideriv--b4492a7d93a8668dff53d669.md) | 34 | `declaration-track:b4492a7d93a8668dff53d6694d425664bbc870d0814fe80412b245d69661293e` |
| 3 | `def` | [IsXiDerivZero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/isxiderivzero--e6e4c8c978144ced451b1e38.md) | 37 | `declaration-track:e6e4c8c978144ced451b1e380b2516cdb2a7f96f53091593811c77331e20481c` |
| 4 | `def` | [xiDerivMult](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/xiderivmult--3cdbf9cafe9d640a439516b4.md) | 40 | `declaration-track:3cdbf9cafe9d640a439516b469ffcdd874d8524e4a331136aca22dc03c15e892` |
| 5 | `def` | [zerosIn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/zerosin--0ebb235f9fcbd6cd63d9e602.md) | 46 | `declaration-track:0ebb235f9fcbd6cd63d9e602affbaa14808688a9714c8628322e87c48bd04622` |
| 6 | `def` | [Ncount](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/ncount--c0d34a7bbeeb83105e7d2b60.md) | 49 | `declaration-track:c0d34a7bbeeb83105e7d2b6019f04513e447620a92a963b3f0cbf12f78671d97` |
| 7 | `def` | [Ndist](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/ndist--2c9135b996c5bfd2171e6f04.md) | 52 | `declaration-track:2c9135b996c5bfd2171e6f04efb0e9bcc1cf06ac74221563c1bcfd7e85359097` |
| 8 | `def` | [N0simple](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/n0simple--8dfcac58598c2109f511130c.md) | 56 | `declaration-track:8dfcac58598c2109f511130cc67499838a568332b3e2780e2acc3153c8ded4c1` |
| 9 | `theorem` | [xiPrime_zeros_in_open_critical_strip](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/xiprime-zeros-in-open-critical-strip--f77f36392eeaac33c497400a.md) | 67 | `result-track:f77f36392eeaac33c497400a054b9462e7283aa509743244b0a9c19c594b8610` |
| 10 | `theorem` | [xiPrime_over_xi_re_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/xiprime-over-xi-re-pos--e7d69896f7101eeecdc30402.md) | 72 | `result-track:e7d69896f7101eeecdc30402be40c9c2acf52f648515fea4e299563d6c6cd3c0` |
| 11 | `theorem` | [xiPrime_simple_zeros_on_critical_line](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/xiprime-simple-zeros-on-critical-line--5cf7bc46de631696495d67f3.md) | 79 | `result-track:5cf7bc46de631696495d67f3c0c5ad21f63027b638a3ca4ba0cec7857830cea3` |
| 12 | `theorem` | [xiPrime_simple_zeros_on_critical_line_cumulative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/xiprime-simple-zeros-on-critical-line-cumulative--d004bc3995924ac7562e521d.md) | 86 | `result-track:d004bc3995924ac7562e521dc6857e2608539b8342a6e585ea73bbaa509ac04b` |
| 13 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic--f23b5edb91ba7c6c6690953d.md) | 94 | `result-track:f23b5edb91ba7c6c6690953d480ed19ecacc31721ef4462151ba139b8c06a72f` |
| 14 | `theorem` | [xiPrime_simple_zeros_on_critical_line_quartic_cumulative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variantbdc9e83074a0638c88b6768c55305bb4d7da8267bfed3cc0449edcc7c8fa2dfc.lean/declarations/xiprime-simple-zeros-on-critical-line-quartic-cumulative--27564b64f0e82f1160ad4944.md) | 102 | `result-track:27564b64f0e82f1160ad49448dccf5c4849f2353cb23cdfd6977b65eb8025c92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

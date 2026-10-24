# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Inverse.Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac3a640138c24139222f899903e1bdecb5725f71",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac3a640138c24139222f899903e1bdecb5725f71`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasStrictDerivAt.hasStrictFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/hasstrictderivat-hasstrictfderivat-equiv--37eabbceb1bf9f3bb2fb363c.md) | 44 | `result-track:37eabbceb1bf9f3bb2fb363c326f2eae1e3a587a5870ef59c966d56ad6d11241` |
| 2 | `theorem` | [HasDerivAt.hasFDerivAt_equiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/hasderivat-hasfderivat-equiv--2438228a70d44bca5fc96841.md) | 49 | `result-track:2438228a70d44bca5fc96841b5ae7c89c414f085962626a135eabb9ef2eb03b8` |
| 3 | `theorem` | [HasStrictDerivAt.of_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/hasstrictderivat-of-local-left-inverse--558806b3ff00e514a2cd6fc2.md) | 60 | `result-track:558806b3ff00e514a2cd6fc21cecbb08f25121f3a4c805457a2bde2c812e7fa9` |
| 4 | `theorem` | [PartialHomeomorph.hasStrictDerivAt_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/partialhomeomorph-hasstrictderivat-symm--ab379efdd84d714fae69d1ef.md) | 71 | `result-track:ab379efdd84d714fae69d1ef5ecbd384c3e8ceb5143b0fee138dde888fc6b824` |
| 5 | `theorem` | [HasDerivAt.of_local_left_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/hasderivat-of-local-left-inverse--71e43cb7a5f123d6cfcc9390.md) | 81 | `result-track:71e43cb7a5f123d6cfcc9390af7932ea5c298228c9dd8e2b9adc8a9db2363637` |
| 6 | `theorem` | [PartialHomeomorph.hasDerivAt_symm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/partialhomeomorph-hasderivat-symm--7358d085382603ac11606a79.md) | 91 | `result-track:7358d085382603ac11606a794a5d8bd268526eadaf3cbbd599edb106b5abd437` |
| 7 | `theorem` | [HasDerivWithinAt.eventually_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/hasderivwithinat-eventually-ne--a2c232344c876798ae2ad37b.md) | 95 | `result-track:a2c232344c876798ae2ad37b7fe507b2cc718d2a7aa533e9ac94f53cd71ba4f6` |
| 8 | `theorem` | [HasDerivAt.eventually_ne](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/hasderivat-eventually-ne--57f70da5c671eb09b7157abf.md) | 100 | `result-track:57f70da5c671eb09b7157abfd15852a05aab4eaedf3adae59035e5c583b71893` |
| 9 | `theorem` | [HasDerivAt.tendsto_nhdsNE](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/hasderivat-tendsto-nhdsne--1d707ed91012b15a5067949c.md) | 104 | `result-track:1d707ed91012b15a5067949c2504b58bcee09161fb91351eb8e33180fe8f9658` |
| 10 | `theorem` | [derivWithin_zero_of_frequently_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/derivwithin-zero-of-frequently-const--04378121b914322806ee315f.md) | 115 | `result-track:04378121b914322806ee315f11b2bbe2d670c60342641354561cee17711beac7` |
| 11 | `theorem` | [deriv_zero_of_frequently_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/deriv-zero-of-frequently-const--de2ca1074eea47d67cab0139.md) | 126 | `result-track:de2ca1074eea47d67cab01395f2fc604d712350625c6e81b669432f986be6880` |
| 12 | `theorem` | [not_differentiableWithinAt_of_local_left_inverse_hasDerivWithinAt_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/not-differentiablewithinat-of-local-left-inverse-hasderivwithinat-zero--c4bf5a17b69c32e56a9afe66.md) | 130 | `result-track:c4bf5a17b69c32e56a9afe66487a4a68831bf2a0cc96db196b052421b272895c` |
| 13 | `theorem` | [not_differentiableAt_of_local_left_inverse_hasDerivAt_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Inverse/Variant1972fbf451b713c2ade14e9a94dbc938dadfb8bb0aaa2e888987ae65ffaafcef.lean/declarations/not-differentiableat-of-local-left-inverse-hasderivat-zero--8fea8a3ec443bcc55b1f695d.md) | 137 | `result-track:8fea8a3ec443bcc55b1f695dedac0da76fb2fb02b299ae7adc222d8e9feebf8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

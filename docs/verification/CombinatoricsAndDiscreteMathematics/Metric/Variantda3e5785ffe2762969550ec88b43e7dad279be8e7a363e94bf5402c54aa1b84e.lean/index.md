# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Metric.Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "375460c30ae46dec36bd78dcaaeb23403892957a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `375460c30ae46dec36bd78dcaaeb23403892957a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SpectralClosure.Bitfield` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveWeights](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/positiveweights--14a513d2fe2e715ce44b5466.md) | 26 | `declaration-track:14a513d2fe2e715ce44b5466d6b7d2607235205468d449607fde4da7c03da439` |
| 2 | `def` | [weightedHamming](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/weightedhamming--f1ab688162e97e0491aeddbb.md) | 30 | `declaration-track:f1ab688162e97e0491aeddbbeb1f8756ab0181586828858af7759311d0b5e74a` |
| 3 | `theorem` | [weightedHamming_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/weightedhamming-nonnegative--ae8eb21ac61f83c9cbf3ca77.md) | 39 | `result-track:ae8eb21ac61f83c9cbf3ca77ab7c7d21898660151aeecd590f2b04676b6ecaab` |
| 4 | `theorem` | [weightedHamming_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/weightedhamming-self--1e74c850dfae40c4de4b62ef.md) | 51 | `result-track:1e74c850dfae40c4de4b62ef1359254d1b56a3baf201784537a0f10487294021` |
| 5 | `theorem` | [weightedHamming_symmetric](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/weightedhamming-symmetric--b1e22167eb2baf32f6700ddc.md) | 58 | `result-track:b1e22167eb2baf32f6700ddc41954e2068eda4c4c65efca43827a9386c7ca107` |
| 6 | `theorem` | [weightedHamming_triangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/weightedhamming-triangle--0fb2df1632521b6042cc7323.md) | 72 | `result-track:0fb2df1632521b6042cc732372eaf87494a1d20d7f87be4b80ef49994b26b201` |
| 7 | `theorem` | [weightedHamming_separates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/weightedhamming-separates--879cdae00ff422563b005266.md) | 90 | `result-track:879cdae00ff422563b005266702cdb479d58405a0c7647dbb801de9b6ef38e7f` |
| 8 | `structure` | [PseudometricData](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/pseudometricdata--d800925bf7fb3c446c413003.md) | 126 | `declaration-track:d800925bf7fb3c446c413003e3ab6b46f5a7197bef3a711ba590c2d4734de3c1` |
| 9 | `def` | [ZeroDistance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/zerodistance--191c7b805d58b48658486215.md) | 136 | `declaration-track:191c7b805d58b486584862151941637b54f506e7ac9e298cac10e183a871f6b1` |
| 10 | `theorem` | [zeroDistance_equivalence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/zerodistance-equivalence--651bbece8bc63eb9b4e8582f.md) | 142 | `result-track:651bbece8bc63eb9b4e8582f416e415da5cf73508f6f7283a11ae253480833f2` |
| 11 | `def` | [zeroDistanceSetoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/zerodistancesetoid--d81d529022f577d6a66cd55e.md) | 156 | `declaration-track:d81d529022f577d6a66cd55e402fcb02fea89152fcc0718e3c091db17794bc78` |
| 12 | `abbrev` | [SeparatedQuotient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/separatedquotient--41812cb45f7cd2c81ea00cce.md) | 163 | `declaration-track:41812cb45f7cd2c81ea00ccec480754a8462c0fde5cb43544927a4e570bdb82c` |
| 13 | `theorem` | [quotient_identifies_exactly_zero_distance](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/quotient-identifies-exactly-zero-distance--f1ede0322c3858e79e4393c2.md) | 168 | `result-track:f1ede0322c3858e79e4393c29cb621981011018cae63899f7f48cbc76b074285` |
| 14 | `def` | [Separated](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Metric/Variantda3e5785ffe2762969550ec88b43e7dad279be8e7a363e94bf5402c54aa1b84e.lean/declarations/separated--ec580f9df37077a577b7caa9.md) | 177 | `declaration-track:ec580f9df37077a577b7caa961f365cb9ba3baab3d60106117ace5280993aa5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

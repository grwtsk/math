# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Markov.Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edd595cc9784f11733e884c4f969fd0eba5bebf0",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edd595cc9784f11733e884c4f969fd0eba5bebf0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue.Add` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_add_mul_meas_add_le_le_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/lintegral-add-mul-meas-add-le-le-lintegral--691baed44ab1cb73799168ec.md) | 36 | `result-track:691baed44ab1cb73799168ec9469ec602beae3cc862d7ea378c2a43e6ed91ea0` |
| 2 | `theorem` | [mul_meas_ge_le_lintegral₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/mul-meas-ge-le-lintegral--7db7d270c2941dc2ff73f61b.md) | 54 | `result-track:7db7d270c2941dc2ff73f61bd6e18bc5f25ddd5d3952167a52b29a0e421776d8` |
| 3 | `theorem` | [mul_meas_ge_le_lintegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/mul-meas-ge-le-lintegral--62298f2ddeaf01368d69e46d.md) | 61 | `result-track:62298f2ddeaf01368d69e46dd427a0de1f2b4871e5ab611e93635ed7c712e644` |
| 4 | `lemma` | [meas_le_lintegral₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/meas-le-lintegral--6f3a39b5e264b05c081240d3.md) | 65 | `result-track:6f3a39b5e264b05c081240d340bf939ce93c3efb27a7ef47dcb3438e227d1a2a` |
| 5 | `lemma` | [lintegral_le_meas](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/lintegral-le-meas--b82f454e298f2272484e3af3.md) | 71 | `result-track:b82f454e298f2272484e3af370c03d9f86e5462ac504f1c5d524f728b4136906` |
| 6 | `lemma` | [setLIntegral_le_meas](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/setlintegral-le-meas--1e47da111443a2df7fc61ec5.md) | 78 | `result-track:1e47da111443a2df7fc61ec58192f7bb9ab54329999b59ff48ff58ff412eb5b4` |
| 7 | `theorem` | [lintegral_eq_top_of_measure_eq_top_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/lintegral-eq-top-of-measure-eq-top-ne-zero--3d46a1d4eecb37ca36878604.md) | 85 | `result-track:3d46a1d4eecb37ca36878604b06ac0174bc020650874b59803eeff8fe5cb36cd` |
| 8 | `theorem` | [setLIntegral_eq_top_of_measure_eq_top_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/setlintegral-eq-top-of-measure-eq-top-ne-zero--f70041bfece20eabf3cec7df.md) | 92 | `result-track:f70041bfece20eabf3cec7dfd7a073520117963b754137bd3bbddb495cc17b70` |
| 9 | `theorem` | [measure_eq_top_of_lintegral_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/measure-eq-top-of-lintegral-ne-top--b12d93891ec26b8ad0bb6d2b.md) | 101 | `result-track:b12d93891ec26b8ad0bb6d2be396f2ca3800d1d231b516e412520fd8052d2175` |
| 10 | `theorem` | [measure_eq_top_of_setLIntegral_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/measure-eq-top-of-setlintegral-ne-top--c61c0621e8484366eede1f81.md) | 105 | `result-track:c61c0621e8484366eede1f8139f6d30c8b935109b087a0b776ba838e546b42ce` |
| 11 | `theorem` | [meas_ge_le_lintegral_div](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/meas-ge-le-lintegral-div--dca6247d5e4bbf4c8ad5d77a.md) | 114 | `result-track:dca6247d5e4bbf4c8ad5d77aa8650d780cd958117b32ee81c9b5a4b3f8ef9ac3` |
| 12 | `theorem` | [ae_eq_of_ae_le_of_lintegral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/ae-eq-of-ae-le-of-lintegral-le--1f37a3fa4f07d19c969be7f8.md) | 120 | `result-track:1f37a3fa4f07d19c969be7f86cd9da57a2210f4c31adf686a4cefba9dfe19073` |
| 13 | `theorem` | [lintegral_strict_mono_of_ae_le_of_frequently_ae_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/lintegral-strict-mono-of-ae-le-of-frequently-ae-lt--fb7f2869c63cea6b9f86eca6.md) | 135 | `result-track:fb7f2869c63cea6b9f86eca6f973d792c29b254d30a90354dae3f2eed6fd645c` |
| 14 | `theorem` | [lintegral_strict_mono_of_ae_le_of_ae_lt_on](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/lintegral-strict-mono-of-ae-le-of-ae-lt-on--6923aa58dee4337f55d58c3e.md) | 142 | `result-track:6923aa58dee4337f55d58c3ea9df5d931641fafc864ddb9825c0e071ebaa760d` |
| 15 | `theorem` | [lintegral_strict_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/lintegral-strict-mono--a71c918fb4840694078ea647.md) | 148 | `result-track:a71c918fb4840694078ea64740d0241bf022ce120028db8d07636fc97f406ab7` |
| 16 | `theorem` | [setLIntegral_strict_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/setlintegral-strict-mono--cd79b207e9e07628b7487bf1.md) | 154 | `result-track:cd79b207e9e07628b7487bf1f44737323a953b6b835c122c42898bcd255ec3b8` |
| 17 | `theorem` | [ae_lt_top'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/ae-lt-top--facfdda06e7222c0fbb3e329.md) | 159 | `result-track:facfdda06e7222c0fbb3e329135e9e8880014ddd3b30ab2b4eecdabb3075de1f` |
| 18 | `theorem` | [ae_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Markov/Variant1b7badb0eb2506b6e3475fe610a02cf03de6272d678aa85b2777ad43e4181d8b.lean/declarations/ae-lt-top--366cbf27f492e726d261a3ae.md) | 164 | `result-track:366cbf27f492e726d261a3aeb9a1a51467df4cd8923d948c1d4608930a798a21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

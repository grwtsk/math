# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FullLineChiProof.Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14c0a0b99efcbafcb8dbc842ec062c8e19f4e25d",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14c0a0b99efcbafcb8dbc842ec062c8e19f4e25d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.FullLineChi` — import line 11; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.FullLine` — import line 12; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.FoldChi` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.GammaSideChi` — import line 14; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.GammaFactsChiProof` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [digamma_growth_wide](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/digamma-growth-wide--704a7ccc3e1f3658b38cbe46.md) | 35 | `result-track:704a7ccc3e1f3658b38cbe4617bc8de7ff69eedad487a392e69cd986745c1e4b` |
| 2 | `lemma` | [exists_parity'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/exists-parity--0acf14c2f919048a43db2449.md) | 208 | `result-track:0acf14c2f919048a43db2449adcaf97c2b514da2e81ef15d0f6812819e1ec61c` |
| 3 | `theorem` | [norm_logDeriv_archChi_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/norm-logderiv-archchi-le--f75c3f38ce651c3df9489788.md) | 219 | `result-track:f75c3f38ce651c3df9489788b92c726d5c479b974ab3c996adc8d17df5d25d40` |
| 4 | `theorem` | [differentiableAt_logDeriv_archChi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/differentiableat-logderiv-archchi--44384e3a9c92f02683f30578.md) | 268 | `result-track:44384e3a9c92f02683f30578a415573680b4e10350d3bcdea2ae6334bd8d4349` |
| 5 | `theorem` | [archChi_bracket](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/archchi-bracket--b36902ed5b446f5b1485719a.md) | 273 | `result-track:b36902ed5b446f5b1485719ac1a241bdfdf17eb1e36d3a83638fcd8a5f313190` |
| 6 | `theorem` | [norm_logDeriv_L_le_of_one_lt_re](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/norm-logderiv-l-le-of-one-lt-re--2ee1bdc433d20a802bd6f374.md) | 310 | `result-track:2ee1bdc433d20a802bd6f37481151581737537d7d3beb292970307161cbbe2ae` |
| 7 | `theorem` | [continuous_logDeriv_L_line](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/continuous-logderiv-l-line--97d21400e52f4093eb1266f5.md) | 344 | `result-track:97d21400e52f4093eb1266f511d690e39ab12906e3bc2fbdfe3114550e0ae738` |
| 8 | `theorem` | [integrable_mul_logDeriv_L_of_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/integrable-mul-logderiv-l-of-decay--1ff0b047787cd827ee9a9e40.md) | 359 | `result-track:1ff0b047787cd827ee9a9e409521d45071e75072e2764ed2a24a8c45b9e68bb6` |
| 9 | `theorem` | [integrable_Hfn_mul_logDeriv_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/integrable-hfn-mul-logderiv-l--e189f6842473b4213ee105e6.md) | 374 | `result-track:e189f6842473b4213ee105e6fb06175d1c30c95669b40094b33b2a172ab69dc1` |
| 10 | `theorem` | [integrable_mul_logDeriv_archChi_of_decay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/integrable-mul-logderiv-archchi-of-decay--7b955bf64214aae76320b560.md) | 383 | `result-track:7b955bf64214aae76320b560df5acc069ba24176bc3a8fee46c956293e40efe9` |
| 11 | `theorem` | [gammaFactor_eq_parity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/gammafactor-eq-parity--5d1939c2f1ed3f81f0abaaee.md) | 420 | `result-track:5d1939c2f1ed3f81f0abaaeee2ff3c86ab492b1e435104014147e0a16c67117e` |
| 12 | `theorem` | [parity_le_one'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/parity-le-one--f500297bc5bb12dabc936f77.md) | 429 | `result-track:f500297bc5bb12dabc936f777ce83405dd1bbb7a00d7756e19dc0e004b44fc7b` |
| 13 | `theorem` | [logDeriv_completedLSym_sub_L](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/logderiv-completedlsym-sub-l--84d2a2ba26164be905366c6c.md) | 433 | `result-track:84d2a2ba26164be905366c6c15b71f79c107e21cdd079a2d02a3d4cf0ed5855b` |
| 14 | `theorem` | [logDeriv_completedLSym_sub_L_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/logderiv-completedlsym-sub-l-inv--af01e6857ca4eb21cdfb62bf.md) | 442 | `result-track:af01e6857ca4eb21cdfb62bf1381567658e217e4ab654eea74f296ea9d96a53e` |
| 15 | `theorem` | [integrable_Hsum_mul_archDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/integrable-hsum-mul-archdiff--fb6acaba2738628ecb893720.md) | 451 | `result-track:fb6acaba2738628ecb8937204a9d1661b9893df4dab17cdbe8ac4d431a3c9953` |
| 16 | `theorem` | [line_shift_generic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/line-shift-generic--29dc3ac7a1c9f3ad08b896f9.md) | 489 | `result-track:29dc3ac7a1c9f3ad08b896f96bbf0bc4d7274d0d7db04c7c1794f5614256f557` |
| 17 | `theorem` | [gamma_line_shift_chi'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineChiProof/Variant2e8d7e344a1b844ddf8a80268fe951cb84b77dd72bd3eb630befa26374287acc.lean/declarations/gamma-line-shift-chi--7deefed2021bc8bc0ace7f66.md) | 633 | `result-track:7deefed2021bc8bc0ace7f664a0765cf3f9cec80f48158761066590ed871846b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

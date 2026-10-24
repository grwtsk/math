# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.SeminormFromConst.Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3daffb165c8daa2853759de3248357884e37d42b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3daffb165c8daa2853759de3248357884e37d42b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [seminormFromConst_seq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-seq--c431c6801d74775f89259385.md) | 55 | `declaration-track:c431c6801d74775f892593851630b1b6351ab998aafe13073145a49af56add10` |
| 2 | `lemma` | [seminormFromConst_seq_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-seq-def--7cdc0baf9b0c5e0c947fdb24.md) | 57 | `result-track:7cdc0baf9b0c5e0c947fdb2406bc1fbe1b13a33ed05584df2ced17533dfc58b9` |
| 3 | `theorem` | [seminormFromConst_seq_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-seq-nonneg--5cc7a87ee5300ada88dc3339.md) | 61 | `result-track:5cc7a87ee5300ada88dc33395a7c9cea03d0d99a96c60bdcb08ba42336e27c56` |
| 4 | `theorem` | [seminormFromConst_bddBelow](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-bddbelow--2c1422c58b2df5749f5d6e4b.md) | 65 | `result-track:2c1422c58b2df5749f5d6e4b1abcd37c3fe750ba363454befe814e2ae6b705ab` |
| 5 | `theorem` | [seminormFromConst_seq_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-seq-zero--f2407500242c7cf2a0f2a6e6.md) | 74 | `result-track:f2407500242c7cf2a0f2a6e663a4ebc34102e6792002b0b1f6c22530658761db` |
| 6 | `theorem` | [seminormFromConst_seq_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-seq-one--13c50429094d430d56a57f0b.md) | 84 | `result-track:13c50429094d430d56a57f0b9550216a4a63346bce37e29fdf5ee4c8da3147fe` |
| 7 | `theorem` | [seminormFromConst_seq_antitone](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-seq-antitone--1660b34d90b43d95b576742e.md) | 89 | `result-track:1660b34d90b43d95b576742e0c40fdee74fc590b752649735a12bfd99ac8af36` |
| 8 | `def` | [seminormFromConst'](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst--33dc06f8fe974344d7fd725f.md) | 111 | `declaration-track:33dc06f8fe974344d7fd725fde4ba8429aaed6827989b4e1acb124d4c2cb4ed4` |
| 9 | `theorem` | [tendsto_seminormFromConst_seq_atTop](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/tendsto-seminormfromconst-seq-attop--b93146017725a730e13797ef.md) | 116 | `result-track:b93146017725a730e13797efcceb9bddccfb4232cd787557e2117c765c1103e0` |
| 10 | `theorem` | [seminormFromConst_one](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-one--77be1b2f5578802d136a1516.md) | 121 | `result-track:77be1b2f5578802d136a151675096d373846e5703d41fb565f95a063c9f4ba67` |
| 11 | `def` | [seminormFromConst](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst--9f6db20c25354e9472b20fa0.md) | 129 | `declaration-track:9f6db20c25354e9472b20fa0904490264d759038bebcad35e872b9fc7b944ea9` |
| 12 | `theorem` | [seminormFromConst_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-def--6115dbb9b59587b43abc6c7e.md) | 163 | `result-track:6115dbb9b59587b43abc6c7ef162326d26ccb89625190cdbdc6a4d280290d1ee` |
| 13 | `theorem` | [seminormFromConst_one_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-one-le--8b0814c3e28e5bec87d360ec.md) | 167 | `result-track:8b0814c3e28e5bec87d360ec5e8ad89dd9786248a1d94ca9b26560acaa15145b` |
| 14 | `theorem` | [seminormFromConst_isNonarchimedean](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-isnonarchimedean--99c6305660529740db83ed59.md) | 170 | `result-track:99c6305660529740db83ed597a1b4b8f5513fb5a04d4329826b9a1a443171805` |
| 15 | `theorem` | [seminormFromConst_isPowMul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-ispowmul--533cdb05efddb6db4ed10e18.md) | 182 | `result-track:533cdb05efddb6db4ed10e18add158d575263bc0f9905d6a1028b6307b810d76` |
| 16 | `theorem` | [seminormFromConst_le_seminorm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-le-seminorm--44fd952c605702401af09430.md) | 194 | `result-track:44fd952c605702401af09430a143b78cadd9704be7ee2a7b13608cdd0e45e17f` |
| 17 | `theorem` | [seminormFromConst_apply_of_isMul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-apply-of-ismul--76249e5b091b4ad84dc1c32c.md) | 203 | `result-track:76249e5b091b4ad84dc1c32cc376e0f7d983cb0b42ba9a2152a796e14bc14bba` |
| 18 | `theorem` | [seminormFromConst_isMul_of_isMul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-ismul-of-ismul--e75a63106184a61e369a79a0.md) | 218 | `result-track:e75a63106184a61e369a79a035bb0d22bcd73172468a471f7c4b33e5d6085b4f` |
| 19 | `theorem` | [seminormFromConst_apply_c](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-apply-c--85d180ac3100ee958f63beb8.md) | 231 | `result-track:85d180ac3100ee958f63beb8b5d947b2091ec6af8a3ddf8e3ab016244bc1f147` |
| 20 | `theorem` | [seminormFromConst_const_mul](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconst-const-mul--6b05a3891ae3e501cc7609a7.md) | 242 | `result-track:6b05a3891ae3e501cc7609a77a7aefca26d7912cd42518cf28280eea53e7b075` |
| 21 | `def` | [normFromConst](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/normfromconst--132ba963c56ca5c23f147a0b.md) | 268 | `declaration-track:132ba963c56ca5c23f147a0b65505679013b9de9a996f17896d65018fbd1df7d` |
| 22 | `theorem` | [seminormFromConstRingNormOfField_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/seminormfromconstringnormoffield-def--f8208fa625923957851bef97.md) | 273 | `result-track:f8208fa625923957851bef97e34a948c058fdcad1b9d05e2ea31cb0c89fb7a22` |
| 23 | `def` | [algNormFromConst](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/algnormfromconst--86e5ffc52dece0859fd78887.md) | 279 | `declaration-track:86e5ffc52dece0859fd7888715023683703008417899fe375f8056a1cf433a8d` |
| 24 | `theorem` | [algNormFromConst_def](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromConst/Variantf7c25f8a227e3477d7de701b45266dae0fc829a7e73e5b6a114f0f7da4db3db9.lean/declarations/algnormfromconst-def--c634f152518638087a836f00.md) | 291 | `result-track:c634f152518638087a836f00bc144a862303f41326ce7637dd71163c41b86e08` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

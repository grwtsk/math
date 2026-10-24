# Verification target: GRWTSK.Analysis.FunctionalAnalysis.CompactConvergenceCLM.Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "103820b709dec9a0e62910f838c8858be2d27868",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `103820b709dec9a0e62910f838c8858be2d27868`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CompactConvergenceCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/compactconvergenceclm--933c62a3dead9f663e0ca847.md) | 62 | `declaration-track:933c62a3dead9f663e0ca847e767de710e051a192ca64346b9c3140a900e4520` |
| 2 | `instance` | [continuousSMul](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/continuoussmul--a3edb41527389b0293fd6f01.md) | 75 | `declaration-track:a3edb41527389b0293fd6f01b66c53663287b76428119b349c6ed043d35ec524` |
| 3 | `instance` | [instContinuousEvalConst](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/instcontinuousevalconst--160164524d6b80aa0639ce78.md) | 82 | `declaration-track:160164524d6b80aa0639ce78a81b29998060b61daa6e566e54ea267b656fe4a7` |
| 4 | `instance` | [instT2Space](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/instt2space--85992b48ecfbee0314b7808e.md) | 86 | `declaration-track:85992b48ecfbee0314b7808e7c09be1cc27f122b6015fdbba3e49a3e4626f710` |
| 5 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/hasbasis-nhds-zero-of-basis--6fa6a7d02cf56d65e3d729f9.md) | 90 | `result-track:6fa6a7d02cf56d65e3d729f920ac99e39945c278ff31e101074c51e58b35da54` |
| 6 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/hasbasis-nhds-zero--831e33cf8c30bcc42ff131ac.md) | 99 | `result-track:831e33cf8c30bcc42ff131ace23191977962e9f49f4fb9d954c2e73ef09d10e7` |
| 7 | `def` | [ContinuousLinearMap.precompCompactConvergenceCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/continuouslinearmap-precompcompactconvergenceclm--67e273f7cfef730b2a31488f.md) | 118 | `declaration-track:67e273f7cfef730b2a31488f00c39a4f8fcf4016f5910fb44b1b11a5e466f025` |
| 8 | `def` | [ContinuousLinearMap.postcompCompactConvergenceCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/continuouslinearmap-postcompcompactconvergenceclm--9e1829e75f1dbe5fe683836f.md) | 126 | `declaration-track:9e1829e75f1dbe5fe683836f81f1fc5f7c2d2475417bbe4496a79db3c22d45db` |
| 9 | `def` | [CompactConvergenceCLM.piEquivL](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/compactconvergenceclm-piequivl--daf0a7a0ec05a6b94140763e.md) | 146 | `declaration-track:daf0a7a0ec05a6b94140763e50567e2ce1ad20ac7398d35a81b4f6d00138ef25` |
| 10 | `lemma` | [CompactConvergenceCLM.piEquivL_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/compactconvergenceclm-piequivl-apply--fa308b928d5e719a9e49ec83.md) | 153 | `result-track:fa308b928d5e719a9e49ec834347fd6330e156121cf1276f4181caf1d1ccfb82` |
| 11 | `lemma` | [CompactConvergenceCLM.piEquivL_symm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/compactconvergenceclm-piequivl-symm-apply--78dd1e745e8a7235808e30b8.md) | 159 | `result-track:78dd1e745e8a7235808e30b851f90f2ddeb2b86e24be46942073531caa63a193` |
| 12 | `def` | [compactConvergenceCLMCongrSL](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/compactconvergenceclmcongrsl--956122362c1864a29ca7b896.md) | 188 | `declaration-track:956122362c1864a29ca7b896f87bfea4b033722e735641753c722695266602f9` |
| 13 | `lemma` | [compactConvergenceCLMCongrSL_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/compactconvergenceclmcongrsl-apply--9c0caece255f5a93a8cf8bfa.md) | 194 | `result-track:9c0caece255f5a93a8cf8bfafe4c43d2652030060569d3bdabd37345bbe23256` |
| 14 | `lemma` | [compactConvergenceCLMCongrSL_symm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/compactconvergenceclmcongrsl-symm-apply--a069afe5787d45cabb0f3bad.md) | 200 | `result-track:a069afe5787d45cabb0f3bad631fc2727116d6e382ba62ce3b03e4e6af8a541e` |
| 15 | `def` | [compactConvergenceCLMCongr](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/compactconvergenceclmcongr--6ef3714877fad99b3752dbf6.md) | 219 | `declaration-track:6ef3714877fad99b3752dbf63976e8c3406f2976616af74e60741a13e250c7ce` |
| 16 | `lemma` | [compactConvergenceCLMCongr_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/compactconvergenceclmcongr-apply--ace8334671fe42a603ff529b.md) | 224 | `result-track:ace8334671fe42a603ff529b52444887398d0e738c70ff65788a48debbaef639` |
| 17 | `lemma` | [compactConvergenceCLMCongr_symm_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/CompactConvergenceCLM/Variant07a2c834ca5905332f7973261b71710154e55b57f7f58f44c34b8989d268b4c5.lean/declarations/compactconvergenceclmcongr-symm-apply--3bd9f8416c2021b4b0e4d870.md) | 230 | `result-track:3bd9f8416c2021b4b0e4d870d87eafeb99dd22939a9b742150a592e662cc3b5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

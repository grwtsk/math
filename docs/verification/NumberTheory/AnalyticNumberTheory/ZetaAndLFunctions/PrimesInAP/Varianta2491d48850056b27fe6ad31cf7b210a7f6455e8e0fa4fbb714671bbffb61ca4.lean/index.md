# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.PrimesInAP.Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a47f08371abfb838979363184bcdf36841335128",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a47f08371abfb838979363184bcdf36841335128`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [residueClass](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/residueclass--ca55e9a1d7b4be96baa353da.md) | 87 | `declaration-track:ca55e9a1d7b4be96baa353dabf682f6b19ee8a5ebb4a23df33fc87d49d1e2b67` |
| 2 | `lemma` | [residueClass_nonneg](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/residueclass-nonneg--47e53b9bf13ed409646e7147.md) | 90 | `result-track:47e53b9bf13ed409646e714738621ff784505d27ce7c15217aebe2a8bd9dec0f` |
| 3 | `lemma` | [residueClass_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/residueclass-le--a8c2870d7cef37608b486931.md) | 93 | `result-track:a8c2870d7cef37608b48693111260ad925184ef308de83a02d55c26a1dd6ed63` |
| 4 | `lemma` | [residueClass_apply_zero](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/residueclass-apply-zero--4e9ed219f03682df6005c7ce.md) | 97 | `result-track:4e9ed219f03682df6005c7ceaf70972a6e3a65e126aa8c764a29ed5be8efaa55` |
| 5 | `lemma` | [abscissaOfAbsConv_residueClass_le_one](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/abscissaofabsconv-residueclass-le-one--02c7040e269c3b04b57c1572.md) | 101 | `result-track:02c7040e269c3b04b57c157236ee454c3ba6ece8787d5cfb9a09a923ed68af1f` |
| 6 | `lemma` | [support_residueClass_prime_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/support-residueclass-prime-div--5059c3a73acdd63ac1503f67.md) | 117 | `result-track:5059c3a73acdd63ac1503f675651e3862e69e1b69feba6414fcf8c1b636049ba` |
| 7 | `def` | [F₀](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/f--955955c8dbbbe7f244f3bed6.md) | 127 | `declaration-track:955955c8dbbbe7f244f3bed6469e545f282d848742d085f8fd79ba53241549b5` |
| 8 | `def` | [F'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/f--14402950adcb13343613ad75.md) | 129 | `declaration-track:14402950adcb13343613ad7507444eb0ea46878db5160b3cfbb2d77eacc37151` |
| 9 | `def` | [F''](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/f--a7ed28ce589283024e42ae71.md) | 131 | `declaration-track:a7ed28ce589283024e42ae7129cebd02f26314d2b2fbc552b1be85866c9f49ac` |
| 10 | `lemma` | [F''_le](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/f-le--9243b34aa25af90076e90455.md) | 133 | `result-track:9243b34aa25af90076e9045515a6bf151449371ad2259a98f24a3c4e1dfb15ee` |
| 11 | `lemma` | [summable_F''](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/summable-f--3e9fe44d91eaabc8a44a39b8.md) | 154 | `result-track:3e9fe44d91eaabc8a44a39b804483577e163585f72c180a4b0cda93bb65c82eb` |
| 12 | `lemma` | [summable_residueClass_non_primes_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/summable-residueclass-non-primes-div--f2576d0cf3af4f05762f6546.md) | 180 | `result-track:f2576d0cf3af4f05762f65460efc0e147efad6a1d87b0f25c2bd82451bc218bd` |
| 13 | `lemma` | [residueClass_apply](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/residueclass-apply--2fc226cac1edd84963c8ebe3.md) | 217 | `result-track:2fc226cac1edd84963c8ebe3da53b90ea69306ec66ba0e560d877d696636a85d` |
| 14 | `lemma` | [residueClass_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/residueclass-eq--0913f84915410c4d0b7a2094.md) | 227 | `result-track:0913f84915410c4d0b7a209425da8c037b59e7a928a6ed865e9fe58ee9a69b82` |
| 15 | `lemma` | [LSeries_residueClass_eq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/lseries-residueclass-eq--56671f204e6ea0a29e2be107.md) | 237 | `result-track:56671f204e6ea0a29e2be10734dcc0ba29425a1fcd41ef3c576d84b5fce3bb21` |
| 16 | `abbrev` | [LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/lfunctionresidueclassaux--ae2453a9993a8d2abd0fc8d2.md) | 259 | `declaration-track:ae2453a9993a8d2abd0fc8d2cfaa3d3c11e24025b6361263a4ea5427db78bd5e` |
| 17 | `lemma` | [continuousOn_LFunctionResidueClassAux'](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/continuouson-lfunctionresidueclassaux--0eb84ab2e8333cb38cb2161c.md) | 265 | `result-track:0eb84ab2e8333cb38cb2161c4c174c50753c049dbe9ec5862c67f4c01b500ed3` |
| 18 | `lemma` | [continuousOn_LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/continuouson-lfunctionresidueclassaux--8404465716c175847206dabb.md) | 288 | `result-track:8404465716c175847206dabbb79911d0c3a20504923f7e3a1cb0d35c30eb5ca4` |
| 19 | `lemma` | [eqOn_LFunctionResidueClassAux](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/eqon-lfunctionresidueclassaux--ce35743c2ae6c914b0419dce.md) | 303 | `result-track:ce35743c2ae6c914b0419dce84a73ad90c58442eaa8b86f0bff474bc9ab7e0a9` |
| 20 | `lemma` | [LFunctionResidueClassAux_real](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/lfunctionresidueclassaux-real--c1bff9e45754d1013962784e.md) | 327 | `result-track:c1bff9e45754d1013962784ea4e205fbb0e4d6df6658e33a841e08ed6a9fa037` |
| 21 | `lemma` | [LSeries_residueClass_lower_bound](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/lseries-residueclass-lower-bound--73793e9c7e13b08d6b9cc3d2.md) | 347 | `result-track:73793e9c7e13b08d6b9cc3d2d70e84b0e014a4f403af482ab85974b0ff71544e` |
| 22 | `lemma` | [not_summable_residueClass_prime_div](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/not-summable-residueclass-prime-div--ac1798a79e5dc0d2c2ca8978.md) | 378 | `result-track:ac1798a79e5dc0d2c2ca897843f7b407669a42dcdae00ea11ae6603ac48bd885` |
| 23 | `theorem` | [infinite_setOfPred_prime_and_eq_mod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/infinite-setofpred-prime-and-eq-mod--1adfb771eef2c0948b19a4a9.md) | 430 | `result-track:1adfb771eef2c0948b19a4a9c4c2833d6ee49cbf8560bf758e9e7989d45916a9` |
| 24 | `theorem` | [forall_exists_prime_gt_and_eq_mod](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/forall-exists-prime-gt-and-eq-mod--68a12f46cd63dc51590412d5.md) | 442 | `result-track:68a12f46cd63dc51590412d51c30967313cb36c1e6cfe1fac0507f38a7007c0c` |
| 25 | `theorem` | [forall_exists_prime_gt_and_zmodEq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/forall-exists-prime-gt-and-zmodeq--4a944526e2288af0217ce633.md) | 450 | `result-track:4a944526e2288af0217ce6338d504a1c7e7611cba297718598c835c907cd9ca2` |
| 26 | `theorem` | [forall_exists_prime_gt_and_modEq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/forall-exists-prime-gt-and-modeq--fa7d13aa6bfbf4d8f2307798.md) | 462 | `result-track:fa7d13aa6bfbf4d8f2307798db3b9be6f422307ed5b84ae8dbe296e36cf1f202` |
| 27 | `lemma` | [frequently_atTop_prime_and_modEq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/frequently-attop-prime-and-modeq--2c45a4175c51b7b55360d34d.md) | 467 | `result-track:2c45a4175c51b7b55360d34d1f5f4d6016ca55754594334c73357fa61df1f65b` |
| 28 | `lemma` | [infinite_setOfPred_prime_and_modEq](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean/declarations/infinite-setofpred-prime-and-modeq--21ee4b50fcb1cc1c431e9e1d.md) | 474 | `result-track:21ee4b50fcb1cc1c431e9e1df6fba3155d0a6075c94760a51d8443946fe0eef2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

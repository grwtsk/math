# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Bounds.Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1523984d5597f985d75b22249db7e5509d54bef",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1523984d5597f985d75b22249db7e5509d54bef`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean.json)

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
| 1 | `lemma` | [isBigO_exp_neg_mul_of_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/isbigo-exp-neg-mul-of-le--72a0e4739b77d84fae26e24b.md) | 56 | `result-track:72a0e4739b77d84fae26e24b00a548cbedf50c30a5c1d1b35c6c79123430ce85` |
| 2 | `lemma` | [exp_lt_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/exp-lt-aux--8d286cf0632d1abe3b009dde.md) | 63 | `result-track:8d286cf0632d1abe3b009dde7f0a66f42c617eb57723fb676654d13bd875697a` |
| 3 | `lemma` | [isBigO_one_aux](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/isbigo-one-aux--c3d26f024cfbc4784e62c71d.md) | 66 | `result-track:c3d26f024cfbc4784e62c71d9227826f1cedaf63d737cc90375c59fa93bfb60e` |
| 4 | `def` | [f_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/f-nat--f373cbec410b2011cd95270a.md) | 78 | `declaration-track:f373cbec410b2011cd95270aac2c524c1329bfeafa83bf6b902bf57661325448` |
| 5 | `def` | [g_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/g-nat--0f8e4d88c0b6746313dbd719.md) | 81 | `declaration-track:0f8e4d88c0b6746313dbd7198deae73b0ae6444835fae648a33e5f70a4fcb976` |
| 6 | `lemma` | [f_le_g_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/f-le-g-nat--9b16471ae830d791aad63cd1.md) | 83 | `result-track:9b16471ae830d791aad63cd1c0daec33288afa72cec14b5f68583c4177841bc4` |
| 7 | `def` | [F_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/f-nat--b8d31f4ca92c9123007fcb41.md) | 93 | `declaration-track:b8d31f4ca92c9123007fcb418145ce49b2503f3d2d7a6e2ea4cdb4b928aaf42c` |
| 8 | `lemma` | [summable_f_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/summable-f-nat--f27565432b1688b92ea701b9.md) | 95 | `result-track:f27565432b1688b92ea701b92836780c8c8f00360c33a62e4663849b1ca99bb5` |
| 9 | `lemma` | [F_nat_zero_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/f-nat-zero-le--808201994b38b703db77fefa.md) | 123 | `result-track:808201994b38b703db77fefa64ca8dfd5acdfb89623cb1702bc4ed3777982020` |
| 10 | `lemma` | [F_nat_zero_zero_sub_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/f-nat-zero-zero-sub-le--d2035a5aef10b1a53b13be51.md) | 132 | `result-track:d2035a5aef10b1a53b13be5141314c829436a8e68fe48946d7977d0fd03760db` |
| 11 | `lemma` | [isBigO_atTop_F_nat_zero_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/isbigo-attop-f-nat-zero-sub--4e114ccb88eda5e8d5ce5c71.md) | 140 | `result-track:4e114ccb88eda5e8d5ce5c712c05ed0e05762d6f7a8a056876eb1a4cc61eb044` |
| 12 | `lemma` | [F_nat_one_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/f-nat-one-le--127ee8cd9ad4efda0a60b013.md) | 168 | `result-track:127ee8cd9ad4efda0a60b013e45bf0c71e45cddc63964edf06ecffa987140863` |
| 13 | `lemma` | [isBigO_atTop_F_nat_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/isbigo-attop-f-nat-one--ed677ab5f6c06b701261fcf1.md) | 187 | `result-track:ed677ab5f6c06b701261fcf1423ec2f4cdeb28c2c9efc62bf4b5bcb2ddeb5d4b` |
| 14 | `def` | [f_int](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/f-int--089ba7da5b742ffaa99215db.md) | 217 | `declaration-track:089ba7da5b742ffaa99215dbed6c2b801309ca03bbbc8a9872e8f82beb603f63` |
| 15 | `lemma` | [f_int_ofNat](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/f-int-ofnat--b76786d664b573eeeb558f60.md) | 219 | `result-track:b76786d664b573eeeb558f60146d1b7e00e451ce53754e20e2d56954baff24ce` |
| 16 | `lemma` | [f_int_negSucc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/f-int-negsucc--9e4dc9cc3668ac5c0e534942.md) | 223 | `result-track:9e4dc9cc3668ac5c0e534942b6fd6617f79f6e6769748f270d182d9dbb4050d2` |
| 17 | `lemma` | [summable_f_int](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/summable-f-int--b967b0ca3c73afdcd6749934.md) | 228 | `result-track:b967b0ca3c73afdcd6749934eb4978b1e1efd0dbd9dba017409a8aac4fedcd14` |
| 18 | `def` | [F_int](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/f-int--24c06087e14c070a34b9e6f9.md) | 241 | `declaration-track:24c06087e14c070a34b9e6f90dd3cf7d71e78c292943c92b6751e108e86f6745` |
| 19 | `lemma` | [F_int_eq_of_mem_Icc](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/f-int-eq-of-mem-icc--c5bb7734a9642932c006f531.md) | 247 | `result-track:c5bb7734a9642932c006f531645c621eee26c94b89e0498645ba4759fc0bfea3` |
| 20 | `lemma` | [isBigO_atTop_F_int_zero_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/isbigo-attop-f-int-zero-sub--4a7f12c79bc6b8c43281cc4a.md) | 257 | `result-track:4a7f12c79bc6b8c43281cc4af7e009948b4072a4e3f348d09d830e951b996238` |
| 21 | `lemma` | [isBigO_atTop_F_int_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/Bounds/Variantd04c6747f7856bea7b9b524ca56c7fd04953a9fac195e9e2a678a6403c73b240.lean/declarations/isbigo-attop-f-int-one--3593ff35c3fe3c0593db8975.md) | 274 | `result-track:3593ff35c3fe3c0593db8975dcc4b9d5672a41c01349a57942ac76519e329b70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

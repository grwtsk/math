# Verification target: GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b18f90584b0f3e181a90fe40dd127c04fc20d844",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/index.md) · [Full source](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b18f90584b0f3e181a90fe40dd127c04fc20d844`.

Source path: `GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finitePrefixSum](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum--072a23d1a062128c7dcbc669.md) | 41 | `declaration-track:072a23d1a062128c7dcbc66955d14c94ce2f4724779455f7762fda1e0f9b5745` |
| 2 | `def` | [shiftedSequence](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/shiftedsequence--448a63a6f9973b97019bd738.md) | 45 | `declaration-track:448a63a6f9973b97019bd7386ec80bed5065d0cc47bd5d1263315126adf60178` |
| 3 | `def` | [alignedDyadicBlockSum](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/aligneddyadicblocksum--0585a98c2efd503dfd4909ea.md) | 50 | `declaration-track:0585a98c2efd503dfd4909ea076a7fdbdb955bbefc9bdaaec0d10055110b1f30` |
| 4 | `def` | [dyadicTreeSquareEnergy](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/dyadictreesquareenergy--2d97ff30c2d0e88d6f766cba.md) | 62 | `declaration-track:2d97ff30c2d0e88d6f766cba1efe7815e535139441cc5cda4cee6d1e1efb5f0d` |
| 5 | `def` | [dyadicLevelCount](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/dyadiclevelcount--9bec79fd850bacdb85386dcc.md) | 71 | `declaration-track:9bec79fd850bacdb85386dcc9195af8604700f5eb34cf677656ce2b0b8d19d6a` |
| 6 | `def` | [dyadicPrefixMaximum](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/dyadicprefixmaximum--d149a22d7c6d5c9bcaaeda4d.md) | 76 | `declaration-track:d149a22d7c6d5c9bcaaeda4d888859006c048b4122dd2d71bc48c118c9b26fa4` |
| 7 | `theorem` | [finitePrefixSum_zero](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum-zero--40264b108ca8c4cd15c1ea17.md) | 79 | `result-track:40264b108ca8c4cd15c1ea1700fc7da67b1b4b04f6abd5079144941b2f36bd5d` |
| 8 | `theorem` | [finitePrefixSum_one](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum-one--3b071c4687c098dc0711e1a1.md) | 83 | `result-track:3b071c4687c098dc0711e1a1ba3fdfb31c467ce369b43e15698575c128f65692` |
| 9 | `theorem` | [finitePrefixSum_add](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum-add--2228b63705f20321a1e504a8.md) | 88 | `result-track:2228b63705f20321a1e504a89e1c322e7558f9b7e232fdfc2e5ea73a2625fe24` |
| 10 | `theorem` | [alignedDyadicBlockSum_zero_index](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/aligneddyadicblocksum-zero-index--48505c0b5934d4c39fbffbd7.md) | 93 | `result-track:48505c0b5934d4c39fbffbd7610c25d2e02d1ebb3720482cc126ae1708a72950` |
| 11 | `theorem` | [dyadicLevelCount_eq](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/dyadiclevelcount-eq--4b2176addb44246c1ae4ccfc.md) | 98 | `result-track:4b2176addb44246c1ae4ccfc16e646e3e9847b74d1806848b8775d16116c8c9f` |
| 12 | `theorem` | [dyadicLevelCount_pos](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/dyadiclevelcount-pos--3ea89e7dc852f43f80157425.md) | 106 | `result-track:3ea89e7dc852f43f80157425ccc8f3a2546a02a0e0e1f190ff5b49788ed86238` |
| 13 | `theorem` | [dyadicTreeSquareEnergy_nonneg](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/dyadictreesquareenergy-nonneg--6f0aa2c0fcb800839230f84d.md) | 112 | `result-track:6f0aa2c0fcb800839230f84d757ba0810e206200c42338148ad856b89b724112` |
| 14 | `theorem` | [alignedTopBlock_sq_le_dyadicTreeSquareEnergy](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/alignedtopblock-sq-le-dyadictreesquareenergy--f76e2cfa0927100054230182.md) | 127 | `result-track:f76e2cfa09271000542301820ae84c73a0c556017befae5ee85a21cad5612512` |
| 15 | `theorem` | [add_sq_le_succ_weight](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/add-sq-le-succ-weight--3b850689d7b87d936a670fbd.md) | 143 | `result-track:3b850689d7b87d936a670fbd4a37763be9b457bea7b2ed10bf74860243ac4ef5` |
| 16 | `theorem` | [finitePrefixSum_sq_le_dyadicTreeSquareEnergy_aux](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum-sq-le-dyadictreesquareenergy-aux--b058b183b81ed66202781d0a.md) | 157 | `result-track:b058b183b81ed66202781d0a56d905de37aeb7ff72841d39a698d25ea029b938` |
| 17 | `theorem` | [finitePrefixSum_sq_le_dyadicTreeSquareEnergy](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/finiteprefixsum-sq-le-dyadictreesquareenergy--792a27e9ee02e7375b3a7a8f.md) | 261 | `result-track:792a27e9ee02e7375b3a7a8fdc71869d29becbdb786bbef2b9b8e79afc277d5a` |
| 18 | `theorem` | [dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/dyadicprefixmaximum-sq-le-dyadictreesquareenergy--0b3f3f54244d3cacae670b7f.md) | 269 | `result-track:0b3f3f54244d3cacae670b7fd6d944c2ac50bd023f2c5ec74f6c3014c6163408` |
| 19 | `theorem` | [dyadicTreeSquareEnergy_zero](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/dyadictreesquareenergy-zero--4389d43ee7b9988111253ea5.md) | 302 | `result-track:4389d43ee7b9988111253ea50fb2fdefefd04875a58814bf0803e1363c6df6ec` |
| 20 | `theorem` | [dyadicTreeSquareEnergy_one](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/declarations/dyadictreesquareenergy-one--7416deab32c31b5bf7bfb38b.md) | 309 | `result-track:7416deab32c31b5bf7bfb38b5f5d476439e0a422deca6e688c02f30afbcde210` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

# Verification target: GRWTSK.Logic.SimultaneousProofPortfolio

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd62fb7a826e8871e29bdbc14aece0a14721443e",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/SimultaneousProofPortfolio.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd62fb7a826e8871e29bdbc14aece0a14721443e`.

Source path: `GRWTSK/Logic/SimultaneousProofPortfolio.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/SimultaneousProofPortfolio.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.SimultaneousProofArchitecture`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofArchitecture.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ClaimDisposition](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/claimdisposition--5df7cebb62bf3296abf97ed0.md) | 10 | `declaration-track:5df7cebb62bf3296abf97ed025ca2c9b6552ade96c8deaf845e9499117fd7cda` |
| 2 | `def` | [transport](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/transport--649ca8cce99c4888ec4a9c93.md) | 18 | `declaration-track:649ca8cce99c4888ec4a9c93e0b2f7de3014eaeb742c97f7c6f24346fa628634` |
| 3 | `structure` | [Portfolio](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/portfolio--75782ced82078e4c9825c9fe.md) | 29 | `declaration-track:75782ced82078e4c9825c9fe1008da6e897be1ba49ae32e6d9d9a064da1cd1ac` |
| 4 | `def` | [proof?](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/proof--f7e40f7c6477593b030b4f30.md) | 37 | `declaration-track:f7e40f7c6477593b030b4f30a7b064668f534d23f002e677f9836faa3ff7d65b` |
| 5 | `def` | [refutation?](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/refutation--6c8d8941116a4c042a58021d.md) | 41 | `declaration-track:6c8d8941116a4c042a58021d79325283024aa5182e07626af0cfd28d9d94ba21` |
| 6 | `def` | [transportClaims](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/transportclaims--fcc4d364c37432860fcd7603.md) | 45 | `declaration-track:fcc4d364c37432860fcd76031a74a72d711b45e45138fed0e8b5ad910822034a` |
| 7 | `def` | [combine](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/combine--0022c29133157b893eda8795.md) | 51 | `declaration-track:0022c29133157b893eda8795c371f1224da59d62cd8bbd2b1992bc0a5ee7885f` |
| 8 | `def` | [update](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/update--9408113bf2d08391bf6d8462.md) | 62 | `declaration-track:9408113bf2d08391bf6d8462822cfa38875853a1908987fc69cdd2cb026fc3c0` |
| 9 | `theorem` | [update_at](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/update-at--c5509d15e9191d8b84d2b6f3.md) | 69 | `result-track:c5509d15e9191d8b84d2b6f36d566c6b6cc721b32368fac8f8cabe9e63a34d48` |
| 10 | `theorem` | [update_of_ne](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/update-of-ne--73e8307068cea261f8328517.md) | 76 | `result-track:73e8307068cea261f832851726e43d34b0c0a076f1a4f370fe3ac1ba0f5744f1` |
| 11 | `def` | [AllProved](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/allproved--9d49801d6f62cfdab513d7dc.md) | 83 | `declaration-track:9d49801d6f62cfdab513d7dc36e21358f51459ab1d72a225adcf54790fab802c` |
| 12 | `theorem` | [claim_of_allProved](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/claim-of-allproved--51344a1a71b6cdf4e5f8d1a9.md) | 87 | `result-track:51344a1a71b6cdf4e5f8d1a96ba0209131aa940b1e2ab24290ea6b7f13acb344` |
| 13 | `structure` | [Architecture](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/architecture--f61c1e05be3a49ad8a9e15bf.md) | 94 | `declaration-track:f61c1e05be3a49ad8a9e15bf26f1d38432a7fbcd4db3693f8a456f63ff10488c` |
| 14 | `def` | [retarget](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/retarget--897ee7244d064f2c8789d17b.md) | 103 | `declaration-track:897ee7244d064f2c8789d17bd9592b973d5de25764a8eaa1c161021be3fed3c1` |
| 15 | `def` | [updateLocal](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/updatelocal--11ee745d7d1d59ab5b30fd38.md) | 109 | `declaration-track:11ee745d7d1d59ab5b30fd384927698af98c1f12532be34715d14c71df65b69c` |
| 16 | `theorem` | [retarget_local](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/retarget-local--5777fb8f80d5fc0fc71cb639.md) | 116 | `result-track:5777fb8f80d5fc0fc71cb639fcddf00d4f6b6b16834102d178ee7eac0693194b` |
| 17 | `theorem` | [updateLocal_target](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/updatelocal-target--336074174cef0e36073736ab.md) | 122 | `result-track:336074174cef0e36073736abfe7aa4ccb3815397c6ffec1ee606b4029aadb219` |
| 18 | `theorem` | [updateLocal_of_ne](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/updatelocal-of-ne--37f6c5ae079a0021cfee009f.md) | 129 | `result-track:37f6c5ae079a0021cfee009f5301827a0d5f69cb696aed69f3fedbb2d3b8ebd6` |
| 19 | `def` | [combineLocal](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/combinelocal--d02b8173934f8c9282f5dfae.md) | 136 | `declaration-track:d02b8173934f8c9282f5dfae76d0917395d61cc382520466a28bd86e9dbbb54a` |
| 20 | `inductive` | [LocalIndex](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/localindex--798ccd03c41514d92066b4ad.md) | 151 | `declaration-track:798ccd03c41514d92066b4ade18e8473e2f9dfabd048f2a6aa051a5ce7093365` |
| 21 | `def` | [localClaim](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/localclaim--79da55e74a4c76241cc50513.md) | 159 | `declaration-track:79da55e74a4c76241cc505132e2dde2cc55883084bad5cf1d6c9f8f5062137a8` |
| 22 | `def` | [portfolio](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/portfolio--d0a2b9d100df9dbf57db9b65.md) | 166 | `declaration-track:d0a2b9d100df9dbf57db9b6587031828b06e70fe5c82ed7989d6c03c8b31d9a5` |
| 23 | `def` | [architecture](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/architecture--1d250c7c19869e232fa5c05e.md) | 174 | `declaration-track:1d250c7c19869e232fa5c05e106d064c041594c366f8b4df68286743ab3bb4fa` |
| 24 | `theorem` | [update_pending_preserves_algebra](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/update-pending-preserves-algebra--b87ed4d934b2f09001809800.md) | 180 | `result-track:b87ed4d934b2f09001809800cc063d3cb4ab81e89bf2c6fe2dd45064fce5a297` |
| 25 | `theorem` | [target_refutation_preserves_local](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/SimultaneousProofPortfolio.lean/declarations/target-refutation-preserves-local--a98129d6235379c48d616078.md) | 187 | `result-track:a98129d6235379c48d616078698e5ccabea7864e2f16fe5ec0e08426ee13ac8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

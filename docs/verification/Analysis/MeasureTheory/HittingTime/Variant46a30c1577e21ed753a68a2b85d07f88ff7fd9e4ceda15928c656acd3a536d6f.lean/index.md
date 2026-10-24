# Verification target: GRWTSK.Analysis.MeasureTheory.HittingTime.Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "943753bb2cf0dcf4454a3c0472a6579eced4c264",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `943753bb2cf0dcf4454a3c0472a6579eced4c264`.

Source path: `GRWTSK/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Process.Stopping` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting--92811af477d76018b86223d5.md) | 59 | `declaration-track:92811af477d76018b86223d561edf7ad75193131726e7ffe384ff1be1238b5c8` |
| 2 | `theorem` | [hitting_def](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-def--b05c6ec45a195c0eea135540.md) | 65 | `result-track:b05c6ec45a195c0eea135540bea83e88983d6fc2f4e633792ac10bf54095835b` |
| 3 | `theorem` | [hitting_of_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-of-lt--6efba40caa481a1ecda00608.md) | 75 | `result-track:6efba40caa481a1ecda00608ec32acc686cfa12afa99954b70a8a65d08886ead` |
| 4 | `theorem` | [hitting_le](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-le--ad604772dee1939f91f22892.md) | 85 | `result-track:ad604772dee1939f91f228920875a59f5d0b8c59cc8241779cc5255956024352` |
| 5 | `theorem` | [notMem_of_lt_hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/notmem-of-lt-hitting--d8e6c5a70d019ee3a6b9dfa0.md) | 93 | `result-track:d8e6c5a70d019ee3a6b9dfa0f4213b0297c2dff27d88a718becff04f4f26ec06` |
| 6 | `theorem` | [hitting_eq_end_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-eq-end-iff--92a3042cb4487c6f15b0039f.md) | 104 | `result-track:92a3042cb4487c6f15b0039ff84ba28f29a92e92c5b49c7d71b3bbaeade7b812` |
| 7 | `theorem` | [hitting_of_le](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-of-le--9722905f79359b13d22b8fd7.md) | 109 | `result-track:9722905f79359b13d22b8fd72090eaf3398def156539e7832d9bafa858a8649b` |
| 8 | `theorem` | [le_hitting](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/le-hitting--4f668e659e29eb2d7a17220a.md) | 119 | `result-track:4f668e659e29eb2d7a17220a4dca83bb26e4285a388c9ff935a1eca82a72f1bd` |
| 9 | `theorem` | [le_hitting_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/le-hitting-of-exists--8a19de13855ca0f3a2854371.md) | 129 | `result-track:8a19de13855ca0f3a28543715ddb38a8a2711a13df079ad73b28684bfa7217f1` |
| 10 | `theorem` | [hitting_mem_Icc](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-mem-icc--0cd42ff4c4c8948779f922e7.md) | 136 | `result-track:0cd42ff4c4c8948779f922e7fe9b6bb4d0ac4bd3b5b9b7e31f2684ff1c496d03` |
| 11 | `theorem` | [hitting_mem_set](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-mem-set--a082b6a4d2543cec5dbe8026.md) | 139 | `result-track:a082b6a4d2543cec5dbe8026dea51a135c4caddecf4f0d9ce0e7eab8433f0cd4` |
| 12 | `theorem` | [hitting_mem_set_of_hitting_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-mem-set-of-hitting-lt--2ff502ae5588625eb6166411.md) | 149 | `result-track:2ff502ae5588625eb61664118c120f5623755c4406a31a6b929a3631144d2233` |
| 13 | `theorem` | [hitting_le_of_mem](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-le-of-mem--6754b747bb8986cc9158f469.md) | 156 | `result-track:6754b747bb8986cc9158f469c06259767c592b03acb1f8d265bc312c8d9b2887` |
| 14 | `theorem` | [hitting_le_iff_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-le-iff-of-exists--7a67b70bf2135a5e51bf2791.md) | 162 | `result-track:7a67b70bf2135a5e51bf27918ded177be1fd6a7b2244fd9c90b50a46e6a58ba5` |
| 15 | `theorem` | [hitting_le_iff_of_lt](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-le-iff-of-lt--a749b4fd3fa394b0e6dd0ef4.md) | 176 | `result-track:a749b4fd3fa394b0e6dd0ef4c8e7c41056b8bdbe44eec78664e9b75b48cc58bd` |
| 16 | `theorem` | [hitting_lt_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-lt-iff--6e78a98f7fc2fb83f66854e7.md) | 185 | `result-track:6e78a98f7fc2fb83f66854e73bc67d99f88b362625354d8789b4522c90f7f2a8` |
| 17 | `theorem` | [hitting_eq_hitting_of_exists](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-eq-hitting-of-exists--43f93f31c36de9b25b25b138.md) | 197 | `result-track:43f93f31c36de9b25b25b1384836f2ed29a30f1755eff89e8417813dc2c1224f` |
| 18 | `theorem` | [hitting_mono](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-mono--cfc8dfccfdd08b28c81bdc69.md) | 212 | `result-track:cfc8dfccfdd08b28c81bdc69557fd34939a8b1ce63a7b6bc67aee0d184a888f6` |
| 19 | `theorem` | [hitting_isStoppingTime](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-isstoppingtime--370d51a7cad34ef48fc70ce3.md) | 227 | `result-track:370d51a7cad34ef48fc70ce3c4d42f682eb5d089081c2160bf2c9fbe37e3f3a6` |
| 20 | `theorem` | [stoppedValue_hitting_mem](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/stoppedvalue-hitting-mem--13eb8a078593fccf73d4b627.md) | 243 | `result-track:13eb8a078593fccf73d4b627c5ebe6874bb2e5ce198ce6033a9e652bbef58be3` |
| 21 | `theorem` | [isStoppingTime_hitting_isStoppingTime](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/isstoppingtime-hitting-isstoppingtime--3eb266f60c591d425925ab80.md) | 254 | `result-track:3eb266f60c591d425925ab80a0c1e35795aa4a95683b29e4bc79b048e382a4e0` |
| 22 | `theorem` | [hitting_eq_sInf](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-eq-sinf--5c05aedfa85e8205f231bb70.md) | 280 | `result-track:5c05aedfa85e8205f231bb703c247ed76f2b8d7ea9b444b0d75c1eba8a4051a5` |
| 23 | `theorem` | [hitting_bot_le_iff](../../../../../mathematics/Analysis/MeasureTheory/HittingTime/Variant46a30c1577e21ed753a68a2b85d07f88ff7fd9e4ceda15928c656acd3a536d6f.lean/declarations/hitting-bot-le-iff--5146ac57b4c9d80f68c947dc.md) | 296 | `result-track:5146ac57b4c9d80f68c947dc2a2a142a74c68d35b4b0a81a0f21a5c595cb7202` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

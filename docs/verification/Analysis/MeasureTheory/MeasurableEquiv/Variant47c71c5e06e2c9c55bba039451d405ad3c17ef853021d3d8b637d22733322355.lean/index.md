# Verification target: GRWTSK.Analysis.MeasureTheory.MeasurableEquiv.Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08e4f7c99c7d21e5e6b48452b6e869417739b793",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08e4f7c99c7d21e5e6b48452b6e869417739b793`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Arithmetic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/smul--5c4a1370443058954f3d95e5.md) | 57 | `declaration-track:5c4a1370443058954f3d95e5064fdbf0e4431181d24fe37e6b8e5ef4565f272f` |
| 2 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.measurableEmbedding_const_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant1ab99e4a531b1e43130b3554d--fee49a88f09fbfc13f4292b4.md) | 65 | `result-track:fee49a88f09fbfc13f4292b4fe70888c19e0fc00c0c841b7f73a1642247256c0` |
| 3 | `theorem` | [symm_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/symm-smul--7e1e3aaef6adb78bfc5fee6a.md) | 71 | `result-track:7e1e3aaef6adb78bfc5fee6aa19e0eaa1b29b3536d0c3552cb7543483f9800f2` |
| 4 | `def` | [smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/smul--56bef1b03360ab9de2217cba.md) | 78 | `declaration-track:56bef1b03360ab9de2217cba6c2af35e96331dd9b8aa484964b129a720611b38` |
| 5 | `theorem` | [coe_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/coe-smul--8a1d2d68ba01950e98114afe.md) | 83 | `result-track:8a1d2d68ba01950e98114afe9882d1b59fc722826808b2def1b91e10260f9511` |
| 6 | `theorem` | [symm_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/symm-smul--72f6628d0b3424778ab816ce.md) | 88 | `result-track:72f6628d0b3424778ab816ce2b355594523d762208b595d3ff2b1f611c795595` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.measurableEmbedding_const_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant1ab99e4a531b1e43130b3554d--b77f89a063e42a9e17f40e8c.md) | 93 | `result-track:b77f89a063e42a9e17f40e8c301bf7f679d37fb005f2276cbe438ff3c3c613bb` |
| 8 | `def` | [mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/mulleft--2fe3d0cbc4457136c52e1e16.md) | 107 | `declaration-track:2fe3d0cbc4457136c52e1e1626a3384e2f2f6e1d239a41f06c8173b113f21341` |
| 9 | `theorem` | [coe_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/coe-mulleft--ef06549006ea624c82ef30c0.md) | 113 | `result-track:ef06549006ea624c82ef30c055af7e02b4f425544e4b239a7e58cfe8909c3dc6` |
| 10 | `theorem` | [symm_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/symm-mulleft--4d2dd3c2dfeed909d794e068.md) | 119 | `result-track:4d2dd3c2dfeed909d794e068f496b27b65aea7f6420e92fe79bd1e1e5aca26c8` |
| 11 | `theorem` | [toEquiv_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/toequiv-mulleft--4d43f467fd26c96e48911a00.md) | 125 | `result-track:4d43f467fd26c96e48911a0008834936d0d9622cf0bdafc23c5ccef0b4bd1fcd` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.measurableEmbedding_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant1ab99e4a531b1e43130b3554d--d7616327aa15da0678b19f99.md) | 131 | `result-track:d7616327aa15da0678b19f99356c4094b7e926ca8972cfe549f479ffd07682cd` |
| 13 | `def` | [mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/mulright--1909f4f2d24b50a1ebd898a0.md) | 141 | `declaration-track:1909f4f2d24b50a1ebd898a0b9cac3557c354e984c4f11702b1d64f899e5931f` |
| 14 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.measurableEmbedding_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant1ab99e4a531b1e43130b3554d--25ada2da17b3f842d2a9fb75.md) | 149 | `result-track:25ada2da17b3f842d2a9fb7546e64b3d014ae2dd6e45f5231fd92e4e233499a5` |
| 15 | `theorem` | [coe_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/coe-mulright--b075faa1c63ce5ff348a3dcd.md) | 155 | `result-track:b075faa1c63ce5ff348a3dcdeae3bff9688edd2751bf47a0158e7decf9c1681f` |
| 16 | `theorem` | [symm_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/symm-mulright--8e59c0ad1d118b01896139cf.md) | 161 | `result-track:8e59c0ad1d118b01896139cffc404b04702974501ae5ca2957f63251d8ca9215` |
| 17 | `theorem` | [toEquiv_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/toequiv-mulright--8336ed6d5573d2be99ed23d6.md) | 167 | `result-track:8336ed6d5573d2be99ed23d63b4942ae2efe5e402da732bf1515e76b980cbb1a` |
| 18 | `def` | [mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/mulleft--82eb6f0e7443613b4fdbe7ea.md) | 174 | `declaration-track:82eb6f0e7443613b4fdbe7eae8b5d10c5a5399233fc3b8573b56ae4ac3cb4da7` |
| 19 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.measurableEmbedding_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant1ab99e4a531b1e43130b3554d--ec2f622e410f07e1e4d2d983.md) | 178 | `result-track:ec2f622e410f07e1e4d2d983ca8a5cc8dc8e1722a00628d05baa68f8d4bb6d0a` |
| 20 | `theorem` | [coe_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/coe-mulleft--24aa67799a38d0221b3580ce.md) | 184 | `result-track:24aa67799a38d0221b3580cefce87146f2b7bed3afb90187025dab8d4155df39` |
| 21 | `theorem` | [symm_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/symm-mulleft--4daafb7de8558f15307b4c27.md) | 189 | `result-track:4daafb7de8558f15307b4c2750c65be967bd17c3a0957b31052f1fd66dd73b64` |
| 22 | `theorem` | [toEquiv_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/toequiv-mulleft--cb393b79e4daedaa074f9ff0.md) | 195 | `result-track:cb393b79e4daedaa074f9ff0acb0273319f942bf950b32d9814889cc555a342d` |
| 23 | `def` | [mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/mulright--b43a3929ce4784c480736488.md) | 201 | `declaration-track:b43a3929ce4784c4807364886da2a88ead7c24770313eec30580592f647559bf` |
| 24 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant1ab99e4a531b1e43130b3554d067a13d8ea74e74b7f31e3009dfd48488600128.measurableEmbedding_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant1ab99e4a531b1e43130b3554d--97269fbfd196fa74dc440254.md) | 207 | `result-track:97269fbfd196fa74dc44025485bb99c0fae056d1dbea441b9dd730ed97b1ca3b` |
| 25 | `theorem` | [coe_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/coe-mulright--3771541bc90d325a61ad25ac.md) | 213 | `result-track:3771541bc90d325a61ad25ac85a1d4dfa78867a35d77b25bff459f1e011629a4` |
| 26 | `theorem` | [symm_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/symm-mulright--3c26a76c7c0853c9a7353e21.md) | 218 | `result-track:3c26a76c7c0853c9a7353e211c6cdf04472729dc6e0c5df47621632b3f17fcde` |
| 27 | `theorem` | [toEquiv_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/toequiv-mulright--cb395b6b09ab1cc6f57c739a.md) | 224 | `result-track:cb395b6b09ab1cc6f57c739aa5ee3c0757304f64490f1bc92d81ca4e091e3674` |
| 28 | `def` | [inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/inv--d79a65613cb193513d2fcb78.md) | 233 | `declaration-track:d79a65613cb193513d2fcb789cb66ded01dbca6d098a093a2816effef7f5939d` |
| 29 | `theorem` | [symm_inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/symm-inv--f8c183fdbc2e7ee1010ad125.md) | 241 | `result-track:f8c183fdbc2e7ee1010ad125fd3d7dfe16c772521e25d520987548cbe0743aeb` |
| 30 | `def` | [divRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/divright--edf8b950d29d45e9f8275f45.md) | 249 | `declaration-track:edf8b950d29d45e9f8275f4570af5c9187727bf45e1336ef6e0162fa3607053d` |
| 31 | `def` | [divLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant47c71c5e06e2c9c55bba039451d405ad3c17ef853021d3d8b637d22733322355.lean/declarations/divleft--f3dfb87d30b75f7d80c34657.md) | 258 | `declaration-track:f3dfb87d30b75f7d80c34657d068863aba82f2a655f2998c21d274a1dc6c48e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

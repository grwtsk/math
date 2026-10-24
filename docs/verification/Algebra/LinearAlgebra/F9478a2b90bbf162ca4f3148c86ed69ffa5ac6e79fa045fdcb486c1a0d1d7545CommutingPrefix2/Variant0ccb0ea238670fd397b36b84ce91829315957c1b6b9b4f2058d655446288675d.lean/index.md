# Verification target: GRWTSK.Algebra.LinearAlgebra.F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2.Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82e2de75753a074711302f9c23b2b2c12ef7059c",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82e2de75753a074711302f9c23b2b2c12ef7059c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.QuadraticSwapInvolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionPlus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/involutionplus--951a2321a46ccb152200df2b.md) | 45 | `declaration-track:951a2321a46ccb152200df2bb82101d713dca1c1ae0f3438a77f559cdc3d9fae` |
| 2 | `def` | [involutionMinus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/involutionminus--6654376e03b8a1557cae6879.md) | 49 | `declaration-track:6654376e03b8a1557cae687989f9156e009e2dd1c4a1334a26033e5f065b5edf` |
| 3 | `theorem` | [involutionPlus_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/involutionplus-apply--82a55097a6bff1aeca13d7be.md) | 53 | `result-track:82a55097a6bff1aeca13d7be79c126913673b098ada6cecd1bcb7c6e93da9568` |
| 4 | `theorem` | [involutionMinus_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/involutionminus-apply--23f5be844849a21408e55dff.md) | 58 | `result-track:23f5be844849a21408e55dff14dbe80e36683ed3279646e843d05602a9f50b41` |
| 5 | `theorem` | [involution_projection_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/involution-projection-decomposition--e294d31e808a97f12a9601c6.md) | 63 | `result-track:e294d31e808a97f12a9601c69691a4c0812f3c730e0d36af6647d9881875a7b2` |
| 6 | `theorem` | [involutionPlus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/involutionplus-idempotent--746676d69cec9316eed477e0.md) | 70 | `result-track:746676d69cec9316eed477e08810d56b682e2efcf247bc5a92a738eb9e6c3dfa` |
| 7 | `theorem` | [involutionMinus_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/involutionminus-idempotent--1f06641477901358494d7852.md) | 78 | `result-track:1f06641477901358494d7852b0b8ce40de949296b4eda48d80f3395b556c0260` |
| 8 | `theorem` | [involutionPlus_after_minus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/involutionplus-after-minus--7499e81e114f38e3be021c55.md) | 86 | `result-track:7499e81e114f38e3be021c55ddd422ff86a90a037d6d64dfb856b1eecda6a276` |
| 9 | `theorem` | [involutionMinus_after_plus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/involutionminus-after-plus--f082f7326fb2e22971bf2514.md) | 93 | `result-track:f082f7326fb2e22971bf2514a9ad8e6398ae5244edaf42daf35228deb069d7b6` |
| 10 | `theorem` | [involution_on_plus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/involution-on-plus--cf7640479fede3963274b7ba.md) | 100 | `result-track:cf7640479fede3963274b7bace03b7bee7d3d03b0c21eea6f782840b5dcc39b7` |
| 11 | `theorem` | [involution_on_minus](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/involution-on-minus--0fe01369b06210c2ab82e58d.md) | 107 | `result-track:0fe01369b06210c2ab82e58d122a56bff49a6d7a4c8ebaeca55a0a75e8f56b85` |
| 12 | `structure` | [CommutingInvolutions](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/commutinginvolutions--116fe3819c5ca6978e9de2ef.md) | 114 | `declaration-track:116fe3819c5ca6978e9de2ef72b7f2dc9d69831c758a9d047947f85248a87f28` |
| 13 | `theorem` | [plusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/plusplus-commute--93a0738696a4869e537ef634.md) | 126 | `result-track:93a0738696a4869e537ef6340bdabf9731c185e232a894e1e78a6bab6c4ef38a` |
| 14 | `theorem` | [plusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/plusminus-commute--c23172201fcda13986e18c90.md) | 134 | `result-track:c23172201fcda13986e18c90246bf0ed0185f33366d65be8f2b2cba092364e7e` |
| 15 | `theorem` | [minusPlus_commute](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/minusplus-commute--8c86777bbe0808f83e7fa59e.md) | 142 | `result-track:8c86777bbe0808f83e7fa59ecfbfdd2ac4092844d10597f7fc397340451d09cd` |
| 16 | `theorem` | [minusMinus_commute](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/minusminus-commute--94cc8f7f1ad1ae4e24dc2d82.md) | 150 | `result-track:94cc8f7f1ad1ae4e24dc2d829507391a0f902ec9ddfe63fac0f7f6b5df27bdaa` |
| 17 | `def` | [sectorPP](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectorpp--a4c7e512b8bf35c3f03dbc18.md) | 158 | `declaration-track:a4c7e512b8bf35c3f03dbc1885951a156fbdb96ad19f8a4a70837bef77f04635` |
| 18 | `def` | [sectorPM](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectorpm--745940847eed117420acfac2.md) | 162 | `declaration-track:745940847eed117420acfac274c55acc296d670d8569750dc509803f52afd5d8` |
| 19 | `def` | [sectorMP](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectormp--7a2bdf2da795a2c71725ad39.md) | 166 | `declaration-track:7a2bdf2da795a2c71725ad3936f83b463f26bc6a54cf9180d642d82d5190b663` |
| 20 | `def` | [sectorMM](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectormm--34d714fefaeafee4e8df3760.md) | 170 | `declaration-track:34d714fefaeafee4e8df3760b55ba2d6a865860f07840c74885927204f095c04` |
| 21 | `theorem` | [sectorPP_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectorpp-apply--2ddb1d4ba510225fa2183acb.md) | 174 | `result-track:2ddb1d4ba510225fa2183acb0a47cfbc5a3f17ed2ae8cbbeead034ad11afb0bd` |
| 22 | `theorem` | [sectorPM_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectorpm-apply--7d90decac457b6a97130c7e5.md) | 180 | `result-track:7d90decac457b6a97130c7e588422595ed68307e6048ba36828d53180fa3fc22` |
| 23 | `theorem` | [sectorMP_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectormp-apply--39dba08ce1b57f8ecbb9c5ca.md) | 186 | `result-track:39dba08ce1b57f8ecbb9c5cae2077b021d99e4d53537e32d3aa1415361752a20` |
| 24 | `theorem` | [sectorMM_apply](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectormm-apply--a643eb36776d6b0840dcb0d8.md) | 192 | `result-track:a643eb36776d6b0840dcb0d8ee956e108c598ade3e1454a539a64a9759d92f21` |
| 25 | `theorem` | [idempotent_comp_of_commute](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/idempotent-comp-of-commute--9d989a9a19b2b6e26f8832e1.md) | 197 | `result-track:9d989a9a19b2b6e26f8832e15060fe25f5605a827cf5e05f1e3066ab6890b79a` |
| 26 | `theorem` | [sectorPP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectorpp-idempotent--67c64b17f5313ddad272925a.md) | 207 | `result-track:67c64b17f5313ddad272925adfcb9b488d5e566fd6fc67c117fd3a5073bf61a0` |
| 27 | `theorem` | [sectorPM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectorpm-idempotent--460ebf4f02f53c5ca40fc4b0.md) | 216 | `result-track:460ebf4f02f53c5ca40fc4b0bb3433f347430d6e24d56c863fc9cd244f50a192` |
| 28 | `theorem` | [sectorMP_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectormp-idempotent--362bf3556e5dc9019993efcd.md) | 225 | `result-track:362bf3556e5dc9019993efcd79ecc1c2d01f5a7f6a76e30ca8583b786df15a84` |
| 29 | `theorem` | [sectorMM_idempotent](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectormm-idempotent--cda549459f9d7d3d305bb76b.md) | 234 | `result-track:cda549459f9d7d3d305bb76b9082ab81a29deca284477c8c7e62f18ec4263711` |
| 30 | `theorem` | [four_sector_decomposition](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/four-sector-decomposition--ecc884e2ff8fd5924eca0201.md) | 243 | `result-track:ecc884e2ff8fd5924eca0201d784159421bdccd400dc88b1a5cd06f2b328fc2c` |
| 31 | `theorem` | [sectorPP_after_PM](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectorpp-after-pm--c761910fcf2244a92819f65b.md) | 250 | `result-track:c761910fcf2244a92819f65bc600893771ed0651cf7d41401b902b5d4804b6d8` |
| 32 | `theorem` | [sectorPM_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectorpm-after-pp--57b85177323805e753358f6d.md) | 261 | `result-track:57b85177323805e753358f6d142f26bc93a9593d608f9307bdb9218f0f6d7f02` |
| 33 | `theorem` | [sectorPP_after_MP](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectorpp-after-mp--e6a59c0a586aec7858e332da.md) | 272 | `result-track:e6a59c0a586aec7858e332da977c4c5954c2757b3eb12b80189d73be41678537` |
| 34 | `theorem` | [sectorMP_after_PP](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectormp-after-pp--781124615e9b23ca2e84006b.md) | 282 | `result-track:781124615e9b23ca2e84006b50c576ded13bd090d44715ece57ff5fb41a80934` |
| 35 | `theorem` | [sectorPP_after_MM](../../../../../mathematics/Algebra/LinearAlgebra/F9478a2b90bbf162ca4f3148c86ed69ffa5ac6e79fa045fdcb486c1a0d1d7545CommutingPrefix2/Variant0ccb0ea238670fd397b36b84ce91829315957c1b6b9b4f2058d655446288675d.lean/declarations/sectorpp-after-mm--387809b60e3526fd49a25487.md) | 292 | `result-track:387809b60e3526fd49a254876253da6313cbbe86146a5ec49c90e89e6e61d429` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

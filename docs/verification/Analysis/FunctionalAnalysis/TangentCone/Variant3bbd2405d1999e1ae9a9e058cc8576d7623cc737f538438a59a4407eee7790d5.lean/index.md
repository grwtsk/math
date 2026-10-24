# Verification target: GRWTSK.Analysis.FunctionalAnalysis.TangentCone.Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "503df4a24932f5b49c10d96bcbdbd54b407f5d47",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `503df4a24932f5b49c10d96bcbdbd54b407f5d47`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Topology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tangentConeAt](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/tangentconeat--34cd43186f226803756c56a8.md) | 55 | `declaration-track:34cd43186f226803756c56a8f4c2c3eeb6ce3c0fe714b6499ce020709b0ee0c7` |
| 2 | `structure` | [UniqueDiffWithinAt](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat--9c60ac82b852a3c1dcd14a67.md) | 68 | `declaration-track:9c60ac82b852a3c1dcd14a672bbb585327cdafdd612c10944caad9521018c5c7` |
| 3 | `def` | [UniqueDiffOn](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon--efe643569125c047fb4ba561.md) | 77 | `declaration-track:efe643569125c047fb4ba56184a02dedafbe41b781c31504465b48063ef63576` |
| 4 | `theorem` | [mem_tangentConeAt_of_pow_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/mem-tangentconeat-of-pow-smul--691097baf1afa491b4ae150f.md) | 96 | `result-track:691097baf1afa491b4ae150f7b47f45497293e7bee1617968638b8c849d7b8b7` |
| 5 | `theorem` | [tangentCone_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/tangentcone-univ--3cb4cb41f0e23fe202da10ea.md) | 103 | `result-track:3cb4cb41f0e23fe202da10ea45f1142fa8575933555738965b7046640a63d754` |
| 6 | `theorem` | [tangentCone_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/tangentcone-mono--fca80e823ec64bc351a2c1c3.md) | 109 | `result-track:fca80e823ec64bc351a2c1c35bc7462167e33e8fd785276f2246f23f694b96cf` |
| 7 | `theorem` | [tangentConeAt.lim_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/tangentconeat-lim-zero--8121c748017fd6f1c7447155.md) | 116 | `result-track:8121c748017fd6f1c7447155fda30245648ecf51685d2f5e88a314a2b49f622b` |
| 8 | `theorem` | [tangentCone_mono_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/tangentcone-mono-nhds--b69b9c0dbe5704163718336e.md) | 132 | `result-track:b69b9c0dbe5704163718336e25933cf3537d74389131b00ee972d5b10206bab1` |
| 9 | `theorem` | [tangentCone_congr](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/tangentcone-congr--2684f1e9f5b7746051e650ba.md) | 143 | `result-track:2684f1e9f5b7746051e650ba56d462fda38853bd0475e1c53cf485979ecca009` |
| 10 | `theorem` | [tangentCone_inter_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/tangentcone-inter-nhds--8d3e6dac2c6143f63cf18e98.md) | 148 | `result-track:8d3e6dac2c6143f63cf18e9859000424d4691d0ffaea0a5bd82be9546c065eb2` |
| 11 | `theorem` | [subset_tangentCone_prod_left](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/subset-tangentcone-prod-left--3a424fa0bf564dac7323ca96.md) | 153 | `result-track:3a424fa0bf564dac7323ca96937c9446540641de87186fb938dc21d99fffe4b0` |
| 12 | `theorem` | [subset_tangentCone_prod_right](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/subset-tangentcone-prod-right--420c96b276550674056f7496.md) | 173 | `result-track:420c96b276550674056f7496963756ab9c40e9b06141abe3f6d06a60788cec78` |
| 13 | `theorem` | [mapsTo_tangentCone_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/mapsto-tangentcone-pi--2610a0b1af2fb2ffc67788fa.md) | 193 | `result-track:2610a0b1af2fb2ffc67788fac8a623f4a64061410bb2b114152ce944ed44743f` |
| 14 | `theorem` | [mem_tangentCone_of_openSegment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/mem-tangentcone-of-opensegment-subset--d8304d8b57e32861f0fd0b19.md) | 218 | `result-track:d8304d8b57e32861f0fd0b1987aa5e15564fe754026c0c18a73de121a59ad41b` |
| 15 | `theorem` | [mem_tangentCone_of_segment_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/mem-tangentcone-of-segment-subset--9bd4dca0d5e43fb09fbe0d8d.md) | 231 | `result-track:9bd4dca0d5e43fb09fbe0d8d1bc4ee02df6d0d55742827b3d8a2563c870cbf28` |
| 16 | `theorem` | [UniqueDiffOn.uniqueDiffWithinAt](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-uniquediffwithinat--464bd35e65be045746e1c4c9.md) | 246 | `result-track:464bd35e65be045746e1c4c9dbaea77a9ab59c597a736c3fd77c320880aec2eb` |
| 17 | `theorem` | [uniqueDiffWithinAt_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-univ--8c9369febda134a2bd19ffc5.md) | 251 | `result-track:8c9369febda134a2bd19ffc54ed1b2008e2e40399a25b92647a3a6a3e78256c3` |
| 18 | `theorem` | [uniqueDiffOn_univ](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-univ--cc7b792e1fc2aa529260633d.md) | 256 | `result-track:cc7b792e1fc2aa529260633d50dd8619f47e6ee0577ea961b1e2b469d98d76ba` |
| 19 | `theorem` | [uniqueDiffOn_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-empty--6c6efb22138ec7eeb821dfd6.md) | 260 | `result-track:6c6efb22138ec7eeb821dfd6fe1c6d890d496af8d7b523677c9cbd27985e15fa` |
| 20 | `theorem` | [UniqueDiffWithinAt.congr_pt](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-congr-pt--7914394890e118f24f69637e.md) | 264 | `result-track:7914394890e118f24f69637eb3441fc6721275a2a31ccb3b1ee14db2cc353220` |
| 21 | `theorem` | [UniqueDiffWithinAt.mono_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-mono-nhds--2cb2978e80889aaba78df58f.md) | 267 | `result-track:2cb2978e80889aaba78df58f77028b1fc436da123572a27add9bdf6962d81450` |
| 22 | `theorem` | [UniqueDiffWithinAt.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-mono--7c5cac54e6ae0097f9b22755.md) | 274 | `result-track:7c5cac54e6ae0097f9b22755555efd7f76037aa61cfa7cf2a56efa9af8d4f7f4` |
| 23 | `theorem` | [uniqueDiffWithinAt_congr](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-congr--b132f33c8cd7d720e92fee72.md) | 279 | `result-track:b132f33c8cd7d720e92fee72f1e516e3eee92b2a0f641b859d63503bb6dd83e6` |
| 24 | `theorem` | [uniqueDiffWithinAt_inter](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-inter--bcc4a1d8cc0b696fc32753fd.md) | 284 | `result-track:bcc4a1d8cc0b696fc32753fd330c6d9d393398eceb664a15c8b59466759a02f2` |
| 25 | `theorem` | [UniqueDiffWithinAt.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-inter--73de26361a6c0e2a001324c6.md) | 289 | `result-track:73de26361a6c0e2a001324c6760c04088199f656a45e311d03755e0f00b14d06` |
| 26 | `theorem` | [uniqueDiffWithinAt_inter'](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-inter--16d88136815cdb1a9ca19ece.md) | 294 | `result-track:16d88136815cdb1a9ca19ece4bca90759e0e3ce660d45fc2f3ffee145ec91e0a` |
| 27 | `theorem` | [UniqueDiffWithinAt.inter'](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-inter--a61c9dd79fec878b893d1c74.md) | 299 | `result-track:a61c9dd79fec878b893d1c74e694f152ea10f201fdefd5228c2586100fbca467` |
| 28 | `theorem` | [uniqueDiffWithinAt_of_mem_nhds](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-of-mem-nhds--eb575e6cd1ea43438bee2662.md) | 304 | `result-track:eb575e6cd1ea43438bee2662bf7214041d9feaf7e07bb5bef6fff1aca2076848` |
| 29 | `theorem` | [IsOpen.uniqueDiffWithinAt](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/isopen-uniquediffwithinat--19a6c998d39466ad1e302b88.md) | 308 | `result-track:19a6c998d39466ad1e302b88495ca8a2a041f452f6220b604a47a5e9b242eed6` |
| 30 | `theorem` | [UniqueDiffOn.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-inter--8febe78562384922475234c1.md) | 312 | `result-track:8febe78562384922475234c165533f7cd26f5aab618345994b40ad93976ed397` |
| 31 | `theorem` | [IsOpen.uniqueDiffOn](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/isopen-uniquediffon--2d658b615df43da2227953a3.md) | 316 | `result-track:2d658b615df43da2227953a3177e97ee3d0745c051703fc63375403c1d56c5f1` |
| 32 | `theorem` | [UniqueDiffWithinAt.prod](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-prod--d0012659e3f71139788d8643.md) | 322 | `result-track:d0012659e3f71139788d86438d77efe6d2b9d31175b5844ee758bb859a696a0f` |
| 33 | `theorem` | [UniqueDiffWithinAt.univ_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-univ-pi--02c39a39817cd5e29e7f9685.md) | 333 | `result-track:02c39a39817cd5e29e7f9685f60bbb37f2ca367b4046edbd1393c6f9836a40dc` |
| 34 | `theorem` | [UniqueDiffWithinAt.pi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-pi--eb4ad8d97ab64ce49b50e627.md) | 345 | `result-track:eb4ad8d97ab64ce49b50e6279839ae33257e771ec29d87ccf8c7701b54aab136` |
| 35 | `theorem` | [UniqueDiffOn.prod](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-prod--fc1fc59e5fbd9db2456d428c.md) | 356 | `result-track:fc1fc59e5fbd9db2456d428cb7438345a5de30d4ed853ecc1c1c6e67619e99ad` |
| 36 | `theorem` | [UniqueDiffOn.pi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-pi--e03d99be7fa89d47e518afb2.md) | 363 | `result-track:e03d99be7fa89d47e518afb2c52c1a00742a96b79d6a97b58e29129339e1d10f` |
| 37 | `theorem` | [UniqueDiffOn.univ_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-univ-pi--38bcb4da1b2f6be4aa50deb3.md) | 371 | `result-track:38bcb4da1b2f6be4aa50deb39c3c8886156554fa9ea5054a18039c402f261d61` |
| 38 | `theorem` | [uniqueDiffWithinAt_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-convex--63ce61dbcbfde3dd83325500.md) | 379 | `result-track:63ce61dbcbfde3dd8332550042adcbf6360fbb85ff4b972dabf1bb93f8ec39dd` |
| 39 | `theorem` | [uniqueDiffOn_convex](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-convex--1c4d8307e21f13da41683fb4.md) | 396 | `result-track:1c4d8307e21f13da41683fb44f1b6f84715bcd73e51042b710d8fe8a97ea778e` |
| 40 | `theorem` | [uniqueDiffOn_Ici](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-ici--74125389840e8b08ec314b6b.md) | 401 | `result-track:74125389840e8b08ec314b6b6a0950228774d84edce35f908458afe54767e17a` |
| 41 | `theorem` | [uniqueDiffOn_Iic](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-iic--7b91be77c41afa959c331253.md) | 405 | `result-track:7b91be77c41afa959c331253c8994cbf2740ad7b7888584e3a342e0d50ec83cf` |
| 42 | `theorem` | [uniqueDiffOn_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-ioi--f94227ae55baf17a75982b39.md) | 409 | `result-track:f94227ae55baf17a75982b3978ab775b5d7d058dd905d45f2fbe35bbb30dfd60` |
| 43 | `theorem` | [uniqueDiffOn_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-iio--33f349968505817954f631e2.md) | 413 | `result-track:33f349968505817954f631e2a026dfda37e5d36995b8a3cb08cb2bb4002154ef` |
| 44 | `theorem` | [uniqueDiffOn_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-icc--0654c0a4954c7c6ed44995df.md) | 417 | `result-track:0654c0a4954c7c6ed44995dfd59d208a2919b2bc7c643a731a2ccc03a96b3664` |
| 45 | `theorem` | [uniqueDiffOn_Ico](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-ico--afbc943f872d890e95ccb197.md) | 421 | `result-track:afbc943f872d890e95ccb197a233eeb361af7ae4cda89d80086b92e86082a928` |
| 46 | `theorem` | [uniqueDiffOn_Ioc](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-ioc--cf7f1c7a792bf97df9a04044.md) | 427 | `result-track:cf7f1c7a792bf97df9a040447c4e08c152aae312b59ace1a7829fc248d4a26c5` |
| 47 | `theorem` | [uniqueDiffOn_Ioo](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-ioo--4180951fed92bb5e39891f54.md) | 433 | `result-track:4180951fed92bb5e39891f54c3a65a72f5f5b2c6bd325e2a05cf10e636389bcd` |
| 48 | `theorem` | [uniqueDiffOn_Icc_zero_one](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffon-icc-zero-one--ab2fb348807e34a1c5182f13.md) | 438 | `result-track:ab2fb348807e34a1c5182f139c5ba4c12bc5f04a460a2ad4b7daeeb16e6f5475` |
| 49 | `theorem` | [uniqueDiffWithinAt_Ioo](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-ioo--82751132166c2d3d341835fd.md) | 442 | `result-track:82751132166c2d3d341835fd2e9fe8fa80eb1d202320d9be50532241504137c3` |
| 50 | `theorem` | [uniqueDiffWithinAt_Ioi](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-ioi--f2c8814f37d3ee94c3711f1e.md) | 447 | `result-track:f2c8814f37d3ee94c3711f1eab9f379a8e1e2e71d2b35936adf609ce04d56418` |
| 51 | `theorem` | [uniqueDiffWithinAt_Iio](../../../../../mathematics/Analysis/FunctionalAnalysis/TangentCone/Variant3bbd2405d1999e1ae9a9e058cc8576d7623cc737f538438a59a4407eee7790d5.lean/declarations/uniquediffwithinat-iio--0ec3428e2f3bca563fd24900.md) | 451 | `result-track:0ec3428e2f3bca563fd2490031d6d78f0e98bb223d19679a3ba8b3e44029fef6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

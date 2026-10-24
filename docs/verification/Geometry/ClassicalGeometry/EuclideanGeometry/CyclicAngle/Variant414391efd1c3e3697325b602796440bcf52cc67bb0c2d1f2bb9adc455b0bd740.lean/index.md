# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CyclicAngle.Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a50b2dab904b3e3b14d8795ff736e9b3b7609b5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a50b2dab904b3e3b14d8795ff736e9b3b7609b5`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [TurnCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/turncircle--8b1a6393f375d90a85e1d1bf.md) | 66 | `declaration-track:8b1a6393f375d90a85e1d1bf4a19079ac0209eb6e6396d84a15feb78f70ad43a` |
| 2 | `def` | [turnCircleEquivAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/turncircleequivangle--f262743833a19b0ceb8dbbfc.md) | 71 | `declaration-track:f262743833a19b0ceb8dbbfcb5f1b588657ee6f47944d0ffd7acb2119763c49e` |
| 3 | `theorem` | [turnCircleEquivAngle_coe](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/turncircleequivangle-coe--c31d08295413f530f7efcbc6.md) | 77 | `result-track:c31d08295413f530f7efcbc6518771b7ccd2a0c5091688d94f769382d6c5948a` |
| 4 | `def` | [turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/turnstoangle--f74bedd819095314e216e2ca.md) | 91 | `declaration-track:f74bedd819095314e216e2caaba7bc1b459000368d23f92d41e73f6d572c5783` |
| 5 | `def` | [toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/toangle--a415351d3aad7d3887329a52.md) | 99 | `declaration-track:a415351d3aad7d3887329a52fd0bef27957778724b19354dcc6ce0d5b0d23974` |
| 6 | `def` | [radiansIco](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/radiansico--92f88edf74636ff7dbebc2f8.md) | 104 | `declaration-track:92f88edf74636ff7dbebc2f8e0a9fd2a1d2c50a1159b66521051d854597eae94` |
| 7 | `def` | [fromAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/fromangle--f6541d5873bc1150639ba478.md) | 118 | `declaration-track:f6541d5873bc1150639ba4787125b212b4d7180f4b4c9d60d3d608a9e6e6d1af` |
| 8 | `theorem` | [phaseAngle_mem_Ico](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/phaseangle-mem-ico--9c6f24e6955a619b766f7dd2.md) | 124 | `result-track:9c6f24e6955a619b766f7dd251ec6ba21efbfc2c2658e0095c0ad84c00fa95a4` |
| 9 | `theorem` | [toAngle_toReal_eq_phaseAngle_of_le_half](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/toangle-toreal-eq-phaseangle-of-le-half--1fc5d61ebb247ae3d4b97755.md) | 140 | `result-track:1fc5d61ebb247ae3d4b977556a8797767f56cc561893edd269f70b1336f90fe1` |
| 10 | `theorem` | [toAngle_toReal_eq_phaseAngle_sub_two_pi_of_half_lt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/toangle-toreal-eq-phaseangle-sub-two-pi-of-half-lt--ab433bb5c0626d181841ae95.md) | 162 | `result-track:ab433bb5c0626d181841ae95b83b5206ff69d2433f6e6a0e74451e71ec655cb9` |
| 11 | `theorem` | [fromAngle_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/fromangle-toangle--1e9f061161f9709ad21b4320.md) | 179 | `result-track:1e9f061161f9709ad21b4320a405321a19866680f3467b7b03e109b1bc75df40` |
| 12 | `theorem` | [toAngle_fromAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/toangle-fromangle--f279e0492ff873bf87fdd21d.md) | 200 | `result-track:f279e0492ff873bf87fdd21d8f984fa4260fd8e9a6c8e9422da8622f3166a265` |
| 13 | `def` | [normalizedPhaseEquivAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/normalizedphaseequivangle--705ecfb7dbc199469c02fda4.md) | 218 | `declaration-track:705ecfb7dbc199469c02fda40bbbf2c3740e42d69f262f2d2aa0f3d735d613b3` |
| 14 | `theorem` | [toAngle_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/toangle-zero--d65f0a0db83efcb72ee8feee.md) | 225 | `result-track:d65f0a0db83efcb72ee8feee182a997d0191b96df4cb993ef38ea9ed0c373c61` |
| 15 | `theorem` | [toAngle_quarter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/toangle-quarter--ceb0b18e0e52eb38c4fd9105.md) | 229 | `result-track:ceb0b18e0e52eb38c4fd91057434fe360b5b53892a0918a8eda94edf9fd7b9c0` |
| 16 | `theorem` | [toAngle_half](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/toangle-half--64c5b0e6bdc10fec6e762e69.md) | 237 | `result-track:64c5b0e6bdc10fec6e762e693c625539f40574343b4ac50acc4b9c2c06cdb011` |
| 17 | `theorem` | [toAngle_threeQuarters](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/toangle-threequarters--74e167b246a9f51d25f07703.md) | 245 | `result-track:74e167b246a9f51d25f07703196416d5c43ffee67481a9ad10317f382be6bce4` |
| 18 | `theorem` | [fromAngle_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/fromangle-zero--204c871ede21734692a689ac.md) | 253 | `result-track:204c871ede21734692a689ac8c311d97fbf89f44c1f134af407b9b71d81f81f3` |
| 19 | `theorem` | [fromAngle_piDivTwo](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/fromangle-pidivtwo--0821fe7eff95ca154133242f.md) | 258 | `result-track:0821fe7eff95ca154133242fea8f57279ef28be7accbd0d4d531d085303cc3ba` |
| 20 | `theorem` | [fromAngle_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/fromangle-pi--fb552f6039c7b43eaedd054c.md) | 264 | `result-track:fb552f6039c7b43eaedd054c6cb491cafa01b800015daa439b6b724e06a13ffd` |
| 21 | `theorem` | [fromAngle_threePiDivTwo](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/fromangle-threepidivtwo--5b53dc9cc836bd6ebfe1f541.md) | 270 | `result-track:5b53dc9cc836bd6ebfe1f541934c384754564d5c6c06808beeac0615c2ce206c` |
| 22 | `def` | [lightness](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/lightness--80f310a7b6648f734427bd34.md) | 280 | `declaration-track:80f310a7b6648f734427bd34f5cda95d8607f4ce70d3d8ee3a3983ef2b2deab5` |
| 23 | `def` | [opacityBase](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/opacitybase--869f9a3b41620104843710ed.md) | 285 | `declaration-track:869f9a3b41620104843710ed2e406b3a619ca51cbf5672b6d25f677acf622a51` |
| 24 | `def` | [greenShift](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/greenshift--bfb868afbb62d6dabb8d20f5.md) | 290 | `declaration-track:bfb868afbb62d6dabb8d20f566b5cea3499c2727a468ccea2e5e275d5fbe67b8` |
| 25 | `def` | [opacity](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/opacity--424758978861d813a5e15031.md) | 295 | `declaration-track:424758978861d813a5e1503121d52e6a45eacfd8ed3aa044cf19fee250470dda` |
| 26 | `theorem` | [lightness_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/lightness-turnstoangle--339a6d9c4f888adfa58846f4.md) | 300 | `result-track:339a6d9c4f888adfa58846f489f8dceb1b4dd7443d90c07e24969e15244b833c` |
| 27 | `theorem` | [opacityBase_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/opacitybase-turnstoangle--768531e748adc2cbd138566d.md) | 308 | `result-track:768531e748adc2cbd138566dff030cf8e25f2bc7ed44c72cc2129678b32dfb5d` |
| 28 | `theorem` | [greenShift_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/greenshift-turnstoangle--fcccf1e150cca9c8c10c79f5.md) | 315 | `result-track:fcccf1e150cca9c8c10c79f5d1c55d5cb364cddac8d7e964109c226762596d84` |
| 29 | `theorem` | [opacity_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/opacity-turnstoangle--ca15cada0f6b0bb22c927d54.md) | 321 | `result-track:ca15cada0f6b0bb22c927d54790ca991c0f9924bc4ab490d9aff9e080b6e8140` |
| 30 | `theorem` | [lightness_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/lightness-toangle--60ada123227d06ca3bd3996a.md) | 327 | `result-track:60ada123227d06ca3bd3996a3509c9b02dcaee93f96a7bf87d29fb02ac8b782e` |
| 31 | `theorem` | [opacityBase_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/opacitybase-toangle--c503dc485b9f5d582207d0e7.md) | 333 | `result-track:c503dc485b9f5d582207d0e77cdb2ef60ac4f931cc92132069b59e2dc4189ce7` |
| 32 | `theorem` | [greenShift_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/greenshift-toangle--c7728b87359d55127eedca32.md) | 338 | `result-track:c7728b87359d55127eedca3258b688ded33d83c2d92ee561bec1a266400607d2` |
| 33 | `theorem` | [opacity_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Variant414391efd1c3e3697325b602796440bcf52cc67bb0c2d1f2bb9adc455b0bd740.lean/declarations/opacity-toangle--21ac0d9bfaaf992a518a4416.md) | 343 | `result-track:21ac0d9bfaaf992a518a4416171c3e089a2b712357f2a4e91d21a6a0b9a2e4d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

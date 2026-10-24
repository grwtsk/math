# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CyclicAngle.Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d40a21e9a36852d7c0b6996a393ce60aafc34c93",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d40a21e9a36852d7c0b6996a393ce60aafc34c93`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean.json)

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
| 1 | `abbrev` | [TurnCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/turncircle--a9bd9c2f1d65bafa5b481cd3.md) | 66 | `declaration-track:a9bd9c2f1d65bafa5b481cd3d0babd7c5a7a612a6826e2e5a49bd892bdc0c85c` |
| 2 | `def` | [turnCircleEquivAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/turncircleequivangle--5264a5a6fa016931d9302a2b.md) | 71 | `declaration-track:5264a5a6fa016931d9302a2bcf81719207ae63cb66eecc880c6a0689281d01c6` |
| 3 | `theorem` | [turnCircleEquivAngle_coe](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/turncircleequivangle-coe--f672c07bd2461ad5057c478f.md) | 77 | `result-track:f672c07bd2461ad5057c478f984075d6ce832b0cf7d40cec7c617dd916f550e1` |
| 4 | `def` | [turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/turnstoangle--1f49dc99aa0fb99f8a1f1811.md) | 93 | `declaration-track:1f49dc99aa0fb99f8a1f181113f9e91298f83ef9cc61f938b3569d223b210080` |
| 5 | `def` | [toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/toangle--ad7a00b07f76faf53f907416.md) | 101 | `declaration-track:ad7a00b07f76faf53f907416c78dac411a2522718efb5183eaed30a14061024a` |
| 6 | `def` | [radiansIco](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/radiansico--d9dba72e4444618c89d101f2.md) | 106 | `declaration-track:d9dba72e4444618c89d101f2d8929b8690dba23f05fc31d88b74f9d3caf7fd61` |
| 7 | `def` | [fromAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/fromangle--0a37b7d08727166a4aa35d62.md) | 120 | `declaration-track:0a37b7d08727166a4aa35d62c94e82fcce21154d6e9456e86a769f9f5c350910` |
| 8 | `theorem` | [phaseAngle_mem_Ico](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/phaseangle-mem-ico--fbd50f336ef057ea743a2b85.md) | 126 | `result-track:fbd50f336ef057ea743a2b8501d07f7bb0f3377d6f2575069a7b57a766ad9495` |
| 9 | `theorem` | [toAngle_toReal_eq_phaseAngle_of_le_half](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/toangle-toreal-eq-phaseangle-of-le-half--e286072ed64e08248e3ebef4.md) | 142 | `result-track:e286072ed64e08248e3ebef4a51edd3bd64af88bb6f211613ba43e1f9cbfff19` |
| 10 | `theorem` | [toAngle_toReal_eq_phaseAngle_sub_two_pi_of_half_lt](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/toangle-toreal-eq-phaseangle-sub-two-pi-of-half-lt--b8675758f9fa24a164787980.md) | 164 | `result-track:b8675758f9fa24a1647879800f7d9d9d6eb0b0b5b689507d89dc599e0f49f3dc` |
| 11 | `theorem` | [fromAngle_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/fromangle-toangle--9b7caddaaebfc3fb6bc8fea5.md) | 181 | `result-track:9b7caddaaebfc3fb6bc8fea58daa5d2c6650cf13bb171fe84be81eb7cd2a9a0e` |
| 12 | `theorem` | [toAngle_fromAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/toangle-fromangle--7995737870fba9b3f1946d05.md) | 202 | `result-track:7995737870fba9b3f1946d0582167c58097bfa5c2eebbcf673e76a8cfe4a191b` |
| 13 | `def` | [normalizedPhaseEquivAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/normalizedphaseequivangle--a814b1b74f6b438a33a9100f.md) | 220 | `declaration-track:a814b1b74f6b438a33a9100f4924a9f8da821b22c95a434a5bfdbfebbd4077de` |
| 14 | `def` | [normalizedPhaseEquivTurnCircle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/normalizedphaseequivturncircle--bba264258c6724d5b00b24b5.md) | 232 | `declaration-track:bba264258c6724d5b00b24b52fc6edbfe161deb194b695358171115f8b19abb4` |
| 15 | `theorem` | [normalizedPhaseEquivTurnCircle_symm_apply_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/normalizedphaseequivturncircle-symm-apply-apply--ed1b903f02e183f73684a7d5.md) | 236 | `result-track:ed1b903f02e183f73684a7d5d7f00c833797023b5c4ec286c2b094c1761f1f94` |
| 16 | `theorem` | [normalizedPhaseEquivTurnCircle_apply_symm_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/normalizedphaseequivturncircle-apply-symm-apply--7403c84d5af1bfd54b7be684.md) | 243 | `result-track:7403c84d5af1bfd54b7be68423445659365b87ca716d951017bea8e979f34984` |
| 17 | `theorem` | [toAngle_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/toangle-zero--0b0bbd1d9ed40ccfa85a7651.md) | 250 | `result-track:0b0bbd1d9ed40ccfa85a7651186c7d70297e7bf4e398adaaeda17c8fecb50676` |
| 18 | `theorem` | [toAngle_quarter](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/toangle-quarter--705a793f4c0aac668516ee19.md) | 254 | `result-track:705a793f4c0aac668516ee19f041c912b0911c1d9a2ee95e2f18a6fb9e7f947c` |
| 19 | `theorem` | [toAngle_half](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/toangle-half--708b936ab000f28984416dc4.md) | 262 | `result-track:708b936ab000f28984416dc4cd7b473253ecea4dc394f8abfd784b90e5e5af20` |
| 20 | `theorem` | [toAngle_threeQuarters](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/toangle-threequarters--2c5eeee73498cb572668d12c.md) | 270 | `result-track:2c5eeee73498cb572668d12cfa1685d72ef5ff9b7f94768be4745c0b5cadfa96` |
| 21 | `theorem` | [fromAngle_zero](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/fromangle-zero--acc08e1c4b95e74c2b953ee2.md) | 278 | `result-track:acc08e1c4b95e74c2b953ee2981f29dd6cf0ac734895de3839e49a5860ce7c3c` |
| 22 | `theorem` | [fromAngle_piDivTwo](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/fromangle-pidivtwo--a1aeed2a07e2025532f4f588.md) | 283 | `result-track:a1aeed2a07e2025532f4f5886e07b6dc7cb1fae84d8dc3adf0482b9eb47d585a` |
| 23 | `theorem` | [fromAngle_pi](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/fromangle-pi--394d4f04b34ab644bb442731.md) | 289 | `result-track:394d4f04b34ab644bb44273193cd4740b27904e7b9ad3c9ea270992a77608e11` |
| 24 | `theorem` | [fromAngle_threePiDivTwo](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/fromangle-threepidivtwo--2818de3830b663ee712b6e2f.md) | 295 | `result-track:2818de3830b663ee712b6e2f49034e5b1fe1fe8ae05076e1da27db0ff4e9738e` |
| 25 | `def` | [lightness](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/lightness--404425d6a4bbd975a68a2b0b.md) | 305 | `declaration-track:404425d6a4bbd975a68a2b0bf9a7e5a706f22c6a5eaebf44795764382a4db522` |
| 26 | `def` | [opacityBase](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/opacitybase--32d71e3a46825642d9ab3948.md) | 310 | `declaration-track:32d71e3a46825642d9ab3948ec6b3f1466805027aac26be8d64df19a2d5602ab` |
| 27 | `def` | [greenShift](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/greenshift--2927188e20db119960869abf.md) | 315 | `declaration-track:2927188e20db119960869abfc6454bd56c0d0ca3cd0239b24ff4aec17e6d2f2b` |
| 28 | `def` | [opacity](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/opacity--7ab2402432cff8f4bd59e42b.md) | 320 | `declaration-track:7ab2402432cff8f4bd59e42b84841aa353fdaee2399d80753bda77a41ebff410` |
| 29 | `theorem` | [lightness_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/lightness-turnstoangle--ba0d1feec9a554f234503e6a.md) | 325 | `result-track:ba0d1feec9a554f234503e6a823b5c899ad33aea2c7c913a29a03571560f1c48` |
| 30 | `theorem` | [opacityBase_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/opacitybase-turnstoangle--a712565db5c90a7f09992f21.md) | 333 | `result-track:a712565db5c90a7f09992f21fe78b8c784117aa08191ce5a216276c0383b4d8c` |
| 31 | `theorem` | [greenShift_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/greenshift-turnstoangle--9f2635320326fab82901324c.md) | 340 | `result-track:9f2635320326fab82901324cf30edf37958c879a192b765fa6484c120b143b9b` |
| 32 | `theorem` | [opacity_turnsToAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/opacity-turnstoangle--93e04c5b64401eff011a5b63.md) | 346 | `result-track:93e04c5b64401eff011a5b630154a314c500ff33d71fc8f6fb78bdd386f012f7` |
| 33 | `theorem` | [lightness_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/lightness-toangle--cc750772fd0e62c1bf79c9c4.md) | 352 | `result-track:cc750772fd0e62c1bf79c9c4c0c11c687c1a48d951617d6da3b48b5af06df996` |
| 34 | `theorem` | [opacityBase_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/opacitybase-toangle--9911df14ef7ef4b28e702676.md) | 358 | `result-track:9911df14ef7ef4b28e702676c99826e2c1f17a8147dce576337a9792b5834e6e` |
| 35 | `theorem` | [greenShift_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/greenshift-toangle--5adb47702bdad06e5babd65b.md) | 363 | `result-track:5adb47702bdad06e5babd65ba7f8d6ad131f4753c1d5d194a0027eafbe587656` |
| 36 | `theorem` | [opacity_toAngle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/opacity-toangle--d7310504abc3b9deedaef630.md) | 368 | `result-track:d7310504abc3b9deedaef630981f24927254009f202cdaca38b31a8390b14960` |
| 37 | `def` | [ProvesEllipticUniformization](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/provesellipticuniformization--009bd50e05e88d73c396eb78.md) | 376 | `declaration-track:009bd50e05e88d73c396eb780d062bb0b33913f6f9824f4b30aa135efd441bbe` |
| 38 | `theorem` | [cyclicAngle_has_no_elliptic_uniformization_authority](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CyclicAngle/Varianta2477589cc0e403558de8c793b0c884623894eb87c356e93a48456b969b839c7.lean/declarations/cyclicangle-has-no-elliptic-uniformization-authority--b5ea5047c2528de6290320b0.md) | 379 | `result-track:b5ea5047c2528de6290320b0b7cf4a4d2ca649ce81b330b7e168143f6f7e8794` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

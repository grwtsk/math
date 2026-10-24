# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.MellinNormalizedDyadicPacking

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "887cb1b204d2702725befd529cc80ba15d7e3a00",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `887cb1b204d2702725befd529cc80ba15d7e3a00`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicSafeShiftPackingObstruction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicSafeShiftPackingObstruction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [safePlusDyadicAction](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeplusdyadicaction--47e842bbc5114314e0ae8619.md) | 48 | `declaration-track:47e842bbc5114314e0ae86196d0c3507a02c876aece9b13ac4703ce51c7bb88f` |
| 2 | `def` | [safeMinusDyadicAction](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeminusdyadicaction--75f1ebe37fa74f1d4dea9524.md) | 51 | `declaration-track:75f1ebe37fa74f1d4dea952419410e1f6cdc7e02d7aa8291aa0d5f06acc55a70` |
| 3 | `def` | [safeCenterDyadicAction](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safecenterdyadicaction--492f4da2fdf127341b1d7263.md) | 54 | `declaration-track:492f4da2fdf127341b1d7263a3d2c92afb431ecf6fc39fb13e4b4ba145115509` |
| 4 | `theorem` | [safePlusDyadicBlock_eq_dilation_mul_action](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeplusdyadicblock-eq-dilation-mul-action--6214d0e1de41b0734e0c7ebc.md) | 57 | `result-track:6214d0e1de41b0734e0c7ebce709ccb46545b77ad2f8a3490e9689d8cec787c0` |
| 5 | `theorem` | [safeMinusDyadicBlock_eq_dilation_mul_action](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeminusdyadicblock-eq-dilation-mul-action--34d686d6332a3bd2dbec58a3.md) | 67 | `result-track:34d686d6332a3bd2dbec58a3aa405675856f4a3f8c1ed7a2fe150a4b15aa2b01` |
| 6 | `theorem` | [safeCenterDyadicBlock_eq_dilation_mul_action](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safecenterdyadicblock-eq-dilation-mul-action--8dc58248be5ce2d465ff2223.md) | 77 | `result-track:8dc58248be5ce2d465ff22235d14c6a7aa7f48ba33b154be118d24d7fe5ca1ca` |
| 7 | `theorem` | [safePlusDyadicAction_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeplusdyadicaction-norm-le--0c38b4108bac660192c16be5.md) | 87 | `result-track:0c38b4108bac660192c16be528179c6ab38e0e15f269a8a0e67f01c13434e200` |
| 8 | `theorem` | [safeMinusDyadicAction_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeminusdyadicaction-norm-le--608c29f21dc8cac0b5d42398.md) | 96 | `result-track:608c29f21dc8cac0b5d42398f804a07aad4b26a184db5fda42087b0b86746043` |
| 9 | `theorem` | [safeCenterDyadicAction_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safecenterdyadicaction-norm-le--eb764a97eec8ea9110b90bae.md) | 105 | `result-track:eb764a97eec8ea9110b90bae887a649b9f4d97fa050a3146897aade108eaca07` |
| 10 | `def` | [safeEvenDyadicAction](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeevendyadicaction--5897e72706d749f97abfe6ad.md) | 114 | `declaration-track:5897e72706d749f97abfe6ade48d82e7eecdc61fbfb90bed8205bc8bfc159ba9` |
| 11 | `def` | [safeOddDyadicAction](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeodddyadicaction--720a010cea1d23cce08201d0.md) | 117 | `declaration-track:720a010cea1d23cce08201d04cb29f05daf38ea0b5a00fcc2a255aa7772f7a2a` |
| 12 | `def` | [safeEvenDefectDyadicAction](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeevendefectdyadicaction--b02580122dac20757193b514.md) | 120 | `declaration-track:b02580122dac20757193b51400cb02a879de04a4073a13445695f9f3c26d82c6` |
| 13 | `theorem` | [safeEvenDyadicAction_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeevendyadicaction-norm-le--7d341684395e89c519290a43.md) | 123 | `result-track:7d341684395e89c519290a43c7156996526f00324be71a9e137574c9ea0e7482` |
| 14 | `theorem` | [safeOddDyadicAction_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeodddyadicaction-norm-le--0ed065709be633613052b7d9.md) | 135 | `result-track:0ed065709be633613052b7d9037846e3c99090324a20ec38636bc52074ea7473` |
| 15 | `theorem` | [safeEvenDefectDyadicAction_norm_le_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeevendefectdyadicaction-norm-le-two--328b58cd5a5c61984d4c962d.md) | 147 | `result-track:328b58cd5a5c61984d4c962dbe9477242cb24aeb97a3139a4e7722254ecaafe7` |
| 16 | `theorem` | [safePlusDyadicAction_eq_center_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeplusdyadicaction-eq-center-of-zerodefect--7fd2881e53971f3dfa6fa297.md) | 158 | `result-track:7fd2881e53971f3dfa6fa2970876e5f8a769a3c64e27d8e469d2e6c6f6f3f29b` |
| 17 | `theorem` | [safeMinusDyadicAction_eq_center_of_zeroDefect](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeminusdyadicaction-eq-center-of-zerodefect--215e03084d00eab45b3a293b.md) | 165 | `result-track:215e03084d00eab45b3a293b8a4c77d9e39b731551a348ef78480635b34aaee3` |
| 18 | `def` | [safeAxialDyadicActionPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeaxialdyadicactionpoint--9325ba21008c2483e6ce5ed4.md) | 172 | `declaration-track:9325ba21008c2483e6ce5ed4af7ae72c32c8c023c02e56e565c003a2ff5fcb73` |
| 19 | `def` | [safeTransverseDyadicActionPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safetransversedyadicactionpoint--8a43ddf82e5992d9fc9132b6.md) | 177 | `declaration-track:8a43ddf82e5992d9fc9132b6fe62e2c7fea7e65dc7f8d442219676b665e9c2e8` |
| 20 | `def` | [safeAxialDyadicActionPacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeaxialdyadicactionpacking--909f8c2a7ad40136117aa07b.md) | 182 | `declaration-track:909f8c2a7ad40136117aa07be648ac01a4f8aa22f7392afbaabb0834c715d02c` |
| 21 | `def` | [safeTransverseDyadicActionPacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safetransversedyadicactionpacking--8dd21a4381b0f5d482b39bbd.md) | 186 | `declaration-track:8dd21a4381b0f5d482b39bbde6de0d176082a97f8c712af1c4d8e00390d3b80d` |
| 22 | `def` | [safeAxialDyadicActionGram](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeaxialdyadicactiongram--36c3f5407e60255913d121b9.md) | 190 | `declaration-track:36c3f5407e60255913d121b94a51eae27b6a7d5880eb5cdfc550a800ce3b7f12` |
| 23 | `def` | [safeTransverseDyadicActionGram](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safetransversedyadicactiongram--9b8a6dc5e6ad48437f937b0a.md) | 194 | `declaration-track:9b8a6dc5e6ad48437f937b0a26ffd59da55ded5a9a9d839fc312591409fd96d1` |
| 24 | `def` | [safeQuarticDyadicActionValue](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safequarticdyadicactionvalue--f1406a23ec17fe62e454ce71.md) | 198 | `declaration-track:f1406a23ec17fe62e454ce711d5d6b6fc5045ad95b59891e5ca276cc09a398b2` |
| 25 | `theorem` | [safeQuarticDyadicActionValue_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safequarticdyadicactionvalue-nonnegative--750659d5a9d20f2986cc87bb.md) | 203 | `result-track:750659d5a9d20f2986cc87bba65e3a124f559cda0c92b9898ef26bd0c504fcf1` |
| 26 | `def` | [safeAxialDyadicActionNormalizedY](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeaxialdyadicactionnormalizedy--2f4ed1ac97c7318a0e5bfc39.md) | 211 | `declaration-track:2f4ed1ac97c7318a0e5bfc398d7f36f3d5954dae8a693431936696e10f2a5f9e` |
| 27 | `def` | [safeTransverseDyadicActionNormalizedY](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safetransversedyadicactionnormalizedy--796da0501160e67898bafbb5.md) | 218 | `declaration-track:796da0501160e67898bafbb59a513f2fd5b1236e6554788869a5f96be8f4c207` |
| 28 | `theorem` | [safeAxialDyadicAction_y_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeaxialdyadicaction-y-factor--107e354ba8349a1f8e5516c5.md) | 226 | `result-track:107e354ba8349a1f8e5516c53173496cb74aa9516b26670e661fe7cc2b1a9a56` |
| 29 | `theorem` | [safeTransverseDyadicAction_y_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safetransversedyadicaction-y-factor--331e4de039e4d6beec67017a.md) | 241 | `result-track:331e4de039e4d6beec67017a4e62ef584ea7cbe24e6054e76981270897744c33` |
| 30 | `def` | [safeAxialDyadicActionNormalizedPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeaxialdyadicactionnormalizedpoint--d1381c13e80774f5f357787c.md) | 258 | `declaration-track:d1381c13e80774f5f357787c9076c6a99e4ccb4f12d4e7b763d0c3d79167edae` |
| 31 | `def` | [safeTransverseDyadicActionNormalizedPoint](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safetransversedyadicactionnormalizedpoint--2da68da0830002af759196ec.md) | 263 | `declaration-track:2da68da0830002af759196ec452319d87ded9cebf384d9f30007cf29421b3e77` |
| 32 | `def` | [safeAxialDyadicActionNormalizedPacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeaxialdyadicactionnormalizedpacking--3e5c2c8022e06fdfac98bedc.md) | 268 | `declaration-track:3e5c2c8022e06fdfac98bedcc6f7c085e889fa9ae770a25dedc9211c9c9f2dfe` |
| 33 | `def` | [safeTransverseDyadicActionNormalizedPacking](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safetransversedyadicactionnormalizedpacking--5346dd9477435d7467ee779d.md) | 272 | `declaration-track:5346dd9477435d7467ee779d019d9ec96470d63edbb7548dae9c89a26c99f776` |
| 34 | `def` | [safeAxialDyadicActionQuarticCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeaxialdyadicactionquarticcoefficient--4868fa55ed77fc9f9f3ed006.md) | 276 | `declaration-track:4868fa55ed77fc9f9f3ed0067ba1d27381c1dc73701718d55784c84a8de261a6` |
| 35 | `def` | [safeTransverseDyadicActionQuarticCoefficient](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safetransversedyadicactionquarticcoefficient--9061de66be206b52dffc2f46.md) | 280 | `declaration-track:9061de66be206b52dffc2f46b135267a9a1405df38d806a0cc2de2288214ac50` |
| 36 | `theorem` | [safeAxialDyadicActionQuarticCoefficient_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeaxialdyadicactionquarticcoefficient-nonnegative--736af45c560640788ab043cc.md) | 284 | `result-track:736af45c560640788ab043cc64bdc803eb604c85cd24ff09d7c89d70954e7476` |
| 37 | `theorem` | [safeTransverseDyadicActionQuarticCoefficient_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safetransversedyadicactionquarticcoefficient-nonnegative--edd32d871831bb141ee4df4e.md) | 289 | `result-track:edd32d871831bb141ee4df4ed8edbda5b486eda4395f69a021275ffd7b5bc41e` |
| 38 | `theorem` | [safeAxialDyadicAction_orientedVolume_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeaxialdyadicaction-orientedvolume-factor--7037f80b000e9ca4fa479018.md) | 294 | `result-track:7037f80b000e9ca4fa47901811e3da9e7c64fe5034853fc9ec375d87f8db71f7` |
| 39 | `theorem` | [safeTransverseDyadicAction_orientedVolume_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safetransversedyadicaction-orientedvolume-factor--dc1bf2ba3b54ffd85e8f9696.md) | 307 | `result-track:dc1bf2ba3b54ffd85e8f9696bf0e4516fbd09173e51b237b224c51075aab09d8` |
| 40 | `theorem` | [safeAxialDyadicActionGram_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safeaxialdyadicactiongram-factor--525b78f1f41d4ec20d6341d1.md) | 320 | `result-track:525b78f1f41d4ec20d6341d15fc3af30a0bedf77a393c7dc1478de90f74329dd` |
| 41 | `theorem` | [safeTransverseDyadicActionGram_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safetransversedyadicactiongram-factor--4aef933fe4aceb07e27406ae.md) | 330 | `result-track:4aef933fe4aceb07e27406ae0892efce6c630d6c665020106eacdccb2f365c09` |
| 42 | `theorem` | [safeQuarticDyadicActionValue_factor](../../../../../mathematics/NumberTheory/Zeta/Riemann/MellinNormalizedDyadicPacking.lean/declarations/safequarticdyadicactionvalue-factor--a4a74700609ba750bd18602c.md) | 340 | `result-track:a4a74700609ba750bd18602cbcdb44338599b07e2bde584295402f3dffac6d58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

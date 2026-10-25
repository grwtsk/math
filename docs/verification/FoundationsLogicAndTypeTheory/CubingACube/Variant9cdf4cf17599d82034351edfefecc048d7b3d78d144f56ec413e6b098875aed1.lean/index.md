# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.CubingACube.Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1828de22caa9275bc2633f3b26b44e3f11da9a3b",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1828de22caa9275bc2633f3b26b44e3f11da9a3b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Disjoint` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ico_lemma](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/ico-lemma--e79af26831b3b5c0e2923cd5.md) | 44 | `result-track:e79af26831b3b5c0e2923cd507f4b0e71e782e5f5b4d01016c068dab23e2ed77` |
| 2 | `structure` | [Cube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/cube--e26a926037bf7d7eff9a9722.md) | 57 | `declaration-track:e26a926037bf7d7eff9a9722ea8381f58088a9bba0b9a5e0f6a15ed410462fd2` |
| 3 | `theorem` | [hw'](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/hw--00a9cd935c99b7bfccaa405c.md) | 65 | `result-track:00a9cd935c99b7bfccaa405c9ee80b029c8f8ccb61bac26dedb1d9701b9f4e41` |
| 4 | `def` | [side](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/side--4016462bafef17100f6ad63e.md) | 70 | `declaration-track:4016462bafef17100f6ad63ef96639a57046aac23a882ef6fba45e48aa832ec0` |
| 5 | `theorem` | [b_mem_side](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/b-mem-side--42885cd4a66918c724f8b1f3.md) | 75 | `result-track:42885cd4a66918c724f8b1f3d23ae009ffab303c2aed0b7e50888d5a1e31bd8d` |
| 6 | `def` | [toSet](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/toset--432da394e8f41e04626b9190.md) | 78 | `declaration-track:432da394e8f41e04626b919025e0579367d2a64ce541e8319d989f7488658108` |
| 7 | `theorem` | [side_nonempty](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/side-nonempty--a326c3cd45f7e32ade40a0bc.md) | 82 | `result-track:a326c3cd45f7e32ade40a0bcc8338d6c90c7461eb2dbbd8db451ba7857d064ef` |
| 8 | `theorem` | [univ_pi_side](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/univ-pi-side--10172fc628a536f087adc25e.md) | 85 | `result-track:10172fc628a536f087adc25e12a25d9fcdcaf3cd2f8ab25a1bfc286f3a0e348b` |
| 9 | `theorem` | [toSet_subset](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/toset-subset--2f872edf5d8ab6d256ec4643.md) | 89 | `result-track:2f872edf5d8ab6d256ec46432de58067cb635a1e10feff7028ee0fb4321be976` |
| 10 | `theorem` | [toSet_disjoint](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/toset-disjoint--22e85cc4c339537e60a002d0.md) | 94 | `result-track:22e85cc4c339537e60a002d0414d4f4ae2fc23a9f5642bfa2969266a304f96a5` |
| 11 | `theorem` | [b_mem_toSet](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/b-mem-toset--2998f29c7b67c0300b4c8f3b.md) | 99 | `result-track:2998f29c7b67c0300b4c8f3be30dc8690ea216ad92f07016642b550b90d683db` |
| 12 | `def` | [tail](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/tail--3fcfd5cfce7b214274c9be7a.md) | 102 | `declaration-track:3fcfd5cfce7b214274c9be7a75e78900546aa3b994f93282958177f564d34fe0` |
| 13 | `theorem` | [side_tail](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/side-tail--d31d71b9daf74664567a9258.md) | 106 | `result-track:d31d71b9daf74664567a9258d4b48af507810f6def547b3c0b27a60fe14c09d4` |
| 14 | `def` | [bottom](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/bottom--d6388fb53530bc6768d7dd06.md) | 110 | `declaration-track:d6388fb53530bc6768d7dd06623d525d6ee52369b2a7bb4c2ff8e9fe4f0c06ef` |
| 15 | `theorem` | [b_mem_bottom](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/b-mem-bottom--7cfc20b52cbfdbf7129b21a3.md) | 114 | `result-track:7cfc20b52cbfdbf7129b21a32fc8102382b3721ec7afad2bc1732892a7c290f0` |
| 16 | `def` | [xm](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/xm--d45c38b043ba31f40342a89e.md) | 118 | `declaration-track:d45c38b043ba31f40342a89e56835c634b96b446420dbf0e67f24708d465c886` |
| 17 | `theorem` | [b_lt_xm](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/b-lt-xm--b2a5de799319847c3802296d.md) | 122 | `result-track:b2a5de799319847c3802296dcc5194b93af9ef282f5d87db0229238741e42d34` |
| 18 | `theorem` | [b_ne_xm](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/b-ne-xm--a343623fb82376ef33a2a1ae.md) | 125 | `result-track:a343623fb82376ef33a2a1aec225328657be967f89cb540fcb4dbec7a22a4f8d` |
| 19 | `def` | [shiftUp](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/shiftup--e1cad12dc5ca3735a109b954.md) | 129 | `declaration-track:e1cad12dc5ca3735a109b9541ed4f96f3d3edfba0918fc9a26069211a1ec708d` |
| 20 | `theorem` | [tail_shiftUp](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/tail-shiftup--fa1a44fd5629e03c3dd115c6.md) | 134 | `result-track:fa1a44fd5629e03c3dd115c6d6cc3a4be397ba3b54ed5d7033dab32bb7b5db42` |
| 21 | `theorem` | [head_shiftUp](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/head-shiftup--ef7732565ae8404acea6967a.md) | 138 | `result-track:ef7732565ae8404acea6967a1d26fde5bb1f5ce10310ecfd05dc16f16315320e` |
| 22 | `def` | [unitCube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/unitcube--8a53db1823942ad27857573e.md) | 142 | `declaration-track:8a53db1823942ad27857573e6bb6a2bf04b28316726b11230bb208f8a0f9014c` |
| 23 | `theorem` | [side_unitCube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/side-unitcube--b5e25e9e9271d84a56f54e1d.md) | 147 | `result-track:b5e25e9e9271d84a56f54e1dff9c5435e8a7ef72ffcf4bf1f0174981b3efbd01` |
| 24 | `structure` | [Correct](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/correct--cadfaa5ec3ee97d362bdc0d0.md) | 158 | `declaration-track:cadfaa5ec3ee97d362bdc0d09c81609d59cdfb380641bbf54dbf417f4e283a45` |
| 25 | `theorem` | [toSet_subset_unitCube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/toset-subset-unitcube--ff2ffe1c0deb6341af42d62e.md) | 169 | `result-track:ff2ffe1c0deb6341af42d62e852ec9206b716dda2f4ce0d474f26c5d0e01a1bd` |
| 26 | `theorem` | [side_subset](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/side-subset--e65a86c45a41eff18fd29b4f.md) | 173 | `result-track:e65a86c45a41eff18fd29b4fd0839d995ffbcceba37ad598b8b2ff821448203c` |
| 27 | `theorem` | [zero_le_of_mem_side](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/zero-le-of-mem-side--5fb850f4162953f0908e4568.md) | 177 | `result-track:5fb850f4162953f0908e456851e3c33adc6a49b09b4b3dc7632d4579654d60cc` |
| 28 | `theorem` | [zero_le_of_mem](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/zero-le-of-mem--0e7408c6131a09b125e000fa.md) | 181 | `result-track:0e7408c6131a09b125e000fa95865f9530412c173ed928af0d6f28d854654455` |
| 29 | `theorem` | [zero_le_b](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/zero-le-b--d120b4c87b68fa966d0a7f87.md) | 185 | `result-track:d120b4c87b68fa966d0a7f870b1d6acf7896dc3a65f17fd446b1a3227bdf891c` |
| 30 | `theorem` | [b_add_w_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/b-add-w-le-one--b116c44de747211a19d92781.md) | 189 | `result-track:b116c44de747211a19d92781bbfec449c5f347146377a2abeb3af1b4fdb6d779` |
| 31 | `theorem` | [nontrivial_fin](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/nontrivial-fin--869d0e3501a9af775080907c.md) | 196 | `result-track:869d0e3501a9af775080907ce91b2a34517d1cb9f41d2f038e7361159568e5ee` |
| 32 | `theorem` | [w_ne_one](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/w-ne-one--5b6fb602bafa920f2ae23d85.md) | 201 | `result-track:5b6fb602bafa920f2ae23d859089933e83a2014b73174f140f9830f060cfc83e` |
| 33 | `theorem` | [shiftUp_bottom_subset_bottoms](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/shiftup-bottom-subset-bottoms--61e2b484b2a618fd95564033.md) | 217 | `result-track:61e2b484b2a618fd9556403379879ae2fbe93b3f0f3a83681ef024c0bd77fd27` |
| 34 | `def` | [Valley](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/valley--2c2fcbda55595fe5ed92952f.md) | 248 | `declaration-track:2c2fcbda55595fe5ed92952fe630450a717a7410ccbb57401fe5a4f7384c545d` |
| 35 | `theorem` | [valley_unitCube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/valley-unitcube--be39b49cb582e262c7078567.md) | 258 | `result-track:be39b49cb582e262c70785672b953a1b71931af237611036b6e6040a7853edd0` |
| 36 | `def` | [bcubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/bcubes--651fd5e5626843a045c8af9e.md) | 276 | `declaration-track:651fd5e5626843a045c8af9ecf7aab890257adbb19a1ae01fed5ab0c96c55aca` |
| 37 | `def` | [OnBoundary](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/onboundary--96dffd3a2e47d1fa810420e5.md) | 281 | `declaration-track:96dffd3a2e47d1fa810420e55abcab42ff92b31c7724ecdd8a1844011a37c6d8` |
| 38 | `theorem` | [tail_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/tail-sub--2dd6fb5469e156fb931664f0.md) | 285 | `result-track:2dd6fb5469e156fb931664f0f1ec7b6355fb7fc4c1517ab9b80bc3a1a27d6d39` |
| 39 | `theorem` | [bottom_mem_side](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/bottom-mem-side--56c146c139a89d0f250d307d.md) | 289 | `result-track:56c146c139a89d0f250d307dbb713e73f6d34fe26173db55655dd92c06098f77` |
| 40 | `theorem` | [b_le_b](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/b-le-b--0c7e64a0ae667a43bb065e43.md) | 293 | `result-track:0c7e64a0ae667a43bb065e43e3b2ef6cd2c08d77f866028b08b3cab1f524e208` |
| 41 | `theorem` | [t_le_t](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/t-le-t--5c821a05daaf161d69602b73.md) | 297 | `result-track:5c821a05daaf161d69602b733ae2afa1854a08936294402b6fe9c5128ba1288a` |
| 42 | `theorem` | [w_lt_w](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/w-lt-w--13a531da91e390d2c66556ad.md) | 304 | `result-track:13a531da91e390d2c66556ad01219179b72195bdd96922305a96be93adcbbfbf` |
| 43 | `theorem` | [nontrivial_bcubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/nontrivial-bcubes--85b1f22de4ee049dd0b27079.md) | 312 | `result-track:85b1f22de4ee049dd0b27079e38e7f75d15c6875c1e2046529fe763b40f760b1` |
| 44 | `theorem` | [nonempty_bcubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/nonempty-bcubes--728021611f60521c960aca7f.md) | 338 | `result-track:728021611f60521c960aca7fddc164c434dd8648e957ae441da1cf69c81e38c3` |
| 45 | `theorem` | [exists_mi](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/exists-mi--ea4f7b50f0ff1366f587ea9f.md) | 345 | `result-track:ea4f7b50f0ff1366f587ea9fc3ffa75f0d90f2fc92987996d3b203d96075f7d5` |
| 46 | `def` | [mi](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/mi--28cb673bc8fd313645f80d55.md) | 350 | `declaration-track:28cb673bc8fd313645f80d5589d924fb8fb3f1535f714135198b64cda98978ce` |
| 47 | `theorem` | [mi_mem_bcubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/mi-mem-bcubes--45137898fbb0c3eb91f59697.md) | 356 | `result-track:45137898fbb0c3eb91f596974116d580c80ab34cfb912a625807a51faa9b3bf7` |
| 48 | `theorem` | [mi_minimal](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/mi-minimal--0c055093b3c48d704a77cd79.md) | 360 | `result-track:0c055093b3c48d704a77cd796deff52d2ba98a7852d726610cb795b6d4f396b4` |
| 49 | `theorem` | [mi_strict_minimal](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/mi-strict-minimal--a25f1788c7a7e0e0257aeefd.md) | 364 | `result-track:a25f1788c7a7e0e0257aeefda5928e9815a785e40f0142e648008c78151d594f` |
| 50 | `theorem` | [mi_xm_ne_one](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/mi-xm-ne-one--4a7d582f94b3d900b1e2d0be.md) | 370 | `result-track:4a7d582f94b3d900b1e2d0beb0cbf6890c78a98525f7769b1dd8cda765b15fc2` |
| 51 | `theorem` | [smallest_onBoundary](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/smallest-onboundary--1db0d10ca47bd1c58e2db9f5.md) | 382 | `result-track:1db0d10ca47bd1c58e2db9f5daa9c8308e5d7656a5e83bb39396271ec7bf58e2` |
| 52 | `theorem` | [mi_not_onBoundary](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/mi-not-onboundary--134cb9ed584a64419617d24a.md) | 421 | `result-track:134cb9ed584a64419617d24a108e0d7010b94dfeac25fd4bf3906cc2913c7de0` |
| 53 | `theorem` | [mi_not_onBoundary'](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/mi-not-onboundary--2cc8355bb32a74182b079d77.md) | 478 | `result-track:2cc8355bb32a74182b079d778b82546e502e90dcb893780a083d97830fa431de` |
| 54 | `theorem` | [valley_mi](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/valley-mi--b50a2b1914db1205a10382e5.md) | 492 | `result-track:b50a2b1914db1205a10382e5c890ba15d81be5739fa74bb644087d7c69a3fa5c` |
| 55 | `def` | [sequenceOfCubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/sequenceofcubes--f482983aa0cd5f52304bd1a6.md) | 548 | `declaration-track:f482983aa0cd5f52304bd1a62d309108439761031e70b1fd5338f2725ab4f940` |
| 56 | `def` | [decreasingSequence](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/decreasingsequence--a2775f39a51454ef7cbb998c.md) | 557 | `declaration-track:a2775f39a51454ef7cbb998caf3b500b1531415a780923b9685a52278b1fae2f` |
| 57 | `theorem` | [strictAnti_sequenceOfCubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/strictanti-sequenceofcubes--471a0956a7975e7d7b243078.md) | 561 | `result-track:471a0956a7975e7d7b2430785510bbbd7f5d67a6020febfc79485630c904785a` |
| 58 | `theorem` | [injective_sequenceOfCubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/injective-sequenceofcubes--c435a74fd049f5346676d8a8.md) | 567 | `result-track:c435a74fd049f5346676d8a82a639246fa2c5e01d54a873dfa1217cc35a81617` |
| 59 | `theorem` | [not_correct](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/not-correct--ef2d1ffacb99c27dcd2268fc.md) | 573 | `result-track:ef2d1ffacb99c27dcd2268fcfc25c14a940be1d9bbd0415aad7ea47b15b0cbd9` |
| 60 | `theorem` | [cannot_cube_a_cube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9cdf4cf17599d82034351edfefecc048d7b3d78d144f56ec413e6b098875aed1.lean/declarations/cannot-cube-a-cube--e42d814bd3f4f035702a1dd5.md) | 578 | `result-track:e42d814bd3f4f035702a1dd554c0bc6967ac251df14a12b2373b8558b3f7882d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

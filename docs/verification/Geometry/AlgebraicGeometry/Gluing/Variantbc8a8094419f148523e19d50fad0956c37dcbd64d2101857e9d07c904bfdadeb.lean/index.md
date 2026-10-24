# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Gluing.Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9c850b241d16e999d73f27bb40969a58f223081",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9c850b241d16e999d73f27bb40969a58f223081`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.PresheafedSpace.Gluing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Cover.Open` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/gluedata--0651436b5158d2956f398d33.md) | 82 | `declaration-track:0651436b5158d2956f398d33f81850c15f1d43f0e83637ac617d346160b04e42` |
| 2 | `abbrev` | [toLocallyRingedSpaceGlueData](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/tolocallyringedspacegluedata--50244d28fd1430d4b89f1b3d.md) | 94 | `declaration-track:50244d28fd1430d4b89f1b3dc926a2f66d02b1715542b0ffc3eddc6df074d3fa` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/instance--8ba33ab85e930f926b84fc1c.md) | 98 | `declaration-track:8ba33ab85e930f926b84fc1cfb79979792567ee0419d5145a2f3f3c4f0e9b01d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/instance--4390e5ac2af08b77cfb5b9b0.md) | 102 | `declaration-track:4390e5ac2af08b77cfb5b9b0b4f52107451e3c7b61d13de37aa5009be560bf41` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/instance--e065799e51cfd0f652025c2b.md) | 107 | `declaration-track:e065799e51cfd0f652025c2b05c9ddfe0ec69aa6a8a806d6cddae73ce9914ad9` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/instance--49516d986ebd5c2ce730df8f.md) | 113 | `declaration-track:49516d986ebd5c2ce730df8f62cbe70450d4b96cf6aa0b771a59b4d074db0081` |
| 7 | `def` | [gluedScheme](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/gluedscheme--88759e81d36282a7dcdb2d1c.md) | 119 | `declaration-track:88759e81d36282a7dcdb2d1c29dcada23e61806294e2861fd9b39495ff918fab` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/instance--a96fdfecfcf2ae906446b624.md) | 133 | `declaration-track:a96fdfecfcf2ae906446b6241080adc97619b299c1bc3556de5f131783046821` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/instance--46a8084b834246439c9d9562.md) | 137 | `declaration-track:46a8084b834246439c9d95621fffc0659361ca2d1d57f754acf3c07755d1512e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/instance--b01b09f8560c3cdcdbdfc044.md) | 141 | `declaration-track:b01b09f8560c3cdcdbdfc044b3689498f6cda1f23331811d522da33ccc67665d` |
| 11 | `abbrev` | [glued](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/glued--b66620e48aceb521118f81da.md) | 145 | `declaration-track:b66620e48aceb521118f81da149ddb2a14fed03b179d8da709b88737f365e79c` |
| 12 | `abbrev` | [ι](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/anonymous--f8eec98f9b4092535ef94eb0.md) | 149 | `declaration-track:f8eec98f9b4092535ef94eb084367cee2dca470bc22e67edd3e55e3a5ab77877` |
| 13 | `abbrev` | [isoLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/isolocallyringedspace--d9a7fd65cd6a729d5cd9c514.md) | 153 | `declaration-track:d9a7fd65cd6a729d5cd9c514f19799f15d026546566a946e10e6da83694d9a06` |
| 14 | `theorem` | [ι_isoLocallyRingedSpace_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/isolocallyringedspace-inv--b2ef833ad20e8548645219f8.md) | 157 | `result-track:b2ef833ad20e8548645219f8eed68f7c95df619d57330136c026ff7316480da3` |
| 15 | `instance` | [ι_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/isopenimmersion--29e13359311a50d5bb443cca.md) | 162 | `declaration-track:29e13359311a50d5bb443ccaf1bc1e608a80a0dec94d6d432c2c0de140d4c256` |
| 16 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/jointly-surjective--cd9a71b817c72c246017f455.md) | 165 | `result-track:cd9a71b817c72c246017f4553f35d1b9e7665d44e50c8d83589642d116326116` |
| 17 | `theorem` | [glue_condition](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/glue-condition--523045d0b495b00912117479.md) | 171 | `result-track:523045d0b495b009121174796036696eca8e579d2e3d361d7e7d1ad56563b0fb` |
| 18 | `def` | [vPullbackCone](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/vpullbackcone--c4d59f861779d9dd7b26e43c.md) | 176 | `declaration-track:c4d59f861779d9dd7b26e43c1e0108d65d8e27f3e14cc6aa0d81032c2c961e2a` |
| 19 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/vpullbackconeislimit--312e8aac020ecb522cb77f05.md) | 187 | `declaration-track:312e8aac020ecb522cb77f059646444c085d7d0fb903e83f6d4fc3d89e64c633` |
| 20 | `def` | [isoCarrier](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/isocarrier--b07141f9516826c9a73bb584.md) | 196 | `declaration-track:b07141f9516826c9a73bb584f499bda93c9d84f33a2b794137b862811ace237d` |
| 21 | `theorem` | [ι_isoCarrier_inv](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/isocarrier-inv--95496564efde3812498a9029.md) | 207 | `result-track:95496564efde3812498a9029df37f43aaf6211c66ad8615fcddb8dca1bdbffa4` |
| 22 | `def` | [Rel](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/rel--dec660c19db10417f7d2a1e9.md) | 220 | `declaration-track:dec660c19db10417f7d2a1e936130abe4e7e002886026afd4f2691523c9f2547` |
| 23 | `theorem` | [ι_eq_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/eq-iff--9e60f88d0de76fabbcb9e2fc.md) | 223 | `result-track:9e60f88d0de76fabbcb9e2fcbd44c002a04b782cd9ee41a58df0c8cce49a8953` |
| 24 | `theorem` | [isOpen_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/isopen-iff--82f1e87947262b270311fc9d.md) | 234 | `result-track:82f1e87947262b270311fc9df73b3c731059694fcbee9f73c0bf7bf4fc0d6e78` |
| 25 | `def` | [openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/opencover--4403af73214240f9ebad2748.md) | 243 | `declaration-track:4403af73214240f9ebad2748e1ea8a631a54ed7dc657b51c200d35b9ae38969a` |
| 26 | `def` | [gluedCoverT'](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/gluedcovert--aa0a7c26885a321f84307de5.md) | 257 | `declaration-track:aa0a7c26885a321f84307de526a31935b25f7b212b5add35edfbbfcf0f186e21` |
| 27 | `theorem` | [gluedCoverT'_fst_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/gluedcovert-fst-fst--c8c1697196405af3e3db2a61.md) | 268 | `result-track:c8c1697196405af3e3db2a61303ad6e98552cfb268ef09fc45d502969dc1c789` |
| 28 | `theorem` | [gluedCoverT'_fst_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/gluedcovert-fst-snd--fa3f8f147374a51ddd1aad57.md) | 274 | `result-track:fa3f8f147374a51ddd1aad57aca653340835226b4f401700ca9b3c0c7341f61c` |
| 29 | `theorem` | [gluedCoverT'_snd_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/gluedcovert-snd-fst--7d2bdc43b15cc170ecf5b4ce.md) | 280 | `result-track:7d2bdc43b15cc170ecf5b4ce9b8af2ea8d47eb80254c08a06e8456985e635b02` |
| 30 | `theorem` | [gluedCoverT'_snd_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/gluedcovert-snd-snd--256b2f09d5d445a23b5cf616.md) | 286 | `result-track:256b2f09d5d445a23b5cf616a139c625fd43bb61cff9f438d3059a712ae00562` |
| 31 | `theorem` | [glued_cover_cocycle_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/glued-cover-cocycle-fst--3ff6d47feca4661a65c3d4f0.md) | 291 | `result-track:3ff6d47feca4661a65c3d4f040b80dcd71fa393a1013ba4e0d08b09b846b5076` |
| 32 | `theorem` | [glued_cover_cocycle_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/glued-cover-cocycle-snd--f89e55f167f613637ccdb916.md) | 296 | `result-track:f89e55f167f613637ccdb9164fdee831cbb84b3cb5fdc474da017497eaa1e8e6` |
| 33 | `theorem` | [glued_cover_cocycle](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/glued-cover-cocycle--9e979d626bb75c50fdcb64a4.md) | 301 | `result-track:9e979d626bb75c50fdcb64a4b396a63f6d83f5438a089d2ddda3020b0b1d794a` |
| 34 | `def` | [gluedCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/gluedcover--ff364667205e8f2ff90e3889.md) | 310 | `declaration-track:ff364667205e8f2ff90e3889a48d56b66e0a247dafb32a84fd52c78ca40ae28f` |
| 35 | `def` | [fromGlued](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/fromglued--238e56b3004818613c9968ab.md) | 326 | `declaration-track:238e56b3004818613c9968ab09182aca1beabbb2ac9bc11b983695eeee2cbf77` |
| 36 | `theorem` | [ι_fromGlued](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/fromglued--e024515f12af09822b29fa43.md) | 334 | `result-track:e024515f12af09822b29fa43205d4c5b339beacb2c1c1a5d210d7b746d28bc48` |
| 37 | `theorem` | [fromGlued_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/fromglued-injective--29f4d463d77279583cf1bd94.md) | 337 | `result-track:29f4d463d77279583cf1bd94f5059a0b8fa0570ef406af1a9b0aed55be94cc35` |
| 38 | `instance` | [fromGlued_stalk_iso](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/fromglued-stalk-iso--a92b3d5249bf3a005f4f399e.md) | 357 | `declaration-track:a92b3d5249bf3a005f4f399e947a062478e8ff03bac9c3f9868053852259147b` |
| 39 | `theorem` | [fromGlued_open_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/fromglued-open-map--085af9ecd61e4bac514130b8.md) | 365 | `result-track:085af9ecd61e4bac514130b8537e3a6e811683f55cf7e040c13088b954e41d44` |
| 40 | `theorem` | [fromGlued_isOpenEmbedding](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/fromglued-isopenembedding--3dfb75ab20c93fe0151d1e18.md) | 382 | `result-track:3dfb75ab20c93fe0151d1e18968322cbbf40b569aca52b63a5df8d19fde720dd` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/instance--e7d429977e063c6331808bbd.md) | 385 | `declaration-track:e7d429977e063c6331808bbde38ab57368456e7f4ecd97357a2b716c58008e46` |
| 42 | `instance` | [fromGlued_open_immersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/fromglued-open-immersion--1a86065b7cbb4260ecef0467.md) | 394 | `declaration-track:1a86065b7cbb4260ecef0467a597e6f79cfbf6ef1e3fab1e2d0e6dbb7ebb0e6f` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/instance--d7dd26a8b315ac7c197826c9.md) | 397 | `declaration-track:d7dd26a8b315ac7c197826c9a24f8e6758fc695f8d24175f5b7bae2362e74311` |
| 44 | `def` | [glueMorphisms](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/gluemorphisms--9bd4b998178fcfb8221c0a43.md) | 412 | `declaration-track:9bd4b998178fcfb8221c0a433dcb6ac05ec84dc056bb1d570021c3067f3ccbdd` |
| 45 | `theorem` | [ι_glueMorphisms](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/gluemorphisms--851567dffd551c3acec600b9.md) | 424 | `result-track:851567dffd551c3acec600b9df713ed4c3b4fc8e8d42bc8c4bdca6e9f84e7d02` |
| 46 | `theorem` | [hom_ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Gluing/Variantbc8a8094419f148523e19d50fad0956c37dcbd64d2101857e9d07c904bfdadeb.lean/declarations/hom-ext--e425c46ccbff6333ddc34a6a.md) | 430 | `result-track:e425c46ccbff6333ddc34a6a511fa2b70812dd645be1da5a44bf2e8a9664fa66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

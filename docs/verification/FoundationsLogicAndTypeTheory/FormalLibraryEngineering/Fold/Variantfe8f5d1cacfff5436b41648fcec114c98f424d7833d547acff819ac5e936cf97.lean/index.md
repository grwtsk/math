# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fold.Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c64e7eaf2028b2f3e044ae267d86e143f10b7ce",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c64e7eaf2028b2f3e044ae267d86e143f10b7ce`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 18; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Hints` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [foldl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldl--b5ee528645c2f66036ae42ae.md) | 35 | `declaration-track:b5ee528645c2f66036ae42aee451d7172e83596b4bfbba2d048f2cd94850ced3` |
| 2 | `def` | [foldr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldr--9e7c279212d3f17b807ab6c7.md) | 48 | `declaration-track:9e7c279212d3f17b807ab6c75b4fe0459f4246f3dbd317eb16ac514b3a8c0382` |
| 3 | `def` | [foldlM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldlm--ac0110bc7449fc3aad3ff3ce.md) | 68 | `declaration-track:ac0110bc7449fc3aad3ff3cedcb6cd21ab9d3805695fcec7bd00d68e5c665505` |
| 4 | `def` | [foldrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldrm--a036d5fda011e5f72afa4231.md) | 97 | `declaration-track:a036d5fda011e5f72afa42318df9aacdc509c68993023058f0a95872b218c0da` |
| 5 | `theorem` | [foldlM_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldlm-congr--dab5100f87e54014497c62f8.md) | 116 | `result-track:dab5100f87e54014497c62f86e4e437522f9e63959ceed8a3f779ed116a3e439` |
| 6 | `theorem` | [foldlM_loop_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldlm-loop-lt--903d3ed000549e9d93348c36.md) | 121 | `result-track:903d3ed000549e9d93348c36307ca2affc6de3821d44bb91870361b600356198` |
| 7 | `theorem` | [foldlM_loop_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldlm-loop-eq--d1f6ba28a9605b138a64fa4a.md) | 125 | `result-track:d1f6ba28a9605b138a64fa4a7b918e73db04a387226a760d76fa44596c1ad55c` |
| 8 | `theorem` | [foldlM_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldlm-loop--5947aed1edc1bb2c6830d0da.md) | 128 | `result-track:5947aed1edc1bb2c6830d0dac253b2ceabb4ede769de1e213391a6fa2477edae` |
| 9 | `theorem` | [foldlM_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldlm-zero--081da0223ef5fc94a94062ec.md) | 141 | `result-track:081da0223ef5fc94a94062eca2e29cdf6d5a075a9c7fc1f648027a5e73625b5e` |
| 10 | `theorem` | [foldlM_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldlm-succ--d775c64400a9dbdae6d6ece8.md) | 145 | `result-track:d775c64400a9dbdae6d6ece82338b55d18cfc8511ad2c8776da5a4e3eb268b55` |
| 11 | `theorem` | [foldlM_succ_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldlm-succ-last--a624ccfb6f0f9bb238a578f6.md) | 151 | `result-track:a624ccfb6f0f9bb238a578f66a4cea325d16ebfe122e4739a49c7bd4d00a628e` |
| 12 | `theorem` | [foldlM_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldlm-add--335e00f3ac311b544ee65b40.md) | 166 | `result-track:335e00f3ac311b544ee65b40e51212b28032d422f99cbfea727a5398022428ef` |
| 13 | `theorem` | [foldrM_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldrm-congr--f9af3e6e7969bf3ce3568ab4.md) | 179 | `result-track:f9af3e6e7969bf3ce3568ab43832125695c4b8836c6e4855e2d8b0058103cbeb` |
| 14 | `theorem` | [foldrM_loop_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldrm-loop-zero--f828409a14268d08e5b43a70.md) | 184 | `result-track:f828409a14268d08e5b43a704c3cf349e00853d3a39419ec4dc21e1de0213a98` |
| 15 | `theorem` | [foldrM_loop_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldrm-loop-succ--21f8f2bbbfd0b9786bf22390.md) | 188 | `result-track:21f8f2bbbfd0b9786bf223905efa67c9a785f26b11e79ef7b92440aa8b083e5c` |
| 16 | `theorem` | [foldrM_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldrm-loop--5055e74a4b35dcb9f8f28214.md) | 192 | `result-track:5055e74a4b35dcb9f8f28214f013d4de6a6d1873fcecab3b6469463d0823d668` |
| 17 | `theorem` | [foldrM_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldrm-zero--c77ecd07fe50ba37b6a3b340.md) | 206 | `result-track:c77ecd07fe50ba37b6a3b340bb5f254e96a9bef43ac420f3bd5565ba1b9a9477` |
| 18 | `theorem` | [foldrM_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldrm-succ--cc69b4581c383846472254dd.md) | 210 | `result-track:cc69b4581c383846472254ddbcf01fc0d4ca289cbf539b0e2fc30cefa9e1197c` |
| 19 | `theorem` | [foldrM_succ_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldrm-succ-last--8ce08aed5811fc8b314dc11d.md) | 215 | `result-track:8ce08aed5811fc8b314dc11dfbe9cd41b61e4b61e3d9b9be76ea1f1b6b7cb5e5` |
| 20 | `theorem` | [foldrM_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldrm-add--b3d2cd78b93ca36548614478.md) | 225 | `result-track:b3d2cd78b93ca365486144783939af9561964f834dbf7f55579b83d15058bc6a` |
| 21 | `theorem` | [foldl_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldl-congr--85879792fecf154d16fa8c11.md) | 237 | `result-track:85879792fecf154d16fa8c11085ccec98bdc1c60567833d649b327f79bebdd40` |
| 22 | `theorem` | [foldl_loop_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldl-loop-lt--65a71f114d3081a2f60c2275.md) | 242 | `result-track:65a71f114d3081a2f60c2275e07e46b7fbd2071742c1869ce91177d440689d29` |
| 23 | `theorem` | [foldl_loop_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldl-loop-eq--489c16c4c2ee9b0d4ae59f7a.md) | 246 | `result-track:489c16c4c2ee9b0d4ae59f7a688c6fe3331f9e6445d5d26a782793b49376cc76` |
| 24 | `theorem` | [foldl_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldl-loop--68e241ef00258292a812b2f9.md) | 249 | `result-track:68e241ef00258292a812b2f9782a2129dabc93eaa708fafe80343ceea7c1e21d` |
| 25 | `theorem` | [foldl_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldl-zero--4ab778d6de27cc5cc6f4f681.md) | 259 | `result-track:4ab778d6de27cc5cc6f4f68105395db00ac860a33f4282f2ea9267726f42132a` |
| 26 | `theorem` | [foldl_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldl-succ--c25619956f42a016ccdeba9c.md) | 262 | `result-track:c25619956f42a016ccdeba9ca8520780c81b8d02c0d5d7bf2b735e9c1b9e24f7` |
| 27 | `theorem` | [foldl_succ_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldl-succ-last--d23ab70dee47c84d71843ac0.md) | 266 | `result-track:d23ab70dee47c84d71843ac0e7666dce8ce621b32190ea21bea0457129f5b6a9` |
| 28 | `theorem` | [foldl_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldl-add--c82c21be40338bf05e8c6812.md) | 273 | `result-track:c82c21be40338bf05e8c6812a79f9cfc65dbaa423e2827804057c8d5534fae0a` |
| 29 | `theorem` | [foldl_eq_foldlM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldl-eq-foldlm--56c4d03d3f5f3d857c63f183.md) | 281 | `result-track:56c4d03d3f5f3d857c63f1832025f9835b58af5cb9ebac6f07c3b888c4305e11` |
| 30 | `theorem` | [foldlM_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldlm-pure--deb4c45d83e988d268ed38f8.md) | 286 | `result-track:deb4c45d83e988d268ed38f8ceac94ddfc09e3f9ca8fa84a32f604e7261857f2` |
| 31 | `theorem` | [foldr_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldr-congr--7c1546186b5f78a79dacf9c4.md) | 294 | `result-track:7c1546186b5f78a79dacf9c45584dd9c465e67e244c11765588b0fde7d3a98dd` |
| 32 | `theorem` | [foldr_loop_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldr-loop-zero--1d1a8f08428be6afe5fed99b.md) | 299 | `result-track:1d1a8f08428be6afe5fed99b6b1ae18371f04f187300fffa5910341f6b64aa17` |
| 33 | `theorem` | [foldr_loop_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldr-loop-succ--f54c80d75a8e1b0705aacf48.md) | 303 | `result-track:f54c80d75a8e1b0705aacf4854fc27ddf26fa68e425291b52e65b3ea7194c09f` |
| 34 | `theorem` | [foldr_loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldr-loop--87c4b3b8baca195c8a4a6023.md) | 307 | `result-track:87c4b3b8baca195c8a4a60233f512c21f4c533e5caad7cc31b5464182ee8d191` |
| 35 | `theorem` | [foldr_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldr-zero--54d2615f5530eaddb673c237.md) | 314 | `result-track:54d2615f5530eaddb673c23753bffeb2f43dd17a7e44dd703f3e7a85ebc3aae7` |
| 36 | `theorem` | [foldr_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldr-succ--0b20ca6412ef9076b65a0f79.md) | 317 | `result-track:0b20ca6412ef9076b65a0f79d03a2b790c4e1abfd7f7db2acda1c5d9c513cd97` |
| 37 | `theorem` | [foldr_succ_last](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldr-succ-last--81c45a88871b6720bf2e7233.md) | 320 | `result-track:81c45a88871b6720bf2e723313a003dfd51cab5c9b172e11cd3d4b0cfcdd4637` |
| 38 | `theorem` | [foldr_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldr-add--a8ecf927ab42c6b6ab649d45.md) | 326 | `result-track:a8ecf927ab42c6b6ab649d4537d69ca64204412671e83b95a17134e8980752c1` |
| 39 | `theorem` | [foldr_eq_foldrM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldr-eq-foldrm--b4bfdf922d1d25702aef31e9.md) | 334 | `result-track:b4bfdf922d1d25702aef31e9c3305625aab9ceb2b6647ad1b06fcdd2ba79e75b` |
| 40 | `theorem` | [foldl_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldl-rev--95fa9637a0d702fa2975bd8a.md) | 338 | `result-track:95fa9637a0d702fa2975bd8af933ce4171fd75bcfcdfb309e0705257e3073f3a` |
| 41 | `theorem` | [foldr_rev](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldr-rev--88b2cca44cccfd1191adc18b.md) | 344 | `result-track:88b2cca44cccfd1191adc18b3e94bfbe419b95651783b370687449b3a758c090` |
| 42 | `theorem` | [foldrM_pure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fold/Variantfe8f5d1cacfff5436b41648fcec114c98f424d7833d547acff819ac5e936cf97.lean/declarations/foldrm-pure--5e00d92df01d5076319d82a8.md) | 351 | `result-track:5e00d92df01d5076319d82a8ffca43b0d73bc97dfbbdcdabf494648f85e05dbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

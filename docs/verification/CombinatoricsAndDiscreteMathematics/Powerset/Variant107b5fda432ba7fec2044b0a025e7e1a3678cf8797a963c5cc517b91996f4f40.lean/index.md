# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "279239380f9cb92aa9bdad1860905138576aca05",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `279239380f9cb92aa9bdad1860905138576aca05`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Sublists` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Nodup` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powersetAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetaux--609696b019725f9193a88d9c.md) | 29 | `declaration-track:609696b019725f9193a88d9c82aaa4521f605ef707689e72708774bb0ef0f6ea` |
| 2 | `theorem` | [powersetAux_eq_map_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetaux-eq-map-coe--c329e5bb4819be8902014913.md) | 33 | `result-track:c329e5bb4819be890201491397d116bc667e0bc84d52a8c9ba99b370cde0e484` |
| 3 | `theorem` | [mem_powersetAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/mem-powersetaux--85753050e92786ee24b1351e.md) | 38 | `result-track:85753050e92786ee24b1351e8f5f7aff0ddbc2ce4e65be89406a314a600dfa9d` |
| 4 | `def` | [powersetAux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetaux--bd2882835d10353e6aeba3d3.md) | 44 | `declaration-track:bd2882835d10353e6aeba3d362c6041c6d8e357fffa1a3a4caf19ce73794405d` |
| 5 | `theorem` | [powersetAux_perm_powersetAux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetaux-perm-powersetaux--fe01d5f450bdefc0a04757e7.md) | 48 | `result-track:fe01d5f450bdefc0a04757e732e4e567135a1db8d464bbb103189c11631ba7f0` |
| 6 | `theorem` | [powersetAux'_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetaux-nil--a0c41e608b071fe13255a1e0.md) | 53 | `result-track:a0c41e608b071fe13255a1e01cb83fb69f2f4e5f106608bedba1f2aecca05b76` |
| 7 | `theorem` | [powersetAux'_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetaux-cons--af302aa41baa20e0a9d0e3c3.md) | 58 | `result-track:af302aa41baa20e0a9d0e3c3f7561a35f2c833e0bc236ab9e146d5d00b0eab6f` |
| 8 | `theorem` | [powerset_aux'_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powerset-aux-perm--80b6f772cf8cd4e814d6acc8.md) | 63 | `result-track:80b6f772cf8cd4e814d6acc842fb97be61c479ee242bd274d1e1e5a3574d1f74` |
| 9 | `theorem` | [powersetAux_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetaux-perm--a296aaf9eb3b3b246a66bfb3.md) | 76 | `result-track:a296aaf9eb3b3b246a66bfb3ddb3ab35cb5a497e23292e75c249d9b8f775457f` |
| 10 | `def` | [powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powerset--b472ed92dad6997fb08fc145.md) | 83 | `declaration-track:b472ed92dad6997fb08fc145160ef2752cc9fd41d477076c7dfa76f061409797` |
| 11 | `theorem` | [powerset_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powerset-coe--9dd4e4ffe415b4b114908611.md) | 89 | `result-track:9dd4e4ffe415b4b114908611e762eeaa018eb55cf14b93fae840416aa7d07342` |
| 12 | `theorem` | [powerset_coe'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powerset-coe--8f522fa9bb08d50d44ebe8eb.md) | 94 | `result-track:8f522fa9bb08d50d44ebe8ebec65939a7f566154e758b28be9d98915225ecf11` |
| 13 | `theorem` | [powerset_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powerset-zero--40f093151e7ab69701c9d693.md) | 99 | `result-track:40f093151e7ab69701c9d6933184064e2c4ec56258c3a470d557252c0b42f11b` |
| 14 | `theorem` | [powerset_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powerset-cons--b35a4caa3e614f835a4ac367.md) | 104 | `result-track:b35a4caa3e614f835a4ac3676b1389e5afbbd70780f110c80a17dc78b156fff6` |
| 15 | `theorem` | [mem_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/mem-powerset--93103dffd70bca76530bcbd9.md) | 109 | `result-track:93103dffd70bca76530bcbd900ccff2ad972dd5bc37974e9a7bffc4aef239350` |
| 16 | `theorem` | [map_single_le_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/map-single-le-powerset--aca4f59525985b9dac8e0d4f.md) | 113 | `result-track:aca4f59525985b9dac8e0d4fc3fbbab8abbdaccadbd7937ffd506fb3eea07403` |
| 17 | `theorem` | [card_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/card-powerset--abd7ff5cbd5cef2b5e106c12.md) | 122 | `result-track:abd7ff5cbd5cef2b5e106c12d1496c74e153c726b2a47875f8213c41bbc920fc` |
| 18 | `theorem` | [revzip_powersetAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/revzip-powersetaux--8bd9fdbef5d665cc926f7eba.md) | 126 | `result-track:8bd9fdbef5d665cc926f7eba1be1990ddd9f9157ab93d8676927c43c4df9b81a` |
| 19 | `theorem` | [revzip_powersetAux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/revzip-powersetaux--d63d0381bea7d58507a6e14c.md) | 133 | `result-track:d63d0381bea7d58507a6e14cbda35058df8eeac485091c1d0b4f2ef9cc44365d` |
| 20 | `theorem` | [revzip_powersetAux_lemma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/revzip-powersetaux-lemma--0bd32375069cdff4cb286fe7.md) | 142 | `result-track:0bd32375069cdff4cb286fe70edc1031feadf876981a14bc58cfc28aab788971` |
| 21 | `theorem` | [revzip_powersetAux_perm_aux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/revzip-powersetaux-perm-aux--3d29d3addb87174d86eb09da.md) | 156 | `result-track:3d29d3addb87174d86eb09daffd58159b6a64b256d7d7e634adb308de36cf18a` |
| 22 | `theorem` | [revzip_powersetAux_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/revzip-powersetaux-perm--e9e25a7796597260e62312f2.md) | 163 | `result-track:e9e25a7796597260e62312f26844980b38d7a2755aaec80be63807f9a2f5cf78` |
| 23 | `def` | [powersetLenAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlenaux--72dcba582a127791861be6c7.md) | 175 | `declaration-track:72dcba582a127791861be6c7d8de610d08886ee62ac4144df5799b75eebbf46e` |
| 24 | `theorem` | [powersetLenAux_eq_map_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlenaux-eq-map-coe--8bb452f79d17300cfc373e33.md) | 179 | `result-track:8bb452f79d17300cfc373e33f13b99a7a703967ed65b984aa4e39434f934ffb8` |
| 25 | `theorem` | [mem_powersetLenAux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/mem-powersetlenaux--8e26da72c8c5847d2db98f95.md) | 185 | `result-track:8e26da72c8c5847d2db98f95fe8f95909f5531c7bc90675c53410e3e386c9ce6` |
| 26 | `theorem` | [powersetLenAux_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlenaux-zero--c2ac126c93892935d196f0b2.md) | 194 | `result-track:c2ac126c93892935d196f0b2022dd7c9324871fa5be64f2a9f15eb63b71a0e95` |
| 27 | `theorem` | [powersetLenAux_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlenaux-nil--a9845881291abfa5516782fe.md) | 199 | `result-track:a9845881291abfa5516782fee068667341394e7cc7677965269ffe1673e12d73` |
| 28 | `theorem` | [powersetLenAux_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlenaux-cons--98ea1ab1c25cc8f4539160cd.md) | 204 | `result-track:98ea1ab1c25cc8f4539160cd47e642aaa81848a01215c80f5df72a13ae8bbd3e` |
| 29 | `theorem` | [powersetLenAux_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlenaux-perm--fef753d472f781e3f6d7db4a.md) | 210 | `result-track:fef753d472f781e3f6d7db4acbb13d5f58a8b30dbf1d11a4c27e02434abbb6c9` |
| 30 | `def` | [powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlen--57c7c9be05c22d5971581baa.md) | 230 | `declaration-track:57c7c9be05c22d5971581baa7f6bc92257689eb77d5ddecfa4417fc4db1f8a4f` |
| 31 | `theorem` | [powersetLen_coe'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlen-coe--1473fef819509de0de6f91d1.md) | 235 | `result-track:1473fef819509de0de6f91d1c1a80284753f76b89bbf16557b1196651f83b532` |
| 32 | `theorem` | [powersetLen_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlen-coe--ede9eb992bc9a1cca5ba09fe.md) | 239 | `result-track:ede9eb992bc9a1cca5ba09fe7efd473c28b338d19c2c4b4cf48bbd8297387ce4` |
| 33 | `theorem` | [powersetLen_zero_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlen-zero-left--87a846ae6f7d6ec20d1bec50.md) | 245 | `result-track:87a846ae6f7d6ec20d1bec50c00aaf85ef757d3ae18c5a1401ca4d7f75c968bf` |
| 34 | `theorem` | [powersetLen_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlen-zero-right--44d861e2f439c60fa02fb9fd.md) | 249 | `result-track:44d861e2f439c60fa02fb9fd09a6ffc4c7ff718e1ac481d805c6407020dd39c5` |
| 35 | `theorem` | [powersetLen_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlen-cons--ad0bc5900e3549ef21528b8d.md) | 254 | `result-track:ad0bc5900e3549ef21528b8dd9463785db7f30ae703f902f351dfea91328798b` |
| 36 | `theorem` | [mem_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/mem-powersetlen--976d6bf1321d39396359ee1e.md) | 260 | `result-track:976d6bf1321d39396359ee1e744f4916ae39f5cd6e6c32f623297d6aee98ab69` |
| 37 | `theorem` | [card_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/card-powersetlen--a479ba234cb3354134a57f43.md) | 265 | `result-track:a479ba234cb3354134a57f43e30f071fbbf499acf4bacef5d4550e428ae71e59` |
| 38 | `theorem` | [powersetLen_le_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlen-le-powerset--ef08527bc55a6e3fd076f178.md) | 270 | `result-track:ef08527bc55a6e3fd076f178cca6385e704fa6ea8b899028544303403b7f7def` |
| 39 | `theorem` | [powersetLen_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlen-mono--b8e56781c1c9457f605a3005.md) | 276 | `result-track:b8e56781c1c9457f605a30055ef182d3946c8cb0be47b98db2b60c4f48b276ff` |
| 40 | `theorem` | [powersetLen_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlen-empty--272ce7c46829cf4375850b8b.md) | 284 | `result-track:272ce7c46829cf4375850b8b997821c22a42e4e274a2cba9732e1cb8ab596fe7` |
| 41 | `theorem` | [powersetLen_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlen-card-add--f82d709f6e02bb7d0513ea2b.md) | 290 | `result-track:f82d709f6e02bb7d0513ea2bfcca497c92d01c06f8b6b4c92862e2bc2c607caa` |
| 42 | `theorem` | [powersetLen_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/powersetlen-map--036dcdd43b4b4ac3065da8b5.md) | 295 | `result-track:036dcdd43b4b4ac3065da8b53ce29c7c1e791f65dfaa256f7c671206def27f0a` |
| 43 | `theorem` | [pairwise_disjoint_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/pairwise-disjoint-powersetlen--874e4d3a3cc16ee5b8b77314.md) | 302 | `result-track:874e4d3a3cc16ee5b8b77314c7652fd18aff1e6ee52a0febdcadd3e106779fd7` |
| 44 | `theorem` | [bind_powerset_len](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/bind-powerset-len--be4b8de9c335c908701bd775.md) | 308 | `result-track:be4b8de9c335c908701bd7755ba36eb6f88d89852b6501b8372555619b15df75` |
| 45 | `theorem` | [nodup_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/nodup-powerset--513dc7f484aad3ee1c0b5736.md) | 317 | `result-track:513dc7f484aad3ee1c0b5736f630440df77bcb39249b570ac44eb1a1a001229c` |
| 46 | `theorem` | [Nodup.powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant107b5fda432ba7fec2044b0a025e7e1a3678cf8797a963c5cc517b91996f4f40.lean/declarations/nodup-powersetlen--70bd93e1b497a2d0a485c0d7.md) | 330 | `result-track:70bd93e1b497a2d0a485c0d7e7226d949213acbeb1aa278c4b82484488b977ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

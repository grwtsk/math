# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8197b0e515723b08bc98c7996edc1e523048d59c",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8197b0e515723b08bc98c7996edc1e523048d59c`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Hashable` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Bootstrap` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Int.DivMod.Lemmas` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Lemmas` — import line 23; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Order` — import line 24; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Pow` — import line 25; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Rat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/rat--262ed38980abb679c55a6f81.md) | 41 | `declaration-track:262ed38980abb679c55a6f81d1819ecf64a0d42fe78429db505099a405fc6eac` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--d9030f29ad519fd7223daf13.md) | 55 | `declaration-track:d9030f29ad519fd7223daf132b4e200aff85a8658e75fc3834969dc337c3b288` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--9d1894bc4e81f1ffe6adf31c.md) | 57 | `declaration-track:9d1894bc4e81f1ffe6adf31c59cb6e8d8a1bfb6a9fe4d0326845f69686ae2aaf` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--9bcc46be8e94b99c9eef424b.md) | 60 | `declaration-track:9bcc46be8e94b99c9eef424b2f6c790087ad74307b71fcbdbb464ad7837dc2d1` |
| 5 | `theorem` | [Rat.den_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/rat-den-pos--cc37ea31bc9ff8ad41ca8eaf.md) | 63 | `result-track:cc37ea31bc9ff8ad41ca8eaf8594223f1f3395e7edc54d63b614438a300f3799` |
| 6 | `def` | [Rat.maybeNormalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/rat-maybenormalize--3c9ca52380632edb7413dedc.md) | 69 | `declaration-track:3c9ca52380632edb7413dedc7952a5f17177e4b4db9c031f24d15ac8353ea571` |
| 7 | `theorem` | [Rat.normalize.dvd_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/rat-normalize-dvd-num--6611a898c2622a077ae7e9e7.md) | 78 | `result-track:6611a898c2622a077ae7e9e7bcfd34e0e31194d095199d7482b9bbae3f3996e0` |
| 8 | `theorem` | [Rat.normalize.dvd_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/rat-normalize-dvd-den--cbb362ce322a277f24d1cd16.md) | 83 | `result-track:cbb362ce322a277f24d1cd162335784cd0561edcd6114548e922672e77812baa` |
| 9 | `theorem` | [Rat.normalize.den_nz](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/rat-normalize-den-nz--f630018813d475b7cf00316a.md) | 87 | `result-track:f630018813d475b7cf00316a4eef1c18af5912932a23b5fb727cc6adc5ab9e4c` |
| 10 | `theorem` | [Rat.normalize.reduced](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/rat-normalize-reduced--ccaa2ef819dad931586eb493.md) | 91 | `result-track:ccaa2ef819dad931586eb493201355ac9a8dfd4800c596f968f4cb4756c30b7d` |
| 11 | `def` | [Rat.normalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/rat-normalize--4b9766e350556cea7642357a.md) | 102 | `declaration-track:4b9766e350556cea7642357aef1bd10f88d9d02549f65990027f76f8b63573ee` |
| 12 | `def` | [mkRat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/mkrat--ef6724f40a28166fbea8b6fa.md) | 113 | `declaration-track:ef6724f40a28166fbea8b6fa4bf583631b09ccee99b93006f5a2b95cb951fe33` |
| 13 | `def` | [ofInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/ofint--b3568fab03cf8792c18fb2f3.md) | 119 | `declaration-track:b3568fab03cf8792c18fb2f3af30192d1c75b93392ad5e79ec6f64fcaf12cbdb` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--11737225e43dac5aad6fc2e3.md) | 121 | `declaration-track:11737225e43dac5aad6fc2e3bfeaf184ad8b814bdb54ab14c87cf0a33b21655e` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--c30c81c912807a81bef4df89.md) | 123 | `declaration-track:c30c81c912807a81bef4df89c4230d941ad9d8099b5af5388b56161b3ca20b94` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--884315eab396a524dca5a7ca.md) | 125 | `declaration-track:884315eab396a524dca5a7ca6dab072c967fe4a6a3b6855c8700032097ae894f` |
| 17 | `def` | [isInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/isint--0b923ca2030276eba224f730.md) | 128 | `declaration-track:0b923ca2030276eba224f7308812a8305e862f7097a013c6026ee0f972a445e0` |
| 18 | `def` | [divInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/divint--9449d2f8234f61c386f553ac.md) | 131 | `declaration-track:9449d2f8234f61c386f553ac5742537d503517c104b215e89ef44d1b79722906` |
| 19 | `def` | [ofScientific](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/ofscientific--1f5fadc0dae1ccd4d6a7df24.md) | 140 | `declaration-track:1f5fadc0dae1ccd4d6a7df24e752cba479252a96dcef11062de7ab3447e83046` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--639766b3ac82d1aa6ad3fe5d.md) | 146 | `declaration-track:639766b3ac82d1aa6ad3fe5d29bee35494d2baba8b446b441a1db0737381032e` |
| 21 | `def` | [blt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/blt--95bf41a0bcfbecd6551cd8cb.md) | 150 | `declaration-track:95bf41a0bcfbecd6551cd8cb517f178b5f348503ff1adeb1a08f287db388dcad` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--147ba8efb6370959e901987e.md) | 161 | `declaration-track:147ba8efb6370959e901987e1db7712d5a82ea921f35235ddbd1413d86e9d223` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--9a8ca4d5e733882c6f95cf3c.md) | 163 | `declaration-track:9a8ca4d5e733882c6f95cf3c2470d64ed435f649f00cbbf3d0ca0d0ac932528d` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--65e1148499cfe4d2ce787145.md) | 166 | `declaration-track:65e1148499cfe4d2ce787145e57b81e6f95d9ef61c2ca60e8cae60e60d8f9d95` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--4e7bd786634ecfb290417e42.md) | 168 | `declaration-track:4e7bd786634ecfb290417e42c4640271b5dfb2266e0664e619e2d694f40a3eb2` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--d689aecc867d7f6532a872e0.md) | 171 | `declaration-track:d689aecc867d7f6532a872e09864faa38492026595fd80724b2cfe71d39f82ad` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--4f46849a601e6108ecbe987f.md) | 172 | `declaration-track:4f46849a601e6108ecbe987fc6420a0b9a34aacdb34b573b1161a2ef1cfa4c24` |
| 28 | `def` | [mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/mul--e5d8853918f1cec322c92879.md) | 176 | `declaration-track:e5d8853918f1cec322c928798e3ff1e35f0fe10e4f92f36f232bc817ad4696ec` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--f9c9b34ee66db1218870814a.md) | 193 | `declaration-track:f9c9b34ee66db1218870814a11eaa9c25cb17c9b0e17f98c168702f0cdfe128d` |
| 30 | `def` | [inv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/inv--edac11b55317f9ca4f835399.md) | 199 | `declaration-track:edac11b55317f9ca4f835399ee6d95863ec4e809605e185bd958f565a9090bbb` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--8f65cade76802f042eb2d0de.md) | 211 | `declaration-track:8f65cade76802f042eb2d0dee55855887e364dba170bdec2c5c496ec8fc14d9b` |
| 32 | `def` | [pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/pow--b82efe79a924945db9771410.md) | 213 | `declaration-track:b82efe79a924945db977141061c3eb2e7492efa887a7db6cf957d688b58cf433` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--244fcf22ce39b5eb6350cb13.md) | 217 | `declaration-track:244fcf22ce39b5eb6350cb138e616c80af79f3e2ffce721efb067506d0b1fe2e` |
| 34 | `def` | [zpow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/zpow--dfa580534fdc998fa1c0c31c.md) | 220 | `declaration-track:dfa580534fdc998fa1c0c31cada145786c538b7c54ab234929c889b3da707273` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--54d42a8506a796c46daec00f.md) | 225 | `declaration-track:54d42a8506a796c46daec00f032b5b754304895e6aa4f23a791aaf3849a0a6b4` |
| 36 | `def` | [div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/div--0723d38116e26f7ab153be73.md) | 229 | `declaration-track:0723d38116e26f7ab153be73dd94944056979d79f76360ecd18e67cc111a1c98` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--ed727e80ace27a3f863186d2.md) | 233 | `declaration-track:ed727e80ace27a3f863186d2c820cdd88c28a691cb236cd52b2c97acb4aef4d6` |
| 38 | `theorem` | [add.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/add-aux--a79c04d445c711b634e2e30e.md) | 235 | `result-track:a79c04d445c711b634e2e30ee6820a732578382a3fcfe03a7aeb2d31aeb0dda9` |
| 39 | `def` | [add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/add--cb445fc7596c0f4a3bf054ac.md) | 267 | `declaration-track:cb445fc7596c0f4a3bf054ac062d0978026983d029c70acabd4c51c3a905d745` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--b35dd366d4151afb246a5ca4.md) | 283 | `declaration-track:b35dd366d4151afb246a5ca445fe963804a1edd9023ee5f42c54af10052ea5d8` |
| 41 | `def` | [neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/neg--ba297c395fdaf1e72676be8e.md) | 287 | `declaration-track:ba297c395fdaf1e72676be8ec844e541964687679da1bbfa6a44e2d9c04c0e85` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--daefb9402611d999fff7a6a8.md) | 290 | `declaration-track:daefb9402611d999fff7a6a8b79e27710a2651bea6aa86de86eb82e9a6773e4f` |
| 43 | `theorem` | [sub.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/sub-aux--a796dfe4e505dce3e6d758b5.md) | 292 | `result-track:a796dfe4e505dce3e6d758b533b4f7188ff9712dd0b9fdadbfb3bf151216f23b` |
| 44 | `def` | [sub](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/sub--30fef262c1c9c877aac7631e.md) | 303 | `declaration-track:30fef262c1c9c877aac7631e1262bddd6b68b527e9a434dcbfe178eb383fa1fa` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/instance--8ec24490a5b756ed37becbd3.md) | 319 | `declaration-track:8ec24490a5b756ed37becbd309fb234dc609592dcfa375ed545172871a5a759b` |
| 46 | `def` | [floor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/floor--16e24a55a1d8f2fdf80f733a.md) | 322 | `declaration-track:16e24a55a1d8f2fdf80f733a48efd731db6408b38b87190411eeac4beebfedda` |
| 47 | `def` | [ceil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/ceil--25c16dfd6d611120cc9209af.md) | 329 | `declaration-track:25c16dfd6d611120cc9209af0479eb8d1cf18a414664198d0002f4ebb19fc8f3` |
| 48 | `def` | [abs](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variantaa7608eb5aafdf45fc97d4b95c410a921e1b975c6a1544ca898d553ac3a925dd.lean/declarations/abs--de1fd13d3ce5a31561256adf.md) | 336 | `declaration-track:de1fd13d3ce5a31561256adf6b5d59776363ed764c5fb5798e84d85b7c17ad1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

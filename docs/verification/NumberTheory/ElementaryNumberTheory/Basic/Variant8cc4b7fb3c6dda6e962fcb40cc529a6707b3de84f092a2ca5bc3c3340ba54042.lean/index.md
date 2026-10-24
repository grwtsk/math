# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Basic.Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb9bdd86724244469495dee5fe7fb7cf08f31dfd",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb9bdd86724244469495dee5fe7fb7cf08f31dfd`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Nat.Gcd` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Rat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/rat--d7c5e0a8b3a785c1c921d2c6.md) | 23 | `declaration-track:d7c5e0a8b3a785c1c921d2c672e6558f69f648b7dc018f9db315e9acc1b07ed4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--73d11458247adc4dc1a9cc95.md) | 37 | `declaration-track:73d11458247adc4dc1a9cc952d168027b71f2a465d180e5dda91e5b2d3b1bd07` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--ea9ab9814705c77cb1610742.md) | 39 | `declaration-track:ea9ab9814705c77cb1610742fb25aceb672b74527812d631d96254972aa1e2e2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--b36ba7995fb2b0805c9f50df.md) | 42 | `declaration-track:b36ba7995fb2b0805c9f50df2493104ae55a99f34f8a53ac58f7a49b660d3865` |
| 5 | `theorem` | [Rat.den_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/rat-den-pos--39612ffb9f9da82ef756415f.md) | 45 | `result-track:39612ffb9f9da82ef756415f74b2501a3dd487fff6a0e8a14a6d4a6ec85e72bb` |
| 6 | `def` | [Rat.maybeNormalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/rat-maybenormalize--cf31563fa2d811dbdb3b02c7.md) | 51 | `declaration-track:cf31563fa2d811dbdb3b02c7eb96efedd01d726ef786c039dd430ed42b5fc431` |
| 7 | `theorem` | [Rat.normalize.dvd_num](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/rat-normalize-dvd-num--d45d666248df93b90eecafed.md) | 60 | `result-track:d45d666248df93b90eecafedd39f8efad465458afcd91e912f3652d290194a60` |
| 8 | `theorem` | [Rat.normalize.dvd_den](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/rat-normalize-dvd-den--2a711fa4bd9bdbaab5f054fa.md) | 65 | `result-track:2a711fa4bd9bdbaab5f054fa71e08605f9117456bd399161e0588ffbeb47f624` |
| 9 | `theorem` | [Rat.normalize.den_nz](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/rat-normalize-den-nz--c15d94a923d4d4e1fb405021.md) | 69 | `result-track:c15d94a923d4d4e1fb405021fbf28688fcf6a40fd61e9e6c0d317c8a1d08435a` |
| 10 | `theorem` | [Rat.normalize.reduced](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/rat-normalize-reduced--2723d48ec388efae12144e3a.md) | 73 | `result-track:2723d48ec388efae12144e3a32be12fcef931c633b88e08b2bba8c639da13631` |
| 11 | `def` | [Rat.normalize](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/rat-normalize--d58ffdd308d83c85bfdceebc.md) | 84 | `declaration-track:d58ffdd308d83c85bfdceebc19b23d7eb67425d56efe1415d5c646fdc7984b0b` |
| 12 | `def` | [mkRat](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/mkrat--f7bf958d66a2e395947e68c2.md) | 95 | `declaration-track:f7bf958d66a2e395947e68c218786e76e03ca1506213f63bf5db878adeab0960` |
| 13 | `def` | [ofInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/ofint--a98d73c35d857f95b958ca78.md) | 101 | `declaration-track:a98d73c35d857f95b958ca7817dc3faa9e69a60cee120339fef129b5fbdeefdb` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--c1680f51887a93f8e881e3c2.md) | 103 | `declaration-track:c1680f51887a93f8e881e3c2f1dfe824773dc5bd59ba55963f2c5e36824d82c7` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--e74cdc829263215c17deada0.md) | 105 | `declaration-track:e74cdc829263215c17deada0ccd64d0617a0fa3e021da750cbafd04440e42ef6` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--7fd38901e247bd93d53e9dab.md) | 107 | `declaration-track:7fd38901e247bd93d53e9dab79504ebd9817606f92189acb843ab71ba04ec888` |
| 17 | `def` | [isInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/isint--dfe47221a9383dff933ebc85.md) | 110 | `declaration-track:dfe47221a9383dff933ebc85037b7d8b402fd468867d6f2f8cddc8880c5223bc` |
| 18 | `def` | [divInt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/divint--7bffbf9a28a3267a9c4195af.md) | 113 | `declaration-track:7bffbf9a28a3267a9c4195af8c8916967cd22cfe823d2b58077f7800b5203577` |
| 19 | `def` | [ofScientific](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/ofscientific--21bf97cd53eca271789dd2dd.md) | 122 | `declaration-track:21bf97cd53eca271789dd2dd83b52eb6b56f301f7c7e163898280fe27d312e66` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--2c935997f431b123a99a3d11.md) | 128 | `declaration-track:2c935997f431b123a99a3d11955a58cbe766b15b5b3ec156c2c98a53e0fc1d60` |
| 21 | `def` | [blt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/blt--a06401dda594ed7280eb12e6.md) | 132 | `declaration-track:a06401dda594ed7280eb12e687d5dcf0d989d08bbcaa8d84427abc2127193b19` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--02e0f74e20b328bb7942066b.md) | 143 | `declaration-track:02e0f74e20b328bb7942066b0a27442e4c797c85a372502d110baba8a054b076` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--032c78ec8e3be264cb350cdf.md) | 145 | `declaration-track:032c78ec8e3be264cb350cdf3f78e9741df6c14bb44f3bf4b842d4a711ecc886` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--e822798027db37102e2f266e.md) | 148 | `declaration-track:e822798027db37102e2f266ebcf9d2ec5696d21eafad2134945aa88aa4e45a4a` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--2c14ded908400ac632c7fee1.md) | 150 | `declaration-track:2c14ded908400ac632c7fee1c37072839349b1abc08828fb3be848e2e2f9eac2` |
| 26 | `def` | [mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/mul--b30d12884a67b4c67521f4b2.md) | 155 | `declaration-track:b30d12884a67b4c67521f4b2137308f59ddbd0d7376b3812efb5853277745111` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--6c71f48ea2be0597b7597225.md) | 172 | `declaration-track:6c71f48ea2be0597b7597225032543e780a798fbf6cee8c154fb0d8b73e39df2` |
| 28 | `def` | [inv](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/inv--0741e7ff7ada85c1b8da17c3.md) | 178 | `declaration-track:0741e7ff7ada85c1b8da17c3b8c275003675079f344565225423f2109531b6b5` |
| 29 | `def` | [div](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/div--34895abdfd2fd95da3fbcc46.md) | 191 | `declaration-track:34895abdfd2fd95da3fbcc46aee1f57157c2f0d7cdbc9e13c85395b9e2f58589` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--0cfaeb4d953924760b6a01de.md) | 195 | `declaration-track:0cfaeb4d953924760b6a01de48904ddf555daa0628f3882e7c2f8199efb8e5b1` |
| 31 | `theorem` | [add.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/add-aux--0993b8fe7dd3e77f68f1c807.md) | 197 | `result-track:0993b8fe7dd3e77f68f1c80769fd8d0a87074b48d305140920635952d6394afa` |
| 32 | `def` | [add](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/add--47a7713348fcb13572d173ca.md) | 229 | `declaration-track:47a7713348fcb13572d173ca0a62dbe47639fad0d2a61e0167af369c0a3674e7` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--897ad0f57cee6985f2a0e7ff.md) | 245 | `declaration-track:897ad0f57cee6985f2a0e7ff61a9ff0c0ea4f86ee9be246c88a3bf479a49ba83` |
| 34 | `def` | [neg](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/neg--21e90240d9744ad81012c364.md) | 248 | `declaration-track:21e90240d9744ad81012c36433c45640d580331c36e3819278b0dddaf4eada4f` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--4234f66557ef8f7a900caedc.md) | 251 | `declaration-track:4234f66557ef8f7a900caedc49f089ded53b8aed1524ad1bb1b7275fb2645879` |
| 36 | `theorem` | [sub.aux](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/sub-aux--e17b88d8f6bce49240940f7b.md) | 253 | `result-track:e17b88d8f6bce49240940f7b04f9a6756e075bf8d48b8f8f869647f4b4a7a040` |
| 37 | `def` | [sub](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/sub--7a4651a701158067c35c177b.md) | 264 | `declaration-track:7a4651a701158067c35c177b1bbcc1feef005bd4aa731f838c2d584b00e5f92d` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/instance--ed0be56059eb218fb8409953.md) | 280 | `declaration-track:ed0be56059eb218fb840995326de052a041533cd2dc4bad2e6a8a4ab5e9555eb` |
| 39 | `def` | [floor](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/floor--764a8d79401110d75180c8b1.md) | 283 | `declaration-track:764a8d79401110d75180c8b1da8e5d1dace483eba59124cda2977ee9c708afe2` |
| 40 | `def` | [ceil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Basic/Variant8cc4b7fb3c6dda6e962fcb40cc529a6707b3de84f092a2ca5bc3c3340ba54042.lean/declarations/ceil--2309266b9b63335b5110e58b.md) | 290 | `declaration-track:2309266b9b63335b5110e58bf039a80cdd9c78d6f6afc7fc7f85f2ba718e59b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

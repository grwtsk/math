# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Irreducible.Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38204153afe1b41b7496e7085244e69b6f1cdb52",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38204153afe1b41b7496e7085244e69b6f1cdb52`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SupIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supirred--88935be917e124fe58a5c5b9.md) | 45 | `declaration-track:88935be917e124fe58a5c5b9a77ac954b09d864a72698b83b990e25da9bd2aa7` |
| 2 | `def` | [SupPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supprime--160e03ccb4cc2a16de646564.md) | 50 | `declaration-track:160e03ccb4cc2a16de646564b6f2030275610a793a7d13bf1fe3b9750456c09e` |
| 3 | `theorem` | [SupIrred.not_isMin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supirred-not-ismin--58b78398a077724679fc2690.md) | 53 | `result-track:58b78398a077724679fc26906cc3d4a8e87771149f3fe181f6a0f45d70f9de14` |
| 4 | `theorem` | [SupPrime.not_isMin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supprime-not-ismin--5eee45b7a71b96f42ad929e3.md) | 56 | `result-track:5eee45b7a71b96f42ad929e35cbb39e87d3694e8f66bf383436c66cc1e986703` |
| 5 | `theorem` | [IsMin.not_supIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/ismin-not-supirred--d14ec6c15be186ab43e7ee53.md) | 59 | `result-track:d14ec6c15be186ab43e7ee5365e86c66e07d11a24bf77319a007a40351b28eb0` |
| 6 | `theorem` | [IsMin.not_supPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/ismin-not-supprime--8e65c393adedbd6752fe9fd8.md) | 61 | `result-track:8e65c393adedbd6752fe9fd8ddf8cb6dff79a424d459b23904be36637416860b` |
| 7 | `theorem` | [not_supIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/not-supirred--7628e89e5e9f13b8b6cab15c.md) | 64 | `result-track:7628e89e5e9f13b8b6cab15ced5a8a4335a22fc4722374562014468eb4605b01` |
| 8 | `theorem` | [not_supPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/not-supprime--783f326a42f8b5460545669a.md) | 71 | `result-track:783f326a42f8b5460545669a0a2ed5c39178ad4bc9cd05bac62d4332314e950c` |
| 9 | `theorem` | [SupPrime.supIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supprime-supirred--fd8f3f77b9eb1109e3e931b6.md) | 74 | `result-track:fd8f3f77b9eb1109e3e931b671ceeb7bfb342c4820bece0958b16699811437a6` |
| 10 | `theorem` | [SupPrime.le_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supprime-le-sup--5863521e993dd7166335c9b9.md) | 77 | `result-track:5863521e993dd7166335c9b90b716ccffd9caaae09401884c7a26220189a2f82` |
| 11 | `theorem` | [not_supIrred_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/not-supirred-bot--9e598b5ad6307c8ebd935f93.md) | 83 | `result-track:9e598b5ad6307c8ebd935f9332bdf7b81d35daacd03963a1e37aeba1d94015f3` |
| 12 | `theorem` | [not_supPrime_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/not-supprime-bot--744fc8e9e3d49ceb916a6590.md) | 87 | `result-track:744fc8e9e3d49ceb916a6590b506c3ba98f5fbf8386982a2a314f6c74426e87b` |
| 13 | `theorem` | [SupIrred.ne_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supirred-ne-bot--18a70380c400cafea7d7cc66.md) | 90 | `result-track:18a70380c400cafea7d7cc6629bade431527bdf50b742393104ba9aadce7dcd9` |
| 14 | `theorem` | [SupPrime.ne_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supprime-ne-bot--b2bff09e7e2d9d65a5df68d4.md) | 92 | `result-track:b2bff09e7e2d9d65a5df68d45e02e920e29a6a077c592539be6fb98425aab1c2` |
| 15 | `theorem` | [SupIrred.finset_sup_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supirred-finset-sup-eq--2e9e4c265f935b56b6e55ff2.md) | 94 | `result-track:2e9e4c265f935b56b6e55ff2ce6fb919ec626700abaeb6ed42363fa7582bbe75` |
| 16 | `theorem` | [SupPrime.le_finset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supprime-le-finset-sup--f7b3201bbd01ab0ad5c84412.md) | 103 | `result-track:f7b3201bbd01ab0ad5c84412c46da63878620d89c13a261b6d6cfce2e53668ee` |
| 17 | `theorem` | [exists_supIrred_decomposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/exists-supirred-decomposition--0f54c256077cdf88192b6f0d.md) | 113 | `result-track:0f54c256077cdf88192b6f0de611823a97b6f6c9e90518ec50e05a5b48a9754b` |
| 18 | `def` | [InfIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infirred--b52a675e3e39aa19e026e5d7.md) | 135 | `declaration-track:b52a675e3e39aa19e026e5d7bc369c7412a7d21b82bf94c32dfe3e10a8f4b36d` |
| 19 | `def` | [InfPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infprime--039517347c48420e35e51889.md) | 140 | `declaration-track:039517347c48420e35e51889beb30fe81d281c6f91638453de72f230929a7a5e` |
| 20 | `theorem` | [IsMax.not_infIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/ismax-not-infirred--52ce1bfa3d41c00d6f41faa3.md) | 144 | `result-track:52ce1bfa3d41c00d6f41faa356f23894560207f61a1589e2b1636e1ac3ee579b` |
| 21 | `theorem` | [IsMax.not_infPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/ismax-not-infprime--0cbfaa0c079af2501305dc6b.md) | 147 | `result-track:0cbfaa0c079af2501305dc6b1cf33ccff6734296054a84d80bd2b1c112908ec5` |
| 22 | `theorem` | [not_infIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/not-infirred--7ae1286099a2084b74feff22.md) | 150 | `result-track:7ae1286099a2084b74feff226fd4b4e6603320feb901588d5e39b8e10c8442d6` |
| 23 | `theorem` | [not_infPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/not-infprime--17e5e0785fe65fbe3e0eff8f.md) | 154 | `result-track:17e5e0785fe65fbe3e0eff8fca4f04ec3d7af8f11bd95b6f16362fd2c15a32b7` |
| 24 | `theorem` | [InfPrime.infIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infprime-infirred--bd0ade22d74166d2a3b160a8.md) | 157 | `result-track:bd0ade22d74166d2a3b160a81387a806ce38b0206ad20b018b5798f7158fa100` |
| 25 | `theorem` | [InfPrime.inf_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infprime-inf-le--c0915fae2af68a10607dfb90.md) | 160 | `result-track:c0915fae2af68a10607dfb90c36a70840da85f493f7365fdee64d9d2272c8f9f` |
| 26 | `theorem` | [not_infIrred_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/not-infirred-top--db78b5034ad9602e75be1b8f.md) | 165 | `result-track:db78b5034ad9602e75be1b8f0e950a53c3303d47de59021cc01de86d23aacfdb` |
| 27 | `theorem` | [not_infPrime_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/not-infprime-top--cc64f03bb13aaca079a5d3d5.md) | 168 | `result-track:cc64f03bb13aaca079a5d3d5db3d3430c55296fa568293fdfac3c696e7565126` |
| 28 | `theorem` | [InfIrred.ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infirred-ne-top--ef97663d04a9241acae42329.md) | 171 | `result-track:ef97663d04a9241acae42329fcc1983b01a5bc349aab49cdd725b72fdb7431de` |
| 29 | `theorem` | [InfPrime.ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infprime-ne-top--d9e835e8c1b6a0ff59796f1c.md) | 173 | `result-track:d9e835e8c1b6a0ff59796f1c41eb6516c13cefc40ed1be0bd7e01de11c0b0f12` |
| 30 | `theorem` | [InfIrred.finset_inf_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infirred-finset-inf-eq--17a633dd38cef1e81e98a6d2.md) | 175 | `result-track:17a633dd38cef1e81e98a6d21463d01fbc458cae640a443c1cd03e783a07efec` |
| 31 | `theorem` | [InfPrime.finset_inf_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infprime-finset-inf-le--d94fc04e43fc25212b292a64.md) | 178 | `result-track:d94fc04e43fc25212b292a64d4ea0909af2a3b457a47fbc32432f4549a6d7722` |
| 32 | `theorem` | [exists_infIrred_decomposition](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/exists-infirred-decomposition--811738fcb26b09efe113cc11.md) | 185 | `result-track:811738fcb26b09efe113cc118aa487ce552efa5f510e2f238e24b57ab75d1621` |
| 33 | `theorem` | [infIrred_toDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infirred-todual--9609fdbf4ff2efac2067167b.md) | 196 | `result-track:9609fdbf4ff2efac2067167bff76a87cc0c81bea89f92509729c3a8cc314be26` |
| 34 | `theorem` | [infPrime_toDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infprime-todual--6ea2c65cb50ebe768bd5fe78.md) | 200 | `result-track:6ea2c65cb50ebe768bd5fe7889fcec4753aba14861801a9adf573e1d1e2f8303` |
| 35 | `theorem` | [supIrred_ofDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supirred-ofdual--1abff74f904a4ed0518ec2f6.md) | 204 | `result-track:1abff74f904a4ed0518ec2f61ea0f3dc779b96d37be34b8004a769a3b7673ddb` |
| 36 | `theorem` | [supPrime_ofDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supprime-ofdual--533fa5360679a244e1dd7c77.md) | 208 | `result-track:533fa5360679a244e1dd7c772b7acee40cdd93ff62837f7d5bec4f3601afab26` |
| 37 | `theorem` | [supIrred_toDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supirred-todual--89797d6950a361aecdd25eea.md) | 226 | `result-track:89797d6950a361aecdd25eea71d7ce675add20297c113ad2fb4bfbc9c199b25d` |
| 38 | `theorem` | [supPrime_toDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supprime-todual--e2ca148582ece1e4c90cd096.md) | 230 | `result-track:e2ca148582ece1e4c90cd0968c27a534a469b16f4256673b63b0f76ff17e2608` |
| 39 | `theorem` | [infIrred_ofDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infirred-ofdual--dcf10216ddadab0a3931e6db.md) | 234 | `result-track:dcf10216ddadab0a3931e6db45c234c627d20ba3c07113ce896f25a9f6ad3add` |
| 40 | `theorem` | [infPrime_ofDual](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infprime-ofdual--677f58342123e41f9ff3b009.md) | 238 | `result-track:677f58342123e41f9ff3b0094f806c16362c96d4f694c698e5b0cdecf876aa42` |
| 41 | `theorem` | [supPrime_iff_supIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supprime-iff-supirred--87d1dac4f0ffd4bada16a203.md) | 256 | `result-track:87d1dac4f0ffd4bada16a203cfe6384ec1605bc6983a9a28196a5a2150527376` |
| 42 | `theorem` | [infPrime_iff_infIrred](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infprime-iff-infirred--071a2b8f920dc089c45de4d2.md) | 261 | `result-track:071a2b8f920dc089c45de4d2e67ef8d0089a46461ad5ca63416b61b1e82591ec` |
| 43 | `theorem` | [supPrime_iff_not_isMin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supprime-iff-not-ismin--d96811910eb140fbc4dab7e4.md) | 274 | `result-track:d96811910eb140fbc4dab7e4f12d01ad63b1454b7e46b6bfed1dc7411db713a1` |
| 44 | `theorem` | [infPrime_iff_not_isMax](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infprime-iff-not-ismax--58dcc5e5a0ad61ad245e086a.md) | 277 | `result-track:58dcc5e5a0ad61ad245e086a7bf94aecbe5fb40325facb5f9ca067a21b4c2a67` |
| 45 | `theorem` | [supIrred_iff_not_isMin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/supirred-iff-not-ismin--6001cf66f2cfe1d9e6f88d71.md) | 281 | `result-track:6001cf66f2cfe1d9e6f88d71604be7ea52227fae1c6a5303b23a041e7a602437` |
| 46 | `theorem` | [infIrred_iff_not_isMax](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Irreducible/Variantc3a8cee792e7c1a585a11e532921e2f482fc457074b324320eba1643df29962c.lean/declarations/infirred-iff-not-ismax--93f548fdf2c9afe6f473d488.md) | 285 | `result-track:93f548fdf2c9afe6f473d4884e4b28cc96cba4333f76ce2d2ba407b5c782e2ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

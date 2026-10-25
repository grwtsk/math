# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Unique.Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "079f58199478f68b34bc94e3e1d719e2a5c67805",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `079f58199478f68b34bc94e3e1d719e2a5c67805`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.IsEmpty` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Logic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Fin.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/unique--138ba1bd80cecb3043acebf1.md) | 55 | `declaration-track:138ba1bd80cecb3043acebf12a167b27a4d2240a474958514dc33b3dd5f1e42a` |
| 2 | `theorem` | [unique_iff_exists_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/unique-iff-exists-unique--108d32db1c61371e3c6972d8.md) | 66 | `result-track:108d32db1c61371e3c6972d8cf80f6a1c1511dad1e5a9a7c600ba0f11334610c` |
| 3 | `theorem` | [unique_subtype_iff_exists_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/unique-subtype-iff-exists-unique--9c112569e2812d6a06b6022e.md) | 71 | `result-track:9c112569e2812d6a06b6022e8abb517920d93b112c63a14062e10d64d3208703` |
| 4 | `def` | [uniqueOfSubsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/uniqueofsubsingleton--dec0de699a742661e0fc1dc4.md) | 86 | `declaration-track:dec0de699a742661e0fc1dc47e95cdf11633db41af54f91776e936578f1610d1` |
| 5 | `instance` | [PUnit.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/punit-unique--551b3395b67062811f24f2e3.md) | 91 | `declaration-track:551b3395b67062811f24f2e3db039a312ad89a1585041f0e2b26e6e0ffbf5611` |
| 6 | `theorem` | [PUnit.default_eq_unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/punit-default-eq-unit--23fc923745adf39be251b757.md) | 100 | `result-track:23fc923745adf39be251b75717722fa07d7bae80e2895d5741e53daca6265297` |
| 7 | `def` | [uniqueProp](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/uniqueprop--15c8f0c671fcf39aea4ec31e.md) | 105 | `declaration-track:15c8f0c671fcf39aea4ec31eb0f0aba2d52ae7cc5006d0a57020f86edb132fa1` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/instance--5cafc12125e72d84154d24e0.md) | 110 | `declaration-track:5cafc12125e72d84154d24e0640e3aa884058ecc43c34da52cc881df3f6040f3` |
| 9 | `theorem` | [Fin.eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/fin-eq-zero--4ced53b09a63858e55d706c2.md) | 113 | `result-track:4ced53b09a63858e55d706c254bfee3001ff3456415edaaacacfe7f8ea0081a9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/instance--c9818ecdb2b084559dd15bb9.md) | 117 | `declaration-track:c9818ecdb2b084559dd15bb9d8c2e950804c692940931019dead309eeb88def4` |
| 11 | `instance` | [inhabitedFinOneAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/inhabitedfinoneadd--1fe76dcc7d7dda68bc1583dd.md) | 120 | `declaration-track:1fe76dcc7d7dda68bc1583dd9d1ee46929eac5ef050af098bc0060313331edcc` |
| 12 | `theorem` | [Fin.default_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/fin-default-eq-zero--751b426db622fd6d530c4363.md) | 124 | `result-track:751b426db622fd6d530c4363341771f766c1a9bc252311a92791b0b5b109e4f0` |
| 13 | `instance` | [Fin.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/fin-unique--ad9a47ed4bfb98d8c6de0cd8.md) | 128 | `declaration-track:ad9a47ed4bfb98d8c6de0cd88a95a464ac5f4166fc90b0aad0a5a4f50b06ca8b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/instance--c9c553eae7a8536491a684c3.md) | 140 | `declaration-track:c9c553eae7a8536491a684c34e45788f9778984549b643c056ca6e7cdef18910` |
| 15 | `theorem` | [eq_default](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/eq-default--ec6eb331137243d2a432b0b2.md) | 143 | `result-track:ec6eb331137243d2a432b0b272613cfd5d9fd1b1e9d7bb3b791de2366ccd1f88` |
| 16 | `theorem` | [default_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/default-eq--54536dcbf41570936da69dbc.md) | 147 | `result-track:54536dcbf41570936da69dbcff021d3f412fc73b39c341495d9252eb4c30646c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/instance--10bbe2452b7c41b98a9d1256.md) | 152 | `declaration-track:10bbe2452b7c41b98a9d12560dcd8d678abf8ab267c044c17ccf4db553aa315a` |
| 18 | `theorem` | [forall_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/forall-iff--94c2d8233195ec7f69c1accd.md) | 155 | `result-track:94c2d8233195ec7f69c1accdd649f404f30f144083960bc56daea7a8b2b9f0a9` |
| 19 | `theorem` | [exists_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/exists-iff--8e63582b40e52bc3979e1251.md) | 159 | `result-track:8e63582b40e52bc3979e1251e98285553bac8406950e14c024ddf16dfa1943b2` |
| 20 | `theorem` | [subsingleton_unique'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/subsingleton-unique--e6f1c8f2f4b8f346f90af9f5.md) | 166 | `result-track:e6f1c8f2f4b8f346f90af9f56ca857add02f1db764e14288acabdb6b08161fc7` |
| 21 | `instance` | [subsingleton_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/subsingleton-unique--a40ea5476be72f219b0ab98b.md) | 170 | `declaration-track:a40ea5476be72f219b0ab98b5085a087450977e0100dbbe294e4dde9dc1256fd` |
| 22 | `def` | [mk'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/mk--161c780b690cfba7c02a3110.md) | 176 | `declaration-track:161c780b690cfba7c02a31103a1a08b75609a20fe25bd19e407b97d2f3795cd1` |
| 23 | `theorem` | [unique_iff_subsingleton_and_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/unique-iff-subsingleton-and-nonempty--b8112d9aac8bc6181c209e82.md) | 182 | `result-track:b8112d9aac8bc6181c209e82a94b17ec6460839644351c671c7f4f8e327e90a5` |
| 24 | `theorem` | [Pi.default_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/pi-default-def--8933811aa320a9aa89fc0e65.md) | 189 | `result-track:8933811aa320a9aa89fc0e65a03c1905f3f70c86c7bf84f5b614f09dca49e2b3` |
| 25 | `theorem` | [Pi.default_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/pi-default-apply--1c515fc11e880b90f0183848.md) | 194 | `result-track:1c515fc11e880b90f018384882a997432bc9861183a64b98fef8ff760d738648` |
| 26 | `instance` | [Pi.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/pi-unique--a1b0804725d5a845a947e3a7.md) | 199 | `declaration-track:a1b0804725d5a845a947e3a76988a9023f62cfbb1df7d9cf5de720dfc5a2de0c` |
| 27 | `instance` | [Pi.uniqueOfIsEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/pi-uniqueofisempty--a3b1a00b775878f3da153870.md) | 203 | `declaration-track:a3b1a00b775878f3da153870d0193132b8b305af5c474e1c68448cd1eb6e8e9c` |
| 28 | `theorem` | [eq_const_of_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/eq-const-of-unique--973a729c97a698080c6f8333.md) | 207 | `result-track:973a729c97a698080c6f8333a4d1b3b5965da67e9abb10d22031bb164b342808` |
| 29 | `theorem` | [heq_const_of_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/heq-const-of-unique--3634507d94944868af4a799d.md) | 213 | `result-track:3634507d94944868af4a799d9a4c2eb4ca36bb4e9692837ef69ea26b97a6ba3d` |
| 30 | `theorem` | [Injective.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/injective-subsingleton--f1e83f6564b7f5abf8e51131.md) | 224 | `result-track:f1e83f6564b7f5abf8e51131d47a335db0e1004de32d86ff9814672b9e768f48` |
| 31 | `theorem` | [Surjective.subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/surjective-subsingleton--6f52ff2ef4270acc2b452ce8.md) | 230 | `result-track:6f52ff2ef4270acc2b452ce8f78989f5845b6eb000afafc46bcd1dcdc2e1c207` |
| 32 | `def` | [Surjective.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/surjective-unique--22e14ade0b592a3c05781667.md) | 236 | `declaration-track:22e14ade0b592a3c0578166756fbf8e15572dd4b044e0353a41cd620c16c8794` |
| 33 | `def` | [Injective.unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/injective-unique--66be8ef5826e4fbc75eab863.md) | 241 | `declaration-track:66be8ef5826e4fbc75eab8636e4b150bcc01fd428bbb3267e08c53e53470caeb` |
| 34 | `def` | [Surjective.uniqueOfSurjectiveConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/surjective-uniqueofsurjectiveconst--410ab7860ba8d402a3856210.md) | 246 | `declaration-track:410ab7860ba8d402a3856210ad13c804e451487b8dadbfd19e1707d447119ef6` |
| 35 | `theorem` | [Unique.bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/unique-bijective--a926d769cf4f102dafab4065.md) | 255 | `result-track:a926d769cf4f102dafab4065ee609e9bcae96ca6219d1aeb42c8037f7be90e48` |
| 36 | `theorem` | [subsingleton_iff_isEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/subsingleton-iff-isempty--d7d1d5812137a4bac25787bb.md) | 263 | `result-track:d7d1d5812137a4bac25787bb4b06f6866df73330ddfc7c8c21f7c08817262816` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/instance--2b0b4914c027df9e6a493e88.md) | 269 | `declaration-track:2b0b4914c027df9e6a493e88d6e010a09c8830839ec2a416657907b14dcb3520` |
| 38 | `instance` | [Unique.subtypeEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/unique-subtypeeq--d4b4df2599925a5ddf8ca202.md) | 277 | `declaration-track:d4b4df2599925a5ddf8ca202d84b531de60d09ae9ff935d3bf980530a9b044ea` |
| 39 | `instance` | [Unique.subtypeEq'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Unique/Variantbc25d1704fcc59d2e2a8352271f7d89680721dd0b53b4e0320dc7e79004fbff2.lean/declarations/unique-subtypeeq--525d982dcc425bec6d328506.md) | 281 | `declaration-track:525d982dcc425bec6d3285061d5fe0a87e703289640044c04911663dbcdc7750` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

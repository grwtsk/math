# Verification target: GRWTSK.Algebra.LinearAlgebra.PerfectClosure.Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3166de4a719f136cdbed6671d899571828a3ebee",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3166de4a719f136cdbed6671d899571828a3ebee`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.IntermediateField` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PurelyInseparable.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [perfectClosure](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectclosure--3465d605f9b4211134e9245f.md) | 57 | `declaration-track:3465d605f9b4211134e9245f50b483b86cb11fc907344bd5fbcfe70e66de9824` |
| 2 | `theorem` | [mem_perfectClosure_iff](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/mem-perfectclosure-iff--39dffdbfe03b73db154584f9.md) | 67 | `result-track:39dffdbfe03b73db154584f959168c0898efc8e02d466ef547dbba075c2fe499` |
| 3 | `theorem` | [mem_perfectClosure_iff_pow_mem](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/mem-perfectclosure-iff-pow-mem--62b23132196d213a6ae474ca.md) | 70 | `result-track:62b23132196d213a6ae474ca61e9fa6e07fb4889a5ebc3eb952f5d5e95f67e90` |
| 4 | `theorem` | [mem_perfectClosure_iff_natSepDegree_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/mem-perfectclosure-iff-natsepdegree-eq-one--c1cc5cff9064b1cadce46367.md) | 76 | `result-track:c1cc5cff9064b1cadce46367f1fff13e23c68a5b1c465c4c1ee7b54058d9e2b0` |
| 5 | `theorem` | [isPurelyInseparable_iff_perfectClosure_eq_top](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/ispurelyinseparable-iff-perfectclosure-eq-top--afd4131d7ee54f45648fc2e3.md) | 82 | `result-track:afd4131d7ee54f45648fc2e3d4a1e004ebd52d9385aaf32e693e8bb58eafb1fa` |
| 6 | `instance` | [perfectClosure.isPurelyInseparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectclosure-ispurelyinseparable--d2f6f82fb419374292da3481.md) | 90 | `declaration-track:d2f6f82fb419374292da3481e1bd4601da6cf139f2a69528aaf29dc0f11609c5` |
| 7 | `instance` | [perfectClosure.isAlgebraic](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectclosure-isalgebraic--ee1b85d5dcead4860364292e.md) | 95 | `declaration-track:ee1b85d5dcead4860364292ece011b959f0ac7cd377cc0109c852e6244cd6e30` |
| 8 | `theorem` | [perfectClosure.eq_bot_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectclosure-eq-bot-of-isseparable--1f595b60d3b7e2a5d2ffbaaa.md) | 101 | `result-track:1f595b60d3b7e2a5d2ffbaaad998a84b5c5df3d92e78ee4ec225276e844f0244` |
| 9 | `theorem` | [le_perfectClosure](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/le-perfectclosure--5fd06385e2f531e0c8c2784b.md) | 107 | `result-track:5fd06385e2f531e0c8c2784ba7c7bb57056cc43848302c580d7a4f771e9e22ef` |
| 10 | `theorem` | [le_perfectClosure_iff](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/le-perfectclosure-iff--7be04d2b244879a27194fb02.md) | 116 | `result-track:7be04d2b244879a27194fb021337125b688a1643feba8352bd8c686761fccca7` |
| 11 | `theorem` | [separableClosure_inf_perfectClosure](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/separableclosure-inf-perfectclosure--6d3f314a4c68fa4f8e1e6ce0.md) | 123 | `result-track:6d3f314a4c68fa4f8e1e6ce0b1dd927473bc289532bc89a5936193b852ec9cdb` |
| 12 | `theorem` | [map_mem_perfectClosure_iff](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/map-mem-perfectclosure-iff--44972e5e8034ba51861644a8.md) | 134 | `result-track:44972e5e8034ba51861644a865c006f0b31568dbe11016f0de80bcba3002eed2` |
| 13 | `theorem` | [perfectClosure.comap_eq_of_algHom](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectclosure-comap-eq-of-alghom--0961ecc0718bb6020f9f56b0.md) | 144 | `result-track:0961ecc0718bb6020f9f56b087ee2bd811e505dd68633c1472ac486f25289d4d` |
| 14 | `theorem` | [perfectClosure.map_le_of_algHom](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectclosure-map-le-of-alghom--20ffbd8b052d4f0a6cbb0b11.md) | 151 | `result-track:20ffbd8b052d4f0a6cbb0b11b43376e749f7693d2acf0159064fd547f24e8eff` |
| 15 | `theorem` | [perfectClosure.map_eq_of_algEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectclosure-map-eq-of-algequiv--e65fb91c6a39246578f1373f.md) | 157 | `result-track:e65fb91c6a39246578f1373f0e1c25449b6b8ff9a6f9cda53fd8f33da278d420` |
| 16 | `def` | [perfectClosure.algEquivOfAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectclosure-algequivofalgequiv--225f4ba056f882ae6062797f.md) | 164 | `declaration-track:225f4ba056f882ae6062797f725b209ca4a7be9a43076682b9cea7e5354442ed` |
| 17 | `instance` | [perfectClosure.perfectRing](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectclosure-perfectring--b90d5c7278168291a72dd9ab.md) | 175 | `declaration-track:b90d5c7278168291a72dd9ab062e95e2bb364de0bbf5022de344e9bcd85520f8` |
| 18 | `instance` | [perfectClosure.perfectField](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectclosure-perfectfield--2ee8976b480ad4325ed5e52c.md) | 187 | `declaration-track:2ee8976b480ad4325ed5e52cae7e373ef57a652d51ea0495b58570aa90bb0b99` |
| 19 | `theorem` | [isPurelyInseparable_adjoin_simple_iff_natSepDegree_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/ispurelyinseparable-adjoin-simple-iff-natsepdegree-eq-one--5e10356f425fd5938bb62867.md) | 196 | `result-track:5e10356f425fd5938bb628675eb286b67c9f69170d4d9d99077c0fe4aa8a4307` |
| 20 | `theorem` | [isPurelyInseparable_adjoin_simple_iff_pow_mem](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/ispurelyinseparable-adjoin-simple-iff-pow-mem--0574dfc0c68cb0411f134cf1.md) | 202 | `result-track:0574dfc0c68cb0411f134cf101dd70c046c692a9fa4f74f7e3df83dd3bfdd5d0` |
| 21 | `theorem` | [isPurelyInseparable_adjoin_iff_pow_mem](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/ispurelyinseparable-adjoin-iff-pow-mem--d16c6bdc2506ecbf4bf4291d.md) | 208 | `result-track:d16c6bdc2506ecbf4bf4291d0cab121c1b51bd9b2baadbbb44a7f0d37d3c1fa7` |
| 22 | `instance` | [isPurelyInseparable_sup](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/ispurelyinseparable-sup--631658835740f0e79bc53e97.md) | 214 | `declaration-track:631658835740f0e79bc53e97baf87161bc43662fd121170d4dcb50933700bd11` |
| 23 | `instance` | [isPurelyInseparable_iSup](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/ispurelyinseparable-isup--8658fcf8e99016a4680ed66d.md) | 221 | `declaration-track:8658fcf8e99016a4680ed66d78ec1fa5f06cd8bc462a874eea4da798ad2d8732` |
| 24 | `theorem` | [adjoin_eq_adjoin_pow_expChar_pow_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/adjoin-eq-adjoin-pow-expchar-pow-of-isseparable--2576e3ef86022c05b967d3a2.md) | 229 | `result-track:2576e3ef86022c05b967d3a2487841a4e27424afc50ad1793bf787f85d8e1c4b` |
| 25 | `theorem` | [adjoin_eq_adjoin_pow_expChar_pow_of_isSeparable'](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/adjoin-eq-adjoin-pow-expchar-pow-of-isseparable--7de27508291ce71de78aa942.md) | 250 | `result-track:7de27508291ce71de78aa942f81f58e6cca0b6dc84bd81270f9771b4dd6b9a22` |
| 26 | `theorem` | [adjoin_eq_adjoin_pow_expChar_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/adjoin-eq-adjoin-pow-expchar-of-isseparable--ce5789adaf0392f6004888ae.md) | 258 | `result-track:ce5789adaf0392f6004888ae3720bf9e8213a93cd63e3a147bc42109eabad549` |
| 27 | `theorem` | [adjoin_eq_adjoin_pow_expChar_of_isSeparable'](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/adjoin-eq-adjoin-pow-expchar-of-isseparable--94e874b398b3389215fa3860.md) | 264 | `result-track:94e874b398b3389215fa3860375b3151cab9da097f407601713cc966614751c3` |
| 28 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_pow_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-pow-of-isseparable--b426b8c9fb6e0e07bc9c4b1b.md) | 272 | `result-track:b426b8c9fb6e0e07bc9c4b1b515c813d6bb32a3ccb25ad70c81d8e1cc4d35303` |
| 29 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_pow_of_isSeparable'](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-pow-of-isseparable--3871462d9838583a6eede5a2.md) | 279 | `result-track:3871462d9838583a6eede5a227b3e2539886aa28ac5d6de59cdb37b4f4dc4654` |
| 30 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-of-isseparable--63efd1ead0ec9162f729a34e.md) | 286 | `result-track:63efd1ead0ec9162f729a34e3a15485eedefaab1a0a52c023098c98d6b6a51be` |
| 31 | `theorem` | [adjoin_simple_eq_adjoin_pow_expChar_of_isSeparable'](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/adjoin-simple-eq-adjoin-pow-expchar-of-isseparable--2ff0acbf3b256328504de9a4.md) | 292 | `result-track:2ff0acbf3b256328504de9a4cdd8bfaa925e5c4e8eea2ef44fc6a349ae394f9d` |
| 32 | `theorem` | [Field.span_map_pow_expChar_pow_eq_top_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/field-span-map-pow-expchar-pow-eq-top-of-isseparable--73864c7c86de053f5994b370.md) | 305 | `result-track:73864c7c86de053f5994b370f47932143250647e4a236252b324d7e3df169d5e` |
| 33 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_fd_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/linearindependent-map-pow-expchar-pow-of-fd-isseparable--6f44b65d0fdf0e930d2f213a.md) | 326 | `result-track:6f44b65d0fdf0e930d2f213a281381416d6fbf4324cc33d786fb2eeec2cf5279` |
| 34 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/linearindependent-map-pow-expchar-pow-of-isseparable--12c4864c410062a0bf0b1296.md) | 344 | `result-track:12c4864c410062a0bf0b12960f1da7c79745946d8e8fb1d3586efad3ea3f998a` |
| 35 | `theorem` | [LinearIndependent.map_pow_expChar_pow_of_isSeparable'](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/linearindependent-map-pow-expchar-pow-of-isseparable--dab9a8a2f60ed44bcf545663.md) | 362 | `result-track:dab9a8a2f60ed44bcf545663dade6e047de69218103c959c39d1ca583c73bc77` |
| 36 | `def` | [Basis.mapPowExpCharPowOfIsSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/basis-mappowexpcharpowofisseparable--737f47ce6a4e008542f4108b.md) | 376 | `declaration-track:737f47ce6a4e008542f4108b5fd39c58ecc8685ef493f4aad19f1c8fdebe4608` |
| 37 | `theorem` | [minpoly.iterateFrobenius_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/minpoly-iteratefrobenius-of-isseparable--3a05212bcc41fce5c22224ac.md) | 383 | `result-track:3a05212bcc41fce5c22224acba5fa983c8e6612064a773bda74ff75e6b324aa9` |
| 38 | `theorem` | [minpoly.frobenius_of_isSeparable](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/minpoly-frobenius-of-isseparable--ead1ef4969551d17194de455.md) | 403 | `result-track:ead1ef4969551d17194de455def39d5e24441bdc02029b6ca205033f51736c05` |
| 39 | `theorem` | [perfectField_of_perfectClosure_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectfield-of-perfectclosure-eq-bot--4cb993f656dff33fd7ab223d.md) | 409 | `result-track:4cb993f656dff33fd7ab223d631f3c539d709886cc0ac2d838e7ce17c35675ce` |
| 40 | `theorem` | [perfectField_of_isSeparable_of_perfectField_top](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectfield-of-isseparable-of-perfectfield-top--fd7b2a5f615c0ff859ecdd01.md) | 422 | `result-track:fd7b2a5f615c0ff859ecdd0121e1079122371573d8d1297972c74a58e695da02` |
| 41 | `theorem` | [perfectField_iff_isSeparable_algebraicClosure](../../../../../mathematics/Algebra/LinearAlgebra/PerfectClosure/Variant93df8f31ac1f25885dbedde377cb74592675a2a39ee48b25c45c9493f88ac1f4.lean/declarations/perfectfield-iff-isseparable-algebraicclosure--a8e6f484c40932827eec69d6.md) | 428 | `result-track:a8e6f484c40932827eec69d6c50b8d6ecf269f4c1a8d015c9ea66d4335176a8f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

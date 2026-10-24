# Verification target: GRWTSK.Algebra.PolynomialGaloisGroup.Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18c8fd48b769535f38b53ab93bef768c6424f00b",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/index.md) · [Full source](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18c8fd48b769535f38b53ab93bef768c6424f00b`.

Source path: `GRWTSK/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Galois.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Gal](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/gal--c86c2c9b126dfa2ac55ba505.md) | 51 | `declaration-track:c86c2c9b126dfa2ac55ba5051303145a0d940c3574454cad85d227647c9fc453` |
| 2 | `instance` | [instGroup](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/instgroup--8514dbf59526845cc2f54fb9.md) | 58 | `declaration-track:8514dbf59526845cc2f54fb9b8b46ace9c90ef6d6d189beec6ba1d77fb6460f4` |
| 3 | `instance` | [instFintype](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/instfintype--9d2e4302e795a8e68658b04c.md) | 61 | `declaration-track:9d2e4302e795a8e68658b04c24f8b5b231841623d46be0ca78fab5c3eaae1f2d` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/instance--b4c9441dc7d641c6a94e3cb8.md) | 64 | `declaration-track:b4c9441dc7d641c6a94e3cb86d97b837ebf423d72de8d686b8627c53e8c7a80f` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/instance--ae647069400e73be955af1d9.md) | 67 | `declaration-track:ae647069400e73be955af1d9eb24708c08ba8f97a2dea654af869239a7270669` |
| 6 | `instance` | [applyMulSemiringAction](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/applymulsemiringaction--9dbe444acdeadc52391c543c.md) | 70 | `declaration-track:9dbe444acdeadc52391c543cb8ada4afc176aef74c678347d1ecfa981a372ca0` |
| 7 | `theorem` | [ext](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/ext--c8cbced3fc080e73cb690862.md) | 74 | `result-track:c8cbced3fc080e73cb690862deaf116bb725243a67c80e2ae7a95010846efe5c` |
| 8 | `def` | [uniqueGalOfSplits](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/uniquegalofsplits--6828092a5c709970ee9c31f8.md) | 82 | `declaration-track:6828092a5c709970ee9c31f84bbfe36936f7cb759b6f21d43488f3479dcff907` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/instance--0841a94e18c04f61d425525e.md) | 91 | `declaration-track:0841a94e18c04f61d425525ec66f28d2a981e647ce74ff33989f2ff5b6053627` |
| 10 | `instance` | [uniqueGalZero](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/uniquegalzero--67ba8b45192fc9e883f24914.md) | 94 | `declaration-track:67ba8b45192fc9e883f24914ebafa2480e98e64356d2b5c99d8857551b914043` |
| 11 | `instance` | [uniqueGalOne](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/uniquegalone--119db92965d62159d3224e75.md) | 97 | `declaration-track:119db92965d62159d3224e7596d95fdbcaff530a2bc250f002aa63e9f66252ec` |
| 12 | `instance` | [uniqueGalC](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/uniquegalc--88e13fd422749b73a1155fd3.md) | 100 | `declaration-track:88e13fd422749b73a1155fd3bd4c8c5cc3a23e286d1cb52a0e6faa9de7e79a1c` |
| 13 | `instance` | [uniqueGalX](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/uniquegalx--41dd275b8a6d1cbe3962ca28.md) | 103 | `declaration-track:41dd275b8a6d1cbe3962ca28cda55c6d7dd05493ca11c925299f0a42d4adeddd` |
| 14 | `instance` | [uniqueGalXSubC](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/uniquegalxsubc--4d66aef7b8346c1bf89de598.md) | 106 | `declaration-track:4d66aef7b8346c1bf89de598d5b50fc4315d91c2785470acb3fb28e3fb8b6a98` |
| 15 | `instance` | [uniqueGalXPow](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/uniquegalxpow--ea28410840e91d41f7afa186.md) | 109 | `declaration-track:ea28410840e91d41f7afa186715b243ee07549932eb1719489ff973303ef6a6d` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/instance--8898f8918e61186963fea4b1.md) | 112 | `declaration-track:8898f8918e61186963fea4b11fb33180b73e5dca9a8b7bc99c2b7079f6c542ef` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/instance--173a7da315611a93e789164f.md) | 115 | `declaration-track:173a7da315611a93e789164f52a0168829c03fd6ada72ffcfbc6c5543aec4b75` |
| 18 | `def` | [restrict](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/restrict--3bb4e8bb88529881eddffdcd.md) | 126 | `declaration-track:3bb4e8bb88529881eddffdcd445cf91efbda79ccfbece8dc68013a7acfd578e7` |
| 19 | `theorem` | [restrict_surjective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/restrict-surjective--abb7834c8c5879cdc725d63b.md) | 129 | `result-track:abb7834c8c5879cdc725d63bb3054dabb6ecc23870a674e2c9e6e3c4360d812c` |
| 20 | `def` | [mapRoots](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/maproots--3bc6dc0f54f89d9879c38650.md) | 137 | `declaration-track:3bc6dc0f54f89d9879c386504d2c102f82fca326f9d18a73a9a8660f93ffaeef` |
| 21 | `theorem` | [mapRoots_bijective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/maproots-bijective--5242323617803be28cc37202.md) | 140 | `result-track:5242323617803be28cc372024e00254ef3c940ee0d0678f04f3a72d070c72398` |
| 22 | `def` | [rootsEquivRoots](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/rootsequivroots--e8c56c049a75b318a69778c9.md) | 156 | `declaration-track:e8c56c049a75b318a69778c9fe2e6e9dafc4c820d95fbbae7ca4f57db85a39eb` |
| 23 | `instance` | [galActionAux](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/galactionaux--5b1dd43ab005c6787632f152.md) | 159 | `declaration-track:5b1dd43ab005c6787632f1521e1cb9a3a5d52d6a8fb3ab56e88a8adb18bd44f5` |
| 24 | `instance` | [smul](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/smul--8c3067f94b3be4a202c1cae8.md) | 164 | `declaration-track:8c3067f94b3be4a202c1cae82c5e61b64823e8f3d3c638d7a63705083177cc53` |
| 25 | `theorem` | [smul_def](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/smul-def--0d8e4c409054c199cceca07a.md) | 167 | `result-track:0d8e4c409054c199cceca07a2072985c63441ba34458fcdb51c9c26aa0ed9ed5` |
| 26 | `instance` | [galAction](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/galaction--585ae5ca21461a91b62541c8.md) | 172 | `declaration-track:585ae5ca21461a91b62541c81706d35fb7224b0c2c92021099ebe73167fecebb` |
| 27 | `lemma` | [galAction_isPretransitive](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/galaction-ispretransitive--83521e8695229719eb6225dc.md) | 177 | `result-track:83521e8695229719eb6225dc02138048c84f629e653a2a89f9c8680889790506` |
| 28 | `theorem` | [restrict_smul](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/restrict-smul--e93b0d268f9360e98065f8cb.md) | 189 | `result-track:e93b0d268f9360e98065f8cb90578e2ca8df17eceda212d202edbe3ad19b52db` |
| 29 | `def` | [galActionHom](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/galactionhom--ea587f67b1e3b87dc8c9ad24.md) | 200 | `declaration-track:ea587f67b1e3b87dc8c9ad24924faae3cfdbd6a74330318c6a61e0792c960d25` |
| 30 | `theorem` | [galActionHom_restrict](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/galactionhom-restrict--7e536c80ba72835e9be515d3.md) | 203 | `result-track:7e536c80ba72835e9be515d301a805509ed7a5ff570101065d630cece410ca8a` |
| 31 | `theorem` | [galActionHom_injective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/galactionhom-injective--782eb5fdf872579751274943.md) | 208 | `result-track:782eb5fdf87257975127494310c0bee404d2881382ff39370629a194cb8f7b82` |
| 32 | `def` | [restrictDvd](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/restrictdvd--921aaf941da6b093136164e9.md) | 226 | `declaration-track:921aaf941da6b093136164e93476c5f2aad7a2b6535cdc463c2ae2dd8cfc6078` |
| 33 | `theorem` | [restrictDvd_def](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/restrictdvd-def--0dd0b77b37ec41e7e836d351.md) | 233 | `result-track:0dd0b77b37ec41e7e836d351bb19f4ff931b5f0247ce5565cf6985901c5b95a9` |
| 34 | `theorem` | [restrictDvd_surjective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/restrictdvd-surjective--df0b3fc978b0a38d110c3c0e.md) | 243 | `result-track:df0b3fc978b0a38d110c3c0e119b38529ed09d47ecc86823791735f1fc465ca5` |
| 35 | `def` | [restrictProd](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/restrictprod--828ff14d86e20b58d4a332a7.md) | 253 | `declaration-track:828ff14d86e20b58d4a332a7132549324e3219507456397dab9cf1529abb6cdd` |
| 36 | `theorem` | [restrictProd_injective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/restrictprod-injective--f767e19448c3d8b4292d0d40.md) | 257 | `result-track:f767e19448c3d8b4292d0d40aae75afab31b174f0c6de8292f952076cc98f645` |
| 37 | `theorem` | [mul_splits_in_splittingField_of_mul](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/mul-splits-in-splittingfield-of-mul--90c4106c3d0d36f1ec855514.md) | 289 | `result-track:90c4106c3d0d36f1ec85551475df3de1aaf5a2d75986fede4e8f753387826633` |
| 38 | `theorem` | [splits_in_splittingField_of_comp](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/splits-in-splittingfield-of-comp--379e1d77bc533ae72f106c3d.md) | 306 | `result-track:379e1d77bc533ae72f106c3dcf205a3dbcf22006c22b25410b9159bc14c7c8b1` |
| 39 | `def` | [restrictComp](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/restrictcomp--f036aeebec042ec26787ef56.md) | 344 | `declaration-track:f036aeebec042ec26787ef561997b9373d913820952668be379cca26a27a2557` |
| 40 | `theorem` | [restrictComp_surjective](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/restrictcomp-surjective--0ee6f3e797e23ae777f4b663.md) | 349 | `result-track:0ee6f3e797e23ae777f4b663b3b9b6bb13700ee3c33d80f1225aa107994e87ab` |
| 41 | `theorem` | [card_of_separable](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/card-of-separable--c3b6803e4e194fbe89aeb306.md) | 361 | `result-track:c3b6803e4e194fbe89aeb306372a658dc55d8781ca09b3881c842bcfe7d0fc52` |
| 42 | `theorem` | [prime_degree_dvd_card](../../../../mathematics/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/declarations/prime-degree-dvd-card--f1834070cc5237266159679c.md) | 365 | `result-track:f1834070cc5237266159679c08ca069c7254d56183b235f78604285516f19501` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

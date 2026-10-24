# Verification target: GRWTSK.Algebra.GroupTheory.ConjAct.Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c162ab330999fc1a8236b53b703ae43a33a5042f",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c162ab330999fc1a8236b53b703ae43a33a5042f`.

Source path: `GRWTSK/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.GroupAction.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.ZPowers` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupRingAction.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/conjact--dade04615fbc80f2f772d0a8.md) | 48 | `declaration-track:dade04615fbc80f2f772d0a8bca844028bcbd8162d84da84f7cdde246ca664cf` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/instance--8544cb59953b4cbbc40aca1b.md) | 58 | `declaration-track:8544cb59953b4cbbc40aca1bbea1b0e6e3b77b35ac36054a3ec15f3189d04875` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/instance--e11b6b43d0ef5c75c647d39e.md) | 60 | `declaration-track:e11b6b43d0ef5c75c647d39e2134287c57068b706300d7c63ec86e9e9e76ac08` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/instance--5a85d55259228b2dffc9ad01.md) | 62 | `declaration-track:5a85d55259228b2dffc9ad011774b59fcc601d97680054d30fbd0dc3a23ffbf0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/instance--45a689b422a50ba042765b79.md) | 64 | `declaration-track:45a689b422a50ba042765b79ad5fd689f6bbe96682ac8b6fa4a5f37c19452fc9` |
| 6 | `theorem` | [card](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/card--fbeea651a86348df70648a44.md) | 67 | `result-track:fbeea651a86348df70648a44991d3f0806a6b405d7c6e1b84e7c6821ed9e7321` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/instance--a127382b1d69e4bde9e39e93.md) | 75 | `declaration-track:a127382b1d69e4bde9e39e938ac0755ee213b3191ee2241923c41ab85f300faa` |
| 8 | `def` | [ofConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/ofconjact--d986451c8c2875c1fb9391ba.md) | 79 | `declaration-track:d986451c8c2875c1fb9391ba63e3357311e3253b243c00dfef652c1074332ea9` |
| 9 | `def` | [toConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/toconjact--23f4e09daeed93fc58349475.md) | 88 | `declaration-track:23f4e09daeed93fc58349475f0b3af59ee7d9bdc5c5a5bca449d5ec49723b52d` |
| 10 | `def` | [rec](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/rec--9c5036770e21bb299548cf75.md) | 93 | `declaration-track:9c5036770e21bb299548cf7533c5de1127df480303aa362882d5dfa4bccb9e44` |
| 11 | `theorem` | [«forall»](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/forall--d5f6ecc1ec9eeb03c36891c5.md) | 98 | `result-track:d5f6ecc1ec9eeb03c36891c5d544d42648e92dca6c28003d8b316540830b4a75` |
| 12 | `theorem` | [of_mul_symm_eq](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/of-mul-symm-eq--ec2a38f9d297a5833204e356.md) | 103 | `result-track:ec2a38f9d297a5833204e3565868509dd0485edcd73bedcb1e1eb9efbd2113ea` |
| 13 | `theorem` | [to_mul_symm_eq](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/to-mul-symm-eq--7843ccc5dffca3f1861a830b.md) | 108 | `result-track:7843ccc5dffca3f1861a830bd2f410b061a00473c8d9fa003ffa0b4c6b3490e4` |
| 14 | `theorem` | [toConjAct_ofConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/toconjact-ofconjact--6a3e45b3b64fb9dcb7eaad7f.md) | 113 | `result-track:6a3e45b3b64fb9dcb7eaad7f754d279979829f060d22e1e154ca08d128099ad7` |
| 15 | `theorem` | [ofConjAct_toConjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/ofconjact-toconjact--104d6d8d75907cadd9ec6be1.md) | 118 | `result-track:104d6d8d75907cadd9ec6be15794c7c764b68f5a1906927710b7207fd844dcf4` |
| 16 | `theorem` | [ofConjAct_one](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/ofconjact-one--7ffaea59475c8c264ef7192d.md) | 123 | `result-track:7ffaea59475c8c264ef7192d834607012cf9f1933d353d47a0a490d96cf9dc95` |
| 17 | `theorem` | [toConjAct_one](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/toconjact-one--910307441c4f76f87007bb2a.md) | 128 | `result-track:910307441c4f76f87007bb2a3bd8375e8ba3860f0732627aa69290fd5d160af6` |
| 18 | `theorem` | [ofConjAct_inv](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/ofconjact-inv--98858b6cbd35dcb0e3cef4fc.md) | 133 | `result-track:98858b6cbd35dcb0e3cef4fce43116103f16723d93eeb292f58154a75ce09410` |
| 19 | `theorem` | [toConjAct_inv](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/toconjact-inv--3250cfce85b912d4da5e1c14.md) | 138 | `result-track:3250cfce85b912d4da5e1c140a845fef3fadd3d993e58ae6e33b7bb49be7e01b` |
| 20 | `theorem` | [ofConjAct_mul](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/ofconjact-mul--3688697a8ff1a7402099b854.md) | 143 | `result-track:3688697a8ff1a7402099b854b17a880b011bca69902f52e461af7ba57a0e7e04` |
| 21 | `theorem` | [toConjAct_mul](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/toconjact-mul--150ec0547728dbfaa10bba99.md) | 148 | `result-track:150ec0547728dbfaa10bba99bd88fb38b49e4abbfb85d46a330d9e339bd11c36` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/instance--cb01e80e04624f9f106051bb.md) | 152 | `declaration-track:cb01e80e04624f9f106051bb4d24166b49d9996e522cb5da48f36afaba14e760` |
| 23 | `theorem` | [smul_def](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/smul-def--f49b67673a45e09af211b829.md) | 154 | `result-track:f49b67673a45e09af211b829a2025450d5e57bc723c090635ccd77092f2682d6` |
| 24 | `instance` | [unitsScalar](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/unitsscalar--169116c063546a9c36539ad8.md) | 166 | `declaration-track:169116c063546a9c36539ad895aaffdb99ef7086cbbebdc52debff1e634c7b84` |
| 25 | `theorem` | [units_smul_def](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/units-smul-def--f0265429554b077735bfca95.md) | 169 | `result-track:f0265429554b077735bfca9569e2ffe4963867cc5f9578dd351f24f0df917eed` |
| 26 | `instance` | [unitsMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/unitsmuldistribmulaction--5a0d48d95380cb8732961a18.md) | 175 | `declaration-track:5a0d48d95380cb8732961a184c24c5e5fbfb6847e12b3d8fed3b2174a7bb3d0d` |
| 27 | `instance` | [unitsSMulCommClass](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/unitssmulcommclass--0274782a245175a563137a0b.md) | 188 | `declaration-track:0274782a245175a563137a0b0754d8d706f83bb228fb87f84cd800c65d154060` |
| 28 | `instance` | [unitsSMulCommClass'](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/unitssmulcommclass--6dce8bf4551d91c144e5ceee.md) | 193 | `declaration-track:6dce8bf4551d91c144e5ceee75c598719fff3c713097dee77ec14e3427944e10` |
| 29 | `instance` | [unitsMulSemiringAction](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/unitsmulsemiringaction--0eefe3769b5623a1809b988a.md) | 207 | `declaration-track:0eefe3769b5623a1809b988adf3595f7abebf876c8857425a92e3804d6e39e4a` |
| 30 | `theorem` | [ofConjAct_zero](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/ofconjact-zero--33edf5f4cfb5d7cabd4af67d.md) | 225 | `result-track:33edf5f4cfb5d7cabd4af67dc2d7b0aa6ca7dd07d1437658b3102b30de3ff743` |
| 31 | `theorem` | [toConjAct_zero](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/toconjact-zero--5f1403798192bbe34f04b341.md) | 230 | `result-track:5f1403798192bbe34f04b3414221ffddd3312e491b0895690934f7da78599481` |
| 32 | `instance` | [mulAction₀](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/mulaction--ae11b8e9125d5fd302508fbb.md) | 236 | `declaration-track:ae11b8e9125d5fd302508fbb2888fe429b6ed320bff926e4c18a3fb138734e93` |
| 33 | `instance` | [smulCommClass₀](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/smulcommclass--54331230678fcf8dd072d323.md) | 245 | `declaration-track:54331230678fcf8dd072d323be7de8a96315ddea9c7fd2994325c98a5ad8459d` |
| 34 | `instance` | [smulCommClass₀'](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/smulcommclass--007c36b65297a0ff498fca95.md) | 250 | `declaration-track:007c36b65297a0ff498fca952680e5cd141126fd0add81b27f6fab71ef5e6b63` |
| 35 | `instance` | [distribMulAction₀](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/distribmulaction--182cc469ea2b60a53e0eb179.md) | 264 | `declaration-track:182cc469ea2b60a53e0eb17919a400989bc020697e44b505bbcf7efee1f568de` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/instance--708cc9d5850747e7716a73eb.md) | 282 | `declaration-track:708cc9d5850747e7716a73eb7d4de517d27689841d073cfb086c51ed161d671b` |
| 37 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/smulcommclass--33b9c24af4f3975f11036a88.md) | 292 | `declaration-track:33b9c24af4f3975f11036a888bd2f44291ef378fd2ff098737961bd0d7a338d0` |
| 38 | `instance` | [smulCommClass'](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/smulcommclass--e8c63a463b909280d30d0fb8.md) | 297 | `declaration-track:e8c63a463b909280d30d0fb83c66e7936141c98fd824501c670e9566db327abd` |
| 39 | `theorem` | [smul_eq_mulAut_conj](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/smul-eq-mulaut-conj--4c932fecac33610830c66127.md) | 303 | `result-track:4c932fecac33610830c661272a3c40cfeaad109cb2602de8dc785fff1518b902` |
| 40 | `theorem` | [fixedPoints_eq_center](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/fixedpoints-eq-center--a6acaeaee38d179f6e41f428.md) | 308 | `result-track:a6acaeaee38d179f6e41f428552a0530e64098863ee1bd000e0b1863072b6997` |
| 41 | `theorem` | [mem_orbit_conjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/mem-orbit-conjact--3a093480f2eb300dcbc7d6e8.md) | 314 | `result-track:3a093480f2eb300dcbc7d6e8a15dc8b3c68bf7dfae8dea4667fdb8ba0641df83` |
| 42 | `theorem` | [orbitRel_conjAct](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/orbitrel-conjact--0850173089c6f4c749edf0d6.md) | 318 | `result-track:0850173089c6f4c749edf0d6ab699e9f785fb86b07bf4fe8855c429e99a44f96` |
| 43 | `theorem` | [orbit_eq_carrier_conjClasses](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/orbit-eq-carrier-conjclasses--42cfe173fee1678a6a2cb089.md) | 322 | `result-track:42cfe173fee1678a6a2cb089e342b6dd6ad42d00b0ed1618f0888f9f7b46c2f6` |
| 44 | `theorem` | [stabilizer_eq_centralizer](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/stabilizer-eq-centralizer--e140b9e1d60de8d8e0ccf34b.md) | 327 | `result-track:e140b9e1d60de8d8e0ccf34b10f75263818813a0b3f544b537818bbd98406f7b` |
| 45 | `instance` | [Subgroup.conjAction](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/subgroup-conjaction--a7361a8c5579f48f366d4b2c.md) | 335 | `declaration-track:a7361a8c5579f48f366d4b2c2c6ed944b3bb9f80267d860ab6b06d5486f944fd` |
| 46 | `theorem` | [Subgroup.val_conj_smul](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/subgroup-val-conj-smul--9daf70193372ee82ff0d357b.md) | 339 | `result-track:9daf70193372ee82ff0d357b8a8d9116c7130f6a4dcd36aaacdf1cd081330493` |
| 47 | `instance` | [Subgroup.conjMulDistribMulAction](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/subgroup-conjmuldistribmulaction--3abb53db811795b3f2dad398.md) | 344 | `declaration-track:3abb53db811795b3f2dad398e1e2f85debf58caf9d2c1e63dbf59dc089b4c2f6` |
| 48 | `def` | [_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.MulAut.conjNormal](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/root-grwtsk-algebra-grouptheory-conjact-variantb398419c4c41d19e786e622be--633c9348de269d29e16b08e9.md) | 350 | `declaration-track:633c9348de269d29e16b08e921da3b2388e19a967b39cc7c8dcd897b35bdb99b` |
| 49 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.MulAut.conjNormal_apply](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/root-grwtsk-algebra-grouptheory-conjact-variantb398419c4c41d19e786e622be--f509dc3964c70d2544fba003.md) | 355 | `result-track:f509dc3964c70d2544fba0030014877d69c0e51c4cacae27fa8365c5c9a20df8` |
| 50 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.MulAut.conjNormal_symm_apply](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/root-grwtsk-algebra-grouptheory-conjact-variantb398419c4c41d19e786e622be--f2f7d2486e13f3869eadb5a7.md) | 361 | `result-track:f2f7d2486e13f3869eadb5a7e99aa6add6f00e28dbf70e6fba4cb91036cb6c53` |
| 51 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.MulAut.conjNormal_inv_apply](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/root-grwtsk-algebra-grouptheory-conjact-variantb398419c4c41d19e786e622be--69a4b51e6236c65223a5f390.md) | 369 | `result-track:69a4b51e6236c65223a5f3907408914a04c56bdcb2753e4653f38e32b0ad788e` |
| 52 | `theorem` | [_root_.GRWTSK.Algebra.GroupTheory.ConjAct.Variantb398419c4c41d19e786e622be1a439cbcc23f0b1103e7f9488d5f8783df53420.MulAut.conjNormal_val](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/root-grwtsk-algebra-grouptheory-conjact-variantb398419c4c41d19e786e622be--3f5e2014c7369059bf34a376.md) | 374 | `result-track:3f5e2014c7369059bf34a376cc9284a42af03d5cc4f5d2ea0ff0a4668292c88e` |
| 53 | `instance` | [normal_of_characteristic_of_normal](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/normal-of-characteristic-of-normal--ea03758799066592314f9ea7.md) | 379 | `declaration-track:ea03758799066592314f9ea711376fc8c1db28724db4e94007ad8a27a1953eea` |
| 54 | `def` | [unitsCentralizerEquiv](../../../../../mathematics/Algebra/GroupTheory/ConjAct/Variant7a7c38fcfbf614968188d5c93602e022fb60a35bf9d3bd96e7f8b471f4160060.lean/declarations/unitscentralizerequiv--0d29e1173cd9548f14f6f959.md) | 396 | `declaration-track:0d29e1173cd9548f14f6f9597c772140b6a95d4b8fa3af6a312b1c3138cc746d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

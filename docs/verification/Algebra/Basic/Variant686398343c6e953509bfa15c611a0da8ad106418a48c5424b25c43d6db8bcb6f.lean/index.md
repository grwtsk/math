# Verification target: GRWTSK.Algebra.Basic.Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b364a7d91af4fbdf525b19f922732afadd96b4b3",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b364a7d91af4fbdf525b19f922732afadd96b4b3`.

Source path: `GRWTSK/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Subalgebra.isIntegral_iff](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/subalgebra-isintegral-iff--04daaa1bb2d9715f3597b59a.md) | 43 | `result-track:04daaa1bb2d9715f3597b59a995deb8b3575240e06b17c5de4faa82fc70908b4` |
| 2 | `theorem` | [Algebra.IsIntegral.of_injective](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/algebra-isintegral-of-injective--d4e83ddcf9d519d2691cc5bd.md) | 52 | `result-track:d4e83ddcf9d519d2691cc5bd47bfcae7f978adb921a44de705e46ba8b87fd797` |
| 3 | `theorem` | [Algebra.IsIntegral.of_surjective](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/algebra-isintegral-of-surjective--93b0003cd6605ee20c0950d9.md) | 57 | `result-track:93b0003cd6605ee20c0950d9f83bb8083f9ef5769fab29b4560c8d64c48f81b8` |
| 4 | `theorem` | [AlgEquiv.isIntegral_iff](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/algequiv-isintegral-iff--50762a3fe0063e510708dc59.md) | 61 | `result-track:50762a3fe0063e510708dc59192450b0cd1d4ecf62223f6583054d8704b9ab06` |
| 5 | `instance` | [Module.End.isIntegral](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/module-end-isintegral--de10d9bdc10abd2eeecb5993.md) | 66 | `declaration-track:de10d9bdc10abd2eeecb59936a0f0e06e360360fbce39a345828ccf002ceeb51` |
| 6 | `theorem` | [IsIntegral.of_finite](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-of-finite--ab0d62d5f9436fed8853a347.md) | 72 | `result-track:ab0d62d5f9436fed8853a3474ea9d6ad535f1c2b3957fda2cb8059da2fe101e2` |
| 7 | `theorem` | [isIntegral_of_noetherian](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-of-noetherian--378475fd8c10062a41ac823e.md) | 76 | `result-track:378475fd8c10062a41ac823ea85863e5b649069f66e909731a8c1470aa3f3b6e` |
| 8 | `instance` | [Algebra.IsIntegral.of_finite](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/algebra-isintegral-of-finite--bf260e2953e7d41a6c519bf6.md) | 80 | `declaration-track:bf260e2953e7d41a6c519bf69a5d1f07973ccd2e91fff7bc73f0aa741066c53b` |
| 9 | `lemma` | [Algebra.isIntegral_of_surjective](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/algebra-isintegral-of-surjective--2c81378fffb232cd72671715.md) | 83 | `result-track:2c81378fffb232cd7267171580d3cab69e0858d6864373bb01a42c64a494be75` |
| 10 | `theorem` | [IsIntegral.of_mem_of_fg](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-of-mem-of-fg--5f275299deb9f13fa9a3cf8c.md) | 89 | `result-track:5f275299deb9f13fa9a3cf8c8c476295bb194886f5c7cab12893030f46f75836` |
| 11 | `theorem` | [isIntegral_of_submodule_noetherian](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-of-submodule-noetherian--4411c6d34932c0ee528baac7.md) | 94 | `result-track:4411c6d34932c0ee528baac75689308f77769381a94c1e6ed9458af05fddd65e` |
| 12 | `theorem` | [isIntegral_of_smul_mem_submodule](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-of-smul-mem-submodule--207d95af7dbee5172ad58b74.md) | 100 | `result-track:207d95af7dbee5172ad58b744448ac58301a6a55e58ec43c5bbe1873349e6ced` |
| 13 | `theorem` | [RingHom.Finite.to_isIntegral](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/ringhom-finite-to-isintegral--dfe51f343a56ac688c6e7a33.md) | 135 | `result-track:dfe51f343a56ac688c6e7a331c35b1f7b6e01eaa66c5c3bfe09025c484cc3ef3` |
| 14 | `theorem` | [RingHom.IsIntegralElem.of_mem_closure](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/ringhom-isintegralelem-of-mem-closure--f3eee01b596b93976215a20c.md) | 143 | `result-track:f3eee01b596b93976215a20c1dc8e3634e22e4c2f8a82d575c3b3f839356dbf6` |
| 15 | `theorem` | [IsIntegral.of_mem_closure](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-of-mem-closure--12f124ceae7dea85345901d8.md) | 152 | `result-track:12f124ceae7dea85345901d851c46be6545f93d834fe459f059d6e812a2f3ace` |
| 16 | `theorem` | [RingHom.IsIntegralElem.add](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/ringhom-isintegralelem-add--0611870d7f84372357216c42.md) | 158 | `result-track:0611870d7f84372357216c42b73aaf2541a7a9c768ee152e30d61d2227e411c6` |
| 17 | `theorem` | [IsIntegral.add](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-add--bf92d399ebe30945f0cfc255.md) | 164 | `result-track:bf92d399ebe30945f0cfc255bcf85abb5f67d170bfa07159c2e33380e612b848` |
| 18 | `theorem` | [RingHom.IsIntegralElem.neg](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/ringhom-isintegralelem-neg--1b8cc9d75e2a5ec10e6d1d47.md) | 171 | `result-track:1b8cc9d75e2a5ec10e6d1d472c72615e9765986f0b85e81123b73c65a919fb90` |
| 19 | `theorem` | [RingHom.IsIntegralElem.of_neg](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/ringhom-isintegralelem-of-neg--0f06b9359d7ef6021e43de89.md) | 174 | `result-track:0f06b9359d7ef6021e43de8979203c9586c77d30a71d827556c69c5080a862db` |
| 20 | `theorem` | [RingHom.IsIntegralElem.neg_iff](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/ringhom-isintegralelem-neg-iff--4a7ab86cc71c1c7ed7ac5993.md) | 178 | `result-track:4a7ab86cc71c1c7ed7ac599339648a375594c0e7955a26f48f6ed7340ad92d71` |
| 21 | `theorem` | [IsIntegral.neg](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-neg--52e5dff9f4fc81ff856529f1.md) | 181 | `result-track:52e5dff9f4fc81ff856529f108a3545c65aa0ad8eebd73b7db0c9c6215f262bc` |
| 22 | `theorem` | [IsIntegral.of_neg](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-of-neg--3d2f811e3c98419d1cb5a90f.md) | 184 | `result-track:3d2f811e3c98419d1cb5a90f5efa57591288ff9076b22d30b51f11b28b0c7e87` |
| 23 | `theorem` | [IsIntegral.neg_iff](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-neg-iff--c633410168c5e222159bd481.md) | 188 | `result-track:c633410168c5e222159bd481a06ea78e096308ed5d2debf0d80ad0d24055ef83` |
| 24 | `theorem` | [RingHom.IsIntegralElem.sub](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/ringhom-isintegralelem-sub--28afe80847f8e49fdc4c51c1.md) | 191 | `result-track:28afe80847f8e49fdc4c51c1ab54756893ca45a6d1405107a5e55a94253daaa7` |
| 25 | `theorem` | [IsIntegral.sub](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-sub--ab1998499ef928fcf4041ad6.md) | 195 | `result-track:ab1998499ef928fcf4041ad6af44de05d267c81f9ba87c1ea5bddeecafc51f18` |
| 26 | `theorem` | [RingHom.IsIntegralElem.mul](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/ringhom-isintegralelem-mul--43ff5937b9c57158d5ec06dd.md) | 199 | `result-track:43ff5937b9c57158d5ec06ddbe61450061509a4990e75b1c011350ea974f5480` |
| 27 | `theorem` | [IsIntegral.mul](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-mul--9f15a308798c61ffb5f90a26.md) | 204 | `result-track:9f15a308798c61ffb5f90a26e6323684bb3bd02c5705e6a77a5f0aeb5a77c14d` |
| 28 | `theorem` | [IsIntegral.smul](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-smul--5c38a13e05aba874bca70061.md) | 208 | `result-track:5c38a13e05aba874bca700618d98db5080508ce51667c480ce62382fc478f907` |
| 29 | `theorem` | [isIntegral_intCast](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-intcast--2978a50457f795d1de2167ac.md) | 213 | `result-track:2978a50457f795d1de2167acf63d90495d7d95c13e855668b0dc0476c33a9f5c` |
| 30 | `theorem` | [isIntegral_natCast](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-natcast--791320ff1022d5bb7324caca.md) | 217 | `result-track:791320ff1022d5bb7324cacaefcf86a8d18169fb364064105c830e113173e48b` |
| 31 | `def` | [integralClosure](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/integralclosure--efdf28ce3cd5dab77188259c.md) | 224 | `declaration-track:efdf28ce3cd5dab77188259cb109308b3608bb28ca0c4c4db4e6959dba507b6d` |
| 32 | `theorem` | [mem_integralClosure_iff](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/mem-integralclosure-iff--1ac10a5979f9e08a5707411a.md) | 232 | `result-track:1ac10a5979f9e08a5707411a007bd37518305e998b932e5ca481bb9c98230ecf` |
| 33 | `instance` | [Algebra.IsIntegral.prod](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/algebra-isintegral-prod--b2ab3a31f0109cd81ebef6a9.md) | 238 | `declaration-track:b2ab3a31f0109cd81ebef6a9c73fe527d855b7c3fe7ebd6bb7c8ba42efc54d7d` |
| 34 | `theorem` | [IsIntegral.tmul](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/isintegral-tmul--81654fade6ca753a17d0fbcc.md) | 251 | `result-track:81654fade6ca753a17d0fbcc8fe975b77e67ec9e58a6e944d6fd5ad9c82c77b2` |
| 35 | `instance` | [Algebra.IsIntegral.tensorProduct](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/algebra-isintegral-tensorproduct--55c8bb7f714a8624751bc84d.md) | 260 | `declaration-track:55c8bb7f714a8624751bc84dc05fdfec8d47924514fc2c8f553a1b086ea1f715` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/instance--459a90816e328db9f309b345.md) | 272 | `declaration-track:459a90816e328db9f309b345099f98f0560ca246196f99e564ded6a69ad7a77a` |
| 37 | `theorem` | [integralClosure.coe_smul](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/integralclosure-coe-smul--64b7c7d4a5037fa146ba5606.md) | 282 | `result-track:64b7c7d4a5037fa146ba560612047df38a2bf121e0a482ed111cad8b7e2359dd` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/instance--1299503264efd11581b91faa.md) | 285 | `declaration-track:1299503264efd11581b91faa3e5f2a7e205a2db8a2f7d462b57be8e71116c538` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant686398343c6e953509bfa15c611a0da8ad106418a48c5424b25c43d6db8bcb6f.lean/declarations/instance--93f19b41c28075641f5ef84e.md) | 288 | `declaration-track:93f19b41c28075641f5ef84e5d5727cd9612fcdc5b1307f8b9e57bcb32277640` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
